.class Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;
.super Lcom/broadcom/bt/service/fm/IFmTransmitterCallback$Stub;
.source "FmTransmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmTransmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmTransmitterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/fm/FmTransmitter;)V
    .locals 0
    .parameter

    .prologue
    .line 1210
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/fm/FmTransmitter;Lcom/broadcom/bt/service/fm/FmTransmitter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1210
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitter;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onBestChannelEvent(II[I[I)V
    .locals 1
    .parameter "status"
    .parameter "num_ch"
    .parameter "freq"
    .parameter "rssi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1261
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;->onBestChannelEvent(II[I[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1263
    :cond_0
    monitor-exit p0

    return-void

    .line 1261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onChannelStatusEvent(III)V
    .locals 1
    .parameter "status"
    .parameter "rssi"
    .parameter "channel_status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1269
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;->onChannelStatusEvent(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1271
    :cond_0
    monitor-exit p0

    return-void

    .line 1269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFmTransmitterDisabledEvent(I)V
    .locals 1
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1227
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;->onFmTransmitterDisabledEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1230
    :cond_0
    monitor-exit p0

    return-void

    .line 1227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFmTransmitterEnabledEvent(I)V
    .locals 1
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1218
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;->onFmTransmitterEnabledEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1221
    :cond_0
    monitor-exit p0

    return-void

    .line 1218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSetTxFrequencyEvent(II)V
    .locals 1
    .parameter "status"
    .parameter "frequency"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1253
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;->onSetTxFrequencyEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1255
    :cond_0
    monitor-exit p0

    return-void

    .line 1253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSetTxPowerEvent(IZ)V
    .locals 1
    .parameter "status"
    .parameter "power_on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1245
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;->onSetTxPowerEvent(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1247
    :cond_0
    monitor-exit p0

    return-void

    .line 1245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStatusEvent(II)V
    .locals 1
    .parameter "type"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1236
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;->onStatusEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1239
    :cond_0
    monitor-exit p0

    return-void

    .line 1236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
