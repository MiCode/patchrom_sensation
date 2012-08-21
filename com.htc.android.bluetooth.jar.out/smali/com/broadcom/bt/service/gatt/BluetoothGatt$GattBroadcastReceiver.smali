.class Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothGatt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/gatt/BluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GattBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)V
    .locals 0
    .parameter

    .prologue
    .line 963
    iput-object p1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/gatt/BluetoothGatt;Lcom/broadcom/bt/service/gatt/BluetoothGatt$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 963
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 40
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 966
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive (mAddress ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mAddress:Ljava/lang/String;
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$100(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "], mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): intent = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v37

    .line 971
    .local v37, handler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1573
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sget v8, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->ACTION_PREFIX_LENGTH:I

    if-le v2, v8, :cond_0

    .line 978
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    sget v8, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->ACTION_PREFIX_LENGTH:I

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    .line 980
    .local v34, action:Ljava/lang/String;
    const-string v2, "com.broadcom.bt.app.gatt.ON_OPENED"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 981
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 982
    .local v36, connId:I
    const-string v2, "BD_ADDR"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 983
    .local v28, address:Ljava/lang/String;
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_OPENED (mAddress  ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mAddress:Ljava/lang/String;
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$100(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", address = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 989
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    move/from16 v0, v36

    #setter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2, v0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$202(Lcom/broadcom/bt/service/gatt/BluetoothGatt;I)I

    .line 992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onOpened()V

    goto/16 :goto_0

    .line 995
    .end local v28           #address:Ljava/lang/String;
    .end local v36           #connId:I
    :cond_2
    const-string v2, "com.broadcom.bt.app.gatt.ON_CLOSED"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 996
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 997
    .restart local v36       #connId:I
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 998
    .local v3, status:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_CLOSED (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v2

    move/from16 v0, v36

    if-ne v2, v0, :cond_0

    .line 1004
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 1006
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    const v8, 0xffff

    #setter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2, v8}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$202(Lcom/broadcom/bt/service/gatt/BluetoothGatt;I)I

    .line 1007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onClosed(I)V

    goto/16 :goto_0

    .line 1010
    .end local v3           #status:I
    .end local v36           #connId:I
    :cond_3
    const-string v2, "com.broadcom.bt.app.gatt.ON_READ_CHAR_EXT_PROP"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1011
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1012
    .restart local v36       #connId:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "READ_CHAR_EXT_PROP (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v2

    move/from16 v0, v36

    if-ne v2, v0, :cond_0

    .line 1018
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 1020
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1021
    .restart local v3       #status:I
    const-string v2, "DATA_INT"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1023
    .local v7, extProp:I
    const-string v2, "SRVC_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1025
    .local v4, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "CHAR_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1027
    .local v5, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "DESCR_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1030
    .local v6, descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", extProp = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v2

    invoke-interface/range {v2 .. v7}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onReadCharExtendedProperty(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;I)V

    goto/16 :goto_0

    .line 1035
    .end local v3           #status:I
    .end local v4           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v6           #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v7           #extProp:I
    .end local v36           #connId:I
    :cond_4
    const-string v2, "com.broadcom.bt.app.gatt.ON_READ_CHAR_DESCRIPTION"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1036
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1037
    .restart local v36       #connId:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "READ_CHAR_DESCRIPTION (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v2

    move/from16 v0, v36

    if-ne v2, v0, :cond_0

    .line 1043
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 1045
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1047
    .restart local v3       #status:I
    const-string v2, "SRVC_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1049
    .restart local v4       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "CHAR_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1051
    .restart local v5       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "DESCR_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1053
    .restart local v6       #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "DATA_BYTE_ARRAY"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v13

    .line 1055
    .local v13, data:[B
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", data_len = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v13

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v8

    move v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    invoke-interface/range {v8 .. v13}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onReadCharDescription(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;[B)V

    goto/16 :goto_0

    .line 1060
    .end local v3           #status:I
    .end local v4           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v6           #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v13           #data:[B
    .end local v36           #connId:I
    :cond_5
    const-string v2, "com.broadcom.bt.app.gatt.ON_READ_CHAR_CLIENT_CONFIG"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1061
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1062
    .restart local v36       #connId:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "READ_CHAR_CLIENT_CONFIG (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v2

    move/from16 v0, v36

    if-ne v2, v0, :cond_0

    .line 1068
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 1070
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1071
    .restart local v3       #status:I
    const-string v2, "DATA_INT"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 1073
    .local v19, clientConfig:I
    const-string v2, "SRVC_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1075
    .restart local v4       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "CHAR_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1077
    .restart local v5       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "DESCR_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1080
    .restart local v6       #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", clientConfig = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v14

    move v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    invoke-interface/range {v14 .. v19}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onReadCharClientConfig(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;I)V

    goto/16 :goto_0

    .line 1085
    .end local v3           #status:I
    .end local v4           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v6           #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v19           #clientConfig:I
    .end local v36           #connId:I
    :cond_6
    const-string v2, "com.broadcom.bt.app.gatt.ON_READ_CHAR_SERVER_CONFIG"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1086
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1087
    .restart local v36       #connId:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "READ_CHAR_SERVER_CONFIG (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v2

    move/from16 v0, v36

    if-ne v2, v0, :cond_0

    .line 1093
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 1095
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1096
    .restart local v3       #status:I
    const-string v2, "DATA_INT"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 1098
    .local v25, serverConfig:I
    const-string v2, "SRVC_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1100
    .restart local v4       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "CHAR_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1102
    .restart local v5       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "DESCR_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1105
    .restart local v6       #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", serverConfig = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v20

    move/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    invoke-interface/range {v20 .. v25}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onReadCharServerConfig(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;I)V

    goto/16 :goto_0

    .line 1110
    .end local v3           #status:I
    .end local v4           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v6           #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v25           #serverConfig:I
    .end local v36           #connId:I
    :cond_7
    const-string v2, "com.broadcom.bt.app.gatt.ON_READ_CHAR_PRESENT_FORMAT"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1111
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1112
    .restart local v36       #connId:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "READ_CHAR_PRESENT_FORMAT (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v2

    move/from16 v0, v36

    if-ne v2, v0, :cond_0

    .line 1118
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 1120
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1122
    .restart local v3       #status:I
    const-string v2, "SRVC_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1124
    .restart local v4       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "CHAR_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1126
    .restart local v5       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "DESCR_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1128
    .restart local v6       #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "DATA_INT_ARRAY"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v13

    .line 1130
    .local v13, data:[I
    new-instance v26, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;

    const/4 v2, 0x0

    aget v27, v13, v2

    const/4 v2, 0x1

    aget v28, v13, v2

    const/4 v2, 0x2

    aget v29, v13, v2

    const/4 v2, 0x3

    aget v30, v13, v2

    const/4 v2, 0x4

    aget v31, v13, v2

    invoke-direct/range {v26 .. v31}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;-><init>(IIIII)V

    .line 1133
    .local v26, presFormat:Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", data_len = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v13

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v13, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", descr = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v13, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", format = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget v9, v13, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", exp = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x3

    aget v9, v13, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", name_spc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x4

    aget v9, v13, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v27

    move/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v26

    invoke-interface/range {v27 .. v32}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onReadCharPresentationFormat(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;)V

    goto/16 :goto_0

    .line 1140
    .end local v3           #status:I
    .end local v4           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v6           #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v13           #data:[I
    .end local v26           #presFormat:Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;
    .end local v36           #connId:I
    :cond_8
    const-string v2, "com.broadcom.bt.app.gatt.ON_READ_CHAR_AGG_FORMAT"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1141
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1142
    .restart local v36       #connId:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "READ_CHAR_AGG_FORMAT (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v2

    move/from16 v0, v36

    if-ne v2, v0, :cond_0

    .line 1148
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 1150
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1152
    .restart local v3       #status:I
    const-string v2, "SRVC_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1154
    .restart local v4       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "CHAR_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1156
    .restart local v5       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "DESCR_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1159
    .restart local v6       #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "DATA_INT_ARRAY"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v13

    .line 1160
    .restart local v13       #data:[I
    array-length v2, v13

    div-int/lit8 v39, v2, 0x5

    .line 1162
    .local v39, num_pres_fmt:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", data_len = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v13

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    move/from16 v0, v39

    new-array v0, v0, [Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;

    move-object/from16 v26, v0

    .line 1166
    .local v26, presFormat:[Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;
    const/16 v38, 0x0

    .local v38, i:I
    :goto_1
    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_9

    .line 1167
    aget-object v2, v26, v38

    mul-int/lit8 v8, v38, 0x5

    aget v8, v13, v8

    iput v8, v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->unit:I

    .line 1168
    aget-object v2, v26, v38

    mul-int/lit8 v8, v38, 0x5

    add-int/lit8 v8, v8, 0x1

    aget v8, v13, v8

    iput v8, v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->descr:I

    .line 1169
    aget-object v2, v26, v38

    mul-int/lit8 v8, v38, 0x5

    add-int/lit8 v8, v8, 0x2

    aget v8, v13, v8

    iput v8, v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->format:I

    .line 1170
    aget-object v2, v26, v38

    mul-int/lit8 v8, v38, 0x5

    add-int/lit8 v8, v8, 0x3

    aget v8, v13, v8

    iput v8, v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->exp:I

    .line 1171
    aget-object v2, v26, v38

    mul-int/lit8 v8, v38, 0x5

    add-int/lit8 v8, v8, 0x4

    aget v8, v13, v8

    iput v8, v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->nameSpc:I

    .line 1173
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Presentation Format ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]: unit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v26, v38

    iget v9, v9, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->unit:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", descr = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v26, v38

    iget v9, v9, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->descr:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", format = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v26, v38

    iget v9, v9, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->format:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", exp = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v26, v38

    iget v9, v9, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->exp:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", name_spc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v26, v38

    iget v9, v9, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->nameSpc:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_1

    .line 1181
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v27

    move/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v26

    invoke-interface/range {v27 .. v32}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onReadCharAggregateFormat(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;[Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;)V

    goto/16 :goto_0

    .line 1184
    .end local v3           #status:I
    .end local v4           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v6           #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v13           #data:[I
    .end local v26           #presFormat:[Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;
    .end local v36           #connId:I
    .end local v38           #i:I
    .end local v39           #num_pres_fmt:I
    :cond_a
    const-string v2, "com.broadcom.bt.app.gatt.ON_WRITE_CHAR"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1185
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1186
    .restart local v36       #connId:I
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1187
    .restart local v3       #status:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WRITE_CHAR (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v2

    move/from16 v0, v36

    if-ne v2, v0, :cond_0

    .line 1193
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 1195
    const-string v2, "SRVC_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1197
    .restart local v4       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "CHAR_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1199
    .restart local v5       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "DESCR_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1202
    .restart local v6       #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v2

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onWriteChar(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    goto/16 :goto_0

    .line 1205
    .end local v3           #status:I
    .end local v4           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v6           #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v36           #connId:I
    :cond_b
    const-string v2, "com.broadcom.bt.app.gatt.ON_SEARCH_COMPLETED"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1206
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1207
    .restart local v36       #connId:I
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1208
    .restart local v3       #status:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SEARCH_COMPLETED (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v2

    move/from16 v0, v36

    if-ne v2, v0, :cond_0

    .line 1214
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 1216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onSearchCompleted(I)V

    goto/16 :goto_0

    .line 1219
    .end local v3           #status:I
    .end local v36           #connId:I
    :cond_c
    const-string v2, "com.broadcom.bt.app.gatt.ON_SEARCH_RESULT"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1220
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1221
    .restart local v36       #connId:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SEARCH_RESULT (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v2

    move/from16 v0, v36

    if-ne v2, v0, :cond_0

    .line 1226
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 1228
    const-string v2, "SRVC_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1230
    .restart local v4       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onSearchResult(Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    goto/16 :goto_0

    .line 1233
    .end local v4           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v36           #connId:I
    :cond_d
    const-string v2, "com.broadcom.bt.app.gatt.ON_READ_DESCR_EXT_PROP"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1234
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1235
    .restart local v36       #connId:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "READ_DESCR_EXT_PROP (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v2

    move/from16 v0, v36

    if-ne v2, v0, :cond_0

    .line 1241
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 1243
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1244
    .restart local v3       #status:I
    const-string v2, "DATA_INT"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1246
    .restart local v7       #extProp:I
    const-string v2, "SRVC_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1248
    .restart local v4       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "CHAR_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1250
    .restart local v5       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "DESCR_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1253
    .restart local v6       #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", extProp = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v2

    invoke-interface/range {v2 .. v7}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onReadDescrExtendedProperty(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;I)V

    goto/16 :goto_0

    .line 1258
    .end local v3           #status:I
    .end local v4           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v6           #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v7           #extProp:I
    .end local v36           #connId:I
    :cond_e
    const-string v2, "com.broadcom.bt.app.gatt.ON_READ_DESCR_DESCRIPTION"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1259
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1260
    .restart local v36       #connId:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "READ_DESCR_DESCRIPTION (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v2

    move/from16 v0, v36

    if-ne v2, v0, :cond_0

    .line 1266
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 1268
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1270
    .restart local v3       #status:I
    const-string v2, "SRVC_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1272
    .restart local v4       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "CHAR_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1274
    .restart local v5       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "DESCR_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1276
    .restart local v6       #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "DATA_BYTE_ARRAY"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v13

    .line 1278
    .local v13, data:[B
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", data_len = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v13

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v8

    move v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    invoke-interface/range {v8 .. v13}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onReadDescrDescription(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;[B)V

    goto/16 :goto_0

    .line 1283
    .end local v3           #status:I
    .end local v4           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v6           #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v13           #data:[B
    .end local v36           #connId:I
    :cond_f
    const-string v2, "com.broadcom.bt.app.gatt.ON_READ_DESCR_CLIENT_CONFIG"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1284
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1285
    .restart local v36       #connId:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "READ_DESCR_CLIENT_CONFIG (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v2

    move/from16 v0, v36

    if-ne v2, v0, :cond_0

    .line 1291
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 1293
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1294
    .restart local v3       #status:I
    const-string v2, "DATA_INT"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 1296
    .restart local v19       #clientConfig:I
    const-string v2, "SRVC_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1298
    .restart local v4       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "CHAR_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1300
    .restart local v5       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "DESCR_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1303
    .restart local v6       #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", clientConfig = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v14

    move v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    invoke-interface/range {v14 .. v19}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onReadDescrClientConfig(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;I)V

    goto/16 :goto_0

    .line 1308
    .end local v3           #status:I
    .end local v4           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v6           #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v19           #clientConfig:I
    .end local v36           #connId:I
    :cond_10
    const-string v2, "com.broadcom.bt.app.gatt.ON_READ_DESCR_SERVER_CONFIG"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1309
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1310
    .restart local v36       #connId:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "READ_DESCR_SERVER_CONFIG (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v2

    move/from16 v0, v36

    if-ne v2, v0, :cond_0

    .line 1316
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 1318
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1319
    .restart local v3       #status:I
    const-string v2, "DATA_INT"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 1321
    .restart local v25       #serverConfig:I
    const-string v2, "SRVC_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1323
    .restart local v4       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "CHAR_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1325
    .restart local v5       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "DESCR_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1328
    .restart local v6       #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", serverConfig = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v20

    move/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    invoke-interface/range {v20 .. v25}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onReadDescrServerConfig(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;I)V

    goto/16 :goto_0

    .line 1333
    .end local v3           #status:I
    .end local v4           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v6           #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v25           #serverConfig:I
    .end local v36           #connId:I
    :cond_11
    const-string v2, "com.broadcom.bt.app.gatt.ON_READ_DESCR_PRESENT_FORMAT"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1334
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1335
    .restart local v36       #connId:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "READ_DESCR_PRESENT_FORMAT (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v2

    move/from16 v0, v36

    if-ne v2, v0, :cond_0

    .line 1341
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 1343
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1345
    .restart local v3       #status:I
    const-string v2, "SRVC_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1347
    .restart local v4       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "CHAR_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1349
    .restart local v5       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "DESCR_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1351
    .restart local v6       #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "DATA_INT_ARRAY"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v13

    .line 1353
    .local v13, data:[I
    new-instance v26, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;

    const/4 v2, 0x0

    aget v27, v13, v2

    const/4 v2, 0x1

    aget v28, v13, v2

    const/4 v2, 0x2

    aget v29, v13, v2

    const/4 v2, 0x3

    aget v30, v13, v2

    const/4 v2, 0x4

    aget v31, v13, v2

    invoke-direct/range {v26 .. v31}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;-><init>(IIIII)V

    .line 1356
    .local v26, presFormat:Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", data_len = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v13

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v13, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", descr = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v13, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", format = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget v9, v13, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", exp = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x3

    aget v9, v13, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", name_spc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x4

    aget v9, v13, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v27

    move/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v26

    invoke-interface/range {v27 .. v32}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onReadDescrPresentationFormat(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;)V

    goto/16 :goto_0

    .line 1363
    .end local v3           #status:I
    .end local v4           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v6           #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v13           #data:[I
    .end local v26           #presFormat:Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;
    .end local v36           #connId:I
    :cond_12
    const-string v2, "com.broadcom.bt.app.gatt.ON_READ_DESCR_AGG_FORMAT"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1364
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1365
    .restart local v36       #connId:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "READ_DESCR_AGG_FORMAT (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v2

    move/from16 v0, v36

    if-ne v2, v0, :cond_0

    .line 1371
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 1373
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1375
    .restart local v3       #status:I
    const-string v2, "SRVC_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1377
    .restart local v4       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "CHAR_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1379
    .restart local v5       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "DESCR_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1382
    .restart local v6       #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "DATA_INT_ARRAY"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v13

    .line 1383
    .restart local v13       #data:[I
    array-length v2, v13

    div-int/lit8 v39, v2, 0x5

    .line 1385
    .restart local v39       #num_pres_fmt:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", data_len = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v13

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    move/from16 v0, v39

    new-array v0, v0, [Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;

    move-object/from16 v26, v0

    .line 1389
    .local v26, presFormat:[Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;
    const/16 v38, 0x0

    .restart local v38       #i:I
    :goto_2
    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_13

    .line 1390
    aget-object v2, v26, v38

    mul-int/lit8 v8, v38, 0x5

    aget v8, v13, v8

    iput v8, v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->unit:I

    .line 1391
    aget-object v2, v26, v38

    mul-int/lit8 v8, v38, 0x5

    add-int/lit8 v8, v8, 0x1

    aget v8, v13, v8

    iput v8, v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->descr:I

    .line 1392
    aget-object v2, v26, v38

    mul-int/lit8 v8, v38, 0x5

    add-int/lit8 v8, v8, 0x2

    aget v8, v13, v8

    iput v8, v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->format:I

    .line 1393
    aget-object v2, v26, v38

    mul-int/lit8 v8, v38, 0x5

    add-int/lit8 v8, v8, 0x3

    aget v8, v13, v8

    iput v8, v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->exp:I

    .line 1394
    aget-object v2, v26, v38

    mul-int/lit8 v8, v38, 0x5

    add-int/lit8 v8, v8, 0x4

    aget v8, v13, v8

    iput v8, v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->nameSpc:I

    .line 1396
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Presentation Format ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]: unit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v26, v38

    iget v9, v9, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->unit:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", descr = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v26, v38

    iget v9, v9, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->descr:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", format = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v26, v38

    iget v9, v9, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->format:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", exp = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v26, v38

    iget v9, v9, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->exp:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", name_spc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v26, v38

    iget v9, v9, Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;->nameSpc:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_2

    .line 1404
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v27

    move/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v26

    invoke-interface/range {v27 .. v32}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onReadDescrAggregateFormat(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;[Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;)V

    goto/16 :goto_0

    .line 1407
    .end local v3           #status:I
    .end local v4           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v6           #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v13           #data:[I
    .end local v26           #presFormat:[Lcom/broadcom/bt/service/gatt/BluetoothGattCharPres;
    .end local v36           #connId:I
    .end local v38           #i:I
    .end local v39           #num_pres_fmt:I
    :cond_14
    const-string v2, "com.broadcom.bt.app.gatt.ON_WRITE_DESCR"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1408
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1409
    .restart local v36       #connId:I
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1410
    .restart local v3       #status:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WRITE_DESCR (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v2

    move/from16 v0, v36

    if-ne v2, v0, :cond_0

    .line 1416
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 1418
    const-string v2, "SRVC_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1420
    .restart local v4       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "CHAR_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1422
    .restart local v5       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "DESCR_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1425
    .restart local v6       #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v2

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onWriteDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    goto/16 :goto_0

    .line 1428
    .end local v3           #status:I
    .end local v4           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v6           #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v36           #connId:I
    :cond_15
    const-string v2, "com.broadcom.bt.app.gatt.ON_NOTIFY"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1429
    const-string v2, "BD_ADDR"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1430
    .restart local v28       #address:Ljava/lang/String;
    const-string v2, "SRVC_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1432
    .restart local v4       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "CHAR_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1434
    .restart local v5       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "DESCR_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1436
    .restart local v6       #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "IS_NOTIFY"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v32

    .line 1437
    .local v32, isNotify:Z
    const-string v2, "DATA_BYTE_ARRAY"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v13

    .line 1439
    .local v13, data:[B
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_NOTIFY: address = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isNotify = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", data_len = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v13

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v27

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move-object/from16 v33, v13

    invoke-interface/range {v27 .. v33}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onNotify(Ljava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z[B)V

    goto/16 :goto_0

    .line 1444
    .end local v4           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v6           #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v13           #data:[B
    .end local v28           #address:Ljava/lang/String;
    .end local v32           #isNotify:Z
    :cond_16
    const-string v2, "com.broadcom.bt.app.gatt.ON_PREP_WRITE"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1445
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1446
    .restart local v36       #connId:I
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1447
    .restart local v3       #status:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PREPARE_WRITE (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v2

    move/from16 v0, v36

    if-ne v2, v0, :cond_0

    .line 1453
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 1455
    const-string v2, "SRVC_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1457
    .restart local v4       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "CHAR_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1459
    .restart local v5       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "DESCR_TYPE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1462
    .restart local v6       #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v2

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onPrepWrite(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    goto/16 :goto_0

    .line 1465
    .end local v3           #status:I
    .end local v4           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v6           #descr:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v36           #connId:I
    :cond_17
    const-string v2, "com.broadcom.bt.app.gatt.ON_EXEC"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1466
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1467
    .restart local v36       #connId:I
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1468
    .restart local v3       #status:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EXEC (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v2

    move/from16 v0, v36

    if-ne v2, v0, :cond_0

    .line 1474
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 1476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onExec(I)V

    goto/16 :goto_0

    .line 1479
    .end local v3           #status:I
    .end local v36           #connId:I
    :cond_18
    const-string v2, "com.broadcom.bt.app.gatt.ON_GET_FIRST_CHAR"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1480
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1481
    .restart local v36       #connId:I
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1482
    .restart local v3       #status:I
    const-string v2, "CHAR_PROP"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    .line 1483
    .local v35, charProp:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GET_FIRST_CHAR (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", charProp = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v2

    move/from16 v0, v36

    if-ne v2, v0, :cond_0

    .line 1489
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 1491
    const-string v2, "SRVC_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1493
    .restart local v4       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "CHAR_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1496
    .restart local v5       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v2

    move/from16 v0, v35

    invoke-interface {v2, v3, v0, v4, v5}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onGetFirstChar(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    goto/16 :goto_0

    .line 1499
    .end local v3           #status:I
    .end local v4           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v35           #charProp:I
    .end local v36           #connId:I
    :cond_19
    const-string v2, "com.broadcom.bt.app.gatt.ON_GET_NEXT_CHAR"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1500
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1501
    .restart local v36       #connId:I
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1502
    .restart local v3       #status:I
    const-string v2, "CHAR_PROP"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    .line 1503
    .restart local v35       #charProp:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GET_NEXT_CHAR (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", charProp = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v2

    move/from16 v0, v36

    if-ne v2, v0, :cond_0

    .line 1509
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 1511
    const-string v2, "SRVC_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1513
    .restart local v4       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "CHAR_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1516
    .restart local v5       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v2

    move/from16 v0, v35

    invoke-interface {v2, v3, v0, v4, v5}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onGetNextChar(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    goto/16 :goto_0

    .line 1519
    .end local v3           #status:I
    .end local v4           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v35           #charProp:I
    .end local v36           #connId:I
    :cond_1a
    const-string v2, "com.broadcom.bt.app.gatt.ON_GET_FIRST_INCLUDED_SERVICE"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1520
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1521
    .restart local v36       #connId:I
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1522
    .restart local v3       #status:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GET_FIRST_INCLUDED_SERVICE (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v2

    move/from16 v0, v36

    if-ne v2, v0, :cond_0

    .line 1528
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 1530
    const-string v2, "SRVC_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1532
    .restart local v4       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "CHAR_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1535
    .restart local v5       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v2

    invoke-interface {v2, v3, v4, v5}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onGetFirstIncludedService(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    goto/16 :goto_0

    .line 1538
    .end local v3           #status:I
    .end local v4           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v36           #connId:I
    :cond_1b
    const-string v2, "com.broadcom.bt.app.gatt.ON_GET_NEXT_INCLUDED_SERVICE"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1539
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1540
    .restart local v36       #connId:I
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1541
    .restart local v3       #status:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GET_NEXT_INCLUDED_SERVICE (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v2

    move/from16 v0, v36

    if-ne v2, v0, :cond_0

    .line 1547
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->abortBroadcast()V

    .line 1549
    const-string v2, "SRVC_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1551
    .restart local v4       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const-string v2, "CHAR_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1554
    .restart local v5       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v2

    invoke-interface {v2, v3, v4, v5}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onGetNextIncludedService(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    goto/16 :goto_0

    .line 1557
    .end local v3           #status:I
    .end local v4           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v36           #connId:I
    :cond_1c
    const-string v2, "com.broadcom.bt.app.gatt.ON_REGISTER_FOR_NOTIFICATIONS"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1558
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1559
    .restart local v36       #connId:I
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1560
    .restart local v3       #status:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "REGISTER_FOR_NOTIFICATIONS (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onRegisterForNotifications(I)V

    goto/16 :goto_0

    .line 1565
    .end local v3           #status:I
    .end local v36           #connId:I
    :cond_1d
    const-string v2, "com.broadcom.bt.app.gatt.ON_DEREGISTER_FOR_NOTIFICATIONS"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1566
    const-string v2, "CONN_ID"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 1567
    .restart local v36       #connId:I
    const-string v2, "STATUS"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1568
    .restart local v3       #status:I
    const-string v2, "BluetoothGatt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DEREGISTER_FOR_NOTIFICATIONS (mConnId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mConnId:I
    invoke-static {v9}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$200(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): conn_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGatt$GattBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/gatt/BluetoothGatt;

    #getter for: Lcom/broadcom/bt/service/gatt/BluetoothGatt;->mEventHandler:Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;
    invoke-static {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGatt;->access$300(Lcom/broadcom/bt/service/gatt/BluetoothGatt;)Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGattEventHandler;->onDeregisterForNotifications(I)V

    goto/16 :goto_0
.end method
