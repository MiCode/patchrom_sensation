.class Lcom/android/camera/CameraThread$ScaladoThread;
.super Ljava/lang/Thread;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScaladoThread"
.end annotation


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field mCmd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2087
    const-string v0, "ScaladoThread"

    sput-object v0, Lcom/android/camera/CameraThread$ScaladoThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "cmd"

    .prologue
    .line 2089
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2090
    iput-object p1, p0, Lcom/android/camera/CameraThread$ScaladoThread;->mCmd:Ljava/lang/String;

    .line 2091
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2094
    sget-object v3, Lcom/android/camera/CameraThread$ScaladoThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start Scalado Thread cmd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/CameraThread$ScaladoThread;->mCmd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 2097
    .local v2, runtime:Ljava/lang/Runtime;
    iget-object v3, p0, Lcom/android/camera/CameraThread$ScaladoThread;->mCmd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 2098
    .local v1, proc:Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2102
    .end local v1           #proc:Ljava/lang/Process;
    .end local v2           #runtime:Ljava/lang/Runtime;
    :goto_0
    sget-object v3, Lcom/android/camera/CameraThread$ScaladoThread;->TAG:Ljava/lang/String;

    const-string v4, "Exit Scalado Thread"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    return-void

    .line 2099
    :catch_0
    move-exception v0

    .line 2100
    .local v0, ex:Ljava/lang/Exception;
    sget-object v3, Lcom/android/camera/CameraThread$ScaladoThread;->TAG:Ljava/lang/String;

    const-string v4, "Exception"

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
