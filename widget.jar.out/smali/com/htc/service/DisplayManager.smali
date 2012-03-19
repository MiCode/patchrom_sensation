.class public Lcom/htc/service/DisplayManager;
.super Ljava/lang/Object;
.source "DisplayManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayManager"


# instance fields
.field private mService:Landroid/os/IDisplayService;


# direct methods
.method public constructor <init>(Landroid/os/IDisplayService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    .line 16
    return-void
.end method


# virtual methods
.method public IsHDMIConnected()Z
    .locals 3

    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1}, Landroid/os/IDisplayService;->IsHDMIConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 57
    :goto_0
    return v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "IsHDMIConnected: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public IsHDMIEnable()Z
    .locals 3

    .prologue
    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1}, Landroid/os/IDisplayService;->IsHDMIEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 44
    :goto_0
    return v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "IsHDMIEnable: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearBitmapOnHDMI(Ljava/lang/String;)I
    .locals 3
    .parameter "appname"

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1, p1}, Landroid/os/IDisplayService;->clearBitmapOnHDMI(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 88
    :goto_0
    return v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "clearBitmapOnHDMI: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get3DMode()I
    .locals 3

    .prologue
    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1}, Landroid/os/IDisplayService;->Get3DMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 117
    :goto_0
    return v1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "get3DMode: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public set3DMode(ILjava/lang/String;)I
    .locals 3
    .parameter "Mode3D"
    .parameter "appname"

    .prologue
    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1, p1, p2}, Landroid/os/IDisplayService;->set3DMode(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 104
    :goto_0
    return v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "set3DMode: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHDMI(ZLjava/lang/String;)I
    .locals 3
    .parameter "enable"
    .parameter "appname"

    .prologue
    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1, p1, p2}, Landroid/os/IDisplayService;->setHDMI(ZLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 31
    :goto_0
    return v1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "setHDMI: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTVMode(ILjava/lang/String;)I
    .locals 3
    .parameter "ModeTV"
    .parameter "appname"

    .prologue
    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1, p1, p2}, Landroid/os/IDisplayService;->setTVMode(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 133
    :goto_0
    return v1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "setTVMode: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showBitmapOnHDMI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "appname"
    .parameter "file"

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DisplayManager;->mService:Landroid/os/IDisplayService;

    invoke-interface {v1, p1, p2}, Landroid/os/IDisplayService;->showBitmapOnHDMI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 73
    :goto_0
    return v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "showBitmapOnHDMI: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    const/4 v1, 0x0

    goto :goto_0
.end method
