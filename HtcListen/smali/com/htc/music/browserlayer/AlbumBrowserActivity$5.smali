.class Lcom/htc/music/browserlayer/AlbumBrowserActivity$5;
.super Ljava/lang/Object;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/AlbumBrowserActivity;->createLongPressDialog(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 578
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 579
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 580
    .local v0, dlnaMode:I
    if-nez v0, :cond_0

    .line 582
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumBrowserActivity;->dialog_OnClick_Local(I)V
    invoke-static {v1, p2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->access$900(Lcom/htc/music/browserlayer/AlbumBrowserActivity;I)V

    .line 587
    :goto_0
    return-void

    .line 585
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumBrowserActivity;->dialog_OnClick_Dlna(I)V
    invoke-static {v1, p2}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/AlbumBrowserActivity;I)V

    goto :goto_0
.end method
