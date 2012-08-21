.class public abstract Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;
.super Landroid/os/Binder;
.source "IBluetoothPrinterService.java"

# interfaces
.implements Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

.field static final TRANSACTION_abort:I = 0xc

.field static final TRANSACTION_cancelBppStatus:I = 0xd

.field static final TRANSACTION_getCapabilities:I = 0x3

.field static final TRANSACTION_obexAuthenticationResponse:I = 0x8

.field static final TRANSACTION_partialImageResponse:I = 0xa

.field static final TRANSACTION_print:I = 0x9

.field static final TRANSACTION_printAny:I = 0x4

.field static final TRANSACTION_printBip:I = 0x7

.field static final TRANSACTION_printBpp:I = 0x6

.field static final TRANSACTION_printOpp:I = 0x5

.field static final TRANSACTION_refObjectResponse:I = 0xb

.field static final TRANSACTION_registerClientCallback:I = 0x1

.field static final TRANSACTION_unregisterClientCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;
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
    const-string v1, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
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

    .line 229
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;

    move-result-object v1

    .line 53
    .local v1, _arg0:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->registerClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z

    move-result v10

    .line 54
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v10, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 60
    .end local v1           #_arg0:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;
    .end local v10           #_result:Z
    :sswitch_2
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;

    move-result-object v1

    .line 63
    .restart local v1       #_arg0:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->unregisterClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z

    move-result v10

    .line 64
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v10, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 70
    .end local v1           #_arg0:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;
    .end local v10           #_result:Z
    :sswitch_3
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->getCapabilities(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_4
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 87
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    move-result-object v4

    .line 88
    .local v4, _arg3:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->printAny(Ljava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J

    move-result-wide v10

    .line 89
    .local v10, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;
    .end local v10           #_result:J
    :sswitch_5
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 103
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    move-result-object v4

    .line 104
    .restart local v4       #_arg3:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->printOpp(Ljava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J

    move-result-wide v10

    .line 105
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 111
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;
    .end local v10           #_result:J
    :sswitch_6
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 117
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    sget-object v0, Lcom/broadcom/bt/service/bpp/BppParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/bpp/BppParameters;

    .line 124
    .local v3, _arg2:Lcom/broadcom/bt/service/bpp/BppParameters;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    move-result-object v4

    .line 125
    .restart local v4       #_arg3:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->printBpp(Ljava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J

    move-result-wide v10

    .line 126
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 128
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 121
    .end local v3           #_arg2:Lcom/broadcom/bt/service/bpp/BppParameters;
    .end local v4           #_arg3:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;
    .end local v10           #_result:J
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/bpp/BppParameters;
    goto :goto_3

    .line 132
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/bpp/BppParameters;
    :sswitch_7
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    move-result-object v3

    .line 139
    .local v3, _arg2:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->printBip(Ljava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J

    move-result-wide v10

    .line 140
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 146
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;
    .end local v10           #_result:J
    :sswitch_8
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 150
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 151
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->obexAuthenticationResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 157
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_9
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 163
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 165
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, _arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    sget-object v0, Lcom/broadcom/bt/service/bpp/BipParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/broadcom/bt/service/bpp/BipParameters;

    .line 176
    .local v6, _arg5:Lcom/broadcom/bt/service/bpp/BipParameters;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    sget-object v0, Lcom/broadcom/bt/service/bpp/BppParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/broadcom/bt/service/bpp/BppParameters;

    .line 183
    .local v7, _arg6:Lcom/broadcom/bt/service/bpp/BppParameters;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    sget-object v0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/broadcom/bt/service/bpp/BppObjectResolver;

    .line 190
    .local v8, _arg7:Lcom/broadcom/bt/service/bpp/BppObjectResolver;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    move-result-object v9

    .local v9, _arg8:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;
    move-object v0, p0

    .line 191
    invoke-virtual/range {v0 .. v9}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->print(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J

    move-result-wide v10

    .line 192
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 194
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 173
    .end local v6           #_arg5:Lcom/broadcom/bt/service/bpp/BipParameters;
    .end local v7           #_arg6:Lcom/broadcom/bt/service/bpp/BppParameters;
    .end local v8           #_arg7:Lcom/broadcom/bt/service/bpp/BppObjectResolver;
    .end local v9           #_arg8:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;
    .end local v10           #_result:J
    :cond_3
    const/4 v6, 0x0

    .restart local v6       #_arg5:Lcom/broadcom/bt/service/bpp/BipParameters;
    goto :goto_4

    .line 180
    :cond_4
    const/4 v7, 0x0

    .restart local v7       #_arg6:Lcom/broadcom/bt/service/bpp/BppParameters;
    goto :goto_5

    .line 187
    :cond_5
    const/4 v8, 0x0

    .restart local v8       #_arg7:Lcom/broadcom/bt/service/bpp/BppObjectResolver;
    goto :goto_6

    .line 198
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Lcom/broadcom/bt/service/bpp/BipParameters;
    .end local v7           #_arg6:Lcom/broadcom/bt/service/bpp/BppParameters;
    .end local v8           #_arg7:Lcom/broadcom/bt/service/bpp/BppObjectResolver;
    :sswitch_a
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 201
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->partialImageResponse(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 207
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_b
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->refObjectResponse(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 216
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_c
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->abort()V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 223
    :sswitch_d
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->cancelBppStatus()V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
