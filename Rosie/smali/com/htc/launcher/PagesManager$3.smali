.class Lcom/htc/launcher/PagesManager$3;
.super Ljava/lang/Thread;
.source "PagesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/PagesManager;->setHomeIndex(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/PagesManager;


# direct methods
.method constructor <init>(Lcom/htc/launcher/PagesManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/htc/launcher/PagesManager$3;->this$0:Lcom/htc/launcher/PagesManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 208
    iget-object v4, p0, Lcom/htc/launcher/PagesManager$3;->this$0:Lcom/htc/launcher/PagesManager;

    #calls: Lcom/htc/launcher/PagesManager;->getSceneManager()Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-static {v4}, Lcom/htc/launcher/PagesManager;->access$000(Lcom/htc/launcher/PagesManager;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentSceneId()I

    move-result v0

    .line 209
    .local v0, currentSceneId:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    .line 210
    :cond_0
    const-string v4, "PagesManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentSceneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v4, p0, Lcom/htc/launcher/PagesManager$3;->this$0:Lcom/htc/launcher/PagesManager;

    #getter for: Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/launcher/PagesManager;->access$100(Lcom/htc/launcher/PagesManager;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 213
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/launcher/PagesManager$3;->this$0:Lcom/htc/launcher/PagesManager;

    #getter for: Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/launcher/PagesManager;->access$100(Lcom/htc/launcher/PagesManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 214
    iget-object v4, p0, Lcom/htc/launcher/PagesManager$3;->this$0:Lcom/htc/launcher/PagesManager;

    #getter for: Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/launcher/PagesManager;->access$100(Lcom/htc/launcher/PagesManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/launcher/PagesManager$ScenePagesInfo;

    iget v4, v4, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->id:I

    if-ne v0, v4, :cond_1

    .line 215
    iget-object v4, p0, Lcom/htc/launcher/PagesManager$3;->this$0:Lcom/htc/launcher/PagesManager;

    #getter for: Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/launcher/PagesManager;->access$100(Lcom/htc/launcher/PagesManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/launcher/PagesManager$ScenePagesInfo;

    iget-object v6, p0, Lcom/htc/launcher/PagesManager$3;->this$0:Lcom/htc/launcher/PagesManager;

    #getter for: Lcom/htc/launcher/PagesManager;->mHomeIndex:I
    invoke-static {v6}, Lcom/htc/launcher/PagesManager;->access$400(Lcom/htc/launcher/PagesManager;)I

    move-result v6

    iput v6, v4, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->homeIndex:I

    .line 216
    iget-object v6, p0, Lcom/htc/launcher/PagesManager$3;->this$0:Lcom/htc/launcher/PagesManager;

    const/4 v7, 0x2

    iget-object v4, p0, Lcom/htc/launcher/PagesManager$3;->this$0:Lcom/htc/launcher/PagesManager;

    #getter for: Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/launcher/PagesManager;->access$100(Lcom/htc/launcher/PagesManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/launcher/PagesManager$ScenePagesInfo;

    iget v4, v4, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->id:I

    #calls: Lcom/htc/launcher/PagesManager;->updatePagesInfosInDb(II)V
    invoke-static {v6, v7, v4}, Lcom/htc/launcher/PagesManager;->access$300(Lcom/htc/launcher/PagesManager;II)V

    .line 213
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_2
    iget-object v4, p0, Lcom/htc/launcher/PagesManager$3;->this$0:Lcom/htc/launcher/PagesManager;

    #getter for: Lcom/htc/launcher/PagesManager;->mScenePagesInfos:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/launcher/PagesManager;->access$100(Lcom/htc/launcher/PagesManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/PagesManager$ScenePagesInfo;

    .line 223
    .local v3, infos:Lcom/htc/launcher/PagesManager$ScenePagesInfo;
    const-string v4, "PagesManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mScenePagesInfos : id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sceneName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->sceneName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pagescount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->pagesCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", homeIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/htc/launcher/PagesManager$ScenePagesInfo;->homeIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 226
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #infos:Lcom/htc/launcher/PagesManager$ScenePagesInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    return-void
.end method
