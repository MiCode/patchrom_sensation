.class Lcom/broadcom/android/bluetooth/BluetoothSPP$1;
.super Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback$Stub;
.source "BluetoothSPP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/android/bluetooth/BluetoothSPP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;


# direct methods
.method constructor <init>(Lcom/broadcom/android/bluetooth/BluetoothSPP;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-direct {p0}, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onPortConnected(BLjava/lang/String;)V
    .locals 2
    .parameter "appId"
    .parameter "remoteAddress"

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B
    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$400(Lcom/broadcom/android/bluetooth/BluetoothSPP;)B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eq v0, p1, :cond_0

    .line 381
    :goto_0
    monitor-exit p0

    return-void

    .line 373
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    const/4 v1, 0x2

    #setter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortState:I
    invoke-static {v0, v1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$102(Lcom/broadcom/android/bluetooth/BluetoothSPP;I)I

    .line 376
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mBluetoothSPPEventHandler:Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;
    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mBluetoothSPPEventHandler:Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;
    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;->onPortConnected(BLjava/lang/String;)V

    .line 380
    :cond_1
    const-string v0, "BluetoothSPP"

    const-string v1, "onPortConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPortConnectingToHost(B)V
    .locals 2
    .parameter "appId"

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B
    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$400(Lcom/broadcom/android/bluetooth/BluetoothSPP;)B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eq v0, p1, :cond_0

    .line 414
    :goto_0
    monitor-exit p0

    return-void

    .line 407
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    const/4 v1, 0x4

    #setter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortState:I
    invoke-static {v0, v1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$102(Lcom/broadcom/android/bluetooth/BluetoothSPP;I)I

    .line 410
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mBluetoothSPPEventHandler:Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;
    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mBluetoothSPPEventHandler:Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;
    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;->onPortConnectingToHost(B)V

    .line 413
    :cond_1
    const-string v0, "BluetoothSPP"

    const-string v1, "onPortDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPortConnectingToHostFailed(B)V
    .locals 2
    .parameter "appId"

    .prologue
    .line 419
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    const/4 v1, 0x5

    #setter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortState:I
    invoke-static {v0, v1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$102(Lcom/broadcom/android/bluetooth/BluetoothSPP;I)I

    .line 420
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mBluetoothSPPEventHandler:Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;
    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mBluetoothSPPEventHandler:Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;
    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;->onPortConnectingToHostFailed(B)V

    .line 423
    :cond_0
    const-string v0, "BluetoothSPP"

    const-string v1, "onPortConnectingtoHostFailed()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    monitor-exit p0

    return-void

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPortDataArrived(B)V
    .locals 1
    .parameter "appId"

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mBluetoothSPPEventHandler:Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;
    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mBluetoothSPPEventHandler:Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;
    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;->onPortDataArrived(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :cond_0
    monitor-exit p0

    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPortDataSent(B)V
    .locals 2
    .parameter "appId"

    .prologue
    .line 428
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mBluetoothSPPEventHandler:Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;
    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mBluetoothSPPEventHandler:Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;
    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;->onPortDataSent(B)V

    .line 431
    :cond_0
    const-string v0, "BluetoothSPP"

    const-string v1, "onPortDataSent()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    monitor-exit p0

    return-void

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPortDisconnected(B)V
    .locals 2
    .parameter "appId"

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B
    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$400(Lcom/broadcom/android/bluetooth/BluetoothSPP;)B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eq v0, p1, :cond_0

    .line 398
    :goto_0
    monitor-exit p0

    return-void

    .line 390
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    const/4 v1, 0x3

    #setter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortState:I
    invoke-static {v0, v1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$102(Lcom/broadcom/android/bluetooth/BluetoothSPP;I)I

    .line 393
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mBluetoothSPPEventHandler:Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;
    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mBluetoothSPPEventHandler:Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;
    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;->onPortDisconnected(B)V

    .line 397
    :cond_1
    const-string v0, "BluetoothSPP"

    const-string v1, "onPortDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSppServerPortEnabled(B)V
    .locals 2
    .parameter "appId"

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mAppId:B
    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$400(Lcom/broadcom/android/bluetooth/BluetoothSPP;)B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eq v0, p1, :cond_1

    .line 364
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 359
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    const/4 v1, 0x1

    #setter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mPortState:I
    invoke-static {v0, v1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$102(Lcom/broadcom/android/bluetooth/BluetoothSPP;I)I

    .line 360
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mBluetoothSPPEventHandler:Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;
    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$1;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    #getter for: Lcom/broadcom/android/bluetooth/BluetoothSPP;->mBluetoothSPPEventHandler:Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;
    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$600(Lcom/broadcom/android/bluetooth/BluetoothSPP;)Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/android/bluetooth/IBluetoothSPPEventHandler;->onSppServerPortEnabled(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
