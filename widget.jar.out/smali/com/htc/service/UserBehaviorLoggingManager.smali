.class public Lcom/htc/service/UserBehaviorLoggingManager;
.super Ljava/lang/Object;
.source "UserBehaviorLoggingManager.java"


# instance fields
.field private mUBLService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;


# direct methods
.method public constructor <init>(Lcom/htc/utils/ulog/IUserBehaviorLoggingService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/htc/service/UserBehaviorLoggingManager;->mUBLService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    .line 17
    return-void
.end method


# virtual methods
.method public setPolicy(Landroid/os/Bundle;)Z
    .locals 3
    .parameter "policy"

    .prologue
    .line 21
    const/4 v1, 0x0

    .line 24
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Lcom/htc/service/UserBehaviorLoggingManager;->mUBLService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    invoke-interface {v2, p1}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService;->setPolicy(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 29
    :goto_0
    return v1

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
