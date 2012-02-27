.class Lcom/htc/launcher/Launcher$32;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher;->postDelayedCallbackToExitStickyMode()V
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
    .line 9537
    iput-object p1, p0, Lcom/htc/launcher/Launcher$32;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 9540
    iget-object v0, p0, Lcom/htc/launcher/Launcher$32;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->endStickyMode()V

    .line 9541
    iget-object v0, p0, Lcom/htc/launcher/Launcher$32;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v1, 0x0

    #setter for: Lcom/htc/launcher/Launcher;->mExitStickyCallback:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/htc/launcher/Launcher;->access$10902(Lcom/htc/launcher/Launcher;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 9542
    const-string v0, "Rosie"

    const-string v1, "[STICKY] Launcher.postDelayedCallbackToExitStickyMode() run - ok!"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9543
    return-void
.end method
