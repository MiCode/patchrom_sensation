.class public abstract Lcom/htc/utils/ulog/IUserBehaviorLoggingService$Stub;
.super Landroid/os/Binder;
.source "IUserBehaviorLoggingService.java"

# interfaces
.implements Lcom/htc/utils/ulog/IUserBehaviorLoggingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/utils/ulog/IUserBehaviorLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/utils/ulog/IUserBehaviorLoggingService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.utils.ulog.IUserBehaviorLoggingService"

.field static final TRANSACTION_addLog:I = 0x1

.field static final TRANSACTION_addLogEvent:I = 0x3

.field static final TRANSACTION_addLogStat:I = 0x4

.field static final TRANSACTION_getPolicy:I = 0x6

.field static final TRANSACTION_isEnable:I = 0x2

.field static final TRANSACTION_registerPolicyListener:I = 0x5

.field static final TRANSACTION_setPolicy:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.htc.utils.ulog.IUserBehaviorLoggingService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/utils/ulog/IUserBehaviorLoggingService;
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
    const-string v1, "com.htc.utils.ulog.IUserBehaviorLoggingService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/htc/utils/ulog/IUserBehaviorLoggingService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v2, "com.htc.utils.ulog.IUserBehaviorLoggingService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v2, "com.htc.utils.ulog.IUserBehaviorLoggingService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService$Stub;->addLog(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v4, "com.htc.utils.ulog.IUserBehaviorLoggingService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService$Stub;->isEnable()Z

    move-result v1

    .line 61
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v1           #_result:Z
    :sswitch_3
    const-string v2, "com.htc.utils.ulog.IUserBehaviorLoggingService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    sget-object v2, Lcom/htc/utils/ulog/ParcelableULogData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/utils/ulog/ParcelableULogData;

    .line 75
    .local v0, _arg0:Lcom/htc/utils/ulog/ParcelableULogData;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService$Stub;->addLogEvent(Lcom/htc/utils/ulog/ParcelableULogData;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    .end local v0           #_arg0:Lcom/htc/utils/ulog/ParcelableULogData;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/htc/utils/ulog/ParcelableULogData;
    goto :goto_1

    .line 81
    .end local v0           #_arg0:Lcom/htc/utils/ulog/ParcelableULogData;
    :sswitch_4
    const-string v2, "com.htc.utils.ulog.IUserBehaviorLoggingService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    sget-object v2, Lcom/htc/utils/ulog/ParcelableULogStat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/utils/ulog/ParcelableULogStat;

    .line 89
    .local v0, _arg0:Lcom/htc/utils/ulog/ParcelableULogStat;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService$Stub;->addLogStat(Lcom/htc/utils/ulog/ParcelableULogStat;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 87
    .end local v0           #_arg0:Lcom/htc/utils/ulog/ParcelableULogStat;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/htc/utils/ulog/ParcelableULogStat;
    goto :goto_2

    .line 95
    .end local v0           #_arg0:Lcom/htc/utils/ulog/ParcelableULogStat;
    :sswitch_5
    const-string v4, "com.htc.utils.ulog.IUserBehaviorLoggingService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    .line 98
    .local v0, _arg0:Landroid/os/IRemoteCallback;
    invoke-virtual {p0, v0}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService$Stub;->registerPolicyListener(Landroid/os/IRemoteCallback;)Z

    move-result v1

    .line 99
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 105
    .end local v0           #_arg0:Landroid/os/IRemoteCallback;
    .end local v1           #_result:Z
    :sswitch_6
    const-string v4, "com.htc.utils.ulog.IUserBehaviorLoggingService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService$Stub;->getPolicy()Landroid/os/Bundle;

    move-result-object v1

    .line 107
    .local v1, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v1, :cond_4

    .line 109
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    invoke-virtual {v1, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 113
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 119
    .end local v1           #_result:Landroid/os/Bundle;
    :sswitch_7
    const-string v4, "com.htc.utils.ulog.IUserBehaviorLoggingService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 122
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 127
    .local v0, _arg0:Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService$Stub;->setPolicy(Landroid/os/Bundle;)Z

    move-result v1

    .line 128
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 125
    .end local v0           #_arg0:Landroid/os/Bundle;
    .end local v1           #_result:Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/Bundle;
    goto :goto_3

    .line 41
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
