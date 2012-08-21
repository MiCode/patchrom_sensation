.class public abstract Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGatt.java"

# interfaces
.implements Lcom/broadcom/bt/service/gatt/IBluetoothGatt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/gatt/IBluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.gatt.IBluetoothGatt"

.field static final TRANSACTION_GATTServer_AddCharDescriptor:I = 0x1f

.field static final TRANSACTION_GATTServer_AddCharacteristic:I = 0x1e

.field static final TRANSACTION_GATTServer_AddIncludedService:I = 0x1d

.field static final TRANSACTION_GATTServer_CancelOpen:I = 0x27

.field static final TRANSACTION_GATTServer_Close:I = 0x28

.field static final TRANSACTION_GATTServer_CreateService:I = 0x1c

.field static final TRANSACTION_GATTServer_DeleteService:I = 0x20

.field static final TRANSACTION_GATTServer_HandleValueIndication:I = 0x23

.field static final TRANSACTION_GATTServer_HandleValueNotification:I = 0x24

.field static final TRANSACTION_GATTServer_Open:I = 0x26

.field static final TRANSACTION_GATTServer_SendRsp:I = 0x25

.field static final TRANSACTION_GATTServer_StartService:I = 0x21

.field static final TRANSACTION_GATTServer_StopService:I = 0x22

.field static final TRANSACTION_close:I = 0x6

.field static final TRANSACTION_deregisterForNotifications:I = 0x17

.field static final TRANSACTION_executeWrite:I = 0x15

.field static final TRANSACTION_getFirstChar:I = 0x9

.field static final TRANSACTION_getFirstCharDescr:I = 0xb

.field static final TRANSACTION_getFirstIncludedService:I = 0xd

.field static final TRANSACTION_getNextChar:I = 0xa

.field static final TRANSACTION_getNextCharDescr:I = 0xc

.field static final TRANSACTION_getNextIncludedService:I = 0xe

.field static final TRANSACTION_open:I = 0x5

.field static final TRANSACTION_prepareWrite:I = 0x14

.field static final TRANSACTION_readChar:I = 0xf

.field static final TRANSACTION_readCharDescr:I = 0x10

.field static final TRANSACTION_registerApp:I = 0x1

.field static final TRANSACTION_registerForNotifications:I = 0x16

.field static final TRANSACTION_registerServerProfileCallback:I = 0x19

.field static final TRANSACTION_registerServerServiceCallback:I = 0x18

.field static final TRANSACTION_registerServiceDataCallback:I = 0x7

.field static final TRANSACTION_searchService:I = 0x8

.field static final TRANSACTION_sendIndConfirm:I = 0x13

.field static final TRANSACTION_setEncryption:I = 0x3

.field static final TRANSACTION_setScanParameters:I = 0x4

.field static final TRANSACTION_unregisterApp:I = 0x2

.field static final TRANSACTION_unregisterServerProfileCallback:I = 0x1b

.field static final TRANSACTION_unregisterServerServiceCallback:I = 0x1a

.field static final TRANSACTION_writeCharDescrValue:I = 0x12

