.class public Lcom/htc/service/MountManager;
.super Ljava/lang/Object;
.source "MountManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MountManager"


# instance fields
.field private mService:Landroid/os/storage/IMountService;


# direct methods
.method public constructor <init>(Landroid/os/storage/IMountService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    .line 18
    return-void
.end method


# virtual methods
.method public decryptStorage(Ljava/lang/String;)I
    .locals 3
    .parameter "password"

    .prologue
    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 41
    :goto_0
    return v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MountManager"

    const-string v2, "decryptStorage: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public enableModemLink()I
    .locals 2

    .prologue
    .line 138
    const-string v0, "MountManager"

    const-string v1, "enableModemLink: not support yet !! need MountService team\'s help"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, -0x1

    return v0
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .locals 3
    .parameter "password"

    .prologue
    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->encryptStorage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 29
    :goto_0
    return v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MountManager"

    const-string v2, "encryptStorage: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public formatVolume(Ljava/lang/String;)I
    .locals 3
    .parameter "path"

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 50
    :goto_0
    return v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MountManager"

    const-string v2, "formatVolume: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .locals 3
    .parameter "path"

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MountManager"

    const-string v2, "getStorageUsers: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public isUsbMassStorageConnected()Z
    .locals 3

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->isUsbMassStorageConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 68
    :goto_0
    return v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MountManager"

    const-string v2, "isUsbMassStorageConnected: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mountVolume(Ljava/lang/String;)I
    .locals 3
    .parameter "path"

    .prologue
    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 77
    :goto_0
    return v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MountManager"

    const-string v2, "mountVolume: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setAutoMountISOEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 107
    const-string v0, "MountManager"

    const-string v1, "setAutoMountISOEnabled: not support yet !! need MountService team\'s help"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public setMountISOEnabled(Z)I
    .locals 2
    .parameter "enable"

    .prologue
    .line 122
    const-string v0, "MountManager"

    const-string v1, "setMountISOEnabled: not support yet !! need MountService team\'s help"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, -0x1

    return v0
.end method

.method public setUsbMassStorageEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->setUsbMassStorageEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MountManager"

    const-string v2, "setUsbMassStorageEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unmountVolume(Ljava/lang/String;Z)V
    .locals 1
    .parameter "path"
    .parameter "force"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/service/MountManager;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 83
    return-void
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .locals 3
    .parameter "path"
    .parameter "force"
    .parameter "removeEncryption"

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MountManager"

    const-string v2, "unmountVolume: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
