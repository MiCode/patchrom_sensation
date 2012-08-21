.class public final Lcom/broadcom/bt/service/gatt/BluetoothGatt;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothGatt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/gatt/BluetoothGatt$1;,
        Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_CLOSED:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_CLOSED"

.field public static final ACTION_DEREGISTER_FOR_NOTIFICATIONS:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_DEREGISTER_FOR_NOTIFICATIONS"

.field public static final ACTION_EXEC:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_EXEC"

.field public static final ACTION_GET_FIRST_CHAR:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_GET_FIRST_CHAR"

.field public static final ACTION_GET_FIRST_INCLUDED_SERVICE:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_GET_FIRST_INCLUDED_SERVICE"

.field public static final ACTION_GET_NEXT_CHAR:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_GET_NEXT_CHAR"

.field public static final ACTION_GET_NEXT_INCLUDED_SERVICE:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_GET_NEXT_INCLUDED_SERVICE"

.field public static final ACTION_IND:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_IND"

.field public static final ACTION_NOTIFY:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_NOTIFY"

.field public static final ACTION_OPENED:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_OPENED"

.field static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.app.gatt."

#the value of this static final field might be set in the static constructor
.field static final ACTION_PREFIX_LENGTH:I = 0x0

.field public static final ACTION_PREPARE_WRITE:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_PREP_WRITE"

.field public static final ACTION_READ_CHAR_AGG_FORMAT:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_READ_CHAR_AGG_FORMAT"

.field public static final ACTION_READ_CHAR_CLIENT_CONFIG:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_READ_CHAR_CLIENT_CONFIG"

.field public static final ACTION_READ_CHAR_DESCRIPTION:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_READ_CHAR_DESCRIPTION"

.field public static final ACTION_READ_CHAR_EXT_PROP:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_READ_CHAR_EXT_PROP"

.field public static final ACTION_READ_CHAR_PRESENT_FORMAT:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_READ_CHAR_PRESENT_FORMAT"

.field public static final ACTION_READ_CHAR_SERVER_CONFIG:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_READ_CHAR_SERVER_CONFIG"

.field public static final ACTION_READ_DESCR_AGG_FORMAT:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_READ_DESCR_AGG_FORMAT"

.field public static final ACTION_READ_DESCR_CLIENT_CONFIG:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_READ_DESCR_CLIENT_CONFIG"

.field public static final ACTION_READ_DESCR_DESCRIPTION:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_READ_DESCR_DESCRIPTION"

.field public static final ACTION_READ_DESCR_EXT_PROP:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_READ_DESCR_EXT_PROP"

.field public static final ACTION_READ_DESCR_PRESENT_FORMAT:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_READ_DESCR_PRESENT_FORMAT"

.field public static final ACTION_READ_DESCR_SERVER_CONFIG:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_READ_DESCR_SERVER_CONFIG"

.field public static final ACTION_REGISTER_FOR_NOTIFICATIONS:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_REGISTER_FOR_NOTIFICATIONS"

.field public static final ACTION_SEARCH_COMPLETED:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_SEARCH_COMPLETED"

.field public static final ACTION_SEARCH_RESULT:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_SEARCH_RESULT"

.field public static final ACTION_WRITE_CHAR:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_WRITE_CHAR"

.field public static final ACTION_WRITE_DESCR:Ljava/lang/String; = "com.broadcom.bt.app.gatt.ON_WRITE_DESCR"

.field public static final EXTRA_BD_ADDR:Ljava/lang/String; = "BD_ADDR"

.field public static final EXTRA_CHAR_ID:Ljava/lang/String; = "CHAR_ID"

.field public static final EXTRA_CHAR_PROP:Ljava/lang/String; = "CHAR_PROP"

.field public static final EXTRA_CONN_ID:Ljava/lang/String; = "CONN_ID"

.field public static final EXTRA_DATA_BYTE_ARRAY:Ljava/lang/String; = "DATA_BYTE_ARRAY"

.field public static final EXTRA_DATA_INT:Ljava/lang/String; = "DATA_INT"

.field public static final EXTRA_DATA_INT_ARRAY:Ljava/lang/String; = "DATA_INT_ARRAY"

.field public static final EXTRA_DESCR_TYPE:Ljava/lang/String; = "DESCR_TYPE"

.field public static final EXTRA_IS_NOTIFY:Ljava/lang/String; = "IS_NOTIFY"

.field public static final EXTRA_SRVC_ID:Ljava/lang/String; = "SRVC_ID"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "STATUS"

