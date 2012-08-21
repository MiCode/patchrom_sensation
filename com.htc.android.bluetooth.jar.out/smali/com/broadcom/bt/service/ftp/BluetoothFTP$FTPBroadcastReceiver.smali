.class Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothFTP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/ftp/BluetoothFTP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FTPBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)V
    .locals 0
    .parameter

    .prologue
    .line 945
    iput-object p1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/ftp/BluetoothFTP;Lcom/broadcom/bt/service/ftp/BluetoothFTP$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 945
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 950
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    #getter for: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    move-result-object v0

    .line 951
    .local v0, handler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    if-nez v0, :cond_1

    .line 1033
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 957
    .local v6, action:Ljava/lang/String;
    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    sget v2, Lcom/broadcom/bt/service/framework/BluetoothIntent;->BT_ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v6, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$200(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "bluetooth_ftp"

    const-string v2, "SVC_NAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 961
    :cond_2
    const-string v1, "BluetoothFTP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aborting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPBroadcastReceiver;->abortBroadcast()V

    .line 970
    :goto_1
    const-string v1, "com.broadcom.bt.app.ftp.action.ON_FTS_OPENED"

    sget v2, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v6, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$300(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 972
    const-string v1, "RMT_DEV_ADDR"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerOpened(Ljava/lang/String;)V

    goto :goto_0

    .line 966
    :cond_3
    const-string v1, "BluetoothFTP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not aborting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SVC_NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 973
    :cond_4
    const-string v1, "com.broadcom.bt.app.ftp.action.ON_FTPS_CLOSED"

    sget v2, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v6, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$400(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 975
    invoke-interface {v0}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerClosed()V

    goto :goto_0

    .line 976
    :cond_5
    const-string v1, "com.broadcom.bt.app.ftp.action.ON_FTS_XFR_PROGRESS"

    sget v2, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v6, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$500(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 978
    const-string v1, "TOTAL_BYTES"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "BYTES_TRANSFERRED"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerFileTransferInProgress(II)V

    goto/16 :goto_0

    .line 981
    :cond_6
    const-string v1, "com.broadcom.bt.app.ftp.action.ON_FTS_GET_COMPLETE"

    sget v2, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v6, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$600(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 983
    const-string v1, "FILEPATH"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "STATUS"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerGetCompleted(Ljava/lang/String;B)V

    goto/16 :goto_0

    .line 986
    :cond_7
    const-string v1, "com.broadcom.bt.app.ftp.action.ON_FTPS_PUT_COMPLETE"

    sget v2, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v6, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$700(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 988
    const-string v1, "FILEPATH"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "STATUS"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerPutCompleted(Ljava/lang/String;B)V

    goto/16 :goto_0

    .line 991
    :cond_8
    const-string v1, "com.broadcom.bt.app.ftp.action.ON_FTS_DEL_COMPLETE"

    sget v2, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v6, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$800(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 993
    const-string v1, "FILEPATH"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "STATUS"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerDelCompleted(Ljava/lang/String;B)V

    goto/16 :goto_0

    .line 996
    :cond_9
    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    sget v2, Lcom/broadcom/bt/service/framework/BluetoothIntent;->BT_ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v1, v6, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$900(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1000
    const-string v1, "FILEPATH"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TOTAL_BYTES"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "RMT_DEV_NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "OPERATION"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v4

    const-string v5, "RMT_DEV_ADDR"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerAccessRequested(Ljava/lang/String;ILjava/lang/String;BLjava/lang/String;)V

    goto/16 :goto_0
.end method
