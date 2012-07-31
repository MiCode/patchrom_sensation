.class Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$3;
.super Ljava/lang/Object;
.source "SceneDlnaMediaItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->showDialogNoConnection()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$3;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem.3;"
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$3;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 206
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$3;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem.3;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$3;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;

    #getter for: Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->access$100(Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 207
    return-void
.end method