.field private static final GATT_AGGR_HANDLE_NUM_MAX:I = 0xa

.field public static final GATT_CHAR_PROP_BIT_AUTH:I = 0x40

.field public static final GATT_CHAR_PROP_BIT_BROADCAST:I = 0x1

.field public static final GATT_CHAR_PROP_BIT_EXT_PROP:I = 0x80

.field public static final GATT_CHAR_PROP_BIT_INDICATE:I = 0x20

.field public static final GATT_CHAR_PROP_BIT_NOTIFY:I = 0x10

.field public static final GATT_CHAR_PROP_BIT_READ:I = 0x2

.field public static final GATT_CHAR_PROP_BIT_WRITE:I = 0x8

.field public static final GATT_CHAR_PROP_BIT_WRITE_NR:I = 0x4

.field public static final GATT_CLIENT_CONFIG_INDICATION:I = 0x2

.field public static final GATT_CLIENT_CONFIG_NONE:I = 0x0

.field public static final GATT_CLIENT_CONFIG_NOTIFICATION:I = 0x1

.field public static final GATT_SERVER_CONFIG_BROADCAST:I = 0x1

.field public static final GATT_SERVER_CONFIG_NONE:I = 0x0

.field public static final GATT_WRITE:I = 0x2

.field public static final GATT_WRITE_NO_RSP:I = 0x1

.field private static final INVALID_CONN_ID:I = 0xffff

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_gatt"

.field private static final TAG:Ljava/lang/String; = "BluetoothGatt"

.field private static final V:Z = true


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mConnId:I

.field private mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

.field private mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    const-string v0, "com.broadcom.bt.app.gatt."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->ACTION_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 355
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 356
    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    .line 357
    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    .line 358
    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mAddress:Ljava/lang/String;

    .line 359
    const v0, 0xffff

    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I

    .line 360
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I

    return v0
.end method

