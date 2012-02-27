.class Lcom/htc/launcher/Launcher$PackageUpdatedTask;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageUpdatedTask"
.end annotation


# static fields
.field public static final OP_ADD:I = 0x1

.field public static final OP_AVAILABLE:I = 0x4

.field public static final OP_NONE:I = 0x0

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_UNAVAILABLE:I = 0x5

.field public static final OP_UPDATE:I = 0x2


# instance fields
.field mOp:I

.field mPackages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/Launcher;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "op"
    .parameter "packages"

    .prologue
    .line 6022
    iput-object p1, p0, Lcom/htc/launcher/Launcher$PackageUpdatedTask;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6023
    iput p2, p0, Lcom/htc/launcher/Launcher$PackageUpdatedTask;->mOp:I

    .line 6024
    iput-object p3, p0, Lcom/htc/launcher/Launcher$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 6025
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 6029
    const-string v3, "VivoWCTGBS_246"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launcher.PackageUpdatedTask.run: begin. thread="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6030
    iget-object v2, p0, Lcom/htc/launcher/Launcher$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 6031
    .local v2, packages:[Ljava/lang/String;
    array-length v0, v2

    .line 6033
    .local v0, N:I
    iget v3, p0, Lcom/htc/launcher/Launcher$PackageUpdatedTask;->mOp:I

    packed-switch v3, :pswitch_data_0

    .line 6097
    :cond_0
    :goto_0
    const-string v3, "HomeLoaders"

    const-string v4, "get install or remove message so do change adapter"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6098
    iget-object v3, p0, Lcom/htc/launcher/Launcher$PackageUpdatedTask;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$1900(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/AddListAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6099
    iget-object v3, p0, Lcom/htc/launcher/Launcher$PackageUpdatedTask;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$1900(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/AddListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/AddListAdapter;->resetItems()V

    .line 6100
    iget-object v3, p0, Lcom/htc/launcher/Launcher$PackageUpdatedTask;->this$0:Lcom/htc/launcher/Launcher;

    new-instance v4, Lcom/htc/launcher/Launcher$PackageUpdatedTask$1;

    invoke-direct {v4, p0}, Lcom/htc/launcher/Launcher$PackageUpdatedTask$1;-><init>(Lcom/htc/launcher/Launcher$PackageUpdatedTask;)V

    #calls: Lcom/htc/launcher/Launcher;->runInNextEvLoop(Ljava/lang/Runnable;)V
    invoke-static {v3, v4}, Lcom/htc/launcher/Launcher;->access$3900(Lcom/htc/launcher/Launcher;Ljava/lang/Runnable;)V

    .line 6107
    :cond_1
    const-string v3, "VivoWCTGBS_246"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launcher.PackageUpdatedTask.run: end. thread="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6108
    return-void

    .line 6035
    :pswitch_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 6037
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_2

    .line 6038
    const-string v3, "HomeLoaders"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  --> add package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6041
    :cond_2
    sget-object v3, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    iget-object v4, p0, Lcom/htc/launcher/Launcher$PackageUpdatedTask;->this$0:Lcom/htc/launcher/Launcher;

    aget-object v5, v2, v1

    invoke-virtual {v3, v4, v5}, Lcom/htc/launcher/LauncherModel;->addPackage(Lcom/htc/launcher/Launcher;Ljava/lang/String;)V

    .line 6035
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6045
    .end local v1           #i:I
    :pswitch_1
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v0, :cond_0

    .line 6047
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_3

    .line 6048
    const-string v3, "HomeLoaders"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  --> update package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6051
    :cond_3
    sget-object v3, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    iget-object v4, p0, Lcom/htc/launcher/Launcher$PackageUpdatedTask;->this$0:Lcom/htc/launcher/Launcher;

    aget-object v5, v2, v1

    invoke-virtual {v3, v4, v5}, Lcom/htc/launcher/LauncherModel;->syncPackage(Lcom/htc/launcher/Launcher;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6052
    iget-object v3, p0, Lcom/htc/launcher/Launcher$PackageUpdatedTask;->this$0:Lcom/htc/launcher/Launcher;

    aget-object v4, v2, v1

    #calls: Lcom/htc/launcher/Launcher;->removeShortcutsForPackage(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/launcher/Launcher;->access$5500(Lcom/htc/launcher/Launcher;Ljava/lang/String;)V

    .line 6054
    :cond_4
    iget-object v3, p0, Lcom/htc/launcher/Launcher$PackageUpdatedTask;->this$0:Lcom/htc/launcher/Launcher;

    aget-object v4, v2, v1

    #calls: Lcom/htc/launcher/Launcher;->updateShortcutsForPackage(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/launcher/Launcher;->access$5600(Lcom/htc/launcher/Launcher;Ljava/lang/String;)V

    .line 6045
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6058
    .end local v1           #i:I
    :pswitch_2
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v0, :cond_0

    .line 6060
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_5

    .line 6061
    const-string v3, "HomeLoaders"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  --> remove package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6064
    :cond_5
    iget-object v3, p0, Lcom/htc/launcher/Launcher$PackageUpdatedTask;->this$0:Lcom/htc/launcher/Launcher;

    aget-object v4, v2, v1

    #calls: Lcom/htc/launcher/Launcher;->removeShortcutsForPackage(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/launcher/Launcher;->access$5500(Lcom/htc/launcher/Launcher;Ljava/lang/String;)V

    .line 6065
    sget-object v3, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    iget-object v4, p0, Lcom/htc/launcher/Launcher$PackageUpdatedTask;->this$0:Lcom/htc/launcher/Launcher;

    aget-object v5, v2, v1

    invoke-virtual {v3, v4, v5}, Lcom/htc/launcher/LauncherModel;->removePackage(Lcom/htc/launcher/Launcher;Ljava/lang/String;)V

    .line 6058
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 6069
    .end local v1           #i:I
    :pswitch_3
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    if-ge v1, v0, :cond_7

    .line 6070
    sget-object v3, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    iget-object v4, p0, Lcom/htc/launcher/Launcher$PackageUpdatedTask;->this$0:Lcom/htc/launcher/Launcher;

    aget-object v5, v2, v1

    invoke-virtual {v3, v4, v5}, Lcom/htc/launcher/LauncherModel;->syncPackage(Lcom/htc/launcher/Launcher;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 6071
    iget-object v3, p0, Lcom/htc/launcher/Launcher$PackageUpdatedTask;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v3}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Lcom/htc/launcher/DesktopItemController;->addPendingSyncPackages(Ljava/lang/String;)V

    .line 6074
    :cond_6
    iget-object v3, p0, Lcom/htc/launcher/Launcher$PackageUpdatedTask;->this$0:Lcom/htc/launcher/Launcher;

    aget-object v4, v2, v1

    #calls: Lcom/htc/launcher/Launcher;->updateApplicationIconForPackage(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/launcher/Launcher;->access$5700(Lcom/htc/launcher/Launcher;Ljava/lang/String;)V

    .line 6069
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 6077
    :cond_7
    iget-object v3, p0, Lcom/htc/launcher/Launcher$PackageUpdatedTask;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v3, v3, Lcom/htc/launcher/Launcher;->mDesktopItemController:Lcom/htc/launcher/DesktopItemController;

    invoke-virtual {v3}, Lcom/htc/launcher/DesktopItemController;->updateNavbarFolderThumbnails()V

    .line 6079
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_0

    .line 6080
    const-string v3, "HomeLoaders"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " External app available  --> startLoaders: packages.length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6085
    .end local v1           #i:I
    :pswitch_4
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5
    if-ge v1, v0, :cond_8

    .line 6086
    sget-object v3, Lcom/htc/launcher/Launcher;->sModel:Lcom/htc/launcher/LauncherModel;

    iget-object v4, p0, Lcom/htc/launcher/Launcher$PackageUpdatedTask;->this$0:Lcom/htc/launcher/Launcher;

    aget-object v5, v2, v1

    invoke-virtual {v3, v4, v5}, Lcom/htc/launcher/LauncherModel;->syncPackage(Lcom/htc/launcher/Launcher;Ljava/lang/String;)Z

    .line 6087
    iget-object v3, p0, Lcom/htc/launcher/Launcher$PackageUpdatedTask;->this$0:Lcom/htc/launcher/Launcher;

    aget-object v4, v2, v1

    #calls: Lcom/htc/launcher/Launcher;->updateApplicationIconForPackage(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/launcher/Launcher;->access$5700(Lcom/htc/launcher/Launcher;Ljava/lang/String;)V

    .line 6085
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 6089
    :cond_8
    sget-boolean v3, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v3, :cond_0

    .line 6090
    const-string v3, "HomeLoaders"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " External app unavailable  --> startLoaders: packages.length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6033
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
