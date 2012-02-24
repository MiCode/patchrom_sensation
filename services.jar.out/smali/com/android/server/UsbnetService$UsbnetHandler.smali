.class Lcom/android/server/UsbnetService$UsbnetHandler;
.super Landroid/os/Handler;
.source "UsbnetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UsbnetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbnetHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UsbnetService;


# direct methods
.method public constructor <init>(Lcom/android/server/UsbnetService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/server/UsbnetService$UsbnetHandler;->this$0:Lcom/android/server/UsbnetService;

    .line 391
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 392
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 396
    const-string v2, "UsbnetService"

    const-string v3, "UsbnetHandler::handleMessage+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 425
    :goto_0
    const-string v0, "UsbnetService"

    const-string v1, "UsbnetHandler::handleMessage-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void

    .line 399
    :pswitch_0
    const-string v2, "UsbnetService"

    const-string v3, "handleMessage MESSAGE_ENABLE_USBNET"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v2, p0, Lcom/android/server/UsbnetService$UsbnetHandler;->this$0:Lcom/android/server/UsbnetService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v1, v0}, Lcom/android/server/UsbnetService;->setUsbnetEnabledBlocking(ZZ)Z

    .line 404
    :pswitch_1
    const-string v0, "UsbnetService"

    const-string v1, "handleMessage MESSAGE_START_USBNET"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-static {}, Lcom/android/server/UsbnetService;->access$800()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 411
    :pswitch_2
    const-string v2, "UsbnetService"

    const-string v3, "handleMessage MESSAGE_DISABLE_USBNET"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-static {}, Lcom/htc/net/usbnet/UsbnetNative;->StopDhcpUsbnet()Z

    .line 414
    iget-object v2, p0, Lcom/android/server/UsbnetService$UsbnetHandler;->this$0:Lcom/android/server/UsbnetService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_1

    :goto_1
    invoke-virtual {v2, v0, v1}, Lcom/android/server/UsbnetService;->setUsbnetEnabledBlocking(ZZ)Z

    .line 415
    invoke-static {}, Lcom/android/server/UsbnetService;->access$800()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_1
    move v1, v0

    .line 414
    goto :goto_1

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
