.class Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceManager3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field private doneFlag:Z

.field public returnCode:I

.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService;)V
    .locals 1
    .parameter

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;->this$0:Lcom/android/server/DeviceManager3LMService;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    .line 1262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;->doneFlag:Z

    return-void
.end method


# virtual methods
.method public isDone()Z
    .locals 1

    .prologue
    .line 1273
    iget-boolean v0, p0, Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;->doneFlag:Z

    return v0
.end method

.method public packageInstalled(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    .line 1265
    monitor-enter p0

    .line 1266
    :try_start_0
    iput p2, p0, Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;->returnCode:I

    .line 1267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;->doneFlag:Z

    .line 1268
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1269
    monitor-exit p0

    .line 1270
    return-void

    .line 1269
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
