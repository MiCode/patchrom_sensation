.class public abstract Landroid/os/IHtcHardwareService$Stub;
.super Landroid/os/Binder;
.source "IHtcHardwareService.java"

# interfaces
.implements Landroid/os/IHtcHardwareService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IHtcHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHtcHardwareService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IHtcHardwareService"

.field static final TRANSACTION_DmbRequestWakeUpSignal:I = 0xe

.field static final TRANSACTION_getCapsLedState:I = 0x7

.field static final TRANSACTION_getFnLedState:I = 0x8

.field static final TRANSACTION_getHeadsetType:I = 0xc

.field static final TRANSACTION_getIMSITstmp:I = 0xf

.field static final TRANSACTION_hasHWKB:I = 0xd

.field static final TRANSACTION_isFnKeyActive:I = 0x5

.field static final TRANSACTION_makeFnState:I = 0x6

.field static final TRANSACTION_setCapsLedState:I = 0x3

.field static final TRANSACTION_setDualLedState:I = 0x1

.field static final TRANSACTION_setFlashlightBrightness:I = 0x9

.field static final TRANSACTION_setFnLedState:I = 0x4

.field static final TRANSACTION_setHeadsetFMType:I = 0xa

.field static final TRANSACTION_setHeadsetTTYType:I = 0xb

.field static final TRANSACTION_setIMSITstmp:I = 0x10

.field static final TRANSACTION_setJogBallMode:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IHtcHardwareService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.os.IHtcHardwareService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IHtcHardwareService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IHtcHardwareService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/IHtcHardwareService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IHtcHardwareService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 202
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 43
    :sswitch_0
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 54
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 56
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 57
    .local v4, _arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/IHtcHardwareService$Stub;->setDualLedState(IIII)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    :sswitch_2
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/os/IHtcHardwareService$Stub;->setJogBallMode(I)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 72
    .end local v1           #_arg0:I
    :sswitch_3
    const-string v9, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    move v1, v8

    .line 75
    .local v1, _arg0:Z
    :goto_1
    invoke-virtual {p0, v1}, Landroid/os/IHtcHardwareService$Stub;->setCapsLedState(Z)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1           #_arg0:Z
    :cond_0
    move v1, v0

    .line 74
    goto :goto_1

    .line 81
    :sswitch_4
    const-string v9, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    move v1, v8

    .line 84
    .restart local v1       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v1}, Landroid/os/IHtcHardwareService$Stub;->setFnLedState(Z)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1           #_arg0:Z
    :cond_1
    move v1, v0

    .line 83
    goto :goto_2

    .line 90
    :sswitch_5
    const-string v9, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/os/IHtcHardwareService$Stub;->isFnKeyActive()Z

    move-result v6

    .line 92
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v6, :cond_2

    move v0, v8

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 98
    .end local v6           #_result:Z
    :sswitch_6
    const-string v9, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    move v3, v8

    .line 106
    .local v3, _arg2:Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 108
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    move v5, v8

    .local v5, _arg4:Z
    :goto_4
    move-object v0, p0

    .line 109
    invoke-virtual/range {v0 .. v5}, Landroid/os/IHtcHardwareService$Stub;->makeFnState(IIZIZ)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v3           #_arg2:Z
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Z
    :cond_3
    move v3, v0

    .line 104
    goto :goto_3

    .restart local v3       #_arg2:Z
    .restart local v4       #_arg3:I
    :cond_4
    move v5, v0

    .line 108
    goto :goto_4

    .line 115
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Z
    .end local v4           #_arg3:I
    :sswitch_7
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroid/os/IHtcHardwareService$Stub;->getCapsLedState()I

    move-result v6

    .line 117
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 123
    .end local v6           #_result:I
    :sswitch_8
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/os/IHtcHardwareService$Stub;->getFnLedState()I

    move-result v6

    .line 125
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v6           #_result:I
    :sswitch_9
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 134
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/os/IHtcHardwareService$Stub;->setFlashlightBrightness(I)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 140
    .end local v1           #_arg0:I
    :sswitch_a
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IHtcHardwareService$Stub;->setHeadsetFMType(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 149
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_b
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IHtcHardwareService$Stub;->setHeadsetTTYType(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 158
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_c
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Landroid/os/IHtcHardwareService$Stub;->getHeadsetType()Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 166
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_d
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroid/os/IHtcHardwareService$Stub;->hasHWKB()I

    move-result v6

    .line 168
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 174
    .end local v6           #_result:I
    :sswitch_e
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 177
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/os/IHtcHardwareService$Stub;->DmbRequestWakeUpSignal(I)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 183
    .end local v1           #_arg0:I
    :sswitch_f
    const-string v0, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IHtcHardwareService$Stub;->getIMSITstmp(Ljava/lang/String;)J

    move-result-wide v6

    .line 187
    .local v6, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 193
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:J
    :sswitch_10
    const-string v9, "android.os.IHtcHardwareService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 196
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IHtcHardwareService$Stub;->setIMSITstmp(Ljava/lang/String;)Z

    move-result v6

    .line 197
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v6, :cond_5

    move v0, v8

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
