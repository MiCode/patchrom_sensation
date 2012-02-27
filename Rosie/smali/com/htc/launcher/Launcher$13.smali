.class Lcom/htc/launcher/Launcher$13;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 4220
    iput-object p1, p0, Lcom/htc/launcher/Launcher$13;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "data"

    .prologue
    .line 4223
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "Rosie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConfigurationChanged..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/Launcher$13;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mIsLoading:Z
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$3300(Lcom/htc/launcher/Launcher;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/Launcher$13;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mIsPause:Z
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->access$3400(Lcom/htc/launcher/Launcher;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4224
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher$13;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->isSupportLandscape:Z
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$3500(Lcom/htc/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4225
    iget-object v0, p0, Lcom/htc/launcher/Launcher$13;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, v0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    sget-object v0, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->updateOrientation(Landroid/content/res/Configuration;)V

    .line 4226
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/Launcher$13;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mIsLoading:Z
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$3300(Lcom/htc/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/launcher/Launcher$13;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mIsPause:Z
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$3400(Lcom/htc/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4227
    iget-object v0, p0, Lcom/htc/launcher/Launcher$13;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v1, 0x1

    #setter for: Lcom/htc/launcher/Launcher;->mIsConfigurationChanged:Z
    invoke-static {v0, v1}, Lcom/htc/launcher/Launcher;->access$3602(Lcom/htc/launcher/Launcher;Z)Z

    .line 4228
    :cond_2
    return-void
.end method