.method static synthetic access$202(Lcom/broadcom/bt/service/gatt/BluetoothGatt;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput p1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I

    return p1
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    return-object v0
.end method

.method private static createFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 561
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 563
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.broadcom.bt.app.gatt.ON_OPENED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 564
    const-string v1, "com.broadcom.bt.app.gatt.ON_CLOSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 565
    const-string v1, "com.broadcom.bt.app.gatt.ON_READ_CHAR_EXT_PROP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 566
    const-string v1, "com.broadcom.bt.app.gatt.ON_READ_CHAR_DESCRIPTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 567
    const-string v1, "com.broadcom.bt.app.gatt.ON_READ_CHAR_CLIENT_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 568
    const-string v1, "com.broadcom.bt.app.gatt.ON_READ_CHAR_SERVER_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 569
    const-string v1, "com.broadcom.bt.app.gatt.ON_READ_CHAR_PRESENT_FORMAT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 570
    const-string v1, "com.broadcom.bt.app.gatt.ON_READ_CHAR_AGG_FORMAT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 571
    const-string v1, "com.broadcom.bt.app.gatt.ON_WRITE_CHAR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 572
    const-string v1, "com.broadcom.bt.app.gatt.ON_SEARCH_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 573
    const-string v1, "com.broadcom.bt.app.gatt.ON_SEARCH_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 574
    const-string v1, "com.broadcom.bt.app.gatt.ON_READ_DESCR_EXT_PROP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 575
    const-string v1, "com.broadcom.bt.app.gatt.ON_READ_DESCR_DESCRIPTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 576
    const-string v1, "com.broadcom.bt.app.gatt.ON_READ_DESCR_CLIENT_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 577
    const-string v1, "com.broadcom.bt.app.gatt.ON_READ_DESCR_SERVER_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 578
    const-string v1, "com.broadcom.bt.app.gatt.ON_READ_DESCR_PRESENT_FORMAT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 579
    const-string v1, "com.broadcom.bt.app.gatt.ON_READ_DESCR_AGG_FORMAT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 580
    const-string v1, "com.broadcom.bt.app.gatt.ON_WRITE_DESCR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 581
    const-string v1, "com.broadcom.bt.app.gatt.ON_NOTIFY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 582
    const-string v1, "com.broadcom.bt.app.gatt.ON_PREP_WRITE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 583
    const-string v1, "com.broadcom.bt.app.gatt.ON_EXEC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 585
    return-object v0
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .locals 4
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 337
    const-string v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProxy: context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v1, "bluetooth_gatt"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 340
    const-string v1, "BluetoothGatt"

    const-string v2, "Unable to get BluetoothGatt proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v1, 0x0

    .line 345
    :goto_0
    return v1

    .line 344
    :cond_0
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    invoke-direct {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;-><init>()V

    .line 345
    .local v0, p:Lcom/broadcom/bt/service/gatt/BluetoothGatt;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.GattService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 6

    .prologue
    .line 638
    const-string v1, "BluetoothGatt"

    const-string v2, "close..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I

    const v2, 0xffff

    if-eq v1, v2, :cond_0

    .line 642
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    const/4 v2, 0x0

    const-string v3, ""

    iget v4, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I

    const/4 v5, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt;->close(BLjava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothGatt"

    const-string v2, "closeGatt"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deregisterForNotifications(Ljava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V
    .locals 3
    .parameter "address"
    .parameter "charId"

    .prologue
    .line 953
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    if-eqz v1, :cond_0

    .line 955
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1, p2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt;->deregisterForNotifications(BLjava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    :cond_0
    :goto_0
    return-void

    .line 956
    :catch_0
    move-exception v0

    .line 957
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothGatt"

    const-string v2, "deregisterForNotifications"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public executeWrite(Z)V
    .locals 3
    .parameter "isExecute"

    .prologue
    .line 911
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    if-eqz v1, :cond_0

    .line 913
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    iget v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I

    invoke-interface {v1, v2, p1}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt;->executeWrite(IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    :cond_0
    :goto_0
    return-void

    .line 914
    :catch_0
    move-exception v0

    .line 915
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothGatt"

    const-string v2, "executeWriteGatt"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 409
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 410
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 2

    .prologue
    .line 388
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    if-eqz v0, :cond_0

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 396
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mAddress:Ljava/lang/String;

    .line 398
    const v0, 0xffff

    iput v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I

    .line 399
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFirstChar(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 3
    .parameter "serviceId"
    .parameter "condCharUuid"

    .prologue
    .line 679
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    if-eqz v1, :cond_0

    .line 681
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    iget v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I

    invoke-interface {v1, v2, p1, p2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt;->getFirstChar(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothGatt"

    const-string v2, "getFirstChar"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFirstIncludedService(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 3
    .parameter "srvcId"
    .parameter "condSrvcUuid"

    .prologue
    .line 724
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    if-eqz v1, :cond_0

    .line 726
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    iget v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I

    invoke-interface {v1, v2, p1, p2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt;->getFirstIncludedService(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothGatt"

    const-string v2, "getFirstIncludedService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getNextChar(Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 3
    .parameter "startCharId"
    .parameter "condCharUuid"

    .prologue
    .line 702
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    if-eqz v1, :cond_0

    .line 704
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    iget v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I

    invoke-interface {v1, v2, p1, p2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt;->getNextChar(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothGatt"

    const-string v2, "getNextChar"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getNextIncludedService(Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 3
    .parameter "startSrvcId"
    .parameter "condSrvcUuid"

    .prologue
    .line 745
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    if-eqz v1, :cond_0

    .line 747
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    iget v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I

    invoke-interface {v1, v2, p1, p2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt;->getNextIncludedService(ILcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 748
    :catch_0
    move-exception v0

    .line 749
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothGatt"

    const-string v2, "getNextIncludedService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected init(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "service"

    .prologue
    .line 369
    const-string v1, "BluetoothGatt"

    const-string v2, "init..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    const/4 v1, 0x1

    .line 376
    :goto_0
    return v1

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothGatt"

    const-string v2, "Unable to initialize proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public open(ILjava/lang/String;Lcom/broadcom/bt/le/api/IBleClientCallback;)V
    .locals 4
    .parameter "clientif"
    .parameter "address"
    .parameter "callback"

    .prologue
    .line 621
    const-string v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open: address = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    if-eqz v1, :cond_0

    .line 625
    :try_start_0
    iput-object p2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothGatt"

    const-string v2, "openGatt"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public prepareWrite(Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;II[B)V
    .locals 7
    .parameter "charId"
    .parameter "offset"
    .parameter "len"
    .parameter "value"

    .prologue
    .line 889
    if-nez p3, :cond_1

    .line 890
    const-string v0, "BluetoothGatt"

    const-string v1, "Oops, prepareWrite len == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 894
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    if-eqz v0, :cond_0

    .line 896
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    iget v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt;->prepareWrite(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;II[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 897
    :catch_0
    move-exception v6

    .line 898
    .local v6, t:Ljava/lang/Throwable;
    const-string v0, "BluetoothGatt"

    const-string v1, "prepareWrite"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public readChar(Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V
    .locals 4
    .parameter "charId"

    .prologue
    .line 763
    if-nez p1, :cond_1

    .line 764
    const-string v1, "BluetoothGatt"

    const-string v2, "Oops: readChar charId == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    if-eqz v1, :cond_0

    .line 770
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    iget v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt;->readChar(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothGatt"

    const-string v2, "readChar"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public readCharDescr(Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;)V
    .locals 4
    .parameter "charDescr"

    .prologue
    .line 785
    if-nez p1, :cond_1

    .line 786
    const-string v1, "BluetoothGatt"

    const-string v2, "Oops: readCharDescr charDescr == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    if-eqz v1, :cond_0

    .line 792
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    iget v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt;->readCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 793
    :catch_0
    move-exception v0

    .line 794
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothGatt"

    const-string v2, "readCharDescr"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 429
    monitor-enter p0

    const/4 v0, 0x1

    const/16 v1, 0xc8

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->registerEventHandler(Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    monitor-exit p0

    return-void

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;Landroid/os/Handler;I)V
    .locals 5
    .parameter "eventHandler"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 533
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothGatt"

    const-string v3, "registerEventHandler..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iput-object p1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    .line 540
    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 542
    :try_start_1
    invoke-static {}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->createFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 543
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {v0, p3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 544
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/gatt/BluetoothGatt;Lcom/broadcom/bt/service/gatt/BluetoothGatt$1;)V

    iput-object v2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 545
    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v3, v0, v4, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 551
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 547
    :catch_0
    move-exception v1

    .line 548
    .local v1, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "BluetoothGatt"

    const-string v3, "Error registering broadcast receiver"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 533
    .end local v1           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;ZI)V
    .locals 1
    .parameter "eventHandler"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 480
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->initEventCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->registerEventHandler(Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;Landroid/os/Handler;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    monitor-exit p0

    return-void

    .line 480
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerForNotifications(Ljava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V
    .locals 3
    .parameter "address"
    .parameter "charId"

    .prologue
    .line 932
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    if-eqz v1, :cond_0

    .line 934
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1, p2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt;->registerForNotifications(BLjava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 935
    :catch_0
    move-exception v0

    .line 936
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothGatt"

    const-string v2, "registerForNotificationsGatt"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public searchService(Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 3
    .parameter "serviceUuid"

    .prologue
    .line 658
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    if-eqz v1, :cond_0

    .line 660
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    iget v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I

    invoke-interface {v1, v2, p1}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt;->searchService(ILcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothGatt"

    const-string v2, "searchService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendIndConfirm(Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V
    .locals 3
    .parameter "charId"

    .prologue
    .line 858
    if-nez p1, :cond_1

    .line 859
    const-string v1, "BluetoothGatt"

    const-string v2, "Oops, sendIndConfirm charId == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    if-eqz v1, :cond_0

    .line 865
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    iget v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I

    invoke-interface {v1, v2, p1}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt;->sendIndConfirm(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothGatt"

    const-string v2, "sendIndConfirm"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized unregisterEventHandler()V
    .locals 2

    .prologue
    .line 604
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothGatt"

    const-string v1, "unregisterEventHandler..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    .line 608
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    :cond_0
    monitor-exit p0

    return-void

    .line 604
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeCharDescr(Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;I[B)V
    .locals 7
    .parameter "charDescr"
    .parameter "writeType"
    .parameter "value"

    .prologue
    .line 841
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    if-eqz v0, :cond_0

    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    iget v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I

    const/4 v4, 0x0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt;->writeCharDescrValue(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;IB[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 844
    :catch_0
    move-exception v6

    .line 845
    .local v6, t:Ljava/lang/Throwable;
    const-string v0, "BluetoothGatt"

    const-string v1, "writeCharDescr integer value"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public writeCharValue(Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;I[B)V
    .locals 7
    .parameter "charId"
    .parameter "writeType"
    .parameter "value"

    .prologue
    .line 813
    array-length v0, p3

    if-nez v0, :cond_1

    .line 814
    const-string v0, "BluetoothGatt"

    const-string v1, "Oops: writeCharValue value length is zero"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    if-eqz v0, :cond_0

    .line 820
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mService:Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    iget v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I

    const/4 v4, 0x0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt;->writeCharValue(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;IB[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 821
    :catch_0
    move-exception v6

    .line 822
    .local v6, t:Ljava/lang/Throwable;
    const-string v0, "BluetoothGatt"

    const-string v1, "writeCharValue"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
