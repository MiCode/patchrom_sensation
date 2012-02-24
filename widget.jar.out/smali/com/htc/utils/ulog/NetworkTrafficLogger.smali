.class public Lcom/htc/utils/ulog/NetworkTrafficLogger;
.super Ljava/lang/Object;
.source "NetworkTrafficLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/utils/ulog/NetworkTrafficLogger$FullScanRunnable;,
        Lcom/htc/utils/ulog/NetworkTrafficLogger$ProcessCpuTimeLoader;
    }
.end annotation


# static fields
.field private static final ACTION_LOG_NETWORK_FULL_SCAN:Ljava/lang/String; = "com.htc.htcnetworkmonitor.action.LOG_NETWORK_FULL_SCAN"

.field public static final CATEGORY_BACKGROUND:Ljava/lang/String; = "network_traffic_background"

.field public static final CATEGORY_DEFAULT:Ljava/lang/String; = "network_traffic"

.field public static final CATEGORY_DOWNLOAD:Ljava/lang/String; = "network_traffic_download"

.field public static final CATEGORY_FOREGROUND:Ljava/lang/String; = "network_traffic_foreground"

.field public static final CATEGORY_FULL_SCAN:Ljava/lang/String; = "network_traffic_full_scan"

.field public static final CATEGORY_SYNC:Ljava/lang/String; = "network_traffic_sync"

.field private static final DATA_SEPARATOR:Ljava/lang/String; = ","

.field public static final DATA_TRANSMISSION_CATEGORY_BACKGROUND:I = 0x1

.field public static final DATA_TRANSMISSION_CATEGORY_DOWNLOAD:I = 0x3

.field public static final DATA_TRANSMISSION_CATEGORY_FOREGROUND:I = 0x0

.field public static final DATA_TRANSMISSION_CATEGORY_FULL_SCAN:I = 0x4

.field public static final DATA_TRANSMISSION_CATEGORY_SYNC:I = 0x2

.field public static final DATA_TRANSMISSION_TYPE_RECEIVED:I = 0xa

.field public static final DATA_TRANSMISSION_TYPE_SENT:I = 0xb

#the value of this static final field might be set in the static constructor
.field public static final DEBUG:Z = false

.field public static final FULL_SCAN_INTERVAL:J = 0x5265c00L

.field private static final INTERFACE_PORTABLE_HOTSPOT:Ljava/lang/String; = "wl0.1"

.field private static final INTERFACE_USB:Ljava/lang/String; = "usb0"

.field private static final KEY_AUTHORITY:Ljava/lang/String; = "authority"

.field private static final KEY_CATEGORY:Ljava/lang/String; = "category"

.field private static final KEY_ELAPSED_TIME:Ljava/lang/String; = "elapsed_time"

.field private static final KEY_HOTSPOT_RECEIVED:Ljava/lang/String; = "hotspot_rx"

.field private static final KEY_HOTSPOT_SENT:Ljava/lang/String; = "hotspot_tx"

.field private static final KEY_MARK:Ljava/lang/String; = "mark"

.field private static final KEY_MOBILE_RECEIVED:Ljava/lang/String; = "mobile_rx"

.field private static final KEY_MOBILE_SENT:Ljava/lang/String; = "mobile_tx"

.field private static final KEY_PER_UID_RECEIVED:Ljava/lang/String; = "per-uid_rx"

.field private static final KEY_PER_UID_SENT:Ljava/lang/String; = "per-uid_tx"

.field private static final KEY_PID:Ljava/lang/String; = "pid"

.field private static final KEY_PROCESS_NAME:Ljava/lang/String; = "process_name"

.field private static final KEY_SYSTEM_TIME:Ljava/lang/String; = "system_time"

.field private static final KEY_TID:Ljava/lang/String; = "tid"

.field private static final KEY_TIME:Ljava/lang/String; = "time"

.field private static final KEY_TOTAL_RECEIVED:Ljava/lang/String; = "total_rx"

.field private static final KEY_TOTAL_SENT:Ljava/lang/String; = "total_tx"

