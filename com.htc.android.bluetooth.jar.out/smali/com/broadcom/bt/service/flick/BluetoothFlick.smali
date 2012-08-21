.class public final Lcom/broadcom/bt/service/flick/BluetoothFlick;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothFlick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/flick/BluetoothFlick$1;,
        Lcom/broadcom/bt/service/flick/BluetoothFlick$SlideshowBroadcastReceiver;,
        Lcom/broadcom/bt/service/flick/BluetoothFlick$FlickBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTED:Ljava/lang/String; = null

.field public static final ACTION_FINISHED:Ljava/lang/String; = null

.field static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.app.flick.action."

#the value of this static final field might be set in the static constructor
.field static final ACTION_PREFIX_LENGTH:I = 0x0

.field public static final ACTION_SEARCH_STARTED:Ljava/lang/String; = null

.field public static final ACTION_SLIDESHOW_CONNECTED:Ljava/lang/String; = null

.field public static final ACTION_SLIDESHOW_DEVICE_FOUND:Ljava/lang/String; = null

.field public static final ACTION_SLIDESHOW_DISCONNECTED:Ljava/lang/String; = null

.field public static final ACTION_SLIDESHOW_SEARCH_FINISHED:Ljava/lang/String; = null

.field public static final ACTION_SLIDESHOW_SEARCH_STARTED:Ljava/lang/String; = null

.field public static final ACTION_SLIDESHOW_TXRX_STATUS:Ljava/lang/String; = null

.field public static final ACTION_TXRX_STATUS:Ljava/lang/String; = null

.field public static final BT_FLICK_OPC_FAIL:B = 0x1t

.field public static final BT_FLICK_OPC_NOT_FOUND:B = 0x2t

.field public static final BT_FLICK_OPC_NO_PERMISSION:B = 0x3t

.field public static final BT_FLICK_OPC_OK:B = 0x0t

.field public static final BT_FLICK_OPC_ON_AMP:B = 0x6t

.field public static final BT_FLICK_OPC_ON_BT:B = 0x5t

.field public static final BT_FLICK_OPC_SRV_UNAVAIL:B = 0x4t

.field public static final BT_FLICK_RX_COMPLETE:B = 0x3t

.field public static final BT_FLICK_RX_MOVE_CH:B = 0x5t

.field public static final BT_FLICK_RX_PROGRESS:B = 0x1t

.field public static final BT_FLICK_TX_COMPLETE:B = 0x2t

.field public static final BT_FLICK_TX_MOVE_CH:B = 0x4t

.field public static final BT_FLICK_TX_PROGRESS:B = 0x0t

.field public static final EXTRA_EVT_CODE:Ljava/lang/String; = "EVT_CODE"

.field public static final EXTRA_OP_STATUS:Ljava/lang/String; = "OP_STATUS"

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_flick"

.field private static final TAG:Ljava/lang/String; = "BluetoothFlick"

.field private static final V:Z


# instance fields
.field private mFlickEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;

.field private mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

.field private mSlideshowEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothSlideshowEventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 146
    const-string v0, "com.broadcom.bt.app.flick.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_PREFIX_LENGTH:I

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_PREFIX_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ON_TXRX_STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_TXRX_STATUS:Ljava/lang/String;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_PREFIX_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ON_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_CONNECTED:Ljava/lang/String;

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_PREFIX_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ON_SEARCH_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SEARCH_STARTED:Ljava/lang/String;

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_PREFIX_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ON_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_FINISHED:Ljava/lang/String;

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_PREFIX_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ON_SLIDESHOW_SEARCH_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SLIDESHOW_SEARCH_STARTED:Ljava/lang/String;

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_PREFIX_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ON_SLIDESHOW_DEVICE_FOUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SLIDESHOW_DEVICE_FOUND:Ljava/lang/String;

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_PREFIX_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ON_SLIDESHOW_SEARCH_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SLIDESHOW_SEARCH_FINISHED:Ljava/lang/String;

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_PREFIX_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ON_SLIDESHOW_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SLIDESHOW_CONNECTED:Ljava/lang/String;

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_PREFIX_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ON_SLIDESHOW_STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SLIDESHOW_TXRX_STATUS:Ljava/lang/String;

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_PREFIX_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ON_SLIDESHOW_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SLIDESHOW_DISCONNECTED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 302
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 276
    iput-object v0, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mFlickEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;

    .line 277
    iput-object v0, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mSlideshowEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothSlideshowEventHandler;

    .line 303
    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/flick/BluetoothFlick;)Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mFlickEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/broadcom/bt/service/flick/BluetoothFlick;)Lcom/broadcom/bt/service/flick/IBluetoothSlideshowEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mSlideshowEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothSlideshowEventHandler;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFlickFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 567
    if-nez p0, :cond_0

    .line 568
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 570
    .restart local p0
    :cond_0
    sget-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SEARCH_STARTED:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 571
    sget-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_CONNECTED:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 572
    sget-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_TXRX_STATUS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 573
    sget-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_FINISHED:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 574
    return-object p0
