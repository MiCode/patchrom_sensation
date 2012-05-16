.class final Lcom/htc/music/MusicPluginManager$NonUiHandler;
.super Landroid/os/Handler;
.source "MusicPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MusicPluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MusicPluginManager;


# direct methods
.method public constructor <init>(Lcom/htc/music/MusicPluginManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1496
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$NonUiHandler;->this$0:Lcom/htc/music/MusicPluginManager;

    .line 1497
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1498
    return-void
.end method

.method private deleteOldestFiles(Ljava/lang/String;)V
    .locals 11
    .parameter "directory"

    .prologue
    .line 1501
    if-nez p1, :cond_1

    .line 1550
    :cond_0
    return-void

    .line 1502
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1503
    .local v3, fileDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1505
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 1506
    .local v6, files:[Ljava/io/File;
    if-eqz v6, :cond_0

    .line 1508
    array-length v2, v6

    .line 1509
    .local v2, fileCount:I
    const/16 v8, 0x64

    if-le v2, v8, :cond_0

    .line 1511
    add-int/lit8 v0, v2, -0x64

    .line 1512
    .local v0, deleteCount:I
    if-lez v0, :cond_0

    .line 1514
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1515
    .local v4, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v8, Lcom/htc/music/MusicPluginManager$NonUiHandler$1;

    invoke-direct {v8, p0}, Lcom/htc/music/MusicPluginManager$NonUiHandler$1;-><init>(Lcom/htc/music/MusicPluginManager$NonUiHandler;)V

    invoke-static {v4, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1537
    const/4 v5, 0x0

    .line 1538
    .local v5, fileToDelete:Ljava/io/File;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v0, :cond_0

    .line 1539
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #fileToDelete:Ljava/io/File;
    check-cast v5, Ljava/io/File;

    .line 1540
    .restart local v5       #fileToDelete:Ljava/io/File;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1542
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1543
    const-string v8, "[MusicPluginManager]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1548
    :cond_2
    :goto_1
    const/4 v5, 0x0

    .line 1538
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1544
    :catch_0
    move-exception v1

    .line 1545
    .local v1, e:Ljava/lang/SecurityException;
    const-string v8, "[MusicPluginManager]"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1554
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1562
    const-string v1, "[MusicPluginManager]"

    const-string v2, "Something wrong in NonUiHandler.handleMessage()."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    :goto_0
    return-void

    .line 1556
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->removeMessages(I)V

    .line 1557
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1558
    .local v0, directory:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->deleteOldestFiles(Ljava/lang/String;)V

    goto :goto_0

    .line 1554
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
