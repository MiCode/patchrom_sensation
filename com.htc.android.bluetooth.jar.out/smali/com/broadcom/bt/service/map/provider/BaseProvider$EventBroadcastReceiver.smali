.class Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/map/provider/BaseProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/map/provider/BaseProvider;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;Lcom/broadcom/bt/service/map/provider/BaseProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.broadcom.bt.service.map.DS_DISCOVER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    const-string v2, "BaseProvider"

    const-string v3, "Got DS Discover intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    invoke-virtual {v2, p2}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onDSDiscoverEvent(Landroid/content/Intent;)V

    .line 117
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 104
    .local v1, state:I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 106
    :pswitch_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    #calls: Lcom/broadcom/bt/service/map/provider/BaseProvider;->onBluetoothEnable()V
    invoke-static {v2}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->access$000(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    #calls: Lcom/broadcom/bt/service/map/provider/BaseProvider;->onBluetoothDisable()V
    invoke-static {v2}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->access$100(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V

    goto :goto_0

    .line 115
    .end local v1           #state:I
    :cond_1
    const-string v2, "BaseProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider received unhandled event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
