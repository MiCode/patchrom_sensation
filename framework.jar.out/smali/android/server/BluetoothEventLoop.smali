.class Landroid/server/BluetoothEventLoop;
.super Ljava/lang/Object;
.source "BluetoothEventLoop.java"


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final CREATE_DEVICE_ALREADY_EXISTS:I = 0x1

.field private static final CREATE_DEVICE_FAILED:I = -0x1

.field private static final CREATE_DEVICE_SUCCESS:I = 0x0

.field private static final DBG:Z = false

.field private static final EVENT_AGENT_CANCEL:I = 0x2

.field private static final EVENT_ON_DEVICE_CREATED:I = 0x67

.field private static final EVENT_ON_DEVICE_FOUND:I = 0x64

.field private static final EVENT_ON_DEVICE_PROPERTY_CHANGED:I = 0x66

.field private static final EVENT_ON_DEVICE_REMOVED:I = 0x68

.field private static final EVENT_ON_PROPERTY_CHANGED:I = 0x65

.field private static final EVENT_PAIRING_CONSENT_DELAYED_ACCEPT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothEventLoop"


# instance fields
.field private isRinging:Z

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAuthorizationAgentRequestData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private final mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInterrupted:Z

.field private mNativeData:I

.field private final mPasskeyAgentRequestData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStarted:Z

.field private mThread:Ljava/lang/Thread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 149
    invoke-static {}, Landroid/server/BluetoothEventLoop;->classInitNative()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/server/BluetoothService;Landroid/server/BluetoothAdapterStateMachine;)V
    .locals 5
    .parameter "context"
    .parameter "adapter"
    .parameter "bluetoothService"
    .parameter "bluetoothState"

    .prologue
    const/4 v4, 0x0

    .line 154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v4, p0, Landroid/server/BluetoothEventLoop;->isRinging:Z

    .line 85
    new-instance v2, Landroid/server/BluetoothEventLoop$1;

    invoke-direct {v2, p0}, Landroid/server/BluetoothEventLoop$1;-><init>(Landroid/server/BluetoothEventLoop;)V

    iput-object v2, p0, Landroid/server/BluetoothEventLoop;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    new-instance v2, Landroid/server/BluetoothEventLoop$2;

    invoke-direct {v2, p0}, Landroid/server/BluetoothEventLoop$2;-><init>(Landroid/server/BluetoothEventLoop;)V

    iput-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    .line 180
    new-instance v2, Landroid/server/BluetoothEventLoop$3;

    invoke-direct {v2, p0}, Landroid/server/BluetoothEventLoop$3;-><init>(Landroid/server/BluetoothEventLoop;)V

    iput-object v2, p0, Landroid/server/BluetoothEventLoop;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 155
    iput-object p3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    .line 156
    iput-object p1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    .line 157
    iput-object p4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    .line 158
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    .line 159
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationAgentRequestData:Ljava/util/HashMap;

    .line 160
    iput-object p2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 162
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 163
    .local v1, pm:Landroid/os/PowerManager;
    const v2, 0x3000001a

    const-string v3, "BluetoothEventLoop"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 165
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 166
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->initializeNativeDataNative()V

    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, intentfilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    return-void
.end method

