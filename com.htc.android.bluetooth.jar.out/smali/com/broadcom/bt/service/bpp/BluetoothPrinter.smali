.class public final Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothPrinter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$1;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskBroadcastReceiver;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrinterBroadcastReceiver;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrinterCallback;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PRINT_FORMAT;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$SERVICE_MASK;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATUS;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$JOB_STATE;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATE_REASON;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATE;
    }
.end annotation


# static fields
.field public static final ACTION_ON_AUTH:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_AUTH"

.field public static final ACTION_ON_AUTH_PRTR:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_AUTH_PRTR"

.field public static final ACTION_ON_DOC_CMPL:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_DOC_CMPL"

.field public static final ACTION_ON_GET_OBJ:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_GET_OBJ"

.field public static final ACTION_ON_GET_PRTR_CAP:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_GET_PRTR_CAP"

.field public static final ACTION_ON_JOB_STATUS:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_JOB_STATUS"

.field public static final ACTION_ON_PART_IMG:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_PART_IMG"

.field public static final ACTION_ON_PRINTER_OPEN:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_PRINTER_OPEN"

.field public static final ACTION_ON_PROGRESS:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_PROGRESS"

.field public static final ACTION_ON_TASK_CLOSE:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_CLOSE"

.field public static final ACTION_ON_TASK_OPEN:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_OPEN"

.field public static final ACTION_ON_THUMBNAIL:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_THUMBNAIL"

.field static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.bpp.action."

#the value of this static final field might be set in the static constructor
.field static final ACTION_PREFIX_LENGTH:I = 0x0

.field private static final D:Z = true

.field public static final EXTRA_BIP_CAP:Ljava/lang/String; = "BIPCAP"

.field public static final EXTRA_BIP_FEAT:Ljava/lang/String; = "BIP_FEAT"

.field public static final EXTRA_BPP_ATTR:Ljava/lang/String; = "BPPATTR"

.field public static final EXTRA_BPP_FEAT:Ljava/lang/String; = "BPP_FEAT"

.field public static final EXTRA_BYTES_TRANSFERRED:Ljava/lang/String; = "BYTES_TRANSFERRED"

.field public static final EXTRA_JOBID:Ljava/lang/String; = "JOBID"

.field public static final EXTRA_NAME:Ljava/lang/String; = "NAME"

.field public static final EXTRA_OPP_FEAT:Ljava/lang/String; = "OPP_FEAT"

.field public static final EXTRA_REALM_CHARSET:Ljava/lang/String; = "REALM_CHARSET"

.field public static final EXTRA_REALM_IDX:Ljava/lang/String; = "REALM_INDEX"

.field public static final EXTRA_REALM_LNGTH:Ljava/lang/String; = "REALM_LNGTH"

.field public static final EXTRA_REQD:Ljava/lang/String; = "REQD"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "STATUS"

.field public static final EXTRA_SVC:Ljava/lang/String; = "SVC"

.field public static final EXTRA_SVCID:Ljava/lang/String; = "SVCID"

.field public static final EXTRA_TOTAL_BYTES:Ljava/lang/String; = "TOTAL_BYTES"

.field public static final PR_BIP_SERVICE_MASK:I = 0x2000

.field public static final PR_BPP_SERVICE_MASK:I = 0x1000

.field public static final PR_OPP_SERVICE_MASK:I = 0x80

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_bpp_service"

.field private static final TAG:Ljava/lang/String; = "BluetoothPrinter"


# instance fields
.field private mCallback:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;

.field private mEventHandler:Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;

.field private mPrintTaskBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPrintTaskCallback:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

.field private mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

.field private mPrintTaskReceiverPriority:I

