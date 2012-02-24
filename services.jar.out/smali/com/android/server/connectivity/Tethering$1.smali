.class Lcom/android/server/connectivity/Tethering$1;
.super Landroid/os/Handler;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering;->htcHandlerForBroadcastIntents()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 3491
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 3494
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 3524
    :cond_0
    :goto_0
    return-void

    .line 3496
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    #calls: Lcom/android/server/connectivity/Tethering;->internal_htcConnectivityActionHandling(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v2, v3, v1}, Lcom/android/server/connectivity/Tethering;->access$10000(Lcom/android/server/connectivity/Tethering;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 3499
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    #calls: Lcom/android/server/connectivity/Tethering;->internal_htcNetworkAvalibilityChangeHandling(Landroid/net/NetworkInfo;)V
    invoke-static {v2, v1}, Lcom/android/server/connectivity/Tethering;->access$10100(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 3502
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/server/connectivity/Tethering;->internal_htcNetworkSubtypeChange(Landroid/net/NetworkInfo;I)V
    invoke-static {v2, v1, v3}, Lcom/android/server/connectivity/Tethering;->access$10200(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkInfo;I)V

    goto :goto_0

    .line 3505
    :pswitch_3
    sget-boolean v1, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v1, :cond_0

    .line 3506
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering;->access$10302(Lcom/android/server/connectivity/Tethering;Landroid/os/Message;)Landroid/os/Message;

    .line 3507
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    #calls: Lcom/android/server/connectivity/Tethering;->internal_htcRequestPermittedTether([I)V
    invoke-static {v2, v1}, Lcom/android/server/connectivity/Tethering;->access$10400(Lcom/android/server/connectivity/Tethering;[I)V

    goto :goto_0

    .line 3511
    :pswitch_4
    sget-boolean v1, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v1, :cond_0

    .line 3512
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 3513
    .local v0, parms:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 3514
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    #calls: Lcom/android/server/connectivity/Tethering;->internal_htcSetupPermittedTether(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/connectivity/Tethering;->access$10500(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3519
    .end local v0           #parms:[Ljava/lang/String;
    :pswitch_5
    sget-boolean v1, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v1, :cond_0

    .line 3520
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->internal_htcNotifyPermittedTetherChange()V
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$10600(Lcom/android/server/connectivity/Tethering;)V

    goto :goto_0

    .line 3494
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
