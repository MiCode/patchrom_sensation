.class Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$2;
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
    .line 196
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$2;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem.2;"
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$2;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 199
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$2;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem.2;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$2;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;

    #calls: Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onLaunchSettings_Wireless()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->access$000(Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;)V

    .line 200
    return-void
.end method
