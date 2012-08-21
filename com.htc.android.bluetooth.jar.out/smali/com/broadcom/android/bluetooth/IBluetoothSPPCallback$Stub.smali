.class public abstract Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothSPPCallback.java"

# interfaces
.implements Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.android.bluetooth.IBluetoothSPPCallback"

.field static final TRANSACTION_onPortConnected:I = 0x2

.field static final TRANSACTION_onPortConnectingToHost:I = 0x4

.field static final TRANSACTION_onPortConnectingToHostFailed:I = 0x5

.field static final TRANSACTION_onPortDataArrived:I = 0x7

.field static final TRANSACTION_onPortDataSent:I = 0x6

.field static final TRANSACTION_onPortDisconnected:I = 0x3

.field static final TRANSACTION_onSppServerPortEnabled:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.broadcom.android.bluetooth.IBluetoothSPPCallback"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "com.broadcom.android.bluetooth.IBluetoothSPPCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v2, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 44
    :sswitch_0
    const-string v3, "com.broadcom.android.bluetooth.IBluetoothSPPCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v3, "com.broadcom.android.bluetooth.IBluetoothSPPCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 52
    .local v0, _arg0:B
    invoke-virtual {p0, v0}, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback$Stub;->onSppServerPortEnabled(B)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v0           #_arg0:B
    :sswitch_2
    const-string v3, "com.broadcom.android.bluetooth.IBluetoothSPPCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 62
    .restart local v0       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback$Stub;->onPortConnected(BLjava/lang/String;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v0           #_arg0:B
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_3
    const-string v3, "com.broadcom.android.bluetooth.IBluetoothSPPCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 72
    .restart local v0       #_arg0:B
    invoke-virtual {p0, v0}, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback$Stub;->onPortDisconnected(B)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 78
    .end local v0           #_arg0:B
    :sswitch_4
    const-string v3, "com.broadcom.android.bluetooth.IBluetoothSPPCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 81
    .restart local v0       #_arg0:B
    invoke-virtual {p0, v0}, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback$Stub;->onPortConnectingToHost(B)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 87
    .end local v0           #_arg0:B
    :sswitch_5
    const-string v3, "com.broadcom.android.bluetooth.IBluetoothSPPCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 90
    .restart local v0       #_arg0:B
    invoke-virtual {p0, v0}, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback$Stub;->onPortConnectingToHostFailed(B)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 96
    .end local v0           #_arg0:B
    :sswitch_6
    const-string v3, "com.broadcom.android.bluetooth.IBluetoothSPPCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 99
    .restart local v0       #_arg0:B
    invoke-virtual {p0, v0}, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback$Stub;->onPortDataSent(B)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 105
    .end local v0           #_arg0:B
    :sswitch_7
    const-string v3, "com.broadcom.android.bluetooth.IBluetoothSPPCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 108
    .restart local v0       #_arg0:B
    invoke-virtual {p0, v0}, Lcom/broadcom/android/bluetooth/IBluetoothSPPCallback$Stub;->onPortDataArrived(B)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 40
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
