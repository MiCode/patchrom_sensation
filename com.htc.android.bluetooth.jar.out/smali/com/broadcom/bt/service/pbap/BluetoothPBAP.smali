.class public final Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothPBAP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/pbap/BluetoothPBAP$1;,
        Lcom/broadcom/bt/service/pbap/BluetoothPBAP$PBAPBroadcastReceiver;,
        Lcom/broadcom/bt/service/pbap/BluetoothPBAP$PBAPCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ON_PBAP_ACCESS_REQUEST:Ljava/lang/String; = "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

.field public static final ACTION_ON_PBAP_CLOSED:Ljava/lang/String; = "com.broadcom.bt.app.pbap.action.ON_PBAP_CLOSED"

.field public static final ACTION_ON_PBAP_OPENED:Ljava/lang/String; = "com.broadcom.bt.app.pbap.action.ON_PBAP_OPENED"

.field public static final ACTION_ON_PBAP_OP_COMPLETED:Ljava/lang/String; = "com.broadcom.bt.app.pbap.action.ON_PBAP_OP_COMPLETED"

.field static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.app.pbap.action."

#the value of this static final field might be set in the static constructor
.field static final ACTION_PREFIX_LENGTH:I = 0x0

.field private static final D:Z = true

.field public static final EXTRA_FILEPATH:Ljava/lang/String; = "FILEPATH"

.field public static final EXTRA_OPERATION:Ljava/lang/String; = "OPERATION"

.field public static final EXTRA_RMT_DEV_ADDR:Ljava/lang/String; = "RMT_DEV_ADDR"

.field public static final EXTRA_RMT_DEV_NAME:Ljava/lang/String; = "RMT_DEV_NAME"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "STATUS"

.field public static final PBAP_OPER_PULL_PB:I = 0x1

.field public static final PBAP_OPER_PULL_VCARD_ENTRY:I = 0x4

.field public static final PBAP_OPER_PULL_VCARD_LIST:I = 0x3

.field public static final PBAP_OPER_SET_PB:I = 0x2

.field public static final PBAP_STATUS_FAIL:I = 0x1

.field public static final PBAP_STATUS_OK:I = 0x0

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_pbap"

.field private static final TAG:Ljava/lang/String; = "BluetoothPBAP"


# instance fields
.field private mCallback:Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback;

.field private mEventHandler:Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;

.field private mService:Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const-string v0, "com.broadcom.bt.app.pbap.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->ACTION_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->mEventHandler:Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;

    .line 353
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/pbap/BluetoothPBAP;)Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->mEventHandler:Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 578
    if-nez p0, :cond_0

    .line 579
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 581
    .restart local p0
    :cond_0
    const-string v0, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 582
    const-string v0, "com.broadcom.bt.app.pbap.action.ON_PBAP_OPENED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 583
    const-string v0, "com.broadcom.bt.app.pbap.action.ON_PBAP_CLOSED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 584
    const-string v0, "com.broadcom.bt.app.pbap.action.ON_PBAP_OP_COMPLETED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 585
    return-object p0
.end method

.method public static createFilter_LegacyBroadcasts(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 598
    if-nez p0, :cond_0

    .line 599
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 601
    .restart local p0
    :cond_0
    const-string v0, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 602
    const-string v0, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 603
    return-object p0
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .locals 3
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 335
    const-string v1, "bluetooth_pbap"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    const-string v1, "BluetoothPBAP"

    const-string v2, "Unable to get BluetoothFTP proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v1, 0x0

    .line 341
    :goto_0
    return v1

    .line 340
    :cond_0
    new-instance v0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;

    invoke-direct {v0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;-><init>()V

    .line 341
    .local v0, p:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.PbapService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 712
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 713
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 2

    .prologue
    .line 646
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->mEventHandler:Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;

    if-eqz v0, :cond_0

    .line 647
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->mEventHandler:Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 653
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 665
    :cond_1
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    monitor-exit p0

    return-void

    .line 646
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected init(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "service"

    .prologue
    .line 362
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/pbap/IBluetoothPBAP$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->mService:Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    const/4 v1, 0x1

    .line 367
    :goto_0
    return v1

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothPBAP"

    const-string v2, "Unable to initialize proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pbapServerAccessRsp(BZLjava/lang/String;)V
    .locals 3
    .parameter "opcode"
    .parameter "access"
    .parameter "filepath"

    .prologue
    .line 684
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->mService:Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;->pbapServerAccessRsp(BZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :goto_0
    return-void

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothPBAP"

    const-string v2, "Error with processing access response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPBAP"

    const-string v1, "registerEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->registerEventHandler(Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    monitor-exit p0

    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .locals 4
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 527
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->mEventHandler:Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;

    .line 532
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 534
    if-nez p2, :cond_0

    .line 535
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object p2

    .line 537
    :cond_0
    invoke-virtual {p2, p4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 538
    new-instance v1, Lcom/broadcom/bt/service/pbap/BluetoothPBAP$PBAPBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP$PBAPBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/pbap/BluetoothPBAP;Lcom/broadcom/bt/service/pbap/BluetoothPBAP$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 539
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2, p2, v3, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 569
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "BluetoothPBAP"

    const-string v2, "Error registering broadcast receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 527
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;Landroid/content/IntentFilter;ZI)V
    .locals 1
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 455
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->initEventCallbackHandler()Landroid/os/Handler;

    .line 456
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->initEventCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->registerEventHandler(Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    monitor-exit p0

    return-void

    .line 456
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requiresAccessProcessing()Z
    .locals 1

    .prologue
    .line 696
    const/4 v0, 0x1

    return v0
.end method

.method public setAccess(IZLjava/lang/Object;)V
    .locals 1
    .parameter "opCode"
    .parameter "allow"
    .parameter "name"

    .prologue
    .line 705
    int-to-byte v0, p1

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {p0, v0, p2, p3}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->pbapServerAccessRsp(BZLjava/lang/String;)V

    .line 706
    return-void
.end method

.method public declared-synchronized unregisterEventHandler()V
    .locals 2

    .prologue
    .line 621
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPBAP"

    const-string v1, "unregisterEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;->mEventHandler:Lcom/broadcom/bt/service/pbap/IPBAPEventHandler;

    .line 627
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 629
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    :cond_0
    monitor-exit p0

    return-void

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
