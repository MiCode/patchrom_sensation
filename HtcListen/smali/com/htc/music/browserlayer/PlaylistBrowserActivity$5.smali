.class Lcom/htc/music/browserlayer/PlaylistBrowserActivity$5;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 866
    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 868
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 869
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 870
    .local v0, dlnaMode:I
    if-nez v0, :cond_0

    .line 872
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->dialog_OnClick_Local(I)V
    invoke-static {v1, p2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->access$500(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;I)V

    .line 877
    :goto_0
    return-void

    .line 875
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->dialog_OnClick_Dlna(I)V
    invoke-static {v1, p2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->access$600(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;I)V

    goto :goto_0
.end method
