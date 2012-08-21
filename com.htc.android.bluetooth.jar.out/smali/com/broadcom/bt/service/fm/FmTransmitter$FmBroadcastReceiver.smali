.class Lcom/broadcom/bt/service/fm/FmTransmitter$FmBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FmTransmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmTransmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/fm/FmTransmitter;)V
    .locals 0
    .parameter

    .prologue
    .line 1274
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, -0x1

    .line 1279
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter$FmBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitter;

    #getter for: Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    move-result-object v1

    .line 1280
    .local v1, handler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    if-nez v1, :cond_1

    .line 1302
    :cond_0
    :goto_0
    return-void

    .line 1284
    :cond_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter$FmBroadcastReceiver;->abortBroadcast()V

    .line 1286
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1287
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.broadcom.bt.app.fm.action.ON_STATUS"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$200()I

    move-result v3

    #calls: Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$300(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1288
    const-string v2, "STATUS_TYPE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "STATUS"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;->onStatusEvent(II)V

    goto :goto_0

    .line 1289
    :cond_2
    const-string v2, "com.broadcom.bt.app.fm.action.ON_BEST_CHANNEL"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$200()I

    move-result v3

    #calls: Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$400(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1290
    const-string v2, "STATUS"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "NUM_CHNL"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "FREQ"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    const-string v5, "RSSI"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;->onBestChannelEvent(II[I[I)V

    goto :goto_0

    .line 1291
    :cond_3
    const-string v2, "com.broadcom.bt.app.fm.action.ON_CHANNEL_STATUS"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$200()I

    move-result v3

    #calls: Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$500(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1292
    const-string v2, "STATUS"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "RSSI"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "CHANNEL_STATUS"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;->onChannelStatusEvent(III)V

    goto :goto_0

    .line 1293
    :cond_4
    const-string v2, "com.broadcom.bt.app.fm.action.ON_DISABLE"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$200()I

    move-result v3

    #calls: Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$600(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1294
    const-string v2, "STATUS"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;->onFmTransmitterDisabledEvent(I)V

    goto/16 :goto_0

    .line 1295
    :cond_5
    const-string v2, "com.broadcom.bt.app.fm.action.ON_ENABLE"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$200()I

    move-result v3

    #calls: Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$700(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1296
    const-string v2, "STATUS"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;->onFmTransmitterEnabledEvent(I)V

    goto/16 :goto_0

    .line 1297
    :cond_6
    const-string v2, "com.broadcom.bt.app.fm.action.ON_SET_TX_FREQ"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$200()I

    move-result v3

    #calls: Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$800(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1298
    const-string v2, "STATUS"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "FREQ"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;->onSetTxFrequencyEvent(II)V

    goto/16 :goto_0

    .line 1299
    :cond_7
    const-string v2, "com.broadcom.bt.app.fm.action.ON_SET_TX_PWR"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$200()I

    move-result v3

    #calls: Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/broadcom/bt/service/fm/FmTransmitter;->access$900(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1300
    const-string v2, "STATUS"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "PWR"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;->onSetTxPowerEvent(IZ)V

    goto/16 :goto_0
.end method
