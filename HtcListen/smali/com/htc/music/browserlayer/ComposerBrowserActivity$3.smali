.class Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;
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
    .line 409
    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    .line 411
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 412
    packed-switch p2, :pswitch_data_0

    .line 434
    :goto_0
    return-void

    .line 414
    :pswitch_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->access$400(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/MusicUtils;->getSongListForComposerAndPrepare(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    .line 416
    .local v1, list:[I
    const/4 v2, 0x0

    .line 417
    .local v2, npc:Lcom/htc/music/NpCategory;
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mFilter:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->access$500(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 418
    new-instance v3, Lcom/htc/music/NpCategory;

    const/16 v4, 0x12

    invoke-direct {v3, v4}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-object v4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mCurrentComposerName:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->access$400(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v2

    .line 420
    :cond_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v2}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_0

    .line 423
    .end local v1           #list:[I
    .end local v2           #npc:Lcom/htc/music/NpCategory;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 424
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    const-class v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 425
    const-string v3, "pickermode"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 426
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    invoke-virtual {v3, v0, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 429
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    invoke-virtual {v3, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->showDialog(I)V

    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
