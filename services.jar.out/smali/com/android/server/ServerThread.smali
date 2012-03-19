.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final RESERVED_SZIE:I = 0x100000

.field private static final RESERVE_FILE:Ljava/lang/String; = "/data/system/storage_reserve"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private static preserveSpace()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/android/server/ServerThread$1;

    invoke-direct {v0}, Lcom/android/server/ServerThread$1;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/ServerThread$1;->start()V

    .line 143
    return-void
.end method

.method private static recoverySpace()V
    .locals 4

    .prologue
    .line 147
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/storage_reserve"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SystemServer"

    const-string v3, "Failed to delete storage_reserve"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 919
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 920
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 922
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 924
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 93
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    return-void
.end method

.method public run()V
    .locals 102

    .prologue
    .line 158
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 162
    invoke-static {}, Lcom/android/server/ServerThread;->recoverySpace()V

    .line 165
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 167
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 170
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 171
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 175
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v83

    .line 177
    .local v83, shutdownAction:Ljava/lang/String;
    if-eqz v83, :cond_0

    invoke-virtual/range {v83 .. v83}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 178
    const/4 v3, 0x0

    move-object/from16 v0, v83

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_c

    const/16 v80, 0x1

    .line 181
    .local v80, reboot:Z
    :goto_0
    invoke-virtual/range {v83 .. v83}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_d

    .line 182
    const/4 v3, 0x1

    invoke-virtual/range {v83 .. v83}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v83

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    .line 187
    .local v79, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v80

    move-object/from16 v1, v79

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 191
    .end local v79           #reason:Ljava/lang/String;
    .end local v80           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 192
    .local v58, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v57, 0x0

    .line 195
    .local v57, factoryTest:I
    :goto_2
    const/16 v65, 0x0

    .line 196
    .local v65, lights:Lcom/android/server/LightsService;
    const/16 v60, 0x0

    .line 197
    .local v60, htchardware:Lcom/android/server/HtcHardwareService;
    const/16 v78, 0x0

    .line 198
    .local v78, power:Lcom/android/server/PowerManagerService;
    const/16 v39, 0x0

    .line 199
    .local v39, battery:Lcom/android/server/BatteryService;
    const/16 v36, 0x0

    .line 200
    .local v36, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 201
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 202
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v70, 0x0

    .line 203
    .local v70, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v45, 0x0

    .line 204
    .local v45, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v99, 0x0

    .line 205
    .local v99, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v97, 0x0

    .line 206
    .local v97, wifi:Lcom/android/server/WifiService;
    const/16 v77, 0x0

    .line 207
    .local v77, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 208
    .local v4, context:Landroid/content/Context;
    const/16 v101, 0x0

    .line 209
    .local v101, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v40, 0x0

    .line 210
    .local v40, bluetooth:Landroid/server/BluetoothService;
    const/16 v42, 0x0

    .line 211
    .local v42, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v54, 0x0

    .line 212
    .local v54, dock:Lcom/android/server/DockObserver;
    const/16 v92, 0x0

    .line 213
    .local v92, usb:Lcom/android/server/usb/UsbService;
    const/16 v90, 0x0

    .line 214
    .local v90, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v81, 0x0

    .line 215
    .local v81, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v86, 0x0

    .line 216
    .local v86, throttle:Lcom/android/server/ThrottleService;
    const/16 v72, 0x0

    .line 218
    .local v72, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v50, 0x0

    .line 223
    .local v50, deviceManager:Lcom/android/server/DeviceManager3LMService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyService;

    invoke-direct {v9}, Lcom/android/server/EntropyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 226
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3e

    .line 228
    .end local v78           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 231
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_FEATURE_3LM:Z

    if-eqz v3, :cond_1

    .line 232
    const-string v3, "SystemServer"

    const-string v9, "DeviceManager3LM"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v51, Lcom/android/server/DeviceManager3LMService;

    invoke-direct/range {v51 .. v51}, Lcom/android/server/DeviceManager3LMService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    .end local v50           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .local v51, deviceManager:Lcom/android/server/DeviceManager3LMService;
    :try_start_2
    const-string v3, "DeviceManager3LM"

    move-object/from16 v0, v51

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3f

    move-object/from16 v50, v51

    .line 238
    .end local v51           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v50       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    :cond_1
    :try_start_3
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static/range {v57 .. v57}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 241
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 244
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 246
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 249
    .local v49, cryptState:Ljava/lang/String;
    const/16 v76, 0x0

    .line 250
    .local v76, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 251
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/16 v76, 0x1

    .line 258
    :cond_2
    :goto_3
    if-eqz v57, :cond_10

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, v76

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v77

    .line 261
    const/16 v59, 0x0

    .line 263
    .local v59, firstBoot:Z
    :try_start_4
    invoke-interface/range {v77 .. v77}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v59

    .line 267
    :goto_5
    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 269
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 273
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v3, "account"

    new-instance v9, Landroid/accounts/AccountManagerService;

    invoke-direct {v9, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 280
    :goto_6
    :try_start_7
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v3, 0x1

    move/from16 v0, v57

    if-ne v0, v3, :cond_11

    const/4 v3, 0x1

    :goto_7
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v66, Lcom/android/server/MiuiLightsService;

    move-object/from16 v0, v66

    invoke-direct {v0, v4}, Lcom/android/server/MiuiLightsService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 290
    .end local v65           #lights:Lcom/android/server/LightsService;
    .local v66, lights:Lcom/android/server/LightsService;
    :try_start_8
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v66

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_40

    .line 292
    .end local v39           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_9
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 294
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v3, "vibrator"

    new-instance v9, Lcom/android/server/VibratorService;

    invoke-direct {v9, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 298
    const-string v3, "SystemServer"

    const-string v9, "Hardware Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v61, Lcom/android/server/HtcHardwareService;

    move-object/from16 v0, v61

    invoke-direct {v0, v4}, Lcom/android/server/HtcHardwareService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_41

    .line 300
    .end local v60           #htchardware:Lcom/android/server/HtcHardwareService;
    .local v61, htchardware:Lcom/android/server/HtcHardwareService;
    :try_start_a
    const-string v3, "htchardware"

    move-object/from16 v0, v61

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 304
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v66

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 306
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_42

    .line 308
    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_b
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 310
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 314
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v3, 0x1

    move/from16 v0, v57

    if-eq v0, v3, :cond_12

    const/4 v3, 0x1

    move v9, v3

    :goto_8
    if-nez v59, :cond_13

    const/4 v3, 0x1

    :goto_9
    invoke-static {v4, v6, v9, v3}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v101

    .line 318
    const-string v3, "window"

    move-object/from16 v0, v101

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 320
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v101

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 325
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 326
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    :goto_a
    move-object/from16 v60, v61

    .end local v61           #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v60       #htchardware:Lcom/android/server/HtcHardwareService;
    move-object/from16 v65, v66

    .line 354
    .end local v49           #cryptState:Ljava/lang/String;
    .end local v59           #firstBoot:Z
    .end local v66           #lights:Lcom/android/server/LightsService;
    .end local v76           #onlyCore:Z
    .restart local v65       #lights:Lcom/android/server/LightsService;
    :goto_b
    const/16 v52, 0x0

    .line 355
    .local v52, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v84, 0x0

    .line 356
    .local v84, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v62, 0x0

    .line 357
    .local v62, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v37, 0x0

    .line 358
    .local v37, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v74, 0x0

    .line 359
    .local v74, notification:Lcom/android/server/NotificationManagerService;
    const/16 v95, 0x0

    .line 360
    .local v95, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v67, 0x0

    .line 361
    .local v67, location:Lcom/android/server/LocationManagerService;
    const/16 v47, 0x0

    .line 362
    .local v47, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v88, 0x0

    .line 365
    .local v88, tsms:Lcom/android/server/TextServicesManagerService;
    const/4 v3, 0x1

    move/from16 v0, v57

    if-eq v0, v3, :cond_3

    .line 367
    :try_start_c
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v63, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3

    .line 369
    .end local v62           #imm:Lcom/android/server/InputMethodManagerService;
    .local v63, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_d
    const-string v3, "input_method"

    move-object/from16 v0, v63

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3d

    move-object/from16 v62, v63

    .line 375
    .end local v63           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v62       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_e
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    .line 384
    :cond_3
    :goto_d
    :try_start_f
    invoke-virtual/range {v101 .. v101}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5

    .line 390
    :goto_e
    :try_start_10
    invoke-interface/range {v77 .. v77}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6

    .line 396
    :goto_f
    :try_start_11
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10403bc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_3c

    .line 403
    :goto_10
    const/4 v3, 0x1

    move/from16 v0, v57

    if-eq v0, v3, :cond_18

    .line 405
    :try_start_12
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v53, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_7

    .line 407
    .end local v52           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v53, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_13
    const-string v3, "device_policy"

    move-object/from16 v0, v53

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_3b

    move-object/from16 v52, v53

    .line 413
    .end local v53           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v52       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_11
    :try_start_14
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v85, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v85

    move-object/from16 v1, v101

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_8

    .line 415
    .end local v84           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v85, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_15
    const-string v3, "statusbar"

    move-object/from16 v0, v85

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_3a

    move-object/from16 v84, v85

    .line 421
    .end local v85           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v84       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_12
    :try_start_16
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_9

    .line 429
    :goto_13
    :try_start_17
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 431
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_a

    .line 437
    :goto_14
    :try_start_18
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v89, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v89

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_b

    .line 439
    .end local v88           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v89, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_19
    const-string v3, "textservices"

    move-object/from16 v0, v89

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_39

    move-object/from16 v88, v89

    .line 445
    .end local v89           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v88       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_15
    :try_start_1a
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v71, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v71

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_c

    .line 447
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v71, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_1b
    const-string v3, "netstats"

    move-object/from16 v0, v71

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_38

    move-object/from16 v12, v71

    .line 453
    .end local v71           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_16
    :try_start_1c
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_d

    .line 457
    .end local v70           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1d
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_37

    .line 463
    :goto_17
    :try_start_1e
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v100, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v100

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_e

    .line 465
    .end local v99           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v100, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_1f
    const-string v3, "wifip2p"

    move-object/from16 v0, v100

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_36

    move-object/from16 v99, v100

    .line 471
    .end local v100           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v99       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_18
    :try_start_20
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance v98, Lcom/android/server/WifiService;

    move-object/from16 v0, v98

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_f

    .line 473
    .end local v97           #wifi:Lcom/android/server/WifiService;
    .local v98, wifi:Lcom/android/server/WifiService;
    :try_start_21
    const-string v3, "wifi"

    move-object/from16 v0, v98

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_35

    move-object/from16 v97, v98

    .line 479
    .end local v98           #wifi:Lcom/android/server/WifiService;
    .restart local v97       #wifi:Lcom/android/server/WifiService;
    :goto_19
    :try_start_22
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v46, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v46

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_10

    .line 482
    .end local v45           #connectivity:Lcom/android/server/ConnectivityService;
    .local v46, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_23
    const-string v3, "connectivity"

    move-object/from16 v0, v46

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 483
    move-object/from16 v0, v46

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 484
    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 485
    invoke-virtual/range {v97 .. v97}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 486
    invoke-virtual/range {v99 .. v99}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_34

    move-object/from16 v45, v46

    .line 492
    .end local v46           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v45       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1a
    :try_start_24
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v87, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v87

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_11

    .line 494
    .end local v86           #throttle:Lcom/android/server/ThrottleService;
    .local v87, throttle:Lcom/android/server/ThrottleService;
    :try_start_25
    const-string v3, "throttle"

    move-object/from16 v0, v87

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_33

    move-object/from16 v86, v87

    .line 505
    .end local v87           #throttle:Lcom/android/server/ThrottleService;
    .restart local v86       #throttle:Lcom/android/server/ThrottleService;
    :goto_1b
    :try_start_26
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const-string v3, "mount"

    new-instance v9, Lcom/android/server/MountService;

    invoke-direct {v9, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_12

    .line 512
    :goto_1c
    :try_start_27
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    new-instance v75, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v75

    move-object/from16 v1, v84

    move-object/from16 v2, v65

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_13

    .line 514
    .end local v74           #notification:Lcom/android/server/NotificationManagerService;
    .local v75, notification:Lcom/android/server/NotificationManagerService;
    :try_start_28
    const-string v3, "notification"

    move-object/from16 v0, v75

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 515
    move-object/from16 v0, v75

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_32

    move-object/from16 v74, v75

    .line 521
    .end local v75           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v74       #notification:Lcom/android/server/NotificationManagerService;
    :goto_1d
    :try_start_29
    const-string v3, "SystemServer"

    const-string v9, "Display Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v3, "display"

    new-instance v9, Lcom/android/server/DisplayService;

    invoke-direct {v9, v4}, Lcom/android/server/DisplayService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_14

    .line 528
    :goto_1e
    :try_start_2a
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_15

    .line 536
    :goto_1f
    :try_start_2b
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v68, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v68

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_16

    .line 538
    .end local v67           #location:Lcom/android/server/LocationManagerService;
    .local v68, location:Lcom/android/server/LocationManagerService;
    :try_start_2c
    const-string v3, "location"

    move-object/from16 v0, v68

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_31

    move-object/from16 v67, v68

    .line 544
    .end local v68           #location:Lcom/android/server/LocationManagerService;
    .restart local v67       #location:Lcom/android/server/LocationManagerService;
    :goto_20
    :try_start_2d
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    new-instance v48, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_17

    .line 546
    .end local v47           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v48, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_2e
    const-string v3, "country_detector"

    move-object/from16 v0, v48

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_30

    move-object/from16 v47, v48

    .line 552
    .end local v48           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v47       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_21
    :try_start_2f
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_18

    .line 560
    :goto_22
    :try_start_30
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_19

    .line 569
    :goto_23
    :try_start_31
    const-string v3, "SystemServer"

    const-string v9, "HTC Checkin Service."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.android.providers.htcCheckin"

    const-string v10, "com.android.providers.htcCheckin.htcCheckinService"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v64

    .line 573
    .local v64, intent:Landroid/content/Intent;
    move-object/from16 v0, v64

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1a

    .line 580
    .end local v64           #intent:Landroid/content/Intent;
    :goto_24
    :try_start_32
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    new-instance v96, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v96

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1b

    .line 582
    .end local v95           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v96, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_33
    const-string v3, "wallpaper"

    move-object/from16 v0, v96

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_2f

    move-object/from16 v95, v96

    .line 588
    .end local v96           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v95       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_25
    :try_start_34
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1c

    .line 595
    :goto_26
    :try_start_35
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v55, Lcom/android/server/DockObserver;

    move-object/from16 v0, v55

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1d

    .end local v54           #dock:Lcom/android/server/DockObserver;
    .local v55, dock:Lcom/android/server/DockObserver;
    move-object/from16 v54, v55

    .line 603
    .end local v55           #dock:Lcom/android/server/DockObserver;
    .restart local v54       #dock:Lcom/android/server/DockObserver;
    :goto_27
    :try_start_36
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1e

    .line 611
    :goto_28
    :try_start_37
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-instance v93, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v93

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1f

    .line 614
    .end local v92           #usb:Lcom/android/server/usb/UsbService;
    .local v93, usb:Lcom/android/server/usb/UsbService;
    :try_start_38
    const-string v3, "usb"

    move-object/from16 v0, v93

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_2e

    move-object/from16 v92, v93

    .line 620
    .end local v93           #usb:Lcom/android/server/usb/UsbService;
    .restart local v92       #usb:Lcom/android/server/usb/UsbService;
    :goto_29
    :try_start_39
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    new-instance v91, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v91

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_20

    .end local v90           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v91, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v90, v91

    .line 628
    .end local v91           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v90       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_2a
    :try_start_3a
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_21

    .line 636
    :goto_2b
    :try_start_3b
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    new-instance v38, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v38

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_22

    .line 638
    .end local v37           #appWidget:Lcom/android/server/AppWidgetService;
    .local v38, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_3c
    const-string v3, "appwidget"

    move-object/from16 v0, v38

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_2d

    move-object/from16 v37, v38

    .line 644
    .end local v38           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v37       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_2c
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    new-instance v82, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v82

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_23

    .end local v81           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v82, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v81, v82

    .line 651
    .end local v82           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v81       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_2d
    :try_start_3e
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_24

    .line 662
    :goto_2e
    :try_start_3f
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_25

    .line 670
    :goto_2f
    :try_start_40
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    new-instance v73, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v73

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_26

    .end local v72           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v73, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v72, v73

    .line 677
    .end local v73           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v72       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_30
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_FEATURE_3LM:Z

    if-eqz v3, :cond_5

    .line 678
    const-string v3, "1"

    const-string v9, "ro.3lm.legacy_encryption"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 679
    const-string v3, "SystemServer"

    const-string v9, "Encryption 3LM Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const-string v3, "Encryption3LMService"

    new-instance v9, Lcom/android/server/Encryption3LMService;

    invoke-direct {v9, v4}, Lcom/android/server/Encryption3LMService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 684
    :cond_4
    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Lcom/android/server/DeviceManager3LMService;->init(Landroid/content/Context;)V

    .line 689
    :cond_5
    invoke-static {}, Lcom/htc/utils/ulog/Util;->supportUserPolicy()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileForceDisableUlog()Z

    move-result v3

    if-nez v3, :cond_16

    .line 692
    :cond_6
    :try_start_41
    const-string v3, "SystemServer"

    const-string v9, "User Behavior Logging Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const-string v3, "userbehavior"

    new-instance v9, Lcom/htc/server/ulog/UserBehaviorLoggingService;

    invoke-direct {v9, v4}, Lcom/htc/server/ulog/UserBehaviorLoggingService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_27

    .line 701
    :goto_31
    move/from16 v0, v57

    invoke-static {v4, v0}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->loadServices(Landroid/content/Context;I)V

    .line 704
    sget-boolean v3, Lcom/htc/server/HtcAppUsageStatsService;->VZW_APPWIFIOFFLOAD:Z

    if-eqz v3, :cond_7

    .line 705
    const-string v3, "HtcAppUsageStatsService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 706
    const-string v3, "HtcAppUsageStatsService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v3}, Lcom/htc/server/HtcAppUsageStatsService;->systemReady()V

    .line 714
    :cond_7
    :goto_32
    invoke-virtual/range {v101 .. v101}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v27

    .line 715
    .local v27, safeMode:Z
    if-eqz v27, :cond_17

    .line 716
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 718
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 720
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 728
    :goto_33
    if-eqz v52, :cond_8

    .line 730
    :try_start_42
    invoke-virtual/range {v52 .. v52}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_28

    .line 736
    :cond_8
    :goto_34
    if-eqz v74, :cond_9

    .line 738
    :try_start_43
    invoke-virtual/range {v74 .. v74}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_29

    .line 745
    :cond_9
    :goto_35
    :try_start_44
    invoke-virtual/range {v101 .. v101}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2a

    .line 750
    :goto_36
    if-eqz v27, :cond_a

    .line 751
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 757
    :cond_a
    invoke-virtual/range {v101 .. v101}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v44

    .line 758
    .local v44, config:Landroid/content/res/Configuration;
    new-instance v69, Landroid/util/DisplayMetrics;

    invoke-direct/range {v69 .. v69}, Landroid/util/DisplayMetrics;-><init>()V

    .line 759
    .local v69, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v94

    check-cast v94, Landroid/view/WindowManager;

    .line 760
    .local v94, w:Landroid/view/WindowManager;
    invoke-interface/range {v94 .. v94}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v69

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 761
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v44

    move-object/from16 v1, v69

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 774
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 776
    :try_start_45
    invoke-interface/range {v77 .. v77}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2b

    .line 782
    :goto_37
    move-object/from16 v16, v4

    .line 783
    .local v16, contextF:Landroid/content/Context;
    move-object/from16 v17, v5

    .line 784
    .local v17, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v18, v13

    .line 785
    .local v18, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v19, v12

    .line 786
    .local v19, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v20, v8

    .line 787
    .local v20, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v21, v45

    .line 788
    .local v21, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v22, v54

    .line 789
    .local v22, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v23, v92

    .line 790
    .local v23, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v33, v86

    .line 791
    .local v33, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v24, v90

    .line 792
    .local v24, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v26, v37

    .line 793
    .local v26, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v28, v95

    .line 794
    .local v28, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v29, v62

    .line 795
    .local v29, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v25, v81

    .line 796
    .local v25, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v31, v67

    .line 797
    .local v31, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v32, v47

    .line 798
    .local v32, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v34, v72

    .line 799
    .local v34, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v35, v88

    .line 800
    .local v35, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v30, v84

    .line 803
    .local v30, statusBarF:Lcom/android/server/StatusBarManagerService;
    invoke-static {}, Lcom/android/server/ServerThread;->preserveSpace()V

    .line 811
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$2;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v35}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/TextServicesManagerService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 910
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 911
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_b
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 915
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    return-void

    .line 178
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #contextF:Landroid/content/Context;
    .end local v17           #batteryF:Lcom/android/server/BatteryService;
    .end local v18           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v19           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v20           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v21           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v22           #dockF:Lcom/android/server/DockObserver;
    .end local v23           #usbF:Lcom/android/server/usb/UsbService;
    .end local v24           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v25           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v26           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v27           #safeMode:Z
    .end local v28           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v29           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v30           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v31           #locationF:Lcom/android/server/LocationManagerService;
    .end local v32           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v33           #throttleF:Lcom/android/server/ThrottleService;
    .end local v34           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v35           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v37           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v40           #bluetooth:Landroid/server/BluetoothService;
    .end local v42           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v44           #config:Landroid/content/res/Configuration;
    .end local v45           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v47           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v50           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v52           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v54           #dock:Lcom/android/server/DockObserver;
    .end local v57           #factoryTest:I
    .end local v58           #factoryTestStr:Ljava/lang/String;
    .end local v60           #htchardware:Lcom/android/server/HtcHardwareService;
    .end local v62           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v65           #lights:Lcom/android/server/LightsService;
    .end local v67           #location:Lcom/android/server/LocationManagerService;
    .end local v69           #metrics:Landroid/util/DisplayMetrics;
    .end local v72           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v74           #notification:Lcom/android/server/NotificationManagerService;
    .end local v77           #pm:Landroid/content/pm/IPackageManager;
    .end local v81           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v84           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v86           #throttle:Lcom/android/server/ThrottleService;
    .end local v88           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v90           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v92           #usb:Lcom/android/server/usb/UsbService;
    .end local v94           #w:Landroid/view/WindowManager;
    .end local v95           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v97           #wifi:Lcom/android/server/WifiService;
    .end local v99           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v101           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_c
    const/16 v80, 0x0

    goto/16 :goto_0

    .line 184
    .restart local v80       #reboot:Z
    :cond_d
    const/16 v79, 0x0

    .restart local v79       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 192
    .end local v79           #reason:Ljava/lang/String;
    .end local v80           #reboot:Z
    .restart local v58       #factoryTestStr:Ljava/lang/String;
    :cond_e
    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v57

    goto/16 :goto_2

    .line 253
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v36       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v39       #battery:Lcom/android/server/BatteryService;
    .restart local v40       #bluetooth:Landroid/server/BluetoothService;
    .restart local v42       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v45       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v49       #cryptState:Ljava/lang/String;
    .restart local v50       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v54       #dock:Lcom/android/server/DockObserver;
    .restart local v57       #factoryTest:I
    .restart local v60       #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v65       #lights:Lcom/android/server/LightsService;
    .restart local v70       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v72       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v76       #onlyCore:Z
    .restart local v77       #pm:Landroid/content/pm/IPackageManager;
    .restart local v81       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v86       #throttle:Lcom/android/server/ThrottleService;
    .restart local v90       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v92       #usb:Lcom/android/server/usb/UsbService;
    .restart local v97       #wifi:Lcom/android/server/WifiService;
    .restart local v99       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v101       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_f
    :try_start_46
    const-string v3, "1"

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/16 v76, 0x1

    goto/16 :goto_3

    .line 258
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 276
    .restart local v59       #firstBoot:Z
    :catch_0
    move-exception v56

    .line 277
    .local v56, e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v56

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_46} :catch_1

    goto/16 :goto_6

    .line 349
    .end local v49           #cryptState:Ljava/lang/String;
    .end local v56           #e:Ljava/lang/Throwable;
    .end local v59           #firstBoot:Z
    .end local v76           #onlyCore:Z
    :catch_1
    move-exception v56

    move-object/from16 v7, v36

    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v39

    .line 350
    .end local v39           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v56, e:Ljava/lang/RuntimeException;
    :goto_38
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v56

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 281
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v56           #e:Ljava/lang/RuntimeException;
    .restart local v36       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v39       #battery:Lcom/android/server/BatteryService;
    .restart local v49       #cryptState:Ljava/lang/String;
    .restart local v59       #firstBoot:Z
    .restart local v76       #onlyCore:Z
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 315
    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v39           #battery:Lcom/android/server/BatteryService;
    .end local v60           #htchardware:Lcom/android/server/HtcHardwareService;
    .end local v65           #lights:Lcom/android/server/LightsService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v61       #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v66       #lights:Lcom/android/server/LightsService;
    :cond_12
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_8

    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 327
    :cond_14
    const/4 v3, 0x1

    move/from16 v0, v57

    if-ne v0, v3, :cond_15

    .line 328
    :try_start_47
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 349
    :catch_2
    move-exception v56

    move-object/from16 v60, v61

    .end local v61           #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v60       #htchardware:Lcom/android/server/HtcHardwareService;
    move-object/from16 v65, v66

    .end local v66           #lights:Lcom/android/server/LightsService;
    .restart local v65       #lights:Lcom/android/server/LightsService;
    goto :goto_38

    .line 330
    .end local v60           #htchardware:Lcom/android/server/HtcHardwareService;
    .end local v65           #lights:Lcom/android/server/LightsService;
    .restart local v61       #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v66       #lights:Lcom/android/server/LightsService;
    :cond_15
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v41, Landroid/server/BluetoothService;

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_47} :catch_2

    .line 332
    .end local v40           #bluetooth:Landroid/server/BluetoothService;
    .local v41, bluetooth:Landroid/server/BluetoothService;
    :try_start_48
    const-string v3, "bluetooth"

    move-object/from16 v0, v41

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 333
    invoke-virtual/range {v41 .. v41}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 334
    new-instance v43, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v43

    move-object/from16 v1, v41

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_48} :catch_43

    .line 335
    .end local v42           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v43, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_49
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v43

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 337
    invoke-virtual/range {v41 .. v41}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_49} :catch_44

    move-object/from16 v42, v43

    .end local v43           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v42       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v40, v41

    .end local v41           #bluetooth:Landroid/server/BluetoothService;
    .restart local v40       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_a

    .line 370
    .end local v49           #cryptState:Ljava/lang/String;
    .end local v59           #firstBoot:Z
    .end local v61           #htchardware:Lcom/android/server/HtcHardwareService;
    .end local v66           #lights:Lcom/android/server/LightsService;
    .end local v76           #onlyCore:Z
    .restart local v37       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v47       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v52       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v60       #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v62       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v65       #lights:Lcom/android/server/LightsService;
    .restart local v67       #location:Lcom/android/server/LocationManagerService;
    .restart local v74       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v84       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v88       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v95       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v56

    .line 371
    .local v56, e:Ljava/lang/Throwable;
    :goto_39
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 378
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v56

    .line 379
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 385
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v56

    .line 386
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 391
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v56

    .line 392
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 408
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v56

    .line 409
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_3a
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 416
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v56

    .line 417
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_3b
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 424
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v56

    .line 425
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 432
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v56

    .line 433
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 440
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v56

    .line 441
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_3c
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 448
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v56

    .line 449
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_3d
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 458
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v56

    move-object/from16 v8, v70

    .line 459
    .end local v70           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_3e
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 466
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v56

    .line 467
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_3f
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 474
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v56

    .line 475
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_40
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 487
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v56

    .line 488
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_41
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 496
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v56

    .line 497
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_42
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 507
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v56

    .line 508
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 516
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v56

    .line 517
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_43
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 523
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v56

    .line 524
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "starting Display Service "

    move-object/from16 v0, v56

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e

    .line 531
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v56

    .line 532
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 539
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v56

    .line 540
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_44
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 547
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v56

    .line 548
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_45
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 555
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v56

    .line 556
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 563
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v56

    .line 564
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 574
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v56

    .line 575
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting HTC Checkin Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 583
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v56

    .line 584
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_46
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 590
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v56

    .line 591
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 598
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v56

    .line 599
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 606
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v56

    .line 607
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 615
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v56

    .line 616
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_47
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 623
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v56

    .line 624
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 631
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v56

    .line 632
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v56

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b

    .line 639
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v56

    .line 640
    .restart local v56       #e:Ljava/lang/Throwable;
    :goto_48
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 646
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v56

    .line 647
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 653
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v56

    .line 654
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 665
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v56

    .line 666
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 672
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v56

    .line 673
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 694
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v56

    .line 695
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting UserBehaviorLoggingService"

    move-object/from16 v0, v56

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    .line 698
    .end local v56           #e:Ljava/lang/Throwable;
    :cond_16
    const-string v3, "SystemServer"

    const-string v9, "Disable User Behavior Logging Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    .line 723
    .restart local v27       #safeMode:Z
    :cond_17
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_33

    .line 731
    :catch_28
    move-exception v56

    .line 732
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 739
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v56

    .line 740
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 746
    .end local v56           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v56

    .line 747
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 777
    .end local v56           #e:Ljava/lang/Throwable;
    .restart local v44       #config:Landroid/content/res/Configuration;
    .restart local v69       #metrics:Landroid/util/DisplayMetrics;
    .restart local v94       #w:Landroid/view/WindowManager;
    :catch_2b
    move-exception v56

    .line 778
    .restart local v56       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 264
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v27           #safeMode:Z
    .end local v37           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v44           #config:Landroid/content/res/Configuration;
    .end local v47           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v52           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v56           #e:Ljava/lang/Throwable;
    .end local v62           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v67           #location:Lcom/android/server/LocationManagerService;
    .end local v69           #metrics:Landroid/util/DisplayMetrics;
    .end local v74           #notification:Lcom/android/server/NotificationManagerService;
    .end local v84           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v88           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v94           #w:Landroid/view/WindowManager;
    .end local v95           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v36       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v39       #battery:Lcom/android/server/BatteryService;
    .restart local v49       #cryptState:Ljava/lang/String;
    .restart local v59       #firstBoot:Z
    .restart local v70       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v76       #onlyCore:Z
    :catch_2c
    move-exception v3

    goto/16 :goto_5

    .line 639
    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v39           #battery:Lcom/android/server/BatteryService;
    .end local v49           #cryptState:Ljava/lang/String;
    .end local v59           #firstBoot:Z
    .end local v70           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v76           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v38       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v47       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v52       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v62       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v67       #location:Lcom/android/server/LocationManagerService;
    .restart local v74       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v84       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v88       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v95       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_2d
    move-exception v56

    move-object/from16 v37, v38

    .end local v38           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v37       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_48

    .line 615
    .end local v92           #usb:Lcom/android/server/usb/UsbService;
    .restart local v93       #usb:Lcom/android/server/usb/UsbService;
    :catch_2e
    move-exception v56

    move-object/from16 v92, v93

    .end local v93           #usb:Lcom/android/server/usb/UsbService;
    .restart local v92       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_47

    .line 583
    .end local v95           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v96       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_2f
    move-exception v56

    move-object/from16 v95, v96

    .end local v96           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v95       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_46

    .line 547
    .end local v47           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v48       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_30
    move-exception v56

    move-object/from16 v47, v48

    .end local v48           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v47       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_45

    .line 539
    .end local v67           #location:Lcom/android/server/LocationManagerService;
    .restart local v68       #location:Lcom/android/server/LocationManagerService;
    :catch_31
    move-exception v56

    move-object/from16 v67, v68

    .end local v68           #location:Lcom/android/server/LocationManagerService;
    .restart local v67       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_44

    .line 516
    .end local v74           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v75       #notification:Lcom/android/server/NotificationManagerService;
    :catch_32
    move-exception v56

    move-object/from16 v74, v75

    .end local v75           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v74       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_43

    .line 496
    .end local v86           #throttle:Lcom/android/server/ThrottleService;
    .restart local v87       #throttle:Lcom/android/server/ThrottleService;
    :catch_33
    move-exception v56

    move-object/from16 v86, v87

    .end local v87           #throttle:Lcom/android/server/ThrottleService;
    .restart local v86       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_42

    .line 487
    .end local v45           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v46       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_34
    move-exception v56

    move-object/from16 v45, v46

    .end local v46           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v45       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_41

    .line 474
    .end local v97           #wifi:Lcom/android/server/WifiService;
    .restart local v98       #wifi:Lcom/android/server/WifiService;
    :catch_35
    move-exception v56

    move-object/from16 v97, v98

    .end local v98           #wifi:Lcom/android/server/WifiService;
    .restart local v97       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_40

    .line 466
    .end local v99           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v100       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_36
    move-exception v56

    move-object/from16 v99, v100

    .end local v100           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v99       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_3f

    .line 458
    :catch_37
    move-exception v56

    goto/16 :goto_3e

    .line 448
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v70       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v71       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_38
    move-exception v56

    move-object/from16 v12, v71

    .end local v71           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_3d

    .line 440
    .end local v88           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v89       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_39
    move-exception v56

    move-object/from16 v88, v89

    .end local v89           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v88       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_3c

    .line 416
    .end local v84           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v85       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_3a
    move-exception v56

    move-object/from16 v84, v85

    .end local v85           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v84       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_3b

    .line 408
    .end local v52           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v53       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_3b
    move-exception v56

    move-object/from16 v52, v53

    .end local v53           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v52       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_3a

    .line 400
    :catch_3c
    move-exception v3

    goto/16 :goto_10

    .line 370
    .end local v62           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v63       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_3d
    move-exception v56

    move-object/from16 v62, v63

    .end local v63           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v62       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_39

    .line 349
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v37           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v47           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v52           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v62           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v67           #location:Lcom/android/server/LocationManagerService;
    .end local v74           #notification:Lcom/android/server/NotificationManagerService;
    .end local v84           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v88           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v95           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v36       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v39       #battery:Lcom/android/server/BatteryService;
    .restart local v78       #power:Lcom/android/server/PowerManagerService;
    :catch_3e
    move-exception v56

    move-object/from16 v7, v36

    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v39

    .end local v39           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v78

    .end local v78           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_38

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v50           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v36       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v39       #battery:Lcom/android/server/BatteryService;
    .restart local v51       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    :catch_3f
    move-exception v56

    move-object/from16 v50, v51

    .end local v51           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v50       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v7, v36

    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v39

    .end local v39           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    goto/16 :goto_38

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v65           #lights:Lcom/android/server/LightsService;
    .restart local v36       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v39       #battery:Lcom/android/server/BatteryService;
    .restart local v49       #cryptState:Ljava/lang/String;
    .restart local v59       #firstBoot:Z
    .restart local v66       #lights:Lcom/android/server/LightsService;
    .restart local v76       #onlyCore:Z
    :catch_40
    move-exception v56

    move-object/from16 v7, v36

    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v39

    .end local v39           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v65, v66

    .end local v66           #lights:Lcom/android/server/LightsService;
    .restart local v65       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_38

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v65           #lights:Lcom/android/server/LightsService;
    .restart local v36       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v66       #lights:Lcom/android/server/LightsService;
    :catch_41
    move-exception v56

    move-object/from16 v7, v36

    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v65, v66

    .end local v66           #lights:Lcom/android/server/LightsService;
    .restart local v65       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_38

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v60           #htchardware:Lcom/android/server/HtcHardwareService;
    .end local v65           #lights:Lcom/android/server/LightsService;
    .restart local v36       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v61       #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v66       #lights:Lcom/android/server/LightsService;
    :catch_42
    move-exception v56

    move-object/from16 v7, v36

    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v60, v61

    .end local v61           #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v60       #htchardware:Lcom/android/server/HtcHardwareService;
    move-object/from16 v65, v66

    .end local v66           #lights:Lcom/android/server/LightsService;
    .restart local v65       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_38

    .end local v40           #bluetooth:Landroid/server/BluetoothService;
    .end local v60           #htchardware:Lcom/android/server/HtcHardwareService;
    .end local v65           #lights:Lcom/android/server/LightsService;
    .restart local v41       #bluetooth:Landroid/server/BluetoothService;
    .restart local v61       #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v66       #lights:Lcom/android/server/LightsService;
    :catch_43
    move-exception v56

    move-object/from16 v40, v41

    .end local v41           #bluetooth:Landroid/server/BluetoothService;
    .restart local v40       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v60, v61

    .end local v61           #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v60       #htchardware:Lcom/android/server/HtcHardwareService;
    move-object/from16 v65, v66

    .end local v66           #lights:Lcom/android/server/LightsService;
    .restart local v65       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_38

    .end local v40           #bluetooth:Landroid/server/BluetoothService;
    .end local v42           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v60           #htchardware:Lcom/android/server/HtcHardwareService;
    .end local v65           #lights:Lcom/android/server/LightsService;
    .restart local v41       #bluetooth:Landroid/server/BluetoothService;
    .restart local v43       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v61       #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v66       #lights:Lcom/android/server/LightsService;
    :catch_44
    move-exception v56

    move-object/from16 v42, v43

    .end local v43           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v42       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v40, v41

    .end local v41           #bluetooth:Landroid/server/BluetoothService;
    .restart local v40       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v60, v61

    .end local v61           #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v60       #htchardware:Lcom/android/server/HtcHardwareService;
    move-object/from16 v65, v66

    .end local v66           #lights:Lcom/android/server/LightsService;
    .restart local v65       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_38

    .end local v49           #cryptState:Ljava/lang/String;
    .end local v59           #firstBoot:Z
    .end local v76           #onlyCore:Z
    .restart local v37       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v47       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v52       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v62       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v67       #location:Lcom/android/server/LocationManagerService;
    .restart local v74       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v84       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v88       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v95       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_18
    move-object/from16 v8, v70

    .end local v70           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_32
.end method
