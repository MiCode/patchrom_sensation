.class Lcom/broadcom/bt/service/fm/FmTransmitterService$1;
.super Landroid/os/Handler;
.source "FmTransmitterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmTransmitterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/fm/FmTransmitterService;)V
    .locals 0
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 616
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 660
    const-string v1, "FmTransmitterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling UNKNOWN CALLBACK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :goto_0
    return-void

    .line 619
    :sswitch_0
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/broadcom/bt/service/fm/FmTransmitterService;->logTimeOut(I)V
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->access$000(Lcom/broadcom/bt/service/fm/FmTransmitterService;I)V

    .line 621
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/broadcom/bt/service/fm/FmTransmitterService;->HandleStatusTimeOut(I)V
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitterService;I)V

    .line 622
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    #calls: Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->access$200(Lcom/broadcom/bt/service/fm/FmTransmitterService;)V

    goto :goto_0

    .line 626
    :sswitch_1
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/broadcom/bt/service/fm/FmTransmitterService;->onFmTransmitterEnabledEventFromLocal(I)V
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->access$300(Lcom/broadcom/bt/service/fm/FmTransmitterService;I)V

    goto :goto_0

    .line 630
    :sswitch_2
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/broadcom/bt/service/fm/FmTransmitterService;->onFmTransmitterDisabledEventFromLocal(I)V
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->access$400(Lcom/broadcom/bt/service/fm/FmTransmitterService;I)V

    goto :goto_0

    .line 635
    :sswitch_3
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_bpowerOn:Z
    invoke-static {v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->access$500(Lcom/broadcom/bt/service/fm/FmTransmitterService;)Z

    move-result v3

    #calls: Lcom/broadcom/bt/service/fm/FmTransmitterService;->onSetTxPowerEventFromLocal(IZ)V
    invoke-static {v1, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->access$600(Lcom/broadcom/bt/service/fm/FmTransmitterService;IZ)V

    goto :goto_0

    .line 639
    :sswitch_4
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V
    invoke-static {v1, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->access$700(Lcom/broadcom/bt/service/fm/FmTransmitterService;II)V

    goto :goto_0

    .line 643
    :sswitch_5
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/broadcom/bt/service/fm/FmTransmitterService;->onSetTxFrequencyEventFromLocal(II)V
    invoke-static {v1, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->access$800(Lcom/broadcom/bt/service/fm/FmTransmitterService;II)V

    goto :goto_0

    .line 648
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;

    .line 649
    .local v0, par:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;->m_status:I
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;->access$900(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;)I

    move-result v2

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;->m_rssi:I
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;->access$1000(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;)I

    move-result v3

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;->m_channel_status:I
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;->access$1100(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;)I

    move-result v4

    #calls: Lcom/broadcom/bt/service/fm/FmTransmitterService;->onChannelStatusEventFromLocal(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->access$1200(Lcom/broadcom/bt/service/fm/FmTransmitterService;III)V

    goto :goto_0

    .line 654
    .end local v0           #par:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;

    .line 655
    .local v0, par:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->m_status:I
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->access$1300(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;)I

    move-result v2

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->m_numCh:I
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->access$1400(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;)I

    move-result v3

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->m_freq:[I
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->access$1500(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;)[I

    move-result-object v4

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->m_rssi:[I
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->access$1600(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;)[I

    move-result-object v5

    #calls: Lcom/broadcom/bt/service/fm/FmTransmitterService;->onBestChannelEventFromLocal(II[I[I)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->access$1700(Lcom/broadcom/bt/service/fm/FmTransmitterService;II[I[I)V

    goto :goto_0

    .line 616
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_3
        0x1e -> :sswitch_1
        0x1f -> :sswitch_2
        0x20 -> :sswitch_4
        0x21 -> :sswitch_5
        0x24 -> :sswitch_6
        0x25 -> :sswitch_7
    .end sparse-switch
.end method