.field static final TRANSACTION_writeCharValue:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/gatt/IBluetoothGatt;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 705
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 46
    :sswitch_0
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 60
    .local v1, _arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/le/api/IBleClientCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v2

    .line 61
    .local v2, _arg1:Lcom/broadcom/bt/le/api/IBleClientCallback;
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->registerApp(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleClientCallback;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 57
    .end local v1           #_arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #_arg1:Lcom/broadcom/bt/le/api/IBleClientCallback;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_1

    .line 67
    .end local v1           #_arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_2
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 70
    .local v1, _arg0:B
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->unregisterApp(B)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    .end local v1           #_arg0:B
    :sswitch_3
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 81
    .local v2, _arg1:B
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->setEncryption(Ljava/lang/String;B)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 87
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:B
    :sswitch_4
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 92
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->setScanParameters(II)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_5
    const-string v10, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 102
    .local v1, _arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    move v3, v9

    .line 105
    .local v3, _arg2:Z
    :goto_2
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->open(BLjava/lang/String;Z)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v3           #_arg2:Z
    :cond_1
    move v3, v0

    .line 104
    goto :goto_2

    .line 111
    .end local v1           #_arg0:B
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_6
    const-string v10, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 115
    .restart local v1       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 117
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 119
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    move v4, v9

    .line 120
    .local v4, _arg3:Z
    :goto_3
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->close(BLjava/lang/String;IZ)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v4           #_arg3:Z
    :cond_2
    move v4, v0

    .line 119
    goto :goto_3

    .line 126
    .end local v1           #_arg0:B
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    :sswitch_7
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 130
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 137
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    move-result-object v4

    .line 140
    .local v4, _arg3:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->registerServiceDataCallback(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Ljava/lang/String;Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 134
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_4

    .line 146
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_8
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 150
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 156
    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->searchService(ILcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 154
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_5

    .line 162
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_9
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 166
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 167
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 173
    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 174
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 179
    .local v3, _arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_7
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->getFirstChar(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 170
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_6

    .line 177
    :cond_6
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_7

    .line 185
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_a
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 190
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;

    .line 196
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 197
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 202
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_9
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->getNextChar(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 193
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_7
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    goto :goto_8

    .line 200
    :cond_8
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_9

    .line 208
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_b
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 212
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 213
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;

    .line 219
    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 220
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 225
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_b
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->getFirstCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 216
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_9
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    goto :goto_a

    .line 223
    :cond_a
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_b

    .line 231
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_c
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 235
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 236
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;

    .line 242
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 243
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 248
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_d
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->getNextCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 239
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_b
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    goto :goto_c

    .line 246
    :cond_c
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_d

    .line 254
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_d
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 258
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 259
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 265
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 266
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 271
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_f
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->getFirstIncludedService(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 262
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_d
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_e

    .line 269
    :cond_e
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_f

    .line 277
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_e
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 281
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 282
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;

    .line 288
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 289
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 294
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_11
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->getNextIncludedService(ILcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 285
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_f
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;
    goto :goto_10

    .line 292
    :cond_10
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_11

    .line 300
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_f
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 304
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 305
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;

    .line 311
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 312
    .local v3, _arg2:B
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->readChar(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;B)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 308
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    .end local v3           #_arg2:B
    :cond_11
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    goto :goto_12

    .line 318
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :sswitch_10
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 322
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 323
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;

    .line 329
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 330
    .restart local v3       #_arg2:B
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->readCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;B)V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 326
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    .end local v3           #_arg2:B
    :cond_12
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    goto :goto_13

    .line 336
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    :sswitch_11
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 340
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 341
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;

    .line 347
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 349
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 351
    .local v4, _arg3:B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .local v5, _arg4:[B
    move-object v0, p0

    .line 352
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->writeCharValue(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;IB[B)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 344
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:B
    .end local v5           #_arg4:[B
    :cond_13
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    goto :goto_14

    .line 358
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :sswitch_12
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 362
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 363
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;

    .line 369
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    :goto_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 371
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 373
    .restart local v4       #_arg3:B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5       #_arg4:[B
    move-object v0, p0

    .line 374
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->writeCharDescrValue(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;IB[B)V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 366
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:B
    .end local v5           #_arg4:[B
    :cond_14
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    goto :goto_15

    .line 380
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    :sswitch_13
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 384
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 385
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;

    .line 390
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :goto_16
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->sendIndConfirm(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 388
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :cond_15
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    goto :goto_16

    .line 396
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :sswitch_14
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 400
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 401
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;

    .line 407
    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 409
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 411
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5       #_arg4:[B
    move-object v0, p0

    .line 412
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->prepareWrite(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;II[B)V

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 404
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:[B
    :cond_16
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    goto :goto_17

    .line 418
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :sswitch_15
    const-string v10, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 422
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_17

    move v2, v9

    .line 423
    .local v2, _arg1:Z
    :goto_18
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->executeWrite(IZ)V

    .line 424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    :cond_17
    move v2, v0

    .line 422
    goto :goto_18

    .line 429
    .end local v1           #_arg0:I
    :sswitch_16
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 433
    .local v1, _arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 436
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;

    .line 441
    .local v3, _arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :goto_19
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->registerForNotifications(BLjava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V

    .line 442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 439
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :cond_18
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    goto :goto_19

    .line 447
    .end local v1           #_arg0:B
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :sswitch_17
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 451
    .restart local v1       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 453
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    .line 454
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;

    .line 459
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :goto_1a
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->deregisterForNotifications(BLjava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V

    .line 460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 457
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :cond_19
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    goto :goto_1a

    .line 465
    .end local v1           #_arg0:B
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :sswitch_18
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 468
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 474
    .local v1, _arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 475
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 481
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/le/api/IBleServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/le/api/IBleServiceCallback;

    move-result-object v3

    .line 482
    .local v3, _arg2:Lcom/broadcom/bt/le/api/IBleServiceCallback;
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->registerServerServiceCallback(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleServiceCallback;)V

    .line 483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 471
    .end local v1           #_arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #_arg2:Lcom/broadcom/bt/le/api/IBleServiceCallback;
    :cond_1a
    const/4 v1, 0x0

    .restart local v1       #_arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_1b

    .line 478
    :cond_1b
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_1c

    .line 488
    .end local v1           #_arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_19
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 491
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 497
    .restart local v1       #_arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/le/api/IBleProfileEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/le/api/IBleProfileEventCallback;

    move-result-object v2

    .line 498
    .local v2, _arg1:Lcom/broadcom/bt/le/api/IBleProfileEventCallback;
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->registerServerProfileCallback(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleProfileEventCallback;)V

    .line 499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 494
    .end local v1           #_arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #_arg1:Lcom/broadcom/bt/le/api/IBleProfileEventCallback;
    :cond_1c
    const/4 v1, 0x0

    .restart local v1       #_arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_1d

    .line 504
    .end local v1           #_arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_1a
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 507
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->unregisterServerServiceCallback(I)V

    .line 508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 513
    .end local v1           #_arg0:I
    :sswitch_1b
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 516
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->unregisterServerProfileCallback(I)V

    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 522
    .end local v1           #_arg0:I
    :sswitch_1c
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 526
    .local v1, _arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 527
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 533
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 534
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_CreateService(BLcom/broadcom/bt/service/gatt/BluetoothGattID;I)V

    .line 535
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 530
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #_arg2:I
    :cond_1d
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_1e

    .line 540
    .end local v1           #_arg0:B
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_1d
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 544
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 545
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_AddIncludedService(II)V

    .line 546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 551
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_1e
    const-string v10, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 555
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1e

    .line 556
    sget-object v10, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 562
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 564
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 566
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1f

    move v5, v9

    .line 568
    .local v5, _arg4:Z
    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg5:I
    move-object v0, p0

    .line 569
    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_AddCharacteristic(ILcom/broadcom/bt/service/gatt/BluetoothGattID;IIZI)V

    .line 570
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 559
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:I
    :cond_1e
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_1f

    .restart local v3       #_arg2:I
    .restart local v4       #_arg3:I
    :cond_1f
    move v5, v0

    .line 566
    goto :goto_20

    .line 575
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    :sswitch_1f
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 579
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 581
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    .line 582
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 587
    .local v3, _arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_21
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_AddCharDescriptor(IILcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 585
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_20
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_21

    .line 593
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_20
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 596
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_DeleteService(I)V

    .line 597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 602
    .end local v1           #_arg0:I
    :sswitch_21
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 606
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 607
    .local v2, _arg1:B
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_StartService(IB)V

    .line 608
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 613
    .end local v1           #_arg0:I
    .end local v2           #_arg1:B
    :sswitch_22
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 616
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_StopService(I)V

    .line 617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 622
    .end local v1           #_arg0:I
    :sswitch_23
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 626
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 628
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 629
    .local v3, _arg2:[B
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_HandleValueIndication(II[B)V

    .line 630
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 635
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:[B
    :sswitch_24
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 639
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 641
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 642
    .restart local v3       #_arg2:[B
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_HandleValueNotification(II[B)V

    .line 643
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 648
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:[B
    :sswitch_25
    const-string v10, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 652
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 654
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 656
    .local v3, _arg2:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 658
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 660
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 662
    .local v6, _arg5:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v7

    .line 664
    .local v7, _arg6:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_21

    move v8, v9

    .local v8, _arg7:Z
    :goto_22
    move-object v0, p0

    .line 665
    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_SendRsp(IIBII[BBZ)V

    .line 666
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v8           #_arg7:Z
    :cond_21
    move v8, v0

    .line 664
    goto :goto_22

    .line 671
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:B
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:[B
    .end local v7           #_arg6:B
    :sswitch_26
    const-string v10, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 675
    .local v1, _arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 677
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_22

    move v3, v9

    .line 678
    .local v3, _arg2:Z
    :goto_23
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_Open(BLjava/lang/String;Z)V

    .line 679
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v3           #_arg2:Z
    :cond_22
    move v3, v0

    .line 677
    goto :goto_23

    .line 684
    .end local v1           #_arg0:B
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_27
    const-string v10, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 688
    .restart local v1       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 690
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_23

    move v3, v9

    .line 691
    .restart local v3       #_arg2:Z
    :goto_24
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_CancelOpen(BLjava/lang/String;Z)V

    .line 692
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v3           #_arg2:Z
    :cond_23
    move v3, v0

    .line 690
    goto :goto_24

    .line 697
    .end local v1           #_arg0:B
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_28
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 700
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_Close(I)V

    .line 701
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
