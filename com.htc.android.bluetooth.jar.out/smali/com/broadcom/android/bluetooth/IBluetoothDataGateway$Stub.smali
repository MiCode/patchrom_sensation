.class public abstract Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;
.super Landroid/os/Binder;
.source "IBluetoothDataGateway.java"

# interfaces
.implements Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.android.bluetooth.IBluetoothDataGateway"

.field static final TRANSACTION_dataGatewayClose:I = 0x9

.field static final TRANSACTION_dataGatewayDisable:I = 0x6

.field static final TRANSACTION_dataGatewayEnable:I = 0x5

.field static final TRANSACTION_dataGatewayListen:I = 0x7

.field static final TRANSACTION_dataGatewayOpen:I = 0x8

.field static final TRANSACTION_dataGatewayShutdown:I = 0xa

.field static final TRANSACTION_getFirstAvailableSerialPort:I = 0x3

.field static final TRANSACTION_getSerialPortStatus:I = 0x4

.field static final TRANSACTION_registerSppCallback:I = 0x1

.field static final TRANSACTION_setSerialPortStatus:I = 0xe

.field static final TRANSACTION_sppRead:I = 0xc

.field static final TRANSACTION_sppWrite:I = 0xb

.field static final TRANSACTION_unregisterSppCallback:I = 0x2

.field static final TRANSACTION_waitForDataOnPort:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.broadcom.android.bluetooth.IBluetoothDataGateway"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;
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
    const-string v1, "com.broadcom.android.bluetooth.IBluetoothDataGateway"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 200
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 46
    :sswitch_0
    const-string v0, "com.broadcom.android.bluetooth.IBluetoothDataGateway"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 47
    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "com.broadcom.android.bluetooth.IBluetoothDataGateway"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;

    move-result-object v2

    .line 56
    .local v2, _arg1:Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;->registerSppCallback(ILcom/broadcom/android/bluetooth/IBluetoothSPPCallback;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 58
    goto :goto_0

    .line 62
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;
    :sswitch_2
    const-string v0, "com.broadcom.android.bluetooth.IBluetoothDataGateway"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;->unregisterSppCallback(I)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 67
    goto :goto_0

    .line 71
    .end local v1           #_arg0:I
    :sswitch_3
    const-string v0, "com.broadcom.android.bluetooth.IBluetoothDataGateway"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;->getFirstAvailableSerialPort()B

    move-result v6

    .line 73
    .local v6, _result:B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByte(B)V

    move v0, v7

    .line 75
    goto :goto_0

    .line 79
    .end local v6           #_result:B
    :sswitch_4
    const-string v0, "com.broadcom.android.bluetooth.IBluetoothDataGateway"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 82
    .local v1, _arg0:B
    invoke-virtual {p0, v1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;->getSerialPortStatus(B)I

    move-result v6

    .line 83
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 85
    goto :goto_0

    .line 89
    .end local v1           #_arg0:B
    .end local v6           #_result:I
    :sswitch_5
    const-string v0, "com.broadcom.android.bluetooth.IBluetoothDataGateway"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;->dataGatewayEnable()V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 92
    goto :goto_0

    .line 96
    :sswitch_6
    const-string v0, "com.broadcom.android.bluetooth.IBluetoothDataGateway"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;->dataGatewayDisable()V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 99
    goto :goto_0

    .line 103
    :sswitch_7
    const-string v0, "com.broadcom.android.bluetooth.IBluetoothDataGateway"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 107
    .restart local v1       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 109
    .local v2, _arg1:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 112
    .local v4, _arg3:B
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;->dataGatewayListen(BBLjava/lang/String;B)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 114
    goto/16 :goto_0

    .line 118
    .end local v1           #_arg0:B
    .end local v2           #_arg1:B
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:B
    :sswitch_8
    const-string v0, "com.broadcom.android.bluetooth.IBluetoothDataGateway"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 124
    .restart local v2       #_arg1:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 126
    .local v3, _arg2:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .local v5, _arg4:B
    move-object v0, p0

    .line 129
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;->dataGatewayOpen(Ljava/lang/String;BBLjava/lang/String;B)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 131
    goto/16 :goto_0

    .line 135
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:B
    .end local v3           #_arg2:B
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:B
    :sswitch_9
    const-string v0, "com.broadcom.android.bluetooth.IBluetoothDataGateway"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 139
    .local v1, _arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 140
    .restart local v2       #_arg1:B
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;->dataGatewayClose(BB)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 142
    goto/16 :goto_0

    .line 146
    .end local v1           #_arg0:B
    .end local v2           #_arg1:B
    :sswitch_a
    const-string v0, "com.broadcom.android.bluetooth.IBluetoothDataGateway"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 150
    .restart local v1       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 151
    .restart local v2       #_arg1:B
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;->dataGatewayShutdown(BB)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 153
    goto/16 :goto_0

    .line 157
    .end local v1           #_arg0:B
    .end local v2           #_arg1:B
    :sswitch_b
    const-string v0, "com.broadcom.android.bluetooth.IBluetoothDataGateway"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 161
    .restart local v1       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 163
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 164
    .local v3, _arg2:[B
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;->sppWrite(BI[B)I

    move-result v6

    .line 165
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 167
    goto/16 :goto_0

    .line 171
    .end local v1           #_arg0:B
    .end local v2           #_arg1:I
    .end local v3           #_arg2:[B
    .end local v6           #_result:I
    :sswitch_c
    const-string v0, "com.broadcom.android.bluetooth.IBluetoothDataGateway"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 174
    .restart local v1       #_arg0:B
    invoke-virtual {p0, v1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;->sppRead(B)[B

    move-result-object v6

    .line 175
    .local v6, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, v7

    .line 177
    goto/16 :goto_0

    .line 181
    .end local v1           #_arg0:B
    .end local v6           #_result:[B
    :sswitch_d
    const-string v0, "com.broadcom.android.bluetooth.IBluetoothDataGateway"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 184
    .restart local v1       #_arg0:B
    invoke-virtual {p0, v1}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;->waitForDataOnPort(B)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 186
    goto/16 :goto_0

    .line 190
    .end local v1           #_arg0:B
    :sswitch_e
    const-string v0, "com.broadcom.android.bluetooth.IBluetoothDataGateway"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 194
    .restart local v1       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 195
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/android/bluetooth/IBluetoothDataGateway$Stub;->setSerialPortStatus(BI)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 197
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