.field private static final KEY_UID:Ljava/lang/String; = "uid"

.field private static final KEY_UID_NAME:Ljava/lang/String; = "uidName"

.field private static final KEY_UPTIME:Ljava/lang/String; = "uptime"

.field private static final KEY_USB_RECEIVED:Ljava/lang/String; = "usb_rx"

.field private static final KEY_USB_SENT:Ljava/lang/String; = "usb_sent"

.field private static final KEY_USER_TIME:Ljava/lang/String; = "user_time"

.field public static final LOG_MARK_BEGIN:I = 0x15

.field public static final LOG_MARK_END:I = 0x16

.field public static final LOG_MARK_NORMAL:I = 0x14

.field public static final MARK_BEGIN:Ljava/lang/String; = "begin"

.field public static final MARK_END:Ljava/lang/String; = "end"

.field public static final MARK_NORMAL:Ljava/lang/String; = "normal"

.field private static final TAG:Ljava/lang/String; = "NetworkTrafficLogger"

.field public static final TYPE_RECEIVED:I = 0x1e

.field public static final TYPE_SENT:I = 0x1f

.field private static final UID_TRAFFIC_STAT_DIR:Ljava/lang/String; = "/proc/uid_stat/"

.field private static final ULOG_APP_ID:Ljava/lang/String; = "system_server"

.field private static final ULOG_CATEGORY:Ljava/lang/String; = "data_traffic"

.field public static final UNDEFINED:Ljava/lang/String; = "undefined"

.field private static mDate:Ljava/util/Date;

.field private static mFormat:Ljava/text/SimpleDateFormat;

.field private static mLogger:Lcom/htc/utils/ulog/NetworkTrafficLogger;

.field private static mPackageManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/pm/IPackageManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLoader:Lcom/htc/utils/ulog/NetworkTrafficLogger$ProcessCpuTimeLoader;

.field private mTetheredInterface:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1114
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/utils/ulog/NetworkTrafficLogger;->mLogger:Lcom/htc/utils/ulog/NetworkTrafficLogger;

    .line 1115
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/htc/utils/ulog/NetworkTrafficLogger;->mDate:Ljava/util/Date;

    .line 1116
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, d MMM yyyy HH:mm:ss z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/utils/ulog/NetworkTrafficLogger;->mFormat:Ljava/text/SimpleDateFormat;

    .line 1189
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isFactoryRom()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/utils/ulog/Util;->isUserRom()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/utils/ulog/NetworkTrafficLogger;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1112
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/htc/utils/ulog/NetworkTrafficLogger;->mTetheredInterface:Ljava/util/Set;

    .line 503
    sget-boolean v0, Lcom/htc/utils/ulog/NetworkTrafficLogger;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkTrafficLogger"

    const-string v1, "Instantiate NetworkTrafficLogger."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_0
    new-instance v0, Lcom/htc/utils/ulog/NetworkTrafficLogger$ProcessCpuTimeLoader;

    invoke-direct {v0}, Lcom/htc/utils/ulog/NetworkTrafficLogger$ProcessCpuTimeLoader;-><init>()V

    iput-object v0, p0, Lcom/htc/utils/ulog/NetworkTrafficLogger;->mLoader:Lcom/htc/utils/ulog/NetworkTrafficLogger$ProcessCpuTimeLoader;

    .line 506
    return-void
.end method