.method static synthetic access$002(Landroid/server/BluetoothEventLoop;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Landroid/server/BluetoothEventLoop;->isRinging:Z

    return p1
.end method

.method static synthetic access$100(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    return-object v0
.end method

.method static synthetic access$200(Landroid/server/BluetoothEventLoop;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->addDevice(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/server/BluetoothEventLoop;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/server/BluetoothEventLoop;->processPropertyChangedEvent([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/server/BluetoothEventLoop;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->processDevicePropertyChangedEvent(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/server/BluetoothEventLoop;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/server/BluetoothEventLoop;->processDeviceCreatedEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Landroid/server/BluetoothEventLoop;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/server/BluetoothEventLoop;->processDeviceRemovedEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$702(Landroid/server/BluetoothEventLoop;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method private addDevice(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .parameter "address"
    .parameter "properties"

    .prologue
    .line 231
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6}, Landroid/server/BluetoothService;->getDeviceProperties()Landroid/server/BluetoothDeviceProperties;

    move-result-object v1

    .line 233
    .local v1, deviceProperties:Landroid/server/BluetoothDeviceProperties;
    invoke-virtual {v1, p1, p2}, Landroid/server/BluetoothDeviceProperties;->addProperties(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    .line 234
    const-string v6, "RSSI"

    invoke-virtual {v1, p1, v6}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, rssi:Ljava/lang/String;
    const-string v6, "Class"

    invoke-virtual {v1, p1, v6}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, classValue:Ljava/lang/String;
    const-string v6, "Name"

    invoke-virtual {v1, p1, v6}, Landroid/server/BluetoothDeviceProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, name:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 241
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-short v5, v6

    .line 246
    .local v5, rssiValue:S
    :goto_0
    if-eqz v3, :cond_0

    .line 247
    const-string v6, "BluetoothEventLoop"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[embedded] New device found: address :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    if-eqz v0, :cond_2

    .line 250
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.bluetooth.device.action.FOUND"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 252
    const-string v6, "android.bluetooth.device.extra.CLASS"

    new-instance v7, Landroid/bluetooth/BluetoothClass;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 254
    const-string v6, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 255
    const-string v6, "android.bluetooth.device.extra.NAME"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BLUETOOTH"

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 261
    .end local v2           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 243
    .end local v5           #rssiValue:S
    :cond_1
    const/16 v5, -0x8000

    .restart local v5       #rssiValue:S
    goto :goto_0

    .line 259
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClassValue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for remote device: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    const/4 v1, 0x0

    .line 680
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 682
    const-string v2, "BluetoothEventLoop"

    const-string v3, "Unable to get device address in checkPairingRequestAndGetAddress, returning null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :goto_0
    return-object v1

    .line 686
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 687
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 691
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->cancelPairingUserInput(Ljava/lang/String;)Z

    goto :goto_0

    .line 702
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    move-object v1, v0

    .line 703
    goto :goto_0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native initializeNativeDataNative()V
.end method

.method private native isEventLoopRunningNative()Z
.end method

.method private isOtherSinkInNonDisconnectedState(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 1087
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothA2dp;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    .line 1092
    .local v1, devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1096
    :cond_0
    :goto_0
    return v3

    .line 1093
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1094
    .local v0, dev:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    .line 1087
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1312
    const-string v0, "BluetoothEventLoop"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    return-void
.end method

.method private onAgentAuthorize(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .parameter "objectPath"
    .parameter "deviceUuid"
    .parameter "nativeData"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 946
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v7}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 948
    :cond_1
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v7, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 950
    const-string v5, "BluetoothEventLoop"

    const-string v6, "Unable to get device address in onAuthAgentAuthorize"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 954
    :cond_2
    const/4 v1, 0x0

    .line 958
    .local v1, authorized:Z
    const-string/jumbo v7, "sap_weak_linkkey"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 959
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->SimAccess:Landroid/os/ParcelUuid;

    .line 965
    .local v4, uuid:Landroid/os/ParcelUuid;
    :goto_1
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v7, :cond_8

    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isAudioSource(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isAvrcpTarget(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isAudioSink(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isAvrcpController(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isAdvAudioDist(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_3
    invoke-direct {p0, v0}, Landroid/server/BluetoothEventLoop;->isOtherSinkInNonDisconnectedState(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 970
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 971
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationAgentRequestData:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v7, v2}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v7

    if-lez v7, :cond_5

    move v1, v5

    .line 973
    :goto_2
    if-eqz v1, :cond_7

    .line 974
    const-string v7, "BluetoothEventLoop"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "First check pass for incoming A2DP / AVRCP connection from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isAvrcpTarget(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isAvrcpController(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 982
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0, v6}, Landroid/server/BluetoothService;->notifyIncomingA2dpConnection(Ljava/lang/String;Z)Z

    .line 992
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onAgentAuthorize("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for A2dp service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 993
    if-nez v1, :cond_0

    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v5, v2, v1}, Landroid/bluetooth/BluetoothA2dp;->allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto/16 :goto_0

    .line 961
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #uuid:Landroid/os/ParcelUuid;
    :cond_4
    invoke-static {p2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    .restart local v4       #uuid:Landroid/os/ParcelUuid;
    goto/16 :goto_1

    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_5
    move v1, v6

    .line 972
    goto :goto_2

    .line 984
    :cond_6
    const-string v6, "BluetoothEventLoop"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Incoming A2DP / AVRCP connection from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v6, v2, v1}, Landroid/bluetooth/BluetoothA2dp;->allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 987
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0, v5}, Landroid/server/BluetoothService;->notifyIncomingA2dpConnection(Ljava/lang/String;Z)Z

    goto :goto_3

    .line 990
    :cond_7
    const-string v5, "BluetoothEventLoop"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rejecting incoming A2DP / AVRCP connection from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 996
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_8
    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isInputDevice(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 998
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 999
    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationAgentRequestData:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v7, v2}, Landroid/server/BluetoothService;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v7

    if-lez v7, :cond_9

    move v1, v5

    .line 1002
    :goto_4
    if-eqz v1, :cond_a

    .line 1003
    const-string v5, "BluetoothEventLoop"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "First check pass for incoming HID connection from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->notifyIncomingHidConnection(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_9
    move v1, v6

    .line 1000
    goto :goto_4

    .line 1007
    :cond_a
    const-string v5, "BluetoothEventLoop"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rejecting incoming HID connection from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v2, v1}, Landroid/server/BluetoothService;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto/16 :goto_0

    .line 1011
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_b
    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isBnep(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1013
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1014
    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationAgentRequestData:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5}, Landroid/server/BluetoothService;->allowIncomingTethering()Z

    move-result v1

    .line 1016
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v2, v1}, Landroid/server/BluetoothService;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto/16 :goto_0

    .line 1018
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_c
    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isPbap(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1019
    const-string v6, "BluetoothEventLoop"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incoming PBAP connection from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationAgentRequestData:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    iget-boolean v6, p0, Landroid/server/BluetoothEventLoop;->isRinging:Z

    if-eqz v6, :cond_d

    .line 1023
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1024
    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v2, :cond_d

    .line 1025
    const-string v6, "BluetoothEventLoop"

    const-string v7, "Auto accept pbap while phone ringing"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v2, v5}, Landroid/server/BluetoothService;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto/16 :goto_0

    .line 1031
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_d
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->notifyIncomingPbapConnection(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1035
    :cond_e
    const/4 v1, 0x1

    .line 1039
    const-string/jumbo v5, "sap_weak_linkkey"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1040
    const-string/jumbo v3, "sap_weak_linkkey"

    .line 1060
    .local v3, service:Ljava/lang/String;
    :goto_5
    if-eqz v1, :cond_17

    .line 1061
    const-string v5, "BluetoothEventLoop"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onAgentAuthorize("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") = true for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationAgentRequestData:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->notifyIncomingProfileConnection(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1041
    .end local v3           #service:Ljava/lang/String;
    :cond_f
    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isFtp(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1042
    const-string/jumbo v3, "service_ftp"

    .restart local v3       #service:Ljava/lang/String;
    goto :goto_5

    .line 1043
    .end local v3           #service:Ljava/lang/String;
    :cond_10
    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isSerialPort(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1044
    const-string/jumbo v3, "service_spp"

    .restart local v3       #service:Ljava/lang/String;
    goto :goto_5

    .line 1045
    .end local v3           #service:Ljava/lang/String;
    :cond_11
    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isDialUp(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1046
    const-string/jumbo v3, "service_dun"

    .restart local v3       #service:Ljava/lang/String;
    goto :goto_5

    .line 1047
    .end local v3           #service:Ljava/lang/String;
    :cond_12
    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isSimAccess(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1048
    const-string/jumbo v3, "service_sap"

    .restart local v3       #service:Ljava/lang/String;
    goto :goto_5

    .line 1049
    .end local v3           #service:Ljava/lang/String;
    :cond_13
    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isMAP(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1050
    const-string/jumbo v3, "service_map"

    .restart local v3       #service:Ljava/lang/String;
    goto :goto_5

    .line 1051
    .end local v3           #service:Ljava/lang/String;
    :cond_14
    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isMSE(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1052
    const-string/jumbo v3, "service_mse"

    .restart local v3       #service:Ljava/lang/String;
    goto :goto_5

    .line 1053
    .end local v3           #service:Ljava/lang/String;
    :cond_15
    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isMNS(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1054
    const-string/jumbo v3, "service_mns"

    .restart local v3       #service:Ljava/lang/String;
    goto/16 :goto_5

    .line 1056
    .end local v3           #service:Ljava/lang/String;
    :cond_16
    const-string v3, ""

    .line 1057
    .restart local v3       #service:Ljava/lang/String;
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 1066
    :cond_17
    const-string v5, "BluetoothEventLoop"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rejecting incoming "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " connection from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for unknown service"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0, v6, v6}, Landroid/server/BluetoothService;->authorizeService(Ljava/lang/String;ZZ)Z

    goto/16 :goto_0
.end method

.method private onAgentCancel()V
    .locals 5

    .prologue
    .line 1103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1106
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1109
    return-void
.end method

.method private onAgentOutOfBandDataAvailable(Ljava/lang/String;)Z
    .locals 4
    .parameter "objectPath"

    .prologue
    const/4 v1, 0x0

    .line 1074
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return v1

    .line 1076
    :cond_1
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1077
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1079
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->getDeviceOutOfBandData(Landroid/bluetooth/BluetoothDevice;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1081
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onCreateDeviceResult(Ljava/lang/String;I)V
    .locals 3
    .parameter "address"
    .parameter "result"

    .prologue
    .line 1147
    packed-switch p2, :pswitch_data_0

    .line 1163
    :goto_0
    :pswitch_0
    return-void

    .line 1149
    :pswitch_1
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1150
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1151
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/server/BluetoothService;->discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1154
    :cond_0
    const-string v1, "BluetoothEventLoop"

    const-string v2, "Device exists, but we don\'t have the bluez path, failing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    .end local v0           #path:Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    .line 1158
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    goto :goto_0

    .line 1147
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onCreatePairedDeviceResult(Ljava/lang/String;I)V
    .locals 1
    .parameter "address"
    .parameter "result"

    .prologue
    .line 323
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 324
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothService;->onCreatePairedDeviceResult(Ljava/lang/String;I)V

    .line 325
    return-void
.end method

.method private onDeviceCreated(Ljava/lang/String;)V
    .locals 4
    .parameter "deviceObjectPath"

    .prologue
    .line 333
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 336
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 337
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 338
    .local v1, postResult:Z
    if-nez v1, :cond_0

    .line 339
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v3, "onDeviceCreated() unable to post message to handler!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onDeviceDisappeared(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.DISAPPEARED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 295
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method private onDeviceDisconnectRequested(Ljava/lang/String;)V
    .locals 4
    .parameter "deviceObjectPath"

    .prologue
    .line 305
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 307
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v3, "onDeviceDisconnectRequested: Address of the remote device in null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 312
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDeviceFound(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "address"
    .parameter "properties"

    .prologue
    .line 272
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    if-nez p2, :cond_2

    .line 274
    const-string v2, "BluetoothEventLoop"

    const-string v3, "ERROR: Remote device properties are null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :cond_2
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 279
    .local v0, message:Landroid/os/Message;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 280
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 281
    .local v1, postResult:Z
    if-nez v1, :cond_0

    .line 282
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v3, "onDeviceFound() unable to post message to handler!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onDevicePropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "deviceObjectPath"
    .parameter "propValues"

    .prologue
    .line 508
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 509
    .local v0, message:Landroid/os/Message;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 510
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 511
    .local v1, postResult:Z
    if-nez v1, :cond_0

    .line 512
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v3, "onDevicePropertyChanged(): unable to post message to handler!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_0
    return-void
.end method

.method private onDeviceRemoved(Ljava/lang/String;)V
    .locals 4
    .parameter "deviceObjectPath"

    .prologue
    .line 363
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 366
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 367
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 368
    .local v1, postResult:Z
    if-nez v1, :cond_0

    .line 369
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v3, "onDeviceRemoved() unable to post message to handler!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onDiscoverServicesResult(Ljava/lang/String;Z)V
    .locals 1
    .parameter "deviceObjectPath"
    .parameter "result"

    .prologue
    .line 1120
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1134
    :cond_0
    return-void
.end method

.method private onDisplayPasskey(Ljava/lang/String;II)V
    .locals 4
    .parameter "objectPath"
    .parameter "passkey"
    .parameter "nativeData"

    .prologue
    .line 892
    invoke-direct {p0, p1, p3}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 893
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 905
    :goto_0
    return-void

    .line 896
    :cond_0
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 897
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 898
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 899
    const-string v2, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 900
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 902
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 904
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private onHealthDeviceChannelChanged(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "devicePath"
    .parameter "channelPath"
    .parameter "exists"

    .prologue
    .line 1306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Health Device : devicePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":channelPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":exists"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1308
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/server/BluetoothService;->onHealthDeviceChannelChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1309
    return-void
.end method

.method private onHealthDeviceConnectionResult(II)V
    .locals 2
    .parameter "chanCode"
    .parameter "result"

    .prologue
    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onHealthDeviceConnectionResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1252
    const/16 v0, 0x1770

    if-eq p2, v0, :cond_0

    .line 1253
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothService;->onHealthDeviceChannelConnectionError(II)V

    .line 1256
    :cond_0
    return-void
.end method

.method private onHealthDevicePropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "devicePath"
    .parameter "propValues"

    .prologue
    const/4 v2, 0x1

    .line 1292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Health Device : Name of Property is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1293
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    aget-object v1, p2, v2

    invoke-virtual {v0, p1, v1}, Landroid/server/BluetoothService;->onHealthDevicePropertyChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    return-void
.end method

.method private onInputDeviceConnectionResult(Ljava/lang/String;I)V
    .locals 7
    .parameter "path"
    .parameter "result"

    .prologue
    .line 1174
    const/16 v4, 0x138c

    if-eq p2, v4, :cond_0

    .line 1175
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1176
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1199
    .end local v0           #address:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1178
    .restart local v0       #address:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 1179
    .local v1, connected:Z
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1180
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v2}, Landroid/server/BluetoothService;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 1181
    .local v3, state:I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1182
    const/16 v4, 0x1389

    if-ne p2, v4, :cond_2

    .line 1183
    const/4 v1, 0x1

    .line 1197
    :goto_1
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0, v1}, Landroid/server/BluetoothService;->handleInputDevicePropertyChange(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1185
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1187
    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 1188
    const/16 v4, 0x1388

    if-ne p2, v4, :cond_4

    .line 1189
    const/4 v1, 0x0

    goto :goto_1

    .line 1192
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 1195
    :cond_5
    const-string v4, "BluetoothEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error onInputDeviceConnectionResult. State is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private onInputDevicePropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "path"
    .parameter "propValues"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 618
    aget-object v2, p2, v6

    .line 619
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 621
    const-string v4, "BluetoothEventLoop"

    const-string/jumbo v5, "onInputDevicePropertyChanged: Address of the remote device is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input Device : Name of Property is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 625
    const-string v4, "Connected"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 626
    const/4 v3, 0x0

    .line 627
    .local v3, state:Z
    aget-object v4, p2, v7

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 628
    const/4 v3, 0x1

    .line 630
    :cond_2
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v0, v3}, Landroid/server/BluetoothService;->handleInputDevicePropertyChange(Ljava/lang/String;Z)V

    goto :goto_0

    .line 631
    .end local v3           #state:Z
    :cond_3
    const-string v4, "VupEvent"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 632
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 633
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v1, :cond_4

    .line 634
    const-string v4, "BluetoothEventLoop"

    const-string/jumbo v5, "onHidVup: device = null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 638
    :cond_4
    const-string v4, "Virtual Unplug Event Received, Removing Bond:"

    invoke-static {v4}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    goto :goto_0
.end method

.method private onNetworkDeviceConnected(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "address"
    .parameter "iface"
    .parameter "destUuid"

    .prologue
    .line 1279
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1280
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, p2, v2, v3}, Landroid/server/BluetoothService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    .line 1282
    return-void
.end method

.method private onNetworkDeviceDisconnected(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    .line 1265
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1266
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/server/BluetoothService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1268
    return-void
.end method

.method private onPanDeviceConnectionResult(Ljava/lang/String;I)V
    .locals 9
    .parameter "path"
    .parameter "result"

    .prologue
    const/4 v5, 0x2

    .line 1209
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPanDeviceConnectionResult "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1211
    const/16 v6, 0x3ec

    if-eq p2, v6, :cond_0

    .line 1212
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1213
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1240
    .end local v0           #address:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1215
    .restart local v0       #address:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 1216
    .local v1, connected:Z
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1217
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v2}, Landroid/server/BluetoothService;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 1218
    .local v4, state:I
    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 1219
    const/16 v6, 0x3e9

    if-ne p2, v6, :cond_2

    .line 1220
    const/4 v1, 0x1

    .line 1235
    :goto_1
    if-eqz v1, :cond_6

    move v3, v5

    .line 1237
    .local v3, newState:I
    :goto_2
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v2, v3, v5}, Landroid/server/BluetoothService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 1222
    .end local v3           #newState:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1224
    :cond_3
    const/4 v6, 0x3

    if-ne v4, v6, :cond_5

    .line 1225
    const/16 v6, 0x3e8

    if-ne p2, v6, :cond_4

    .line 1226
    const/4 v1, 0x0

    goto :goto_1

    .line 1229
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 1232
    :cond_5
    const-string v6, "BluetoothEventLoop"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error onPanDeviceConnectionResult. State is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1235
    :cond_6
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private onPanDevicePropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "deviceObjectPath"
    .parameter "propValues"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 652
    aget-object v3, p2, v7

    .line 653
    .local v3, name:Ljava/lang/String;
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 655
    const-string v4, "BluetoothEventLoop"

    const-string/jumbo v5, "onPanDevicePropertyChanged: Address of the remote device in null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 663
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "Connected"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 664
    aget-object v4, p2, v5

    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 665
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v1, v7, v6}, Landroid/server/BluetoothService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 669
    :cond_2
    const-string v4, "Interface"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 670
    aget-object v2, p2, v5

    .line 671
    .local v2, iface:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 672
    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v4, v1, v2, v6, v6}, Landroid/server/BluetoothService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private onRequestOobData(Ljava/lang/String;I)V
    .locals 4
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 928
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 936
    :goto_0
    return-void

    .line 931
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 932
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 933
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 935
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRequestPairingConsent(Ljava/lang/String;I)V
    .locals 6
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 714
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 741
    :goto_0
    return-void

    .line 718
    :cond_0
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->updateRemoteDevicePropertiesCache(Ljava/lang/String;)V

    .line 726
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 727
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 728
    .local v2, message:Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 729
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 733
    .end local v2           #message:Landroid/os/Message;
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 734
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 735
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 736
    const-string v3, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 738
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 740
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private onRequestPasskey(Ljava/lang/String;I)V
    .locals 4
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 793
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 808
    :goto_0
    return-void

    .line 797
    :cond_0
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->updateRemoteDevicePropertiesCache(Ljava/lang/String;)V

    .line 800
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 801
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 802
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 803
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 805
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 807
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private onRequestPasskeyConfirmation(Ljava/lang/String;II)V
    .locals 5
    .parameter "objectPath"
    .parameter "passkey"
    .parameter "nativeData"

    .prologue
    const/high16 v4, -0x8000

    .line 753
    invoke-direct {p0, p1, p3}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 782
    :goto_0
    return-void

    .line 757
    :cond_0
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->updateRemoteDevicePropertiesCache(Ljava/lang/String;)V

    .line 759
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne p2, v4, :cond_1

    .line 761
    const-string v2, "BluetoothEventLoop"

    const-string v3, "Condition acceptable for Just Work, send confirmation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    .line 767
    :cond_1
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 769
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 770
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 771
    if-ne p2, v4, :cond_2

    .line 772
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 779
    :goto_1
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 781
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 775
    :cond_2
    const-string v2, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 776
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method private onRequestPinCode(Ljava/lang/String;I)V
    .locals 10
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 819
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 880
    :goto_0
    return-void

    .line 822
    :cond_0
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6}, Landroid/server/BluetoothService;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v4

    .line 824
    .local v4, pendingOutgoingAddress:Ljava/lang/String;
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->updateRemoteDevicePropertiesCache(Ljava/lang/String;)V

    .line 825
    new-instance v1, Landroid/bluetooth/BluetoothClass;

    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->getRemoteClass(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v1, v6}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    .line 826
    .local v1, btClass:Landroid/bluetooth/BluetoothClass;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    .line 828
    .local v2, btDeviceClass:I
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 832
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 833
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6}, Landroid/server/BluetoothService;->getDockPin()Ljava/lang/String;

    move-result-object v5

    .line 834
    .local v5, pin:Ljava/lang/String;
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-static {v5}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/server/BluetoothService;->setPin(Ljava/lang/String;[B)Z

    goto :goto_0

    .line 839
    .end local v5           #pin:Ljava/lang/String;
    :cond_1
    sparse-switch v2, :sswitch_data_0

    .line 850
    :cond_2
    const/16 v6, 0x540

    if-eq v2, v6, :cond_3

    const/16 v6, 0x5c0

    if-ne v2, v6, :cond_4

    .line 862
    :cond_3
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40c3880000000000L

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 863
    .local v5, pin:I
    invoke-direct {p0, v0, v5}, Landroid/server/BluetoothEventLoop;->sendDisplayPinIntent(Ljava/lang/String;I)V

    goto :goto_0

    .line 846
    .end local v5           #pin:I
    :sswitch_0
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v0}, Landroid/server/BluetoothService;->attemptAutoPair(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 868
    :cond_4
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6}, Landroid/server/BluetoothService;->isPinPreset()Z

    move-result v6

    if-nez v6, :cond_5

    .line 869
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6}, Landroid/server/BluetoothService;->fetchPresetPin()Ljava/lang/String;

    .line 873
    :cond_5
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 874
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 875
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 876
    const-string v6, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 877
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 879
    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 839
    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x418 -> :sswitch_0
        0x41c -> :sswitch_0
        0x420 -> :sswitch_0
        0x428 -> :sswitch_0
    .end sparse-switch
.end method

.method private processDeviceCreatedEvent(Ljava/lang/String;)V
    .locals 3
    .parameter "deviceObjectPath"

    .prologue
    .line 344
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, address:Ljava/lang/String;
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->isRemoteDeviceInCache(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, properties:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 351
    invoke-direct {p0, v0, v1}, Landroid/server/BluetoothEventLoop;->addDevice(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processDevicePropertyChangedEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .parameter "deviceObjectPath"
    .parameter "propValues"

    .prologue
    .line 517
    const/4 v9, 0x0

    aget-object v5, p2, v9

    .line 518
    .local v5, name:Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 520
    const-string v9, "BluetoothEventLoop"

    const-string/jumbo v10, "onDevicePropertyChanged: Address of the remote device in null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device property changed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " property: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 526
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 527
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v9, "Name"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 528
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v0, v5, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 530
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 531
    const-string v9, "android.bluetooth.device.extra.NAME"

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const/high16 v9, 0x1000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 533
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 534
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    const-string v9, "Alias"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 535
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v0, v5, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 536
    :cond_3
    const-string v9, "Class"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 537
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v0, v5, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.CLASS_CHANGED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 540
    const-string v9, "android.bluetooth.device.extra.CLASS"

    new-instance v10, Landroid/bluetooth/BluetoothClass;

    const/4 v11, 0x1

    aget-object v11, p2, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 542
    const/high16 v9, 0x1000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 543
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 544
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    const-string v9, "Connected"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 545
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v0, v5, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const/4 v3, 0x0

    .line 547
    .restart local v3       #intent:Landroid/content/Intent;
    const/4 v9, 0x1

    aget-object v9, p2, v9

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 548
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 551
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 552
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v10, 0x1f40

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService;->setLinkTimeout(Ljava/lang/String;I)V

    .line 557
    :cond_5
    :goto_1
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 558
    const/high16 v9, 0x1000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 559
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 555
    :cond_6
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 560
    .end local v3           #intent:Landroid/content/Intent;
    :cond_7
    const-string v9, "UUIDs"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 561
    const/4 v8, 0x0

    .line 562
    .local v8, uuid:Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, p2, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 563
    .local v4, len:I
    if-lez v4, :cond_9

    .line 564
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .local v7, str:Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    .local v2, i:I
    :goto_2
    array-length v9, p2

    if-ge v2, v9, :cond_8

    .line 566
    aget-object v9, p2, v2

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 569
    :cond_8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 571
    .end local v2           #i:I
    .end local v7           #str:Ljava/lang/StringBuilder;
    :cond_9
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0, v5, v8}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->updateDeviceServiceChannelCache(Ljava/lang/String;)V

    .line 576
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    .line 578
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 579
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v10, 0xc

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 581
    .end local v4           #len:I
    .end local v8           #uuid:Ljava/lang/String;
    :cond_a
    const-string v9, "Paired"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 582
    const/4 v9, 0x1

    aget-object v9, p2, v9

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 586
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    .line 587
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v10, 0xc

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 590
    :cond_b
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v6

    .line 591
    .local v6, prevBondState:I
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v10, 0xa

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    .line 592
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v10, "Trusted"

    const-string v11, "false"

    invoke-virtual {v9, v0, v10, v11}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const/16 v9, 0xb

    if-ne v6, v9, :cond_0

    .line 595
    const-string v9, "BluetoothEventLoop"

    const-string/jumbo v10, "onDevicePropertyChanged: fake cancelPairingUserInput() to reset the bluetoothd AGENT state"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->cancelPairingUserInput(Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private processDeviceRemovedEvent(Ljava/lang/String;)V
    .locals 5
    .parameter "deviceObjectPath"

    .prologue
    .line 374
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 378
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    const/16 v4, 0x9

    invoke-virtual {v1, v2, v3, v4}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    .line 380
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v2, "UUIDs"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processPropertyChangedEvent([Ljava/lang/String;)V
    .locals 16
    .parameter "propValues"

    .prologue
    .line 407
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v12}, Landroid/server/BluetoothService;->getAdapterProperties()Landroid/server/BluetoothAdapterProperties;

    move-result-object v1

    .line 410
    .local v1, adapterProperties:Landroid/server/BluetoothAdapterProperties;
    invoke-virtual {v1}, Landroid/server/BluetoothAdapterProperties;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 413
    invoke-virtual {v1}, Landroid/server/BluetoothAdapterProperties;->getAllProperties()V

    .line 415
    invoke-virtual {v1}, Landroid/server/BluetoothAdapterProperties;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 417
    const-string v12, "BluetoothEventLoop"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "processPropertyChangedEvent(): EMPTY props, current bt state = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v12, "BluetoothEventLoop"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "processPropertyChangedEvent(): Ingore Property Changed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, p1, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v14, p1, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Property Changed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, p1, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, p1, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 424
    const/4 v12, 0x0

    aget-object v7, p1, v12

    .line 425
    .local v7, name:Ljava/lang/String;
    const-string v12, "Name"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 426
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v1, v7, v12}, Landroid/server/BluetoothAdapterProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    new-instance v4, Landroid/content/Intent;

    const-string v12, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .local v4, intent:Landroid/content/Intent;
    const-string v12, "android.bluetooth.adapter.extra.LOCAL_NAME"

    const/4 v13, 0x1

    aget-object v13, p1, v13

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const/high16 v12, 0x1000

    invoke-virtual {v4, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 430
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v13, "android.permission.BLUETOOTH"

    invoke-virtual {v12, v4, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 431
    .end local v4           #intent:Landroid/content/Intent;
    :cond_2
    const-string v12, "Pairable"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "Discoverable"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 432
    :cond_3
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v1, v7, v12}, Landroid/server/BluetoothAdapterProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v12, "Discoverable"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 435
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/server/BluetoothEventLoop;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v13, 0x35

    invoke-virtual {v12, v13}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    .line 438
    :cond_4
    const-string v12, "Pairable"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    aget-object v8, p1, v12

    .line 440
    .local v8, pairable:Ljava/lang/String;
    :goto_1
    const-string v12, "Discoverable"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    aget-object v2, p1, v12

    .line 442
    .local v2, discoverable:Ljava/lang/String;
    :goto_2
    const/16 v9, 0x14

    .line 445
    .local v9, prevMode:I
    if-eqz v8, :cond_0

    if-eqz v2, :cond_0

    .line 448
    const-string/jumbo v12, "true"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string/jumbo v13, "true"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v12, v13}, Landroid/server/BluetoothService;->bluezStringToScanMode(ZZ)I

    move-result v6

    .line 452
    .local v6, mode:I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    sget v12, Landroid/server/BluetoothService;->prevScanMode:I

    if-eq v6, v12, :cond_5

    .line 453
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    sget v9, Landroid/server/BluetoothService;->prevScanMode:I

    .line 454
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    sput v6, Landroid/server/BluetoothService;->prevScanMode:I

    .line 456
    if-ltz v6, :cond_0

    .line 457
    new-instance v4, Landroid/content/Intent;

    const-string v12, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v12, "android.bluetooth.adapter.extra.SCAN_MODE"

    invoke-virtual {v4, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 459
    const-string v12, "android.bluetooth.adapter.extra.PREVIOUS_SCAN_MODE"

    invoke-virtual {v4, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 460
    const/high16 v12, 0x1000

    invoke-virtual {v4, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 461
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v13, "android.permission.BLUETOOTH"

    invoke-virtual {v12, v4, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 438
    .end local v2           #discoverable:Ljava/lang/String;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v6           #mode:I
    .end local v8           #pairable:Ljava/lang/String;
    .end local v9           #prevMode:I
    :cond_6
    const-string v12, "Pairable"

    invoke-virtual {v1, v12}, Landroid/server/BluetoothAdapterProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 440
    .restart local v8       #pairable:Ljava/lang/String;
    :cond_7
    const-string v12, "Discoverable"

    invoke-virtual {v1, v12}, Landroid/server/BluetoothAdapterProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 463
    .end local v8           #pairable:Ljava/lang/String;
    :cond_8
    const-string v12, "Discovering"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 465
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v1, v7, v12}, Landroid/server/BluetoothAdapterProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const/4 v12, 0x1

    aget-object v12, p1, v12

    const-string/jumbo v13, "true"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 467
    new-instance v4, Landroid/content/Intent;

    const-string v12, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v12, "BluetoothEventLoop"

    const-string v13, "[embedded] Discovery started"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v13, "android.permission.BLUETOOTH"

    invoke-virtual {v12, v4, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 471
    .end local v4           #intent:Landroid/content/Intent;
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v12}, Landroid/server/BluetoothService;->cancelDiscovery()Z

    .line 472
    new-instance v4, Landroid/content/Intent;

    const-string v12, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v12, "BluetoothEventLoop"

    const-string v13, "[embedded] Discovery stopped"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 476
    .end local v4           #intent:Landroid/content/Intent;
    :cond_a
    const-string v12, "Devices"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    const-string v12, "UUIDs"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 477
    :cond_b
    const/4 v11, 0x0

    .line 478
    .local v11, value:Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 479
    .local v5, len:I
    if-lez v5, :cond_d

    .line 480
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    .local v10, str:Ljava/lang/StringBuilder;
    const/4 v3, 0x2

    .local v3, i:I
    :goto_4
    move-object/from16 v0, p1

    array-length v12, v0

    if-ge v3, v12, :cond_c

    .line 482
    aget-object v12, p1, v3

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 485
    :cond_c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 487
    .end local v3           #i:I
    .end local v10           #str:Ljava/lang/StringBuilder;
    :cond_d
    invoke-virtual {v1, v7, v11}, Landroid/server/BluetoothAdapterProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 491
    .end local v5           #len:I
    .end local v11           #value:Ljava/lang/String;
    :cond_e
    const-string v12, "Powered"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 492
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/server/BluetoothEventLoop;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v14, 0x36

    const/4 v12, 0x1

    aget-object v12, p1, v12

    const-string/jumbo v15, "true"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    new-instance v12, Ljava/lang/Boolean;

    const/4 v15, 0x1

    invoke-direct {v12, v15}, Ljava/lang/Boolean;-><init>(Z)V

    :goto_5
    invoke-virtual {v13, v14, v12}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    new-instance v12, Ljava/lang/Boolean;

    const/4 v15, 0x0

    invoke-direct {v12, v15}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_5

    .line 494
    :cond_10
    const-string v12, "DiscoverableTimeout"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 495
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v1, v7, v12}, Landroid/server/BluetoothAdapterProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private sendDisplayPinIntent(Ljava/lang/String;I)V
    .locals 3
    .parameter "address"
    .parameter "pin"

    .prologue
    .line 909
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 910
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 911
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 912
    const-string v1, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 913
    const-string v1, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 915
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 917
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 918
    return-void
.end method

.method private native startEventLoopNative()V
.end method

.method private native stopEventLoopNative()V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 197
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->cleanupNativeDataNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 201
    return-void

    .line 199
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getAuthorizationAgentRequestData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mAuthorizationAgentRequestData:Ljava/util/HashMap;

    return-object v0
.end method

.method getPasskeyAgentRequestData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    return-object v0
.end method

.method getProfileProxy()V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 177
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 178
    return-void
.end method

.method public isEventLoopRunning()Z
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    return v0
.end method

.method onPropertyChanged([Ljava/lang/String;)V
    .locals 4
    .parameter "propValues"

    .prologue
    .line 395
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 396
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 397
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 398
    .local v1, postResult:Z
    if-nez v1, :cond_0

    .line 399
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v3, "onPropertyChanged() unable to post message to handler!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    return-void
.end method

.method start()V
    .locals 1

    .prologue
    .line 213
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->startEventLoopNative()V

    .line 217
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->stopEventLoopNative()V

    .line 224
    :cond_0
    return-void
.end method
