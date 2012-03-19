.class public Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;
.super Ljava/lang/Object;
.source "KddiPacketSMSManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$IPAddress;,
        Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;,
        Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;,
        Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiBgHandler;,
        Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;,
        Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$AddressAlreadyInUseException;,
        Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;,
        Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;
    }
.end annotation


# static fields
.field private static final FILE_PATH:Ljava/lang/String; = "/KDDI/cmail/ChatGateway"

.field protected static final HTC_RETRY_INTERVAL_TIMER:J = 0x1388L

.field protected static final HTC_RETRY_MAX_TIMES:I = 0x6

.field private static final IP_MAX_LEN:I = 0xf

.field private static final KDDI_CHGW_PORT:I = 0x1a0b

.field protected static final KDDI_EVENT_CLOSE_SESSION:I = 0x2

.field protected static final KDDI_EVENT_CLOSE_SOCKET:I = 0x3

.field protected static final KDDI_EVENT_DATA_STATE_CHANGED:I = 0x1

.field protected static final KDDI_EVENT_MULTIPLE_SEND_ERROR:I = 0x7

.field protected static final KDDI_EVENT_PACKETSMSMGR_SYS_ERROR:I = 0x8

.field protected static final KDDI_EVENT_REQ_CONNECT:I = 0x4

.field protected static final KDDI_EVENT_REQ_SEND_MSG:I = 0x0

.field protected static final KDDI_EVENT_SEND:I = 0x5

.field protected static final KDDI_EVENT_SEND_CANCEL:I = 0x6

.field private static KDDI_OUTPUT_DEBUG_LOG:Z = false

.field private static KDDI_OUTPUT_VERBOSE_LOG:Z = false

.field static final KDDI_PROFILE_CMAIL_CONNECTED:I = 0x7

.field static final KDDI_PROFILE_CMAIL_CONNECTING:I = 0x6

.field static final KDDI_PROFILE_CMAIL_DISCONNECTED:I = 0x5

.field static final KDDI_PROFILE_CMAIL_SUSPENDED:I = 0x4

.field static final KDDI_PROFILE_NOT_CMAIL_CONNECTED:I = 0x3

.field static final KDDI_PROFILE_NOT_CMAIL_CONNECTING:I = 0x2

.field static final KDDI_PROFILE_NOT_CMAIL_DISCONNECTED:I = 0x1

.field static final KDDI_PROFILE_NOT_CMAIL_SUSPENDED:I = 0x0

.field private static final KDDI_REQ_CONNECT_TIMER:I = 0xc350

.field protected static final KDDI_SEND_SMS:I = 0x1

.field protected static final KDDI_SEND_SMS_IN_QUEUE:I = 0x0

.field static final KDDI_SEND_STATE_CANCEL:I = 0x5

.field static final KDDI_SEND_STATE_CONNECTING_SESSION:I = 0x2

.field static final KDDI_SEND_STATE_NON:I = 0x0

.field static final KDDI_SEND_STATE_REQUESTED:I = 0x1

.field static final KDDI_SEND_STATE_SENDED_RESULT:I = 0x4

.field static final KDDI_SEND_STATE_SERV_REPLY:I = 0x3

.field static final KDDI_SEND_STATE_WAIT_STOREREQ:I = 0x6

.field private static final KDDI_SESSION_RETRY_TIMER:I = 0x3e8

.field private static final KDDI_TAG:Ljava/lang/String; = "KddiPacketSMSManager"

.field private static final KDDI_TCMD_TIMER:I = 0x15f90

.field private static final KDDI_TOFF_TIMER:I = 0x2bf20

.field private static final READ_MODE:Ljava/lang/String; = "r"

.field protected static final SEND_DELAY_MILIIS:J = 0xc8L

.field static mCancelResult:I

.field static mConnectivityManager:Landroid/net/ConnectivityManager;

.field static mContext:Landroid/content/Context;

.field static mDataConnectIntentfilter:Landroid/content/IntentFilter;

.field static mDestNumber:Ljava/lang/String;

.field static mFirstSendTime:J

.field static mIn:Ljava/io/InputStream;

.field private static mInstance:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

.field static mIntentfilter:Landroid/content/IntentFilter;

.field private static mKddiChatGateWayIP:Ljava/lang/String;

.field static mLooper:Landroid/os/Looper;

.field static mMessageBody:Ljava/lang/String;

.field static mNetworkState:Ljava/lang/String;

.field static mOut:Ljava/io/OutputStream;

.field static mProfile:Ljava/lang/String;

.field static mPsmsSendMode:I

.field static mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

.field static mPsmsSenderThread:Ljava/lang/Thread;

.field static mRetReceiver:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;

.field static mRetRevThread:Ljava/lang/Thread;

.field static mReturnSendResult:I

.field static mSocket:Ljava/net/Socket;

.field static mthread:Landroid/os/HandlerThread;


# instance fields
.field private mBgHandler:Landroid/os/Handler;

.field private mBgThread:Landroid/os/HandlerThread;

.field mCancelRetIntent:Landroid/app/PendingIntent;

.field private mConnectingLock:Ljava/lang/Object;

.field private mDataConnectReceiver:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;

.field private mErrorCount:I

.field private mISms:Lcom/android/internal/telephony/ISms;

.field private mLocalPort:I

.field private final mPendingQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCnt:I

.field mSendRetIntent:Landroid/app/PendingIntent;