.method static synthetic access$000()Ljava/util/Date;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/htc/utils/ulog/NetworkTrafficLogger;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$100()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/htc/utils/ulog/NetworkTrafficLogger;->mFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/utils/ulog/NetworkTrafficLogger;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/utils/ulog/NetworkTrafficLogger;->mTetheredInterface:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/utils/ulog/NetworkTrafficLogger;Ljava/lang/String;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->getInterfaceRx(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/htc/utils/ulog/NetworkTrafficLogger;Ljava/lang/String;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->getInterfaceTx(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-static {p0}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/utils/ulog/NetworkTrafficLogger;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->logTransmissionAll(Landroid/content/Context;)V

    return-void
.end method

.method private getCategory(I)Ljava/lang/String;
    .locals 1
    .parameter "num"

    .prologue
    .line 1037
    packed-switch p1, :pswitch_data_0

    .line 1049
    const-string v0, "network_traffic"

    :goto_0
    return-object v0

    .line 1039
    :pswitch_0
    const-string v0, "network_traffic_foreground"

    goto :goto_0

    .line 1041
    :pswitch_1
    const-string v0, "network_traffic_background"

    goto :goto_0

    .line 1043
    :pswitch_2
    const-string v0, "network_traffic_sync"

    goto :goto_0

    .line 1045
    :pswitch_3
    const-string v0, "network_traffic_download"

    goto :goto_0

    .line 1047
    :pswitch_4
    const-string v0, "network_traffic_full_scan"

    goto :goto_0

    .line 1037
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getInstance()Lcom/htc/utils/ulog/NetworkTrafficLogger;
    .locals 2

    .prologue
    .line 485
    sget-object v0, Lcom/htc/utils/ulog/NetworkTrafficLogger;->mLogger:Lcom/htc/utils/ulog/NetworkTrafficLogger;

    if-nez v0, :cond_1

    .line 486
    const-class v1, Lcom/htc/utils/ulog/NetworkTrafficLogger;

    monitor-enter v1

    .line 487
    :try_start_0
    sget-object v0, Lcom/htc/utils/ulog/NetworkTrafficLogger;->mLogger:Lcom/htc/utils/ulog/NetworkTrafficLogger;

    if-nez v0, :cond_0

    .line 488
    new-instance v0, Lcom/htc/utils/ulog/NetworkTrafficLogger;

    invoke-direct {v0}, Lcom/htc/utils/ulog/NetworkTrafficLogger;-><init>()V

    sput-object v0, Lcom/htc/utils/ulog/NetworkTrafficLogger;->mLogger:Lcom/htc/utils/ulog/NetworkTrafficLogger;

    .line 490
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    :cond_1
    sget-object v0, Lcom/htc/utils/ulog/NetworkTrafficLogger;->mLogger:Lcom/htc/utils/ulog/NetworkTrafficLogger;

    return-object v0

    .line 490
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getInterfaceDataTransmission(Ljava/lang/String;I)J
    .locals 12
    .parameter "ifname"
    .parameter "type"

    .prologue
    const-wide/16 v7, -0x1

    .line 972
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/sys/class/net/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/statistics/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 973
    .local v0, dir:Ljava/lang/String;
    move-object v3, v0

    .line 975
    .local v3, fileName:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 983
    const-string v9, "NetworkTrafficLogger"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Undefined transmission type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for interface: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_0
    :goto_0
    return-wide v7

    .line 977
    :pswitch_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "rx_bytes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 987
    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 988
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 989
    const-string v9, "NetworkTrafficLogger"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " does not exist!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 980
    .end local v2           #file:Ljava/io/File;
    :pswitch_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "tx_bytes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 981
    goto :goto_1

    .line 993
    .restart local v2       #file:Ljava/io/File;
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v9

    if-nez v9, :cond_2

    .line 994
    const-string v9, "NetworkTrafficLogger"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cannot be recognized as a file by the system."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 998
    :cond_2
    const/4 v4, 0x0

    .line 999
    .local v4, line:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1000
    .local v5, reader:Ljava/io/BufferedReader;
    const-wide/16 v7, -0x1

    .line 1002
    .local v7, trans:J
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1003
    .end local v5           #reader:Ljava/io/BufferedReader;
    .local v6, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 1004
    if-eqz v4, :cond_3

    .line 1005
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_8

    move-result-wide v7

    .line 1016
    :cond_3
    if-eqz v6, :cond_0

    .line 1018
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1019
    :catch_0
    move-exception v1

    .line 1020
    .local v1, e:Ljava/io/IOException;
    const-string v9, "NetworkTrafficLogger"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close the file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .end local v6           #reader:Ljava/io/BufferedReader;
    :goto_2
    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1007
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 1008
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    const-string v9, "NetworkTrafficLogger"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot open the file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1016
    if-eqz v5, :cond_0

    .line 1018
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1019
    :catch_2
    move-exception v1

    .line 1020
    .local v1, e:Ljava/io/IOException;
    const-string v9, "NetworkTrafficLogger"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close the file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 1009
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 1010
    .restart local v1       #e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v9, "NetworkTrafficLogger"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot read the file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1016
    if-eqz v5, :cond_0

    .line 1018
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 1019
    :catch_4
    move-exception v1

    .line 1020
    const-string v9, "NetworkTrafficLogger"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close the file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 1011
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 1012
    .local v1, e:Ljava/lang/NumberFormatException;
    :goto_5
    :try_start_7
    const-string v9, "NetworkTrafficLogger"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot parse the string: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " which is read from the file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1016
    if-eqz v5, :cond_0

    .line 1018
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 1019
    :catch_6
    move-exception v1

    .line 1020
    .local v1, e:Ljava/io/IOException;
    const-string v9, "NetworkTrafficLogger"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close the file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 1016
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_6
    if-eqz v5, :cond_0

    .line 1018
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_0

    .line 1019
    :catch_7
    move-exception v1

    .line 1020
    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "NetworkTrafficLogger"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close the file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 1016
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto :goto_6

    .line 1011
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_8
    move-exception v1

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_5

    .line 1009
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_9
    move-exception v1

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 1007
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_a
    move-exception v1

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 975
    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getInterfaceRx(Ljava/lang/String;)J
    .locals 2
    .parameter "ifname"

    .prologue
    .line 940
    const/16 v0, 0x1e

    invoke-direct {p0, p1, v0}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->getInterfaceDataTransmission(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getInterfaceTx(Ljava/lang/String;)J
    .locals 2
    .parameter "ifname"

    .prologue
    .line 953
    const/16 v0, 0x1f

    invoke-direct {p0, p1, v0}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->getInterfaceDataTransmission(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getMark(I)Ljava/lang/String;
    .locals 1
    .parameter "num"

    .prologue
    .line 1062
    packed-switch p1, :pswitch_data_0

    .line 1070
    const-string v0, "undefined"

    :goto_0
    return-object v0

    .line 1064
    :pswitch_0
    const-string v0, "normal"

    goto :goto_0

    .line 1066
    :pswitch_1
    const-string v0, "begin"

    goto :goto_0

    .line 1068
    :pswitch_2
    const-string v0, "end"

    goto :goto_0

    .line 1062
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getNameForUid(I)Ljava/lang/String;
    .locals 6
    .parameter "uid"

    .prologue
    .line 683
    const/4 v2, 0x0

    .line 684
    .local v2, name:Ljava/lang/String;
    invoke-static {}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 685
    .local v1, manager:Landroid/content/pm/IPackageManager;
    if-eqz v1, :cond_0

    .line 687
    :try_start_0
    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 694
    :goto_0
    return-object v2

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "NetworkTrafficLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNameForUid() cannot get uid name because of transaction error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 692
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "NetworkTrafficLogger"

    const-string v4, "getNameForUid() cannot get PackageManger."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1083
    sget-object v3, Lcom/htc/utils/ulog/NetworkTrafficLogger;->mPackageManager:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    .line 1084
    sget-object v3, Lcom/htc/utils/ulog/NetworkTrafficLogger;->mPackageManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IPackageManager;

    .line 1085
    .local v1, manager:Landroid/content/pm/IPackageManager;
    if-eqz v1, :cond_0

    .line 1106
    .end local v1           #manager:Landroid/content/pm/IPackageManager;
    :goto_0
    return-object v1

    .line 1088
    .restart local v1       #manager:Landroid/content/pm/IPackageManager;
    :cond_0
    sget-object v3, Lcom/htc/utils/ulog/NetworkTrafficLogger;->mPackageManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1089
    sput-object v2, Lcom/htc/utils/ulog/NetworkTrafficLogger;->mPackageManager:Ljava/lang/ref/WeakReference;

    .line 1093
    :cond_1
    const-string v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1094
    .local v0, binder:Landroid/os/IBinder;
    if-eqz v0, :cond_3

    .line 1095
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 1096
    if-eqz v1, :cond_2

    .line 1097
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/htc/utils/ulog/NetworkTrafficLogger;->mPackageManager:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 1100
    :cond_2
    const-string v3, "NetworkTrafficLogger"

    const-string v4, "Cannot access PackageManager."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v1, v2

    .line 1106
    goto :goto_0

    .line 1103
    :cond_3
    const-string v3, "NetworkTrafficLogger"

    const-string v4, "Cannot get the binder via ServiceManager.getService(\"package\")"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getProcessNameFromPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "packageName"

    .prologue
    .line 705
    if-nez p0, :cond_1

    .line 706
    const-string v4, "NetworkTrafficLogger"

    const-string v5, "Package name should not be null for method getProcessNameFromPackageName()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/4 v3, 0x0

    .line 723
    :cond_0
    :goto_0
    return-object v3

    .line 709
    :cond_1
    const/4 v3, 0x0

    .line 710
    .local v3, name:Ljava/lang/String;
    invoke-static {}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 711
    .local v2, manager:Landroid/content/pm/IPackageManager;
    if-eqz v2, :cond_2

    .line 713
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v2, p0, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 714
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 715
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 717
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 718
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "NetworkTrafficLogger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getProcessNameFromPackageName() cannot get process name because of transactin error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 721
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v4, "NetworkTrafficLogger"

    const-string v5, "getProcessNameFromPackageName() cannot get PackageManager."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getUidFromPackageName(Ljava/lang/String;)I
    .locals 7
    .parameter "packageName"

    .prologue
    .line 734
    if-nez p0, :cond_1

    .line 735
    const-string v4, "NetworkTrafficLogger"

    const-string v5, "Package name should not be null for method getUidFromPackageName()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/4 v3, -0x1

    .line 752
    :cond_0
    :goto_0
    return v3

    .line 738
    :cond_1
    const/4 v3, -0x1

    .line 739
    .local v3, uid:I
    invoke-static {}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 740
    .local v2, manager:Landroid/content/pm/IPackageManager;
    if-eqz v2, :cond_2

    .line 742
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v2, p0, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 743
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 744
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 746
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 747
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "NetworkTrafficLogger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUidFromPackageName() cannot get uid because of transaction error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 750
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v4, "NetworkTrafficLogger"

    const-string v5, "getUidFromPackageName() cannot get PackageManager."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static logNetworkTraffic(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .parameter "uid"
    .parameter "packageName"
    .parameter "authority"
    .parameter "categoryNum"
    .parameter "markNum"

    .prologue
    .line 769
    :try_start_0
    invoke-static {}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->getInstance()Lcom/htc/utils/ulog/NetworkTrafficLogger;

    move-result-object v0

    .line 770
    .local v0, logger:Lcom/htc/utils/ulog/NetworkTrafficLogger;
    invoke-static {p0}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 771
    .local v2, uidName:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->getProcessNameFromPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, processName:Ljava/lang/String;
    move v1, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 772
    invoke-direct/range {v0 .. v6}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->printNetworkTrafficLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    .end local v0           #logger:Lcom/htc/utils/ulog/NetworkTrafficLogger;
    .end local v2           #uidName:Ljava/lang/String;
    .end local v3           #processName:Ljava/lang/String;
    :goto_0
    return-void

    .line 773
    :catch_0
    move-exception v7

    .line 774
    .local v7, e:Ljava/lang/RuntimeException;
    const-string v1, "NetworkTrafficLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot print the logs for network traffic: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static logSync(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "uid"
    .parameter "packageName"
    .parameter "authority"
    .parameter "mark"

    .prologue
    .line 571
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0, p3}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->logNetworkTraffic(ILjava/lang/String;Ljava/lang/String;II)V

    .line 572
    return-void
.end method

.method public static logSyncBegin(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uid"
    .parameter "packageName"
    .parameter "authority"

    .prologue
    .line 543
    sget-boolean v0, Lcom/htc/utils/ulog/NetworkTrafficLogger;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkTrafficLogger"

    const-string v1, ">> logSyncBegin()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_0
    const/16 v0, 0x15

    invoke-static {p0, p1, p2, v0}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->logSync(ILjava/lang/String;Ljava/lang/String;I)V

    .line 545
    return-void
.end method

.method public static logSyncEnd(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uid"
    .parameter "packageName"
    .parameter "authority"

    .prologue
    .line 557
    sget-boolean v0, Lcom/htc/utils/ulog/NetworkTrafficLogger;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkTrafficLogger"

    const-string v1, "<< logSyncEnd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_0
    const/16 v0, 0x16

    invoke-static {p0, p1, p2, v0}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->logSync(ILjava/lang/String;Ljava/lang/String;I)V

    .line 559
    return-void
.end method

.method public static logTransmission(ILjava/lang/String;I)V
    .locals 2
    .parameter "category"
    .parameter "packageName"
    .parameter "mark"

    .prologue
    .line 622
    invoke-static {p1}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->getUidFromPackageName(Ljava/lang/String;)I

    move-result v0

    .line 623
    .local v0, uid:I
    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p0, p2}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->logNetworkTraffic(ILjava/lang/String;Ljava/lang/String;II)V

    .line 624
    return-void
.end method

.method private logTransmissionAll(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 517
    sget-boolean v6, Lcom/htc/utils/ulog/NetworkTrafficLogger;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "NetworkTrafficLogger"

    const-string v7, ">> logTransmissionALL()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    iget-object v6, p0, Lcom/htc/utils/ulog/NetworkTrafficLogger;->mTetheredInterface:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 521
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 522
    .local v1, cm:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 523
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 524
    .local v4, ifaces:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v0, v2

    .line 525
    .local v3, iface:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/utils/ulog/NetworkTrafficLogger;->mTetheredInterface:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 524
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 530
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #iface:Ljava/lang/String;
    .end local v4           #ifaces:[Ljava/lang/String;
    .end local v5           #len$:I
    :cond_1
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/utils/ulog/NetworkTrafficLogger$FullScanRunnable;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/htc/utils/ulog/NetworkTrafficLogger$FullScanRunnable;-><init>(Lcom/htc/utils/ulog/NetworkTrafficLogger;Lcom/htc/utils/ulog/NetworkTrafficLogger$1;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 531
    return-void
.end method

.method public static logTransmissionBegin(ILjava/lang/String;)V
    .locals 2
    .parameter "category"
    .parameter "packageName"

    .prologue
    .line 583
    sget-boolean v0, Lcom/htc/utils/ulog/NetworkTrafficLogger;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkTrafficLogger"

    const-string v1, ">> logTransmissionBegin()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_0
    const/16 v0, 0x15

    invoke-static {p0, p1, v0}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->logTransmission(ILjava/lang/String;I)V

    .line 585
    return-void
.end method

.method public static logTransmissionEnd(ILjava/lang/String;)V
    .locals 2
    .parameter "category"
    .parameter "packageName"

    .prologue
    .line 596
    sget-boolean v0, Lcom/htc/utils/ulog/NetworkTrafficLogger;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkTrafficLogger"

    const-string v1, "<< logTransmissionEnd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_0
    const/16 v0, 0x16

    invoke-static {p0, p1, v0}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->logTransmission(ILjava/lang/String;I)V

    .line 598
    return-void
.end method

.method public static logTransmissionNormal(ILjava/lang/String;)V
    .locals 2
    .parameter "category"
    .parameter "packageName"

    .prologue
    .line 609
    sget-boolean v0, Lcom/htc/utils/ulog/NetworkTrafficLogger;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkTrafficLogger"

    const-string v1, "-- logTransmission()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_0
    const/16 v0, 0x14

    invoke-static {p0, p1, v0}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->logTransmission(ILjava/lang/String;I)V

    .line 611
    return-void
.end method

.method private printNetworkTrafficLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 36
    .parameter "uid"
    .parameter "uidName"
    .parameter "processName"
    .parameter "authority"
    .parameter "categoryNum"
    .parameter "markNum"

    .prologue
    .line 818
    :try_start_0
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v24

    .line 820
    .local v24, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v33, "system_server"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v33

    const-string v34, "data_traffic"

    invoke-interface/range {v33 .. v34}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 823
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v20

    .line 824
    .local v20, totalRx:J
    const-string v33, "total_rx"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 827
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v22

    .line 828
    .local v22, totalTx:J
    const-string v33, "total_tx"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 831
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v9

    .line 832
    .local v9, mobileRx:J
    const-string v33, "mobile_rx"

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 835
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v11

    .line 836
    .local v11, mobileTx:J
    const-string v33, "mobile_tx"

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 839
    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v27

    .line 840
    .local v27, uidRx:J
    const-string v33, "per-uid_rx"

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 842
    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v29

    .line 843
    .local v29, uidTx:J
    const-string v33, "per-uid_tx"

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 846
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Thread;->getId()J

    move-result-wide v17

    .line 847
    .local v17, tid:J
    const-string v33, "tid"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 850
    sget-object v33, Lcom/htc/utils/ulog/NetworkTrafficLogger;->mDate:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    invoke-virtual/range {v33 .. v35}, Ljava/util/Date;->setTime(J)V

    .line 851
    sget-object v33, Lcom/htc/utils/ulog/NetworkTrafficLogger;->mFormat:Ljava/text/SimpleDateFormat;

    sget-object v34, Lcom/htc/utils/ulog/NetworkTrafficLogger;->mDate:Ljava/util/Date;

    invoke-virtual/range {v33 .. v34}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    .line 852
    .local v19, time:Ljava/lang/String;
    const-string v33, "time"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 855
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 856
    .local v6, eTime:J
    const-string v33, "elapsed_time"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 859
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    .line 860
    .local v25, uTime:J
    const-string v33, "uptime"

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 863
    if-nez p2, :cond_4

    .line 864
    const-string p2, "-"

    .line 870
    :goto_0
    if-nez p3, :cond_5

    .line 871
    const-string p3, "-"

    .line 877
    :goto_1
    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v4, v0, [J

    fill-array-data v4, :array_0

    .line 878
    .local v4, cpuTime:[J
    const/4 v13, -0x1

    .line 879
    .local v13, pid:I
    const-string v33, "-"

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_0

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/utils/ulog/NetworkTrafficLogger;->mLoader:Lcom/htc/utils/ulog/NetworkTrafficLogger$ProcessCpuTimeLoader;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/htc/utils/ulog/NetworkTrafficLogger$ProcessCpuTimeLoader;->getCpuTimeForProcessName(Ljava/lang/String;[J)I

    move-result v13

    .line 881
    const-string v33, "pid"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 883
    :cond_0
    const/16 v33, 0x0

    aget-wide v31, v4, v33

    .line 884
    .local v31, userTime:J
    const-string v33, "user_time"

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 886
    const/16 v33, 0x1

    aget-wide v15, v4, v33

    .line 887
    .local v15, systemTime:J
    const-string v33, "system_time"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 890
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->getCategory(I)Ljava/lang/String;

    move-result-object v3

    .line 891
    .local v3, category:Ljava/lang/String;
    const-string v33, "category"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v3}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 894
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->getMark(I)Ljava/lang/String;

    move-result-object v8

    .line 895
    .local v8, mark:Ljava/lang/String;
    const-string v33, "mark"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v8}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 897
    if-eqz p4, :cond_1

    .line 898
    const-string v33, "authority"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 902
    :cond_1
    invoke-static/range {v24 .. v24}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 904
    invoke-virtual/range {v24 .. v24}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 906
    sget-boolean v33, Lcom/htc/utils/ulog/NetworkTrafficLogger;->DEBUG:Z

    if-eqz v33, :cond_3

    .line 907
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v33, 0x80

    move/from16 v0, v33

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 908
    .local v14, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    if-eqz p4, :cond_2

    .line 919
    const-string v33, ","

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    :cond_2
    const-string v33, "NetworkTrafficLogger"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    .end local v3           #category:Ljava/lang/String;
    .end local v4           #cpuTime:[J
    .end local v6           #eTime:J
    .end local v8           #mark:Ljava/lang/String;
    .end local v9           #mobileRx:J
    .end local v11           #mobileTx:J
    .end local v13           #pid:I
    .end local v14           #sb:Ljava/lang/StringBuilder;
    .end local v15           #systemTime:J
    .end local v17           #tid:J
    .end local v19           #time:Ljava/lang/String;
    .end local v20           #totalRx:J
    .end local v22           #totalTx:J
    .end local v24           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    .end local v25           #uTime:J
    .end local v27           #uidRx:J
    .end local v29           #uidTx:J
    .end local v31           #userTime:J
    :cond_3
    :goto_2
    return-void

    .line 866
    .restart local v6       #eTime:J
    .restart local v9       #mobileRx:J
    .restart local v11       #mobileTx:J
    .restart local v17       #tid:J
    .restart local v19       #time:Ljava/lang/String;
    .restart local v20       #totalRx:J
    .restart local v22       #totalTx:J
    .restart local v24       #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    .restart local v25       #uTime:J
    .restart local v27       #uidRx:J
    .restart local v29       #uidTx:J
    :cond_4
    const-string v33, "uidName"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 925
    .end local v6           #eTime:J
    .end local v9           #mobileRx:J
    .end local v11           #mobileTx:J
    .end local v17           #tid:J
    .end local v19           #time:Ljava/lang/String;
    .end local v20           #totalRx:J
    .end local v22           #totalTx:J
    .end local v24           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    .end local v25           #uTime:J
    .end local v27           #uidRx:J
    .end local v29           #uidTx:J
    :catch_0
    move-exception v5

    .line 926
    .local v5, e:Ljava/lang/Exception;
    const-string v33, "NetworkTrafficLogger"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Cannot print log: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 873
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v6       #eTime:J
    .restart local v9       #mobileRx:J
    .restart local v11       #mobileTx:J
    .restart local v17       #tid:J
    .restart local v19       #time:Ljava/lang/String;
    .restart local v20       #totalRx:J
    .restart local v22       #totalTx:J
    .restart local v24       #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    .restart local v25       #uTime:J
    .restart local v27       #uidRx:J
    .restart local v29       #uidTx:J
    :cond_5
    :try_start_1
    const-string v33, "process_name"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 877
    :array_0
    .array-data 0x8
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private registerLogDemandReceiver(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 636
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 637
    .local v7, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.htcnetworkmonitor.action.LOG_NETWORK_FULL_SCAN"

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 639
    new-instance v1, Lcom/htc/utils/ulog/NetworkTrafficLogger$1;

    invoke-direct {v1, p0}, Lcom/htc/utils/ulog/NetworkTrafficLogger$1;-><init>(Lcom/htc/utils/ulog/NetworkTrafficLogger;)V

    invoke-virtual {p1, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 651
    new-instance v8, Landroid/content/Intent;

    const-string v1, "com.htc.htcnetworkmonitor.action.LOG_NETWORK_FULL_SCAN"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    .local v8, intent:Landroid/content/Intent;
    invoke-static {p1, v2, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 655
    .local v6, pi:Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 656
    .local v0, am:Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 657
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 659
    :cond_0
    return-void
.end method

.method public static registerReceiver(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 668
    invoke-static {}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->getInstance()Lcom/htc/utils/ulog/NetworkTrafficLogger;

    move-result-object v0

    .line 669
    .local v0, logger:Lcom/htc/utils/ulog/NetworkTrafficLogger;
    if-eqz v0, :cond_0

    .line 670
    invoke-direct {v0, p0}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->registerLogDemandReceiver(Landroid/content/Context;)V

    .line 672
    :cond_0
    return-void
.end method
