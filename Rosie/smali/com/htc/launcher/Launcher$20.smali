.class Lcom/htc/launcher/Launcher$20;
.super Ljava/lang/Thread;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher;->setCurrentWorkspace(IZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;

.field final synthetic val$workspaceId:I


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5828
    iput-object p1, p0, Lcom/htc/launcher/Launcher$20;->this$0:Lcom/htc/launcher/Launcher;

    iput p2, p0, Lcom/htc/launcher/Launcher$20;->val$workspaceId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5831
    invoke-static {}, Lcom/htc/launcher/Launcher;->access$5200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5833
    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher$20;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentScenePreviewPath(Z)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/htc/launcher/Launcher;->removeFile(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/htc/launcher/Launcher;->access$5300(Lcom/htc/launcher/Launcher;Ljava/lang/String;)Z

    .line 5834
    iget-object v0, p0, Lcom/htc/launcher/Launcher$20;->this$0:Lcom/htc/launcher/Launcher;

    const-string v2, "/data/data/com.htc.launcher/files/screen_cache.png"

    #calls: Lcom/htc/launcher/Launcher;->removeFile(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/htc/launcher/Launcher;->access$5300(Lcom/htc/launcher/Launcher;Ljava/lang/String;)Z

    .line 5836
    iget-object v0, p0, Lcom/htc/launcher/Launcher$20;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentScenePreviewPath(Z)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/htc/launcher/Launcher;->removeFile(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/htc/launcher/Launcher;->access$5300(Lcom/htc/launcher/Launcher;Ljava/lang/String;)Z

    .line 5837
    iget-object v0, p0, Lcom/htc/launcher/Launcher$20;->this$0:Lcom/htc/launcher/Launcher;

    const-string v2, "/data/data/com.htc.launcher/files/screen_cache_land.png"

    #calls: Lcom/htc/launcher/Launcher;->removeFile(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/htc/launcher/Launcher;->access$5300(Lcom/htc/launcher/Launcher;Ljava/lang/String;)Z

    .line 5838
    iget-object v0, p0, Lcom/htc/launcher/Launcher$20;->this$0:Lcom/htc/launcher/Launcher;

    invoke-static {v0}, Lcom/htc/launcher/LauncherModel;->backupAllItems(Landroid/content/Context;)V

    .line 5839
    iget-object v0, p0, Lcom/htc/launcher/Launcher$20;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/htc/launcher/LauncherModel;->deleteAllItemsFromDatabase(Landroid/content/Context;I)V

    .line 5840
    iget-object v0, p0, Lcom/htc/launcher/Launcher$20;->this$0:Lcom/htc/launcher/Launcher;

    iget v2, p0, Lcom/htc/launcher/Launcher$20;->val$workspaceId:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/htc/launcher/LauncherModel;->duplicateAllItems(Landroid/content/Context;II)V

    .line 5841
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5842
    iget-object v0, p0, Lcom/htc/launcher/Launcher$20;->this$0:Lcom/htc/launcher/Launcher;

    new-instance v1, Lcom/htc/launcher/Launcher$20$1;

    invoke-direct {v1, p0}, Lcom/htc/launcher/Launcher$20$1;-><init>(Lcom/htc/launcher/Launcher$20;)V

    invoke-virtual {v0, v1}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5849
    return-void

    .line 5841
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