.field mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    sput-boolean v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    .line 68
    sput-boolean v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    .line 71
    const/4 v1, 0x0

    sput-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mKddiChatGateWayIP:Ljava/lang/String;

    .line 190
    new-instance v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-direct {v1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;-><init>()V

    sput-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mInstance:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    .line 228
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 229
    .local v0, type:Ljava/lang/String;
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    sput-boolean v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    .line 231
    sput-boolean v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    .line 233
    :cond_0
    sget-boolean v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v1, :cond_1

    .line 234
    const-string v1, "KddiPacketSMSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build.Type> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_1
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 239
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    invoke-direct {v0, p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;-><init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)V

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    .line 199
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectingLock:Ljava/lang/Object;

    .line 200
    const/16 v0, 0x1387

    iput v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLocalPort:I

    .line 201
    iput v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mErrorCount:I

    .line 202
    iput v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetryCnt:I

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;

    .line 1715
    new-instance v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;

    invoke-direct {v0, p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;-><init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)V

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mDataConnectReceiver:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;

    .line 241
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "KddiPacketSMSManager"

    const-string v1, "KddiPacketSMSManager "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KddiPSMBgThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgThread:Landroid/os/HandlerThread;

    .line 246
    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 247
    new-instance v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiBgHandler;

    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiBgHandler;-><init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgHandler:Landroid/os/Handler;

    .line 249
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mDataConnectReceiver:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->checkFirstQueueMessage(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkFirstQueueMessage(Z)V
    .locals 6
    .parameter "release"

    .prologue
    .line 1677
    iget-object v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1678
    :try_start_0
    const-string v1, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkFirstQueueMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1681
    if-eqz p1, :cond_0

    sget-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    .line 1682
    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiDisconnectSession()I

    move-result v0

    .line 1683
    .local v0, ret:I
    sget-boolean v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v1, :cond_0

    .line 1684
    const-string v1, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "kddiDisconnectSession ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    .end local v0           #ret:I
    :cond_0
    :goto_0
    monitor-exit v2

    .line 1705
    return-void

    .line 1696
    :cond_1
    sget-boolean v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v1, :cond_2

    .line 1697
    const-string v1, "KddiPacketSMSManager"

    const-string/jumbo v3, "send delay: 200"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    :cond_2
    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1700
    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1704
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private decodeIPAddresses(Ljava/lang/String;)[Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$IPAddress;
    .locals 20
    .parameter "nvStr"

    .prologue
    .line 738
    const/4 v9, 0x0

    .line 740
    .local v9, ipAddr:[Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$IPAddress;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 741
    .local v16, nv:[B
    new-instance v7, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 743
    .local v7, inStream:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v5, 0x20

    .line 744
    .local v5, headerBits:I
    invoke-virtual {v7, v5}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 745
    const/16 v3, 0x10

    .line 746
    .local v3, countBits:I
    invoke-virtual {v7, v3}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v15

    .line 749
    .local v15, num:[B
    const/16 v17, 0x0

    aget-byte v17, v15, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    const/16 v18, 0x1

    aget-byte v18, v15, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x8

    add-int v2, v17, v18

    .line 750
    .local v2, count:I
    sget-boolean v17, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v17, :cond_0

    const-string v17, "KddiPacketSMSManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "num of IP> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_0
    const/16 v14, 0x40

    .line 752
    .local v14, netBits:I
    new-array v9, v2, [Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$IPAddress;

    .line 753
    const/16 v11, 0x20

    .line 755
    .local v11, ipv4Bits:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v2, :cond_3

    .line 756
    invoke-virtual {v7}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v17

    const/16 v18, 0x40

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    .line 758
    invoke-virtual {v7, v11}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v8

    .line 759
    .local v8, ip:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->getIpAddrString([B)Ljava/lang/String;

    move-result-object v10

    .line 761
    .local v10, ips:Ljava/lang/String;
    invoke-virtual {v7, v11}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v12

    .line 762
    .local v12, mask:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->getIpAddrString([B)Ljava/lang/String;

    move-result-object v13

    .line 763
    .local v13, masks:Ljava/lang/String;
    new-instance v17, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$IPAddress;

    move-object/from16 v0, v17

    invoke-direct {v0, v10, v13}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$IPAddress;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v17, v9, v6

    .line 764
    sget-boolean v17, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v17, :cond_1

    .line 765
    const-string v17, "KddiPacketSMSManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "IP> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/ "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 768
    .end local v8           #ip:[B
    .end local v10           #ips:Ljava/lang/String;
    .end local v12           #mask:[B
    .end local v13           #masks:Ljava/lang/String;
    :cond_2
    const-string v17, "KddiPacketSMSManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "decode error> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "bits"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    .end local v2           #count:I
    .end local v3           #countBits:I
    .end local v5           #headerBits:I
    .end local v6           #i:I
    .end local v7           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v11           #ipv4Bits:I
    .end local v14           #netBits:I
    .end local v15           #num:[B
    .end local v16           #nv:[B
    :cond_3
    :goto_1
    return-object v9

    .line 772
    :catch_0
    move-exception v4

    .line 773
    .local v4, e:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v17, "KddiPacketSMSManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "parsing IP error> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseInputStream$AccessException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 1117
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 1118
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 1120
    :cond_0
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getISmsInterface()Lcom/android/internal/telephony/ISms;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mISms:Lcom/android/internal/telephony/ISms;

    if-nez v0, :cond_0

    .line 274
    const-string/jumbo v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mISms:Lcom/android/internal/telephony/ISms;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mISms:Lcom/android/internal/telephony/ISms;

    return-object v0
.end method

.method private getIpAddrString([B)Ljava/lang/String;
    .locals 7
    .parameter "bytes"

    .prologue
    .line 722
    if-eqz p1, :cond_0

    array-length v5, p1

    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 734
    :goto_0
    return-object v1

    .line 723
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 724
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x4

    .line 725
    .local v3, numBytes:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 726
    aget-byte v5, p1, v0

    and-int/lit16 v2, v5, 0xff

    .line 727
    .local v2, num:I
    if-nez v0, :cond_2

    .line 728
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 730
    :cond_2
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 733
    .end local v2           #num:I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 734
    .local v1, ipAddr:Ljava/lang/String;
    goto :goto_0
.end method

.method private isNetworkAvailable()Z
    .locals 2

    .prologue
    .line 1124
    invoke-direct {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private isRoaming()Z
    .locals 2

    .prologue
    .line 1130
    invoke-direct {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    return v0
.end method

.method public static kddiGetInstance()Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;
    .locals 3

    .prologue
    .line 287
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    .line 288
    const-string v0, "KddiPacketSMSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance return mInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mInstance:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mInstance:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    return-object v0
.end method

.method private kddiInitFieldVariable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 4
    .parameter "context"
    .parameter "message"
    .parameter "destAddr"
    .parameter "sentIntent"
    .parameter "sendingMode"

    .prologue
    const/4 v2, 0x0

    .line 1390
    const/4 v0, 0x0

    sput v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 1393
    sput p5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    .line 1395
    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    const/4 v1, 0x1

    iput v1, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    .line 1400
    sput-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mDestNumber:Ljava/lang/String;

    .line 1401
    sput-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mMessageBody:Ljava/lang/String;

    .line 1402
    sput-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mContext:Landroid/content/Context;

    .line 1403
    iput-object v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendRetIntent:Landroid/app/PendingIntent;

    .line 1405
    sput-object p3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mDestNumber:Ljava/lang/String;

    .line 1406
    sput-object p2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mMessageBody:Ljava/lang/String;

    .line 1407
    sput-object p1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mContext:Landroid/content/Context;

    .line 1408
    iput-object p4, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendRetIntent:Landroid/app/PendingIntent;

    .line 1410
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mFirstSendTime:J

    .line 1411
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mFirstSendTime:J

    .line 1412
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    .line 1413
    const-string v0, "KddiPacketSMSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "first send time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mFirstSendTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :cond_0
    return-void
.end method

.method public static lookupHost(Ljava/lang/String;)I
    .locals 6
    .parameter "hostname"

    .prologue
    .line 2773
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2779
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 2780
    .local v1, addrBytes:[B
    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    .line 2784
    .end local v1           #addrBytes:[B
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    :goto_0
    return v0

    .line 2774
    :catch_0
    move-exception v2

    .line 2775
    .local v2, e:Ljava/net/UnknownHostException;
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private registerForConnectionStateChanges(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mDataConnectReceiver:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;

    invoke-virtual {v0, p1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->register(Landroid/content/Context;)V

    .line 1709
    return-void
.end method

.method private unRegisterForConnectionStateChanges()V
    .locals 1

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mDataConnectReceiver:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;

    invoke-virtual {v0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->unregister()V

    .line 1713
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 260
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 261
    const-string v0, "KddiPacketSMSManager"

    const-string v1, "finalize> "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 265
    :cond_0
    return-void
.end method

.method protected htcConnectSocket()Z
    .locals 11

    .prologue
    .line 925
    sget-boolean v7, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v7, :cond_0

    .line 926
    const-string v7, "KddiPacketSMSManager"

    const-string/jumbo v8, "htcConnectSocket Start"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_0
    const/4 v1, 0x1

    .line 929
    .local v1, bReturn:Z
    const/4 v0, 0x0

    .line 931
    .local v0, bRetry:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->htcCreateSocket()V

    .line 932
    sget-object v7, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSocket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    sput-object v7, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mIn:Ljava/io/InputStream;

    .line 933
    const-string v7, "KddiPacketSMSManager"

    const-string v8, "get socket inputStream: "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    sget-object v7, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSocket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    sput-object v7, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mOut:Ljava/io/OutputStream;

    .line 935
    const-string v7, "KddiPacketSMSManager"

    const-string v8, "get socket outputStream: "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$AddressAlreadyInUseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 959
    :goto_0
    if-eqz v0, :cond_1

    .line 960
    iget v7, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetryCnt:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetryCnt:I

    .line 961
    const-string v7, "KddiPacketSMSManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mRetryCnt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetryCnt:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sget-wide v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mFirstSendTime:J

    sub-long v3, v7, v9

    .line 964
    .local v3, spentTime:J
    const-wide/32 v5, 0x2a7b0

    .line 966
    .local v5, timeLimit:J
    iget v7, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetryCnt:I

    const/4 v8, 0x6

    if-le v7, v8, :cond_6

    .line 968
    const/4 v1, 0x0

    .line 969
    const/4 v0, 0x0

    .line 983
    .end local v3           #spentTime:J
    .end local v5           #timeLimit:J
    :cond_1
    :goto_1
    sget-boolean v7, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v7, :cond_2

    .line 984
    const-string v7, "KddiPacketSMSManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "htcConnectSocket End: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :cond_2
    const/4 v7, 0x0

    iput v7, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetryCnt:I

    move v7, v1

    .line 987
    :goto_2
    return v7

    .line 937
    :catch_0
    move-exception v2

    .line 938
    .local v2, e:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$AddressAlreadyInUseException;
    invoke-virtual {v2}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$AddressAlreadyInUseException;->printStackTrace()V

    .line 939
    sget-boolean v7, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v7, :cond_3

    .line 940
    const-string v7, "KddiPacketSMSManager"

    invoke-virtual {v2}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$AddressAlreadyInUseException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_3
    const/4 v1, 0x0

    .line 957
    goto :goto_0

    .line 945
    .end local v2           #e:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$AddressAlreadyInUseException;
    :catch_1
    move-exception v2

    .line 946
    .local v2, e:Ljava/net/UnknownHostException;
    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 947
    sget-boolean v7, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v7, :cond_4

    .line 948
    const-string v7, "KddiPacketSMSManager"

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_4
    const/4 v0, 0x1

    .line 957
    goto :goto_0

    .line 951
    .end local v2           #e:Ljava/net/UnknownHostException;
    :catch_2
    move-exception v2

    .line 952
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 953
    sget-boolean v7, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v7, :cond_5

    .line 954
    const-string v7, "KddiPacketSMSManager"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 972
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #spentTime:J
    .restart local v5       #timeLimit:J
    :cond_6
    const-wide/32 v7, 0x2a7b0

    cmp-long v7, v3, v7

    if-lez v7, :cond_7

    sget-wide v7, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mFirstSendTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_7

    .line 973
    const-string v7, "KddiPacketSMSManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "transaction spent time too long: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/4 v1, 0x0

    .line 975
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 977
    :cond_7
    const-string v7, "KddiPacketSMSManager"

    const-string/jumbo v8, "retry sleep Start! "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const-wide/16 v7, 0x1388

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 979
    const-string v7, "KddiPacketSMSManager"

    const-string/jumbo v8, "retry sleep End! "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->htcConnectSocket()Z

    move-result v7

    goto :goto_2
.end method

.method protected htcCreateSocket()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$AddressAlreadyInUseException;,
            Ljava/net/BindException;,
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1388

    const/4 v7, 0x0

    .line 894
    :try_start_0
    iget v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLocalPort:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLocalPort:I

    .line 895
    iget v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLocalPort:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLocalPort:I

    const/16 v3, 0x1b57

    if-le v2, v3, :cond_1

    .line 896
    :cond_0
    const/16 v2, 0x1388

    iput v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLocalPort:I

    .line 898
    :cond_1
    const-string v2, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "local port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLocalPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    new-instance v2, Ljava/net/Socket;

    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mKddiChatGateWayIP:Ljava/lang/String;

    const/16 v4, 0x1a0b

    const/4 v5, 0x0

    iget v6, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLocalPort:I

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    sput-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSocket:Ljava/net/Socket;

    .line 900
    const-string v2, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get socket instance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const/4 v2, 0x0

    iput v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mErrorCount:I
    :try_end_0
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    :goto_0
    return-void

    .line 903
    :catch_0
    move-exception v1

    .line 904
    .local v1, ex:Ljava/net/BindException;
    invoke-virtual {v1}, Ljava/net/BindException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, es:Ljava/lang/String;
    const-string v2, "Address already in use"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 906
    sget-boolean v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v2, :cond_2

    .line 907
    const-string v2, "KddiPacketSMSManager"

    const-string/jumbo v3, "source port in use exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_2
    iget v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mErrorCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mErrorCount:I

    .line 910
    iget v2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mErrorCount:I

    const/16 v3, 0x14

    if-le v2, v3, :cond_3

    .line 911
    const-string v2, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error count limit!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mErrorCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iput v7, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mErrorCount:I

    .line 913
    new-instance v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$AddressAlreadyInUseException;

    invoke-direct {v2, p0, v0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$AddressAlreadyInUseException;-><init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;Ljava/lang/String;)V

    throw v2

    .line 915
    :cond_3
    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->htcCreateSocket()V

    goto :goto_0

    .line 918
    :cond_4
    iput v7, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mErrorCount:I

    .line 919
    throw v1
.end method

.method protected isRadioState(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1932
    const/4 v0, -0x1

    .line 1934
    .local v0, serviceState:I
    sget-boolean v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v2, :cond_0

    .line 1935
    const-string v2, "KddiPacketSMSManager"

    const-string/jumbo v3, "isRadioState start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1938
    sget-boolean v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v2, :cond_1

    .line 1939
    const-string v2, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Airplane Mode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    :cond_1
    if-lez v0, :cond_2

    .line 1949
    :goto_0
    return v1

    .line 1946
    :cond_2
    sget-boolean v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v1, :cond_3

    .line 1947
    const-string v1, "KddiPacketSMSManager"

    const-string/jumbo v2, "isRadioState return[true]"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isServiceState(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 1961
    sget-boolean v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v2, :cond_0

    .line 1962
    const-string v2, "KddiPacketSMSManager"

    const-string/jumbo v3, "isServiceState start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1968
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_2

    .line 1969
    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1976
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-nez v1, :cond_2

    .line 1977
    sget-boolean v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v2, :cond_1

    .line 1978
    const-string v2, "KddiPacketSMSManager"

    const-string v3, "Network info is null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    :cond_1
    const/4 v2, 0x0

    .line 1986
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 1983
    :cond_2
    sget-boolean v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v2, :cond_3

    .line 1984
    const-string v2, "KddiPacketSMSManager"

    const-string/jumbo v3, "isServiceState return[true]"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected kddiChangeNwDevice()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 684
    invoke-direct {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->isRoaming()Z

    move-result v3

    .line 685
    .local v3, isRoaming:Z
    sget-boolean v6, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v6, :cond_0

    .line 686
    const-string v6, "KddiPacketSMSManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isRoaming> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_0
    const/4 v4, 0x0

    .line 691
    .local v4, nvStr:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 693
    :try_start_0
    invoke-direct {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->getISmsInterface()Lcom/android/internal/telephony/ISms;

    move-result-object v6

    const-string v7, "C826831F"

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/ISms;->requestHtcDmCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 698
    :goto_0
    const-string v6, "KddiPacketSMSManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get NV Str> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-direct {p0, v4}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->decodeIPAddresses(Ljava/lang/String;)[Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$IPAddress;

    move-result-object v2

    .line 703
    .local v2, ips:[Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$IPAddress;
    if-eqz v2, :cond_1

    const/4 v6, 0x0

    aget-object v6, v2, v6

    if-nez v6, :cond_3

    .line 717
    .end local v2           #ips:[Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$IPAddress;
    :cond_1
    :goto_1
    return v5

    .line 696
    :cond_2
    invoke-direct {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->getISmsInterface()Lcom/android/internal/telephony/ISms;

    move-result-object v6

    const-string v7, "C826821F"

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/ISms;->requestHtcDmCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 704
    .restart local v2       #ips:[Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$IPAddress;
    :cond_3
    const/4 v6, 0x0

    aget-object v6, v2, v6

    iget-object v6, v6, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$IPAddress;->mIp:Ljava/lang/String;

    sput-object v6, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mKddiChatGateWayIP:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    sget-object v6, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mKddiChatGateWayIP:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 711
    sget-object v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mKddiChatGateWayIP:Ljava/lang/String;

    invoke-static {v5}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->lookupHost(Ljava/lang/String;)I

    move-result v1

    .line 712
    .local v1, ipAddress:I
    sget-boolean v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v5, :cond_4

    .line 713
    const-string v5, "KddiPacketSMSManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mKddiChatGateWayIP> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mKddiChatGateWayIP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const-string v5, "KddiPacketSMSManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ipAddress> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_4
    sget-object v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/16 v6, 0x17

    invoke-virtual {v5, v6, v1}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v5

    goto :goto_1

    .line 705
    .end local v1           #ipAddress:I
    .end local v2           #ips:[Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$IPAddress;
    :catch_0
    move-exception v0

    .line 706
    .local v0, ex:Landroid/os/RemoteException;
    const-string v6, "KddiPacketSMSManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dm command error> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected kddiCheckCmailProfile()I
    .locals 5

    .prologue
    .line 1148
    const-string v2, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "kddiCheckCmailProfile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    invoke-direct {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->isNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 1151
    .local v1, noNetwork:Z
    :goto_0
    const-string v2, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "noNetwork? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    if-eqz v1, :cond_5

    .line 1153
    sget-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mNetworkState:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1154
    const/4 v0, 0x2

    .line 1213
    .local v0, checkResult:I
    :goto_1
    sget-boolean v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v2, :cond_0

    .line 1214
    const-string v2, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "profile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mProfile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mNetworkState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const-string v2, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "return checkResult="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_0
    return v0

    .line 1150
    .end local v0           #checkResult:I
    .end local v1           #noNetwork:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1155
    .restart local v1       #noNetwork:Z
    :cond_2
    sget-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mNetworkState:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1156
    const/4 v0, 0x3

    .restart local v0       #checkResult:I
    goto :goto_1

    .line 1157
    .end local v0           #checkResult:I
    :cond_3
    sget-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mNetworkState:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1158
    const/4 v0, 0x0

    .restart local v0       #checkResult:I
    goto :goto_1

    .line 1160
    .end local v0           #checkResult:I
    :cond_4
    const/4 v0, 0x1

    .restart local v0       #checkResult:I
    goto :goto_1

    .line 1163
    .end local v0           #checkResult:I
    :cond_5
    sget-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mNetworkState:Ljava/lang/String;

    const-string v3, "CONNECTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1165
    const/4 v0, 0x7

    .restart local v0       #checkResult:I
    goto :goto_1

    .line 1168
    .end local v0           #checkResult:I
    :cond_6
    const/4 v0, -0x1

    .restart local v0       #checkResult:I
    goto :goto_1
.end method

.method protected kddiConnectSession()I
    .locals 3

    .prologue
    .line 541
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    .line 542
    const-string v0, "KddiPacketSMSManager"

    const-string/jumbo v1, "kddiConnectSession Called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableCMAIL"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected kddiConnectSocket()Z
    .locals 4

    .prologue
    .line 991
    sget-boolean v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v1, :cond_0

    .line 992
    const-string v1, "KddiPacketSMSManager"

    const-string/jumbo v2, "kddiConnectSocket Start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_0
    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->htcConnectSocket()Z

    move-result v0

    .line 995
    .local v0, bErr:Z
    if-eqz v0, :cond_1

    .line 997
    new-instance v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;

    invoke-direct {v1, p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;-><init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)V

    sput-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetReceiver:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;

    .line 998
    new-instance v1, Ljava/lang/Thread;

    sget-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetReceiver:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiResultReceiver;

    const-string v3, "KddiResultReceiver"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetRevThread:Ljava/lang/Thread;

    .line 1000
    :cond_1
    sget-boolean v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v1, :cond_2

    .line 1001
    const-string v1, "KddiPacketSMSManager"

    const-string/jumbo v2, "kddiConnectSocket End"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_2
    return v0
.end method

.method protected kddiDisconnectSession()I
    .locals 3

    .prologue
    .line 586
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    .line 587
    const-string v0, "KddiPacketSMSManager"

    const-string/jumbo v1, "kddiDisconnectSession Called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableCMAIL"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected kddiIsCallState()Z
    .locals 5

    .prologue
    .line 1017
    sget-boolean v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v2, :cond_0

    .line 1018
    const-string v2, "KddiPacketSMSManager"

    const-string/jumbo v3, "kddiIsCallState Start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_0
    sget-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1026
    .local v1, telManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1028
    const/4 v0, 0x1

    .line 1034
    .local v0, callState:Z
    :goto_0
    const-string v2, "KddiPacketSMSManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callState> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    sget-boolean v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v2, :cond_1

    .line 1038
    const-string v2, "KddiPacketSMSManager"

    const-string/jumbo v3, "kddiIsCallState End"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_1
    return v0

    .line 1031
    .end local v0           #callState:Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #callState:Z
    goto :goto_0
.end method

.method protected kddiRelease()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x4

    .line 1526
    iget-object v4, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    monitor-enter v4

    .line 1527
    :try_start_0
    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-eqz v3, :cond_b

    .line 1528
    sget-boolean v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v3, :cond_0

    .line 1529
    const-string v3, "KddiPacketSMSManager"

    const-string/jumbo v5, "kddiRelease Start"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :cond_0
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1534
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1535
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1536
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1539
    :try_start_1
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSocket:Ljava/net/Socket;

    if-eqz v3, :cond_1

    .line 1541
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 1542
    const/4 v3, 0x0

    sput-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSocket:Ljava/net/Socket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1552
    :cond_1
    :goto_0
    :try_start_2
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_3

    .line 1553
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mIntentfilter:Landroid/content/IntentFilter;

    if-eqz v3, :cond_2

    .line 1554
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v5, v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1556
    :cond_2
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1557
    const/4 v3, 0x0

    sput-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mIntentfilter:Landroid/content/IntentFilter;

    .line 1561
    :cond_3
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mDataConnectIntentRev:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_5

    .line 1562
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mDataConnectIntentfilter:Landroid/content/IntentFilter;

    if-eqz v3, :cond_4

    .line 1563
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v5, v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mDataConnectIntentRev:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1565
    :cond_4
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mDataConnectIntentRev:Landroid/content/BroadcastReceiver;

    .line 1566
    const/4 v3, 0x0

    sput-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mDataConnectIntentfilter:Landroid/content/IntentFilter;

    .line 1570
    :cond_5
    const/4 v3, 0x0

    sput-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mNetworkState:Ljava/lang/String;

    .line 1571
    const/4 v3, 0x0

    sput-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mProfile:Ljava/lang/String;

    .line 1573
    const/4 v3, 0x0

    sput-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mKddiChatGateWayIP:Ljava/lang/String;

    .line 1591
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetRevThread:Ljava/lang/Thread;

    if-eqz v3, :cond_6

    .line 1593
    const/4 v3, 0x0

    sput-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetRevThread:Ljava/lang/Thread;

    .line 1597
    :cond_6
    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eq v6, v3, :cond_9

    .line 1599
    const/4 v3, 0x5

    :try_start_3
    iget-object v5, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v5, v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-ne v3, v5, :cond_f

    .line 1600
    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mCancelRetIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_9

    .line 1601
    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mCancelRetIntent:Landroid/app/PendingIntent;

    sget v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mCancelResult:I

    invoke-virtual {v3, v5}, Landroid/app/PendingIntent;->send(I)V

    .line 1602
    sget-boolean v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v3, :cond_7

    .line 1603
    const-string v3, "KddiPacketSMSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send CancelResult ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mCancelResult:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    :cond_7
    iget-object v5, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1607
    :cond_8
    :goto_1
    :try_start_4
    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1608
    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;

    .line 1609
    .local v2, tracker:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;
    const-string v3, "KddiPacketSMSManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cancel tracker: tracker@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    const/4 v1, 0x0

    .line 1611
    .local v1, result:I
    iget v3, v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;->mSendingMode:I

    if-ne v8, v3, :cond_c

    .line 1612
    const/16 v1, 0x17

    .line 1618
    :goto_2
    iget-object v3, v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v1}, Landroid/app/PendingIntent;->send(I)V

    .line 1619
    sget-boolean v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v3, :cond_8

    .line 1620
    const-string v3, "KddiPacketSMSManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Send error result in queue["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1631
    .end local v1           #result:I
    .end local v2           #tracker:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1645
    :catch_0
    move-exception v0

    .line 1646
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    :try_start_6
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 1647
    sget-boolean v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v3, :cond_9

    .line 1648
    const-string v3, "KddiPacketSMSManager"

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    :cond_9
    :goto_3
    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    const/4 v5, 0x0

    iput v5, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    .line 1656
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLooper:Landroid/os/Looper;

    if-eqz v3, :cond_a

    .line 1659
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 1660
    const/4 v3, 0x0

    sput-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLooper:Landroid/os/Looper;

    .line 1663
    :cond_a
    sget-boolean v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v3, :cond_b

    .line 1664
    const-string v3, "KddiPacketSMSManager"

    const-string/jumbo v5, "kddiRelease End"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    :cond_b
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1670
    invoke-direct {p0, v8}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->checkFirstQueueMessage(Z)V

    .line 1672
    return-void

    .line 1544
    :catch_1
    move-exception v0

    .line 1545
    .local v0, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1546
    sget-boolean v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v3, :cond_1

    .line 1547
    const-string v3, "KddiPacketSMSManager"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1667
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3

    .line 1613
    .restart local v1       #result:I
    .restart local v2       #tracker:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;
    :cond_c
    :try_start_8
    iget v3, v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;->mSendingMode:I

    if-ne v9, v3, :cond_d

    .line 1614
    const/16 v1, 0x2b

    goto :goto_2

    .line 1616
    :cond_d
    const/4 v1, 0x1

    goto :goto_2

    .line 1631
    .end local v1           #result:I
    .end local v2           #tracker:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;
    :cond_e
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1633
    const/4 v3, 0x0

    :try_start_9
    iput-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mCancelRetIntent:Landroid/app/PendingIntent;

    goto :goto_3

    .line 1636
    :cond_f
    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendRetIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_9

    .line 1637
    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendRetIntent:Landroid/app/PendingIntent;

    sget v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    invoke-virtual {v3, v5}, Landroid/app/PendingIntent;->send(I)V

    .line 1638
    sget-boolean v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v3, :cond_10

    .line 1639
    const-string v3, "KddiPacketSMSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send SendResult ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    :cond_10
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendRetIntent:Landroid/app/PendingIntent;

    .line 1642
    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    const/4 v5, 0x4

    iput v5, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_3
.end method

.method public kddiSendCancel(Landroid/app/PendingIntent;)Z
    .locals 8
    .parameter "sentIntent"

    .prologue
    const/4 v5, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1861
    const/4 v2, 0x0

    .line 1862
    .local v2, bErr:Z
    sget-boolean v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v3, :cond_0

    .line 1863
    const-string v3, "KddiPacketSMSManager"

    const-string/jumbo v4, "kddiSendCancel Start"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    :cond_0
    iget-object v4, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    monitor-enter v4

    .line 1871
    :try_start_0
    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-eq v5, v3, :cond_8

    .line 1874
    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v1, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    .line 1875
    .local v1, SendState:I
    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendRetIntent:Landroid/app/PendingIntent;

    .line 1878
    .local v0, SendResultIntent:Landroid/app/PendingIntent;
    const/4 v3, 0x3

    iget-object v5, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v5, v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-eq v3, v5, :cond_1

    const/4 v3, 0x4

    iget-object v5, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v5, v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-ne v3, v5, :cond_6

    .line 1880
    :cond_1
    sget v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v6, v3, :cond_5

    .line 1881
    const/16 v3, 0xa

    sput v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mCancelResult:I

    .line 1896
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    const/4 v5, 0x5

    iput v5, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    .line 1897
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendRetIntent:Landroid/app/PendingIntent;

    .line 1898
    iput-object p1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mCancelRetIntent:Landroid/app/PendingIntent;

    .line 1901
    sget-object v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    sget-object v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v5, v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    .line 1903
    if-nez v2, :cond_3

    .line 1905
    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iput v1, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    .line 1906
    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendRetIntent:Landroid/app/PendingIntent;

    .line 1908
    sget-boolean v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v3, :cond_3

    .line 1909
    const-string v3, "KddiPacketSMSManager"

    const-string/jumbo v5, "sendMessage error [KDDI_EVENT_SEND_CANCEL]"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    .end local v0           #SendResultIntent:Landroid/app/PendingIntent;
    .end local v1           #SendState:I
    :cond_3
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1917
    sget-boolean v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v3, :cond_4

    .line 1918
    const-string v3, "KddiPacketSMSManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendCancel End : Request["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    :cond_4
    return v2

    .line 1882
    .restart local v0       #SendResultIntent:Landroid/app/PendingIntent;
    .restart local v1       #SendState:I
    :cond_5
    :try_start_1
    sget v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v7, v3, :cond_2

    .line 1883
    const/16 v3, 0x1e

    sput v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mCancelResult:I

    goto :goto_0

    .line 1916
    .end local v0           #SendResultIntent:Landroid/app/PendingIntent;
    .end local v1           #SendState:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1887
    .restart local v0       #SendResultIntent:Landroid/app/PendingIntent;
    .restart local v1       #SendState:I
    :cond_6
    :try_start_2
    sget v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v6, v3, :cond_7

    .line 1888
    const/16 v3, 0x18

    sput v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mCancelResult:I

    goto :goto_0

    .line 1889
    :cond_7
    sget v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v7, v3, :cond_2

    .line 1890
    const/16 v3, 0x2c

    sput v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mCancelResult:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1914
    .end local v0           #SendResultIntent:Landroid/app/PendingIntent;
    .end local v1           #SendState:I
    :cond_8
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public kddiSendSmsMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 9
    .parameter "context"
    .parameter "destAddr"
    .parameter "message"
    .parameter "sentIntent"
    .parameter "sendingMode"

    .prologue
    .line 308
    const-string v1, "KddiPacketSMSManager"

    const-string/jumbo v2, "kddiSendSmsMessage request Start!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;

    monitor-enter v8

    .line 310
    :try_start_0
    new-instance v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;-><init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 312
    .local v0, tracker:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;
    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mBgHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    .line 313
    .local v7, hasRequest:Z
    const-string v1, "KddiPacketSMSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queue number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v1, "KddiPacketSMSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSendState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v1, "KddiPacketSMSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "has request?: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    if-nez v7, :cond_0

    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v1, v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-eqz v1, :cond_1

    .line 318
    :cond_0
    const-string v1, "KddiPacketSMSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "put in queue: tracker@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    :goto_0
    monitor-exit v8

    .line 326
    return-void

    .line 322
    :cond_1
    invoke-virtual {p0, v0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiSendSmsMessage(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;)V

    goto :goto_0

    .line 324
    .end local v0           #tracker:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;
    .end local v7           #hasRequest:Z
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public kddiSendSmsMessage(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;)V
    .locals 12
    .parameter "tracker"

    .prologue
    .line 334
    const/4 v6, 0x0

    .line 335
    .local v6, bErr:Z
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    .line 336
    const-string v0, "KddiPacketSMSManager"

    const-string/jumbo v9, "kddiSendSmsMessage Start"

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    iget-object v1, p1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;->mContext:Landroid/content/Context;

    .line 340
    .local v1, context:Landroid/content/Context;
    iget-object v3, p1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;->mDestAddr:Ljava/lang/String;

    .line 341
    .local v3, destAddr:Ljava/lang/String;
    iget-object v2, p1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;->mMessage:Ljava/lang/String;

    .line 342
    .local v2, message:Ljava/lang/String;
    iget-object v4, p1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 343
    .local v4, sentIntent:Landroid/app/PendingIntent;
    iget v5, p1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$PacketTracker;->mSendingMode:I

    .line 347
    .local v5, sendingMode:I
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    if-eq v0, v5, :cond_5

    const/4 v0, 0x2

    if-eq v0, v5, :cond_5

    const/4 v0, 0x3

    if-eq v0, v5, :cond_5

    .line 349
    :cond_1
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_2

    .line 350
    const-string v0, "KddiPacketSMSManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "illegal param context = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/sendingMode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_2
    if-eqz v4, :cond_3

    .line 355
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v4, v0}, Landroid/app/PendingIntent;->send(I)V

    .line 356
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_3

    .line 357
    const-string v0, "KddiPacketSMSManager"

    const-string v9, "Send SendResult[RESULT_ERROR_GENERIC_FAILURE]"

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :cond_3
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->checkFirstQueueMessage(Z)V

    .line 505
    :cond_4
    :goto_1
    return-void

    .line 359
    :catch_0
    move-exception v8

    .line 360
    .local v8, e:Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v8}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 361
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v0, :cond_3

    .line 362
    const-string v0, "KddiPacketSMSManager"

    invoke-virtual {v8}, Landroid/app/PendingIntent$CanceledException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 372
    .end local v8           #e:Landroid/app/PendingIntent$CanceledException;
    :cond_5
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->isRadioState(Landroid/content/Context;)Z

    move-result v7

    .line 373
    .local v7, bReturn:Z
    if-nez v7, :cond_a

    .line 374
    if-eqz v4, :cond_6

    .line 376
    const/4 v0, 0x1

    if-ne v0, v5, :cond_8

    .line 378
    const/16 v0, 0x17

    invoke-virtual {v4, v0}, Landroid/app/PendingIntent;->send(I)V

    .line 387
    :cond_6
    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->checkFirstQueueMessage(Z)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 410
    .end local v7           #bReturn:Z
    :catch_1
    move-exception v8

    .line 411
    .restart local v8       #e:Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v8}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 412
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v0, :cond_7

    .line 413
    const-string v0, "KddiPacketSMSManager"

    invoke-virtual {v8}, Landroid/app/PendingIntent$CanceledException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->checkFirstQueueMessage(Z)V

    goto :goto_1

    .line 379
    .end local v8           #e:Landroid/app/PendingIntent$CanceledException;
    .restart local v7       #bReturn:Z
    :cond_8
    const/4 v0, 0x2

    if-ne v0, v5, :cond_9

    .line 381
    const/16 v0, 0x2b

    :try_start_2
    invoke-virtual {v4, v0}, Landroid/app/PendingIntent;->send(I)V

    goto :goto_2

    .line 384
    :cond_9
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Landroid/app/PendingIntent;->send(I)V

    goto :goto_2

    .line 392
    :cond_a
    invoke-virtual {p0, v1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->isServiceState(Landroid/content/Context;)Z

    move-result v7

    .line 393
    if-nez v7, :cond_e

    .line 394
    if-eqz v4, :cond_b

    .line 396
    const/4 v0, 0x1

    if-ne v0, v5, :cond_c

    .line 398
    const/16 v0, 0x17

    invoke-virtual {v4, v0}, Landroid/app/PendingIntent;->send(I)V

    .line 407
    :cond_b
    :goto_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->checkFirstQueueMessage(Z)V

    goto :goto_1

    .line 399
    :cond_c
    const/4 v0, 0x2

    if-ne v0, v5, :cond_d

    .line 401
    const/16 v0, 0x2b

    invoke-virtual {v4, v0}, Landroid/app/PendingIntent;->send(I)V

    goto :goto_3

    .line 404
    :cond_d
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 419
    :cond_e
    const-string v0, "KddiPacketSMSManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Send State: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-eqz v0, :cond_11

    const/4 v0, 0x6

    iget-object v9, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v9, v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-eq v0, v9, :cond_11

    .line 423
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    sget-object v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v9, v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/4 v10, 0x7

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v5, v11, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v6

    .line 425
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v0, :cond_f

    .line 426
    if-nez v6, :cond_f

    .line 427
    const-string v0, "KddiPacketSMSManager"

    const-string/jumbo v9, "sendMessage error [KDDI_EVENT_MULTIPLE_SEND_ERROR]"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_f
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_10

    .line 431
    const-string v0, "KddiPacketSMSManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sending State["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_10
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->checkFirstQueueMessage(Z)V

    goto/16 :goto_1

    .line 435
    :cond_11
    const/4 v0, 0x6

    iget-object v9, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v9, v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-ne v0, v9, :cond_14

    const/4 v0, 0x2

    if-eq v5, v0, :cond_14

    .line 437
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    sget-object v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v9, v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/4 v10, 0x7

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v5, v11, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v6

    .line 439
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v0, :cond_12

    .line 440
    if-nez v6, :cond_12

    .line 441
    const-string v0, "KddiPacketSMSManager"

    const-string/jumbo v9, "sendMessage error [KDDI_EVENT_MULTIPLE_SEND_ERROR]"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_12
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_13

    .line 445
    const-string v0, "KddiPacketSMSManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sending State["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v10, v10, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]/illegal param"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->checkFirstQueueMessage(Z)V

    goto/16 :goto_1

    :cond_14
    move-object v0, p0

    .line 452
    invoke-direct/range {v0 .. v5}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiInitFieldVariable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 453
    const-string v0, "KddiPacketSMSManager"

    const-string/jumbo v9, "kddiInitFieldVariable: [KDDI_SEND_STATE_REQUESTED]"

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_15

    .line 457
    new-instance v0, Landroid/os/HandlerThread;

    const-string v9, "KddiPacketSMSManager"

    invoke-direct {v0, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mthread:Landroid/os/HandlerThread;

    .line 458
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mthread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 459
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mthread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mLooper:Landroid/os/Looper;

    .line 462
    new-instance v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    invoke-direct {v0, p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;-><init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)V

    sput-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    .line 463
    new-instance v0, Ljava/lang/Thread;

    sget-object v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    const-string v10, "PacketSMSSender"

    invoke-direct {v0, v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSenderThread:Ljava/lang/Thread;

    .line 464
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSenderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 467
    :cond_15
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    sget-object v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v9, v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v6

    .line 468
    if-nez v6, :cond_17

    .line 469
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_16

    .line 470
    const-string v0, "KddiPacketSMSManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sendMessage [KDDI_EVENT_REQ_SEND_MSG] return = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_16
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    sget-object v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v9, v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v6

    .line 474
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v0, :cond_4

    .line 475
    if-nez v6, :cond_4

    .line 476
    const-string v0, "KddiPacketSMSManager"

    const-string/jumbo v9, "sendMessage error [KDDI_EVENT_PACKETSMSMGR_SYS_ERROR]"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 485
    :cond_17
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    sget-object v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v9, v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/32 v10, 0x2bf20

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v6

    .line 487
    if-nez v6, :cond_19

    .line 488
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_18

    .line 489
    const-string v0, "KddiPacketSMSManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sendMessageDelayed [KDDI_EVENT_CLOSE_SESSION] return = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_18
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    sget-object v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v9, v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v6

    .line 493
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v0, :cond_4

    .line 494
    if-nez v6, :cond_4

    .line 495
    const-string v0, "KddiPacketSMSManager"

    const-string/jumbo v9, "sendMessage error [KDDI_EVENT_PACKETSMSMGR_SYS_ERROR]"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 502
    :cond_19
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_4

    .line 503
    const-string v0, "KddiPacketSMSManager"

    const-string/jumbo v9, "kddiSendSmsMessage End"

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected kddiSetIntentFilter()V
    .locals 3

    .prologue
    .line 1475
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mIntentfilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 1476
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    .line 1477
    const-string v0, "KddiPacketSMSManager"

    const-string/jumbo v1, "kddiSetIntentFilter Start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mIntentfilter:Landroid/content/IntentFilter;

    .line 1480
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mIntentfilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1482
    sget-object v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v1, v1, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mIntentfilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1483
    sget-boolean v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v0, :cond_1

    .line 1484
    const-string v0, "KddiPacketSMSManager"

    const-string/jumbo v1, "kddiSetIntentFilter End"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :cond_1
    return-void
.end method

.method protected kddiWriteSocket()V
    .locals 13

    .prologue
    const/16 v12, 0x2b

    const/16 v11, 0x17

    const/4 v5, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1234
    :try_start_0
    sget v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v5, v4, :cond_2

    .line 1235
    sget-boolean v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v4, :cond_0

    .line 1236
    const-string v4, "KddiPacketSMSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SendingMode["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_0
    sget-object v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mDestNumber:Ljava/lang/String;

    sget-object v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mMessageBody:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->kddiCreateSendMessage(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1244
    .local v3, ircData:Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_6

    .line 1245
    sget-boolean v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v4, :cond_1

    .line 1246
    const-string v4, "KddiPacketSMSManager"

    const-string v5, "Change IRCformat Err"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_1
    sget v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v9, v4, :cond_3

    .line 1250
    const/16 v4, 0x17

    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 1259
    :goto_1
    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    .line 1372
    .end local v3           #ircData:Ljava/lang/String;
    :goto_2
    return-void

    .line 1240
    :cond_2
    sget-object v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mDestNumber:Ljava/lang/String;

    sget-object v5, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mMessageBody:Ljava/lang/String;

    sget v6, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    invoke-static {v4, v5, v6}, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->kddiCreateSendMessage(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #ircData:Ljava/lang/String;
    goto :goto_0

    .line 1251
    :cond_3
    sget v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v10, v4, :cond_5

    .line 1253
    const/16 v4, 0x2b

    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1353
    .end local v3           #ircData:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1354
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1355
    sget-boolean v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_DEBUG_LOG:Z

    if-eqz v4, :cond_4

    .line 1356
    const-string v4, "KddiPacketSMSManager"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_4
    sget v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v9, v4, :cond_15

    .line 1360
    sput v11, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 1369
    :goto_3
    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    goto :goto_2

    .line 1256
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #ircData:Ljava/lang/String;
    :cond_5
    const/4 v4, 0x3

    :try_start_1
    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_1

    .line 1262
    :cond_6
    sget-boolean v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v4, :cond_7

    .line 1263
    const-string v4, "KddiPacketSMSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mPsmsSendMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    const-string v4, "KddiPacketSMSManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ircData = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_7
    const-string/jumbo v4, "kddi-emoji"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    new-array v0, v4, [B

    .line 1268
    .local v0, Message:[B
    const-string/jumbo v4, "kddi-emoji"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1271
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->kddiChangeCmailPictCharCode([BI)[B

    move-result-object v0

    .line 1272
    if-nez v0, :cond_b

    .line 1273
    sget-boolean v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v4, :cond_8

    .line 1274
    const-string v4, "KddiPacketSMSManager"

    const-string v5, "Change PictCharCode Err"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_8
    sget v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v9, v4, :cond_9

    .line 1278
    const/16 v4, 0x17

    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 1287
    :goto_4
    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    goto/16 :goto_2

    .line 1279
    :cond_9
    sget v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v10, v4, :cond_a

    .line 1281
    const/16 v4, 0x2b

    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_4

    .line 1284
    :cond_a
    const/4 v4, 0x3

    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_4

    .line 1292
    :cond_b
    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiIsCallState()Z

    move-result v4

    if-ne v9, v4, :cond_f

    .line 1293
    sget-boolean v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v4, :cond_c

    .line 1294
    const-string v4, "KddiPacketSMSManager"

    const-string v5, "ON Calling"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_c
    sget v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v9, v4, :cond_d

    .line 1298
    const/16 v4, 0x16

    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 1305
    :goto_5
    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    goto/16 :goto_2

    .line 1299
    :cond_d
    sget v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v10, v4, :cond_e

    .line 1300
    const/16 v4, 0x2a

    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_5

    .line 1302
    :cond_e
    const/4 v4, 0x1

    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_5

    .line 1309
    :cond_f
    iget-object v5, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    monitor-enter v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1310
    :try_start_2
    iget-object v4, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v4, v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-ne v10, v4, :cond_14

    .line 1312
    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiConnectSocket()Z

    move-result v1

    .line 1313
    .local v1, bErr:Z
    if-nez v1, :cond_12

    .line 1314
    sget v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v9, v4, :cond_10

    .line 1316
    const/16 v4, 0x17

    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    .line 1325
    :goto_6
    invoke-virtual {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->kddiRelease()V

    .line 1326
    monitor-exit v5

    goto/16 :goto_2

    .line 1351
    .end local v1           #bErr:Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1317
    .restart local v1       #bErr:Z
    :cond_10
    :try_start_4
    sget v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v10, v4, :cond_11

    .line 1319
    const/16 v4, 0x2b

    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_6

    .line 1322
    :cond_11
    const/4 v4, 0x1

    sput v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto :goto_6

    .line 1329
    :cond_12
    sget-object v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mRetRevThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 1331
    sget-boolean v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v4, :cond_13

    .line 1332
    const-string v4, "KddiPacketSMSManager"

    const-string v6, "Message Send"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :cond_13
    sget-object v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1337
    sget-object v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 1339
    iget-object v4, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    const/4 v6, 0x3

    iput v6, v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    .line 1343
    sget-object v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v4, v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    sget-object v6, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSender:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v6, v6, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->mSenderHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/32 v7, 0x15f90

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    .line 1345
    sget-boolean v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->KDDI_OUTPUT_VERBOSE_LOG:Z

    if-eqz v4, :cond_14

    .line 1346
    if-nez v1, :cond_14

    .line 1347
    const-string v4, "KddiPacketSMSManager"

    const-string v6, "EVETN_CLOSE_SOCKET Register Failed"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    .end local v1           #bErr:Z
    :cond_14
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 1361
    .end local v0           #Message:[B
    .end local v3           #ircData:Ljava/lang/String;
    .restart local v2       #e:Ljava/io/IOException;
    :cond_15
    sget v4, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPsmsSendMode:I

    if-ne v10, v4, :cond_16

    .line 1363
    sput v12, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto/16 :goto_3

    .line 1366
    :cond_16
    sput v9, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mReturnSendResult:I

    goto/16 :goto_3
.end method

.method public setISmsInterface(Lcom/android/internal/telephony/ISms;)V
    .locals 0
    .parameter "isms"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mISms:Lcom/android/internal/telephony/ISms;

    .line 270
    return-void
.end method
