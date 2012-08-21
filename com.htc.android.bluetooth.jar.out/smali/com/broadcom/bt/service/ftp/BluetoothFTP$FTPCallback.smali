.class Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;
.super Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;
.source "BluetoothFTP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/ftp/BluetoothFTP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FTPCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)V
    .locals 0
    .parameter

    .prologue
    .line 870
    iput-object p1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFtpServerAccessRequested(Ljava/lang/String;ILjava/lang/String;BLjava/lang/String;)V
    .locals 6
    .parameter "fileName"
    .parameter "fileSize"
    .parameter "remoteDeviceName"
    .parameter "opCode"
    .parameter "remoteAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 875
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    #getter for: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    move-result-object v0

    .line 876
    .local v0, handler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 877
    invoke-interface/range {v0 .. v5}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerAccessRequested(Ljava/lang/String;ILjava/lang/String;BLjava/lang/String;)V

    .line 881
    :cond_0
    return-void
.end method

.method public onFtpServerAuthen(Ljava/lang/String;BZ)V
    .locals 0
    .parameter "userId"
    .parameter "useridLength"
    .parameter "useridRequired"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 890
    return-void
.end method

.method public onFtpServerClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 893
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    #getter for: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    move-result-object v0

    .line 894
    .local v0, handler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    if-eqz v0, :cond_0

    .line 895
    invoke-interface {v0}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerClosed()V

    .line 897
    :cond_0
    return-void
.end method

.method public onFtpServerDelCompleted(Ljava/lang/String;B)V
    .locals 2
    .parameter "fileName"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 901
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    #getter for: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    move-result-object v0

    .line 902
    .local v0, handler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    if-eqz v0, :cond_0

    .line 903
    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerDelCompleted(Ljava/lang/String;B)V

    .line 906
    :cond_0
    return-void
.end method

.method public onFtpServerEnabled()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 909
    return-void
.end method

.method public onFtpServerFileTransferInProgress(II)V
    .locals 2
    .parameter "fileSize"
    .parameter "numOfByteSinceLastReported"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 913
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    #getter for: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    move-result-object v0

    .line 914
    .local v0, handler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    if-eqz v0, :cond_0

    .line 915
    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerFileTransferInProgress(II)V

    .line 918
    :cond_0
    return-void
.end method

.method public onFtpServerGetCompleted(Ljava/lang/String;B)V
    .locals 2
    .parameter "fileName"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 922
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    #getter for: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    move-result-object v0

    .line 923
    .local v0, handler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    if-eqz v0, :cond_0

    .line 924
    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerGetCompleted(Ljava/lang/String;B)V

    .line 926
    :cond_0
    return-void
.end method

.method public onFtpServerOpened(Ljava/lang/String;)V
    .locals 2
    .parameter "remoteAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 929
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    #getter for: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    move-result-object v0

    .line 930
    .local v0, handler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    if-eqz v0, :cond_0

    .line 931
    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerOpened(Ljava/lang/String;)V

    .line 933
    :cond_0
    return-void
.end method

.method public onFtpServerPutCompleted(Ljava/lang/String;B)V
    .locals 2
    .parameter "fileName"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 937
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    #getter for: Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mEventHandler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    move-result-object v0

    .line 938
    .local v0, handler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    if-eqz v0, :cond_0

    .line 939
    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerPutCompleted(Ljava/lang/String;B)V

    .line 941
    :cond_0
    return-void
.end method
