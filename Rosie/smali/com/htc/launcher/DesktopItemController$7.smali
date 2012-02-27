.class Lcom/htc/launcher/DesktopItemController$7;
.super Ljava/lang/Object;
.source "DesktopItemController.java"

# interfaces
.implements Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/DesktopItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/DesktopItemController;


# direct methods
.method constructor <init>(Lcom/htc/launcher/DesktopItemController;)V
    .locals 0
    .parameter

    .prologue
    .line 1368
    iput-object p1, p0, Lcom/htc/launcher/DesktopItemController$7;->this$0:Lcom/htc/launcher/DesktopItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/htc/launcher/FxItem;)V
    .locals 11
    .parameter "shortcut"

    .prologue
    .line 1372
    invoke-virtual {p1}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v8

    .local v8, itemInfo:Lcom/htc/launcher/ItemInfo;
    move-object v1, v8

    .line 1373
    check-cast v1, Lcom/htc/launcher/ApplicationInfo;

    iget-object v7, v1, Lcom/htc/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 1374
    .local v7, intent:Landroid/content/Intent;
    if-eqz v7, :cond_3

    .line 1375
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 1376
    .local v6, cmp:Landroid/content/ComponentName;
    if-eqz v6, :cond_0

    const-string v1, "com.htc.searchanywhere/.SearchActivity"

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1379
    const-string v1, "launch_flag"

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1386
    :cond_0
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 1387
    .local v5, rectF:Landroid/graphics/RectF;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 1388
    .local v10, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$7;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mWorkspace:Lcom/htc/launcher/Workspace;
    invoke-static {v1}, Lcom/htc/launcher/DesktopItemController;->access$400(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getCurrentScreen()Lcom/htc/launcher/Workspace$Screen;

    move-result-object v0

    .line 1389
    .local v0, currentScreen:Lcom/htc/launcher/Workspace$Screen;
    if-eqz v0, :cond_1

    .line 1390
    iget v1, v8, Lcom/htc/launcher/ItemInfo;->cellX:I

    iget v2, v8, Lcom/htc/launcher/ItemInfo;->cellY:I

    iget v3, v8, Lcom/htc/launcher/ItemInfo;->spanX:I

    iget v4, v8, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-interface/range {v0 .. v5}, Lcom/htc/launcher/Workspace$Screen;->cellToRect(IIIILandroid/graphics/RectF;)V

    .line 1391
    :cond_1
    invoke-virtual {v5, v10}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 1399
    invoke-static {}, Lcom/htc/launcher/DesktopItemController;->access$300()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "DesktopItemController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent rect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_2
    invoke-virtual {v7, v10}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1405
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$7;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v1}, Lcom/htc/launcher/DesktopItemController;->access$200(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/Launcher;

    move-result-object v1

    const-string v2, " RS_program_icon"

    iput-object v2, v1, Lcom/htc/launcher/Launcher;->launchAppType:Ljava/lang/String;

    .line 1410
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 1411
    .local v9, msg:Landroid/os/Message;
    const/16 v1, 0x3f1

    iput v1, v9, Landroid/os/Message;->what:I

    .line 1412
    iput-object v7, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1413
    iget-object v1, p0, Lcom/htc/launcher/DesktopItemController$7;->this$0:Lcom/htc/launcher/DesktopItemController;

    #getter for: Lcom/htc/launcher/DesktopItemController;->mLauncher:Lcom/htc/launcher/Launcher;
    invoke-static {v1}, Lcom/htc/launcher/DesktopItemController;->access$200(Lcom/htc/launcher/DesktopItemController;)Lcom/htc/launcher/Launcher;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1415
    .end local v0           #currentScreen:Lcom/htc/launcher/Workspace$Screen;
    .end local v5           #rectF:Landroid/graphics/RectF;
    .end local v6           #cmp:Landroid/content/ComponentName;
    .end local v9           #msg:Landroid/os/Message;
    .end local v10           #rect:Landroid/graphics/Rect;
    :cond_3
    return-void
.end method
