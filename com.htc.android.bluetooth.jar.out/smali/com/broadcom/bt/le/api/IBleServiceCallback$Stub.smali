.class public abstract Lcom/broadcom/bt/le/api/IBleServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IBleServiceCallback.java"

# interfaces
.implements Lcom/broadcom/bt/le/api/IBleServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/le/api/IBleServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/le/api/IBleServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.le.api.IBleServiceCallback"

.field static final TRANSACTION_onAttributeExecWrite:I = 0xe

.field static final TRANSACTION_onAttributeRequestRead:I = 0xc

.field static final TRANSACTION_onAttributeRequestWrite:I = 0xd

.field static final TRANSACTION_onCharacteristicAdded:I = 0x4

.field static final TRANSACTION_onCharacteristicDescrAdded:I = 0x5

.field static final TRANSACTION_onHandleValueIndicationCompleted:I = 0x9

.field static final TRANSACTION_onHandleValueNotificationCompleted:I = 0xa

.field static final TRANSACTION_onIncludedServiceAdded:I = 0x3

.field static final TRANSACTION_onResponseSendCompleted:I = 0xb

.field static final TRANSACTION_onServiceCreated:I = 0x1

.field static final TRANSACTION_onServiceDeleted:I = 0x6

.field static final TRANSACTION_onServiceRegistered:I = 0x2

.field static final TRANSACTION_onServiceStarted:I = 0x7

.field static final TRANSACTION_onServiceStopped:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.broadcom.bt.le.api.IBleServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/le/api/IBleServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/le/api/IBleServiceCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.broadcom.bt.le.api.IBleServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/le/api/IBleServiceCallback;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/broadcom/bt/le/api/IBleServiceCallback;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/broadcom/bt/le/api/IBleServiceCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/broadcom/bt/le/api/IBleServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 242
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v0, "com.broadcom.bt.le.api.IBleServiceCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "com.broadcom.bt.le.api.IBleServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 54
    .local v1, _arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/le/api/IBleServiceCallback$Stub;->onServiceCreated(BI)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    const/4 v0, 0x1

    goto :goto_0

    .line 61
    .end local v1           #_arg0:B
    .end local v2           #_arg1:I
    :sswitch_2
    const-string v0, "com.broadcom.bt.le.api.IBleServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 65
    .restart local v1       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 71
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/le/api/IBleServiceCallback$Stub;->onServiceRegistered(BLcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    const/4 v0, 0x1

    goto :goto_0

    .line 69
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_1

    .line 77
    .end local v1           #_arg0:B
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_3
    const-string v0, "com.broadcom.bt.le.api.IBleServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 81
    .restart local v1       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 82
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/le/api/IBleServiceCallback$Stub;->onIncludedServiceAdded(BI)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    .end local v1           #_arg0:B
    .end local v2           #_arg1:I
    :sswitch_4
    const-string v0, "com.broadcom.bt.le.api.IBleServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 92
    .restart local v1       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 99
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 100
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/le/api/IBleServiceCallback$Stub;->onCharacteristicAdded(BLcom/broadcom/bt/service/gatt/BluetoothGattID;I)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    const/4 v0, 0x1

    goto :goto_0

    .line 96
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #_arg2:I
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_2

    .line 106
    .end local v1           #_arg0:B
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_5
    const-string v0, "com.broadcom.bt.le.api.IBleServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 110
    .restart local v1       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 117
    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 118
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/le/api/IBleServiceCallback$Stub;->onCharacteristicDescrAdded(BLcom/broadcom/bt/service/gatt/BluetoothGattID;I)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 114
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #_arg2:I
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_3

    .line 124
    .end local v1           #_arg0:B
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_6
    const-string v0, "com.broadcom.bt.le.api.IBleServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 127
    .restart local v1       #_arg0:B
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/le/api/IBleServiceCallback$Stub;->onServiceDeleted(B)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 133
    .end local v1           #_arg0:B
    :sswitch_7
    const-string v0, "com.broadcom.bt.le.api.IBleServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 136
    .restart local v1       #_arg0:B
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/le/api/IBleServiceCallback$Stub;->onServiceStarted(B)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 142
    .end local v1           #_arg0:B
    :sswitch_8
    const-string v0, "com.broadcom.bt.le.api.IBleServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 145
    .restart local v1       #_arg0:B
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/le/api/IBleServiceCallback$Stub;->onServiceStopped(B)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 151
    .end local v1           #_arg0:B
    :sswitch_9
    const-string v0, "com.broadcom.bt.le.api.IBleServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 155
    .restart local v1       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 156
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/le/api/IBleServiceCallback$Stub;->onHandleValueIndicationCompleted(BI)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 162
    .end local v1           #_arg0:B
    .end local v2           #_arg1:I
    :sswitch_a
    const-string v0, "com.broadcom.bt.le.api.IBleServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 166
    .restart local v1       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 167
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/le/api/IBleServiceCallback$Stub;->onHandleValueNotificationCompleted(BI)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 173
    .end local v1           #_arg0:B
    .end local v2           #_arg1:I
    :sswitch_b
    const-string v0, "com.broadcom.bt.le.api.IBleServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 177
    .restart local v1       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/le/api/IBleServiceCallback$Stub;->onResponseSendCompleted(BI)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 184
    .end local v1           #_arg0:B
    .end local v2           #_arg1:I
    :sswitch_c
    const-string v0, "com.broadcom.bt.le.api.IBleServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 190
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 192
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 194
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 196
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v6, 0x1

    .local v6, _arg5:Z
    :goto_4
    move-object v0, p0

    .line 197
    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/le/api/IBleServiceCallback$Stub;->onAttributeRequestRead(Ljava/lang/String;IIIIZ)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 196
    .end local v6           #_arg5:Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    .line 203
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    :sswitch_d
    const-string v0, "com.broadcom.bt.le.api.IBleServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 207
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 209
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 211
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 213
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    .line 215
    .local v5, _arg4:Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 217
    .local v6, _arg5:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x1

    .line 219
    .local v7, _arg6:Z
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 221
    .local v8, _arg7:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .local v9, _arg8:[B
    move-object v0, p0

    .line 222
    invoke-virtual/range {v0 .. v9}, Lcom/broadcom/bt/le/api/IBleServiceCallback$Stub;->onAttributeRequestWrite(Ljava/lang/String;IIIZIZI[B)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 213
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:I
    .end local v7           #_arg6:Z
    .end local v8           #_arg7:I
    .end local v9           #_arg8:[B
    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    .line 217
    .restart local v5       #_arg4:Z
    .restart local v6       #_arg5:I
    :cond_5
    const/4 v7, 0x0

    goto :goto_6

    .line 228
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:I
    :sswitch_e
    const-string v0, "com.broadcom.bt.le.api.IBleServiceCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 232
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 234
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 236
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 237
    .restart local v4       #_arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/bt/le/api/IBleServiceCallback$Stub;->onAttributeExecWrite(Ljava/lang/String;III)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
