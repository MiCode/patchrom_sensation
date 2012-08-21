.class public abstract Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback$Stub;
.super Landroid/os/Binder;
.source "IBleCharacteristicDataCallback.java"

# interfaces
.implements Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.le.api.IBleCharacteristicDataCallback"

.field static final TRANSACTION_onGetFirstCharacteristic:I = 0x1

.field static final TRANSACTION_onGetFirstCharacteristicDescriptor:I = 0x2

.field static final TRANSACTION_onGetFirstIncludedService:I = 0xc

.field static final TRANSACTION_onGetNextCharacteristic:I = 0x3

.field static final TRANSACTION_onGetNextCharacteristicDescriptor:I = 0x4

.field static final TRANSACTION_onGetNextIncludedService:I = 0xd

.field static final TRANSACTION_onNotify:I = 0xb

.field static final TRANSACTION_onReadCharDescriptorValue:I = 0x6

.field static final TRANSACTION_onReadCharacteristicValue:I = 0x5

.field static final TRANSACTION_onRegForNotifications:I = 0x9

.field static final TRANSACTION_onUnregisterNotifications:I = 0xa

.field static final TRANSACTION_onWriteCharDescrValue:I = 0x8

.field static final TRANSACTION_onWriteCharValue:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.broadcom.bt.le.api.IBleCharacteristicDataCallback"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;
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
    const-string v1, "com.broadcom.bt.le.api.IBleCharacteristicDataCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v7, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 411
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 46
    :sswitch_0
    const-string v0, "com.broadcom.bt.le.api.IBleCharacteristicDataCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "com.broadcom.bt.le.api.IBleCharacteristicDataCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 57
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 64
    .local v3, _arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 70
    .local v4, _arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_2
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback$Stub;->onGetFirstCharacteristic(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_0
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_1

    .line 68
    :cond_1
    const/4 v4, 0x0

    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_2

    .line 76
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_2
    const-string v0, "com.broadcom.bt.le.api.IBleCharacteristicDataCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 80
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 82
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 89
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 96
    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .local v5, _arg4:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_5
    move-object v0, p0

    .line 102
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback$Stub;->onGetFirstCharacteristicDescriptor(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #_arg4:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_3

    .line 93
    :cond_3
    const/4 v4, 0x0

    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_4

    .line 100
    :cond_4
    const/4 v5, 0x0

    .restart local v5       #_arg4:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_5

    .line 108
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #_arg4:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_3
    const-string v0, "com.broadcom.bt.le.api.IBleCharacteristicDataCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 112
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 114
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 121
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 122
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 127
    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_7
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback$Stub;->onGetNextCharacteristic(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 118
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_5
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_6

    .line 125
    :cond_6
    const/4 v4, 0x0

    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_7

    .line 133
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_4
    const-string v0, "com.broadcom.bt.le.api.IBleCharacteristicDataCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 137
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 140
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 146
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 147
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 153
    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 154
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .restart local v5       #_arg4:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_a
    move-object v0, p0

    .line 159
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback$Stub;->onGetNextCharacteristicDescriptor(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 143
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #_arg4:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_7
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_8

    .line 150
    :cond_8
    const/4 v4, 0x0

    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_9

    .line 157
    :cond_9
    const/4 v5, 0x0

    .restart local v5       #_arg4:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_a

    .line 165
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #_arg4:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_5
    const-string v0, "com.broadcom.bt.le.api.IBleCharacteristicDataCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 169
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 171
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 172
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 178
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 179
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 185
    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .local v5, _arg4:[B
    move-object v0, p0

    .line 186
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback$Stub;->onReadCharacteristicValue(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;[B)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 175
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #_arg4:[B
    :cond_a
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_b

    .line 182
    :cond_b
    const/4 v4, 0x0

    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_c

    .line 192
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_6
    const-string v0, "com.broadcom.bt.le.api.IBleCharacteristicDataCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 196
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 198
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 199
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 205
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 206
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 212
    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 213
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 219
    .local v5, _arg4:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .local v6, _arg5:[B
    move-object v0, p0

    .line 220
    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback$Stub;->onReadCharDescriptorValue(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;[B)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 202
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #_arg4:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v6           #_arg5:[B
    :cond_c
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_d

    .line 209
    :cond_d
    const/4 v4, 0x0

    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_e

    .line 216
    :cond_e
    const/4 v5, 0x0

    .restart local v5       #_arg4:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_f

    .line 226
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #_arg4:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_7
    const-string v0, "com.broadcom.bt.le.api.IBleCharacteristicDataCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 230
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 232
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 233
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 239
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 240
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 245
    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_11
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback$Stub;->onWriteCharValue(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 236
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_f
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_10

    .line 243
    :cond_10
    const/4 v4, 0x0

    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_11

    .line 251
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_8
    const-string v0, "com.broadcom.bt.le.api.IBleCharacteristicDataCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 255
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 257
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 258
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 264
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 265
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 271
    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 272
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .restart local v5       #_arg4:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_14
    move-object v0, p0

    .line 277
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback$Stub;->onWriteCharDescrValue(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 261
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #_arg4:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_11
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_12

    .line 268
    :cond_12
    const/4 v4, 0x0

    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_13

    .line 275
    :cond_13
    const/4 v5, 0x0

    .restart local v5       #_arg4:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_14

    .line 283
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #_arg4:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_9
    const-string v0, "com.broadcom.bt.le.api.IBleCharacteristicDataCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 287
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 289
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 290
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 296
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 297
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 302
    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_16
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback$Stub;->onRegForNotifications(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 293
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_14
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_15

    .line 300
    :cond_15
    const/4 v4, 0x0

    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_16

    .line 308
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_a
    const-string v0, "com.broadcom.bt.le.api.IBleCharacteristicDataCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 312
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 314
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 315
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 321
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    .line 322
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 327
    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_18
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback$Stub;->onUnregisterNotifications(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 318
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_16
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_17

    .line 325
    :cond_17
    const/4 v4, 0x0

    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_18

    .line 333
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_b
    const-string v0, "com.broadcom.bt.le.api.IBleCharacteristicDataCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 337
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 340
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 346
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    .line 347
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 353
    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    move v5, v7

    .line 355
    .local v5, _arg4:Z
    :goto_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .restart local v6       #_arg5:[B
    move-object v0, p0

    .line 356
    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback$Stub;->onNotify(ILjava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z[B)V

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 343
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:[B
    :cond_18
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_19

    .line 350
    :cond_19
    const/4 v4, 0x0

    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_1a

    .line 353
    :cond_1a
    const/4 v5, 0x0

    goto :goto_1b

    .line 362
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_c
    const-string v0, "com.broadcom.bt.le.api.IBleCharacteristicDataCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 366
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 368
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 369
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 375
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 376
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 381
    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_1d
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback$Stub;->onGetFirstIncludedService(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 372
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_1b
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_1c

    .line 379
    :cond_1c
    const/4 v4, 0x0

    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_1d

    .line 387
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_d
    const-string v0, "com.broadcom.bt.le.api.IBleCharacteristicDataCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 391
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 393
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 394
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 400
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 401
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 406
    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_1f
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback$Stub;->onGetNextIncludedService(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 397
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_1d
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_1e

    .line 404
    :cond_1e
    const/4 v4, 0x0

    .restart local v4       #_arg3:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_1f

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