.field private mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "com.broadcom.bt.bpp.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->ACTION_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 396
    const/16 v0, 0xc8

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskReceiverPriority:I

    .line 421
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 396
    const/16 v0, 0xc8

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskReceiverPriority:I

    .line 445
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    .line 446
    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mEventHandler:Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFilterPrintTaskEvents(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 564
    if-nez p0, :cond_0

    .line 565
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 566
    .restart local p0
    const-string v0, "com.broadcom.bt.bpp.action.ON_DOC_CMPL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 567
    const-string v0, "com.broadcom.bt.bpp.action.ON_GET_OBJ"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 568
    const-string v0, "com.broadcom.bt.bpp.action.ON_PROGRESS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 569
    const-string v0, "com.broadcom.bt.bpp.action.ON_CLOSE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 570
    const-string v0, "com.broadcom.bt.bpp.action.ON_OPEN"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 571
    const-string v0, "com.broadcom.bt.bpp.action.ON_THUMBNAIL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 572
    const-string v0, "com.broadcom.bt.bpp.action.ON_PART_IMG"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 573
    const-string v0, "com.broadcom.bt.bpp.action.ON_JOB_STATUS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 575
    :cond_0
    return-object p0
.end method

.method public static createFilterPrinterEvents(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 554
    if-nez p0, :cond_0

    .line 555
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 556
    .restart local p0
    const-string v0, "com.broadcom.bt.bpp.action.ON_PRINTER_OPEN"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 557
    const-string v0, "com.broadcom.bt.bpp.action.ON_AUTH_PRTR"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    const-string v0, "com.broadcom.bt.bpp.action.ON_GET_PRTR_CAP"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 560
    :cond_0
    return-object p0
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .locals 3
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 408
    const-string v1, "bluetooth_bpp_service"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 409
    const-string v1, "BluetoothPrinter"

    const-string v2, "Unable to get BluetoothPrinter proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v1, 0x0

    .line 415
    :goto_0
    return v1

    .line 414
    :cond_0
    new-instance v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;-><init>()V

    .line 415
    .local v0, p:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.BppService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized abortPrinting()V
    .locals 3

    .prologue
    .line 903
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.abort()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    :goto_0
    monitor-exit p0

    return-void

    .line 906
    :catch_0
    move-exception v0

    .line 907
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.abort() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 903
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized cancelBppStatusReporting()V
    .locals 3

    .prologue
    .line 917
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.cancelBppStatus()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->cancelBppStatus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    :goto_0
    monitor-exit p0

    return-void

    .line 920
    :catch_0
    move-exception v0

    .line 921
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.cancelBppStatus() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 917
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 926
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 927
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 2

    .prologue
    .line 935
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mEventHandler:Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;

    if-eqz v0, :cond_0

    .line 936
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mEventHandler:Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 941
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 942
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 944
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 945
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 946
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 959
    :cond_2
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    monitor-exit p0

    return-void

    .line 935
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrinterCapabilities(Ljava/lang/String;)V
    .locals 3
    .parameter "bluetoothAddress"

    .prologue
    .line 628
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.getPrinterCapabilities()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->getCapabilities(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 635
    :goto_0
    monitor-exit p0

    return-void

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.getPrinterCapabilities() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 628
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected init(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "service"

    .prologue
    .line 425
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    const/4 v1, 0x1

    .line 430
    :goto_0
    return v1

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothPrinter"

    const-string v2, "Unable to initialize proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized obexAuthenticationResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "password"
    .parameter "userId"

    .prologue
    .line 766
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.obexAuthenticationResponse()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->obexAuthenticationResponse(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    :goto_0
    monitor-exit p0

    return-void

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.obexAuthenticationResponse() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 766
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onPrinterGetObject(JLjava/lang/String;)V
    .locals 1
    .parameter "jobId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    .line 1155
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 1156
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterGetObject(JLjava/lang/String;)V

    .line 1159
    :cond_0
    return-void
.end method

.method public onPrinterJobStatus(JLcom/broadcom/bt/service/bpp/JobStatus;)V
    .locals 1
    .parameter "jobId"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    .line 1164
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 1165
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterJobStatus(JLcom/broadcom/bt/service/bpp/JobStatus;)V

    .line 1168
    :cond_0
    return-void
.end method

.method public onPrinterPartialImage(JLjava/lang/String;)V
    .locals 1
    .parameter "jobId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    .line 1173
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 1174
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterPartialImage(JLjava/lang/String;)V

    .line 1177
    :cond_0
    return-void
.end method

.method public onPrinterProgress(JII)V
    .locals 1
    .parameter "jobId"
    .parameter "totalBytes"
    .parameter "processedBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    .line 1182
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 1183
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterProgress(JII)V

    .line 1186
    :cond_0
    return-void
.end method

.method public onPrinterTaskClosed(JI)V
    .locals 1
    .parameter "jobId"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    .line 1191
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 1192
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterTaskClosed(JI)V

    .line 1195
    :cond_0
    return-void
.end method

.method public onPrinterTaskOpen(JI)V
    .locals 1
    .parameter "jobId"
    .parameter "serviceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    .line 1200
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 1201
    invoke-virtual {p0, p1, p2, p3}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->onPrinterTaskOpen(JI)V

    .line 1204
    :cond_0
    return-void
.end method

.method public onPrinterThumbnail(J)V
    .locals 1
    .parameter "jobId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    .line 1208
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 1209
    invoke-virtual {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->onPrinterThumbnail(J)V

    .line 1212
    :cond_0
    return-void
.end method

.method public declared-synchronized printAny(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 3
    .parameter "bluetoothAddress"
    .parameter "name"
    .parameter "fileFormat"

    .prologue
    .line 653
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.printAny()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->printAny(Ljava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    .line 665
    :goto_0
    monitor-exit p0

    return-wide v1

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.printAny() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 665
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 653
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized printBip(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3
    .parameter "bluetoothAddress"
    .parameter "name"

    .prologue
    .line 737
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.printBip()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->printBip(Ljava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    .line 749
    :goto_0
    monitor-exit p0

    return-wide v1

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.printBip() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 749
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 737
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized printBpp(Ljava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BppParameters;)J
    .locals 3
    .parameter "bluetoothAddress"
    .parameter "name"
    .parameter "bppParams"

    .prologue
    .line 710
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.printBpp()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->printBpp(Ljava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    .line 722
    :goto_0
    monitor-exit p0

    return-wide v1

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.printBpp() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 722
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 710
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized printObject(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;)J
    .locals 11
    .parameter "bluetoothAddress"
    .parameter "serviceMask"
    .parameter "fileFormat"
    .parameter "header"
    .parameter "name"
    .parameter "bipParams"
    .parameter "bppParams"
    .parameter "bppObjectResolver"

    .prologue
    .line 782
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPrinter"

    const-string v1, "Call BluetoothPrinterService.printObject()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    const/4 v9, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v9}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->print(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    .line 802
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 790
    :catch_0
    move-exception v10

    .line 791
    .local v10, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v0, "BluetoothPrinter"

    const-string v1, "BluetoothPrinterService.print() failed"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 802
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 782
    .end local v10           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized printObject(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;)J
    .locals 2
    .parameter "bluetoothAddress"
    .parameter "serviceMask"
    .parameter "fileFormat"
    .parameter "header"
    .parameter "name"
    .parameter "bipParams"
    .parameter "bppParams"
    .parameter "bppObjectResolver"
    .parameter "printTaskEventHandler"

    .prologue
    .line 852
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p9}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->registerPrintTaskEventHandler(Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;)V

    .line 853
    invoke-virtual/range {p0 .. p8}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->printObject(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 852
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized printOpp(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 3
    .parameter "bluetoothAddress"
    .parameter "name"
    .parameter "fileFormat"

    .prologue
    .line 683
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.printOpp()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->printOpp(Ljava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    .line 695
    :goto_0
    monitor-exit p0

    return-wide v1

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.printOpp() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 695
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 683
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerPrintTaskEventHandler(Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 505
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->registerPrintTaskEventHandler(Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    monitor-exit p0

    return-void

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerPrintTaskEventHandler(Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .locals 4
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 527
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    .line 528
    iput p4, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskReceiverPriority:I

    .line 533
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 535
    if-nez p2, :cond_0

    .line 536
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->createFilterPrintTaskEvents(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object p2

    .line 538
    :cond_0
    iget v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskReceiverPriority:I

    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 539
    new-instance v1, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;Lcom/broadcom/bt/service/bpp/BluetoothPrinter$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 540
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2, p2, v3, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 551
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "BluetoothPrinter"

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

.method public declared-synchronized registerPrintTaskEventHandler(Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;Landroid/content/IntentFilter;ZI)V
    .locals 1
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 513
    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->initEventCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->registerPrintTaskEventHandler(Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    monitor-exit p0

    return-void

    .line 513
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerPrinterEventHandler(Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 450
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->registerPrinterEventHandler(Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    monitor-exit p0

    return-void

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerPrinterEventHandler(Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .locals 4
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mEventHandler:Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;

    .line 473
    iput p4, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mReceiverPriority:I

    .line 478
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 480
    if-nez p2, :cond_0

    .line 481
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->createFilterPrinterEvents(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object p2

    .line 483
    :cond_0
    iget v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mReceiverPriority:I

    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 484
    new-instance v1, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrinterBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrinterBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;Lcom/broadcom/bt/service/bpp/BluetoothPrinter$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 485
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2, p2, v3, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 501
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "BluetoothPrinter"

    const-string v2, "Error registering broadcast receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 472
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerPrinterEventHandler(Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;Landroid/content/IntentFilter;ZI)V
    .locals 1
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 458
    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->initEventCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->registerPrinterEventHandler(Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    monitor-exit p0

    return-void

    .line 458
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendPartialImageResponse(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 868
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.partialImageResponse()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->partialImageResponse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :goto_0
    monitor-exit p0

    return-void

    .line 871
    :catch_0
    move-exception v0

    .line 872
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.partialImageResponse() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 868
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sendReferenceObjectResponse(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 887
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.refObjectResponse()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->refObjectResponse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    :goto_0
    monitor-exit p0

    return-void

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.refObjectResponse() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 887
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unregisterPrintTaskEventHandler()V
    .locals 2

    .prologue
    .line 601
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPrinter"

    const-string v1, "unregisterPrintTaskEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    .line 606
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    :cond_0
    monitor-exit p0

    return-void

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterPrinterEventHandler()V
    .locals 2

    .prologue
    .line 580
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPrinter"

    const-string v1, "unregisterEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mEventHandler:Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;

    .line 585
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    :cond_0
    monitor-exit p0

    return-void

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
