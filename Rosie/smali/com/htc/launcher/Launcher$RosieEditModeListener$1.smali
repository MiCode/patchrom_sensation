.class Lcom/htc/launcher/Launcher$RosieEditModeListener$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher$RosieEditModeListener;->onPostLeaveEditMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/launcher/Launcher$RosieEditModeListener;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher$RosieEditModeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 9150
    iput-object p1, p0, Lcom/htc/launcher/Launcher$RosieEditModeListener$1;->this$1:Lcom/htc/launcher/Launcher$RosieEditModeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 9154
    iget-object v0, p0, Lcom/htc/launcher/Launcher$RosieEditModeListener$1;->this$1:Lcom/htc/launcher/Launcher$RosieEditModeListener;

    iget-object v0, v0, Lcom/htc/launcher/Launcher$RosieEditModeListener;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mWidgetTilter:Lcom/htc/launcher/Launcher$WidgetTilter;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$2300(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/Launcher$WidgetTilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher$WidgetTilter;->isTilting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9155
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "Rosie"

    const-string v1, "onPostLeaveEditMode widget is tilting"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9164
    :cond_0
    :goto_0
    return-void

    .line 9159
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/Launcher$RosieEditModeListener$1;->this$1:Lcom/htc/launcher/Launcher$RosieEditModeListener;

    iget-object v0, v0, Lcom/htc/launcher/Launcher$RosieEditModeListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->isDoingScroll()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9160
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "Rosie"

    const-string v1, "onPostLeaveEditMode workspace is tilting"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9163
    :cond_2
    iget-object v0, p0, Lcom/htc/launcher/Launcher$RosieEditModeListener$1;->this$1:Lcom/htc/launcher/Launcher$RosieEditModeListener;

    iget-object v0, v0, Lcom/htc/launcher/Launcher$RosieEditModeListener;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->update2DButtonBarViews()V

    goto :goto_0
.end method
