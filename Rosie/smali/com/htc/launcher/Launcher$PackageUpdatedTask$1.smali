.class Lcom/htc/launcher/Launcher$PackageUpdatedTask$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher$PackageUpdatedTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/launcher/Launcher$PackageUpdatedTask;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher$PackageUpdatedTask;)V
    .locals 0
    .parameter

    .prologue
    .line 6100
    iput-object p1, p0, Lcom/htc/launcher/Launcher$PackageUpdatedTask$1;->this$1:Lcom/htc/launcher/Launcher$PackageUpdatedTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6103
    iget-object v0, p0, Lcom/htc/launcher/Launcher$PackageUpdatedTask$1;->this$1:Lcom/htc/launcher/Launcher$PackageUpdatedTask;

    iget-object v0, v0, Lcom/htc/launcher/Launcher$PackageUpdatedTask;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mListAdapter:Lcom/htc/launcher/AddListAdapter;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$1900(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/AddListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/AddListAdapter;->notifyDataSetChanged()V

    .line 6104
    return-void
.end method
