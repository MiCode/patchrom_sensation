.class Lcom/htc/music/browserlayer/ComposerBrowserActivity$5;
.super Ljava/lang/Object;
.source "ComposerBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/ComposerBrowserActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->access$400(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->deleteTracksForComposer(Landroid/content/Context;Ljava/lang/String;)V

    .line 458
    return-void
.end method
