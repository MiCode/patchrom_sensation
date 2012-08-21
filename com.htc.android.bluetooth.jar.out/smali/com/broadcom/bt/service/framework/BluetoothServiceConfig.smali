.class public Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;
.super Ljava/lang/Object;
.source "BluetoothServiceConfig.java"


# static fields
.field public static final BLUETOOTH_BPP_SERVICE:Ljava/lang/String; = "bluetooth_bpp_service"

.field public static final BLUETOOTH_DG_SERVICE:Ljava/lang/String; = "bluetooth_dg_service"

.field public static final BLUETOOTH_DUN_SERVICE:Ljava/lang/String; = "bluetooth_dun"

.field public static final BLUETOOTH_FM_RECEIVER_SERVICE:Ljava/lang/String; = "bluetooth_fm_receiver_service"

.field public static final BLUETOOTH_FM_TRANSMITTER_SERVICE:Ljava/lang/String; = "bluetooth_fm_transmitter_service"

.field public static final BLUETOOTH_FTP_SERVICE:Ljava/lang/String; = "bluetooth_ftp"

.field public static final BLUETOOTH_HID_SERVICE_ENABLED:Z = false

.field public static final BLUETOOTH_MAP_SERVICE:Ljava/lang/String; = "bluetooth_map"

.field public static final BLUETOOTH_OPP_SERVICE:Ljava/lang/String; = "bluetooth_opp_service"

.field public static final BLUETOOTH_PBAP_SERVICE:Ljava/lang/String; = "bluetooth_pbap"

.field public static final BLUETOOTH_SAP_SERVICE:Ljava/lang/String; = "bluetooth_sap"

.field public static final BLUETOOTH_TEST_SERVICE:Ljava/lang/String; = "bluetooth_test"

.field public static final D:Z = true

.field public static final DISABLE_SCAN_ON_PHONECALL:Z = false

.field public static final HF_AUTOCONNECT_BITMAP_PROPERTY:Ljava/lang/String; = "service.brcm.bt.autoconnect"

.field public static final HID_TEST_MODE_ENABLED:Z = false

.field private static IS_STANDALONE_PROCESS:Z = false

.field public static final L2CAP_ENABLED:Z = true

.field public static final L2CAP_TEST_MODE_ENABLED:Z = true

.field public static final MODE_LOAD_AS_SYSTEM_SVC:I = 0x1

.field public static final MODE_UNDEFINED:I = -0x1

.field public static final MODE_USE_APP_SERVICES:I = 0x2

.field static final SERVICES:[Ljava/lang/String; = null

.field static final SERVICES_AVAILABLE:[Z = null

.field static final SERVICES_STARTUP_ENABLED:[Z = null

.field public static final SETTINGS_PREFIX:Ljava/lang/String; = "bt_svcst_"

.field public static final STATE_NOT_AVAILABLE:I = -0x1

.field public static final STATE_STARTED:I = 0x2

.field public static final STATE_STOPPED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothServiceConfig"

.field public static final V:Z = true

.field public static dualhf_enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/16 v5, 0xb

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 169
    sput-boolean v3, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->IS_STANDALONE_PROCESS:Z

    .line 177
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "bluetooth_opp_service"

    aput-object v1, v0, v3

    const-string v1, "bluetooth_pbap"

    aput-object v1, v0, v4

    const-string v1, "bluetooth_map"

    aput-object v1, v0, v6

    const-string v1, "bluetooth_ftp"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "bluetooth_gatt"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bluetooth_dun"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bluetooth_bpp_service"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bluetooth_sap"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bluetooth_flick"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bluetooth_dg_service"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bluetooth_test"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    .line 200
    new-array v0, v5, [Z

    aput-boolean v3, v0, v3

    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isPbapSupported()Z

    move-result v1

    aput-boolean v1, v0, v4

    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isMapSupported()Z

    move-result v1

    aput-boolean v1, v0, v6

    aput-boolean v4, v0, v7

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    const/4 v1, 0x5

    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isDunSupported()Z

    move-result v2

    aput-boolean v2, v0, v1

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    const/16 v1, 0xa

    aput-boolean v4, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_AVAILABLE:[Z

    .line 225
    new-array v0, v5, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    .line 291
    sput-boolean v3, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->dualhf_enabled:Z

    .line 296
    const-string v0, "com.brcm.bt.dualhf"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->dualhf_enabled:Z

    .line 297
    return-void

    .line 225
    :array_0
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServiceType(Ljava/lang/String;)I
    .locals 1
    .parameter "btServiceName"

    .prologue
    .line 378
    const/4 v0, 0x2

    return v0
.end method

.method public static isAccessRequestEnabled()Z
    .locals 3

    .prologue
    .line 365
    const-string v1, "service.brcm.bt.secure_mode"

    const-string v2, "property not found"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, mSecureModeProperty:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBluetoothSupported()Z
    .locals 1

    .prologue
    .line 322
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDunSupported()Z
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public static isHidSupported()Z
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x1

    return v0
.end method

.method private static isMapSupported()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 396
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-ne v2, v1, :cond_0

    .line 408
    :goto_0
    :sswitch_0
    return v0

    .line 400
    :cond_0
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 408
    goto :goto_0

    .line 400
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x28 -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method private static isPbapSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 389
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-ne v1, v0, :cond_0

    .line 390
    const/4 v0, 0x0

    .line 391
    :cond_0
    return v0
.end method

.method public static isScanAllowed(Landroid/content/Context;)Z
    .locals 1
    .parameter "ctx"

    .prologue
    .line 338
    if-eqz p0, :cond_0

    .line 351
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "ctx"
    .parameter "svcName"

    .prologue
    .line 329
    invoke-static {p0, p1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isServiceSupported(Ljava/lang/String;)Z
    .locals 2
    .parameter "svcName"

    .prologue
    .line 307
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 308
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_AVAILABLE:[Z

    aget-boolean v1, v1, v0

    .line 312
    :goto_1
    return v1

    .line 307
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isSoftOnOffEnabled()Z
    .locals 3

    .prologue
    .line 355
    const-string v1, "service.brcm.bt.soft_onoff"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, softOnOff:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static final isStandaloneProcess()Z
    .locals 4

    .prologue
    .line 372
    sget-boolean v1, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->IS_STANDALONE_PROCESS:Z

    if-nez v1, :cond_0

    const-string v1, "1"

    const-string v2, "service.brcm.bt.is_sta"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 374
    .local v0, isStandalone:Z
    :goto_0
    return v0

    .line 372
    .end local v0           #isStandalone:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