.end method

.method public static createSlideshowFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 584
    if-nez p0, :cond_0

    .line 585
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 587
    .restart local p0
    :cond_0
    sget-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SLIDESHOW_SEARCH_STARTED:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 588
    sget-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SLIDESHOW_DEVICE_FOUND:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 589
    sget-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SLIDESHOW_SEARCH_FINISHED:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 590
    sget-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SLIDESHOW_CONNECTED:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 591
    sget-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SLIDESHOW_TXRX_STATUS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 592
    sget-object v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SLIDESHOW_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 593
    return-object p0
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .locals 3
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 291
    const-string v1, "bluetooth_flick"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    const-string v1, "BluetoothFlick"

    const-string v2, "Unable to get BluetoothFlick proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v1, 0x0

    .line 298
    :goto_0
    return v1

    .line 297
    :cond_0
    new-instance v0, Lcom/broadcom/bt/service/flick/BluetoothFlick;

    invoke-direct {v0}, Lcom/broadcom/bt/service/flick/BluetoothFlick;-><init>()V

    .line 298
    .local v0, p:Lcom/broadcom/bt/service/flick/BluetoothFlick;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.FlickService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public connectSlideshow(Ljava/lang/String;)V
    .locals 3
    .parameter "bdaddr"

    .prologue
    .line 711
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    if-eqz v1, :cond_0

    .line 713
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/flick/IBluetoothFlickService;->connectSlideshow(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFlick"

    const-string v2, "connectSlideshow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disableFlick()V
    .locals 3

    .prologue
    .line 655
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    if-eqz v1, :cond_0

    .line 657
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/flick/IBluetoothFlickService;->disableFlick()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFlick"

    const-string v2, "disableFlick"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disableSlideshow()V
    .locals 3

    .prologue
    .line 691
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    if-eqz v1, :cond_0

    .line 693
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/flick/IBluetoothFlickService;->disableSlideshow()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFlick"

    const-string v2, "disableSlideshow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disconnectSlideshow()V
    .locals 3

    .prologue
    .line 721
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    if-eqz v1, :cond_0

    .line 723
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/flick/IBluetoothFlickService;->disconnectSlideshow()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 724
    :catch_0
    move-exception v0

    .line 725
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFlick"

    const-string v2, "disconnectSlideshow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableFlick()V
    .locals 3

    .prologue
    .line 640
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    if-eqz v1, :cond_0

    .line 642
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/flick/IBluetoothFlickService;->enableFlick()V
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
    const-string v1, "BluetoothFlick"

    const-string v2, "enableFlick"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableSlideshow()V
    .locals 3

    .prologue
    .line 681
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    if-eqz v1, :cond_0

    .line 683
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/flick/IBluetoothFlickService;->enableSlideshow()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFlick"

    const-string v2, "enableSlideshow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 351
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 352
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 2

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mFlickEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mFlickEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mSlideshowEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothSlideshowEventHandler;

    if-eqz v0, :cond_1

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mSlideshowEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothSlideshowEventHandler;

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 345
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    .line 346
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected init(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "service"

    .prologue
    .line 312
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/flick/IBluetoothFlickService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    const/4 v1, 0x1

    .line 316
    :goto_0
    return v1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFlick"

    const-string v2, "Unable to initialize proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized registerFlickEventHandler(Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 371
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->registerFlickEventHandler(Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit p0

    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerFlickEventHandler(Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .locals 4
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mFlickEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;

    .line 522
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 524
    if-nez p2, :cond_0

    .line 525
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->createFlickFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object p2

    .line 527
    :cond_0
    invoke-virtual {p2, p4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 528
    new-instance v1, Lcom/broadcom/bt/service/flick/BluetoothFlick$FlickBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/flick/BluetoothFlick$FlickBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/flick/BluetoothFlick;Lcom/broadcom/bt/service/flick/BluetoothFlick$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 529
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2, p2, v3, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 535
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "BluetoothFlick"

    const-string v2, "Error registering broadcast receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 518
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerFlickEventHandler(Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;Landroid/content/IntentFilter;ZI)V
    .locals 1
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 442
    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->initEventCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->registerFlickEventHandler(Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    monitor-exit p0

    return-void

    .line 442
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerSlideshowEventHandler(Lcom/broadcom/bt/service/flick/IBluetoothSlideshowEventHandler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 377
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->registerSlideshowEventHandler(Lcom/broadcom/bt/service/flick/IBluetoothSlideshowEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    monitor-exit p0

    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerSlideshowEventHandler(Lcom/broadcom/bt/service/flick/IBluetoothSlideshowEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .locals 4
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 541
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mSlideshowEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothSlideshowEventHandler;

    .line 545
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 547
    if-nez p2, :cond_0

    .line 548
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->createSlideshowFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object p2

    .line 550
    :cond_0
    invoke-virtual {p2, p4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 551
    new-instance v1, Lcom/broadcom/bt/service/flick/BluetoothFlick$SlideshowBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/flick/BluetoothFlick$SlideshowBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/flick/BluetoothFlick;Lcom/broadcom/bt/service/flick/BluetoothFlick$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 552
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2, p2, v3, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 558
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "BluetoothFlick"

    const-string v2, "Error registering broadcast receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 541
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerSlideshowEventHandler(Lcom/broadcom/bt/service/flick/IBluetoothSlideshowEventHandler;Landroid/content/IntentFilter;ZI)V
    .locals 1
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 450
    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->initEventCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/broadcom/bt/service/flick/BluetoothFlick;->registerSlideshowEventHandler(Lcom/broadcom/bt/service/flick/IBluetoothSlideshowEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    monitor-exit p0

    return-void

    .line 450
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requiresAccessProcessing()Z
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public sendFlick(Ljava/lang/String;)V
    .locals 3
    .parameter "fpath"

    .prologue
    .line 670
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    if-eqz v1, :cond_0

    .line 672
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/flick/IBluetoothFlickService;->sendFlick(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFlick"

    const-string v2, "sendFlick"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendSlideshow(Ljava/lang/String;)V
    .locals 3
    .parameter "fpath"

    .prologue
    .line 731
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    if-eqz v1, :cond_0

    .line 733
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/flick/IBluetoothFlickService;->sendSlideshow(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFlick"

    const-string v2, "sendSlideshow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startInquirySlideshow()V
    .locals 3

    .prologue
    .line 701
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    if-eqz v1, :cond_0

    .line 703
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mService:Lcom/broadcom/bt/service/flick/IBluetoothFlickService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/flick/IBluetoothFlickService;->startInquirySlideshow()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFlick"

    const-string v2, "startInquirySlideshow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized unregisterFlickEventHandler()V
    .locals 2

    .prologue
    .line 614
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mFlickEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;

    .line 616
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mSlideshowEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothSlideshowEventHandler;

    if-nez v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 618
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    :cond_0
    monitor-exit p0

    return-void

    .line 614
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterSlidershowEventHandler()V
    .locals 2

    .prologue
    .line 626
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mSlideshowEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothSlideshowEventHandler;

    .line 628
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/flick/BluetoothFlick;->mFlickEventHandler:Lcom/broadcom/bt/service/flick/IBluetoothFlickEventHandler;

    if-nez v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 630
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    :cond_0
    monitor-exit p0

    return-void

    .line 626
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
