.class public final Lcom/broadcom/bt/service/flick/BluetoothFlickService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothFlickService.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothFlick"


# instance fields
.field private mIsFinish:Z

.field private mNativeData:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 36
    invoke-static {}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->classInitNative()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native connectSlideshowNative(Ljava/lang/String;)V
.end method

.method private native disableFlickNative()V
.end method

.method private native disableSlideshowNative()V
.end method

.method private native disconnectSlideshowNative()V
.end method

.method private native enableFlickNative()V
.end method

.method private native enableSlideshowNative()V
.end method

.method private native sendFlickNative(Ljava/lang/String;)V
.end method

.method private native sendSlideshowNative(Ljava/lang/String;)V
.end method

.method private native startInquirySlideshowNative()V
.end method


# virtual methods
.method public native cleanupNative()V
.end method

.method public connectSlideshow(Ljava/lang/String;)V
    .locals 0
    .parameter "bdaddr"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->connectSlideshowNative(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public disableFlick()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->disableFlickNative()V

    .line 55
    return-void
.end method

.method public disableSlideshow()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->disableSlideshowNative()V

    .line 144
    return-void
.end method

.method public disconnectSlideshow()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->disconnectSlideshowNative()V

    .line 159
    return-void
.end method

.method public enableFlick()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->enableFlickNative()V

    .line 49
    return-void
.end method

.method public enableSlideshow()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->enableSlideshowNative()V

    .line 139
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->finish()V

    .line 100
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 102
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 90
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->cleanupNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->mIsFinish:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :cond_0
    monitor-exit p0

    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "BluetoothFlick"

    const-string v2, "Unable to cleanup Flick service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 88
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "bluetooth_flick"

    return-object v0
.end method

.method public declared-synchronized init()V
    .locals 1

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->initNative()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native initNative()V
.end method

.method protected onFlickConnectedEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "address"
    .parameter "dev_name"

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_CONNECTED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, i:Landroid/content/Intent;
    const-string v1, "RMT_DEV_ADDR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v1, "RMT_DEV_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method protected onFlickFinishedEvent()V
    .locals 3

    .prologue
    .line 119
    const-string v1, "BluetoothFlick"

    const-string v2, "onFlickFinishedEvent() called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->onStateChangeEvent(Z)V

    .line 121
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_FINISHED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method protected onFlickSearchStartedEvent()V
    .locals 3

    .prologue
    .line 105
    const-string v1, "BluetoothFlick"

    const-string v2, "onFlickSearchStartedEvent() called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->onStateChangeEvent(Z)V

    .line 107
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SEARCH_STARTED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method protected onFlickTxRxStatusEvent(BBIILjava/lang/String;)V
    .locals 3
    .parameter "evt_code"
    .parameter "op_status"
    .parameter "prog_bytes"
    .parameter "obj_size"
    .parameter "fpath"

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_TXRX_STATUS:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, i:Landroid/content/Intent;
    const-string v1, "EVT_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 129
    const-string v1, "OP_STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 130
    const-string v1, "BYTES_TRANSFERRED"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const-string v1, "TOTAL_BYTES"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    const-string v1, "FILEPATH"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method protected onSlideshowConnectedEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "address"
    .parameter "dev_name"

    .prologue
    .line 191
    const-string v1, "BluetoothFlick"

    const-string v2, "onSlideshowConnectedEvent() called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SLIDESHOW_CONNECTED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, i:Landroid/content/Intent;
    const-string v1, "RMT_DEV_ADDR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-string v1, "RMT_DEV_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method protected onSlideshowDeviceFoundEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "address"
    .parameter "dev_name"

    .prologue
    .line 176
    const-string v1, "BluetoothFlick"

    const-string v2, "onSlideshowDeviceFoundEvent() called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SLIDESHOW_DEVICE_FOUND:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, i:Landroid/content/Intent;
    const-string v1, "RMT_DEV_ADDR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v1, "RMT_DEV_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method protected onSlideshowDisconnectedEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "address"
    .parameter "dev_name"

    .prologue
    .line 211
    const-string v1, "BluetoothFlick"

    const-string v2, "onSlideshowDisconnectedEvent() called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SLIDESHOW_DISCONNECTED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, i:Landroid/content/Intent;
    const-string v1, "RMT_DEV_ADDR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v1, "RMT_DEV_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method protected onSlideshowSearchFinishedEvent()V
    .locals 3

    .prologue
    .line 184
    const-string v1, "BluetoothFlick"

    const-string v2, "onSlideshowSearchFinishedEvent() called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->onStateChangeEvent(Z)V

    .line 186
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SLIDESHOW_SEARCH_FINISHED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method protected onSlideshowSearchStartedEvent()V
    .locals 3

    .prologue
    .line 169
    const-string v1, "BluetoothFlick"

    const-string v2, "onSlideshowSearchStartedEvent() called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->onStateChangeEvent(Z)V

    .line 171
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SLIDESHOW_SEARCH_STARTED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method protected onSlideshowTxRxStatusEvent(BBIILjava/lang/String;)V
    .locals 3
    .parameter "evt_code"
    .parameter "op_status"
    .parameter "prog_bytes"
    .parameter "obj_size"
    .parameter "fpath"

    .prologue
    .line 200
    const-string v1, "BluetoothFlick"

    const-string v2, "onSlideshowTxRxStatusEvent() called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/broadcom/bt/service/flick/BluetoothFlick;->ACTION_SLIDESHOW_TXRX_STATUS:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, i:Landroid/content/Intent;
    const-string v1, "EVT_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 203
    const-string v1, "OP_STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 204
    const-string v1, "BYTES_TRANSFERRED"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    const-string v1, "TOTAL_BYTES"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    const-string v1, "FILEPATH"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public sendFlick(Ljava/lang/String;)V
    .locals 0
    .parameter "fpath"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->sendFlickNative(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public sendSlideshow(Ljava/lang/String;)V
    .locals 0
    .parameter "fpath"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->sendSlideshowNative(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->onStateChangeEvent(Z)V

    .line 81
    return-void
.end method

.method public startInquirySlideshow()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->startInquirySlideshowNative()V

    .line 149
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/flick/BluetoothFlickService;->onStateChangeEvent(Z)V

    .line 85
    return-void
.end method
