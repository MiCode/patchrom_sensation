.class Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/test/BluetoothTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestModeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/test/BluetoothTestMode;)V
    .locals 0
    .parameter

    .prologue
    .line 570
    iput-object p1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/test/BluetoothTestMode;Lcom/broadcom/bt/service/test/BluetoothTestMode$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/test/BluetoothTestMode;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    .line 575
    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->abortBroadcast()V

    .line 577
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.broadcom.bt.app.test.action.ON_BTLD_API_CMD_IND"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$200(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 580
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 581
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 582
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 583
    .local v3, instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 585
    .local v1, callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "CMD"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "LENGTH"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "PAYLOAD"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    invoke-interface {v1, v4, v5, v6}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onBtldApiCmdInd(II[B)V

    goto :goto_0

    .line 589
    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_0
    const-string v4, "com.broadcom.bt.app.test.action.ON_ENTER_DUT_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$300(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 591
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 592
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 593
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 594
    .restart local v3       #instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 596
    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "STATUS"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onEnterDUTMode(I)V

    goto :goto_1

    .line 599
    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_1
    const-string v4, "com.broadcom.bt.app.test.action.ON_ENTER_TEST_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$400(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 601
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 602
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 603
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 604
    .restart local v3       #instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 606
    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "MODE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onEnterTestMode(I)V

    goto :goto_2

    .line 609
    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_2
    const-string v4, "com.broadcom.bt.app.test.action.ON_EXIT_DUT_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$500(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 611
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 612
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 613
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 614
    .restart local v3       #instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 616
    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "STATUS"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onExitDUTMode(I)V

    goto :goto_3

    .line 619
    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_3
    const-string v4, "com.broadcom.bt.app.test.action.ON_EXIT_TEST_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$600(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 621
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 622
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 623
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 624
    .restart local v3       #instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 626
    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "MODE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onExitTestMode(I)V

    goto :goto_4

    .line 628
    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_4
    const-string v4, "com.broadcom.bt.app.test.action.ON_GET_TEST_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$700(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 630
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 631
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 632
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 633
    .restart local v3       #instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 635
    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "MODE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onGetTestMode(I)V

    goto :goto_5

    .line 637
    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_5
    const-string v4, "com.broadcom.bt.app.test.action.ON_SET_TEST_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$800(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 639
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 640
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 641
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 642
    .restart local v3       #instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 644
    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "MODE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onSetTestMode(I)V

    goto :goto_6

    .line 646
    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_6
    const-string v4, "com.broadcom.bt.app.test.action.ON_TX_RX_TEST"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$900(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 648
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 649
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 650
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 651
    .restart local v3       #instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 653
    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "MODE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "STATUS"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v1, v4, v5}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onTx_Rx_Test(II)V

    goto :goto_7

    .line 657
    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_7
    return-void
.end method
