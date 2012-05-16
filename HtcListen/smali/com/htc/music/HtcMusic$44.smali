.class Lcom/htc/music/HtcMusic$44;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->createDownloadAlbumArtDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 6630
    iput-object p1, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/16 v4, 0xd

    .line 6632
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 6633
    .local v0, checkedView:Landroid/widget/CheckedTextView;
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    .line 6634
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    .line 6635
    .local v1, isChecked:Z
    if-eqz v1, :cond_0

    .line 6636
    iget-object v2, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->startAutoDownloadAlbum()V
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$6800(Lcom/htc/music/HtcMusic;)V

    .line 6637
    iget-object v2, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v2, v4}, Lcom/htc/music/HtcMusic;->dismissDialog(I)V

    .line 6643
    :goto_0
    return-void

    .line 6639
    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/HtcMusic;->autoUpdateAlbumArt(I)V
    invoke-static {v2, v3}, Lcom/htc/music/HtcMusic;->access$6900(Lcom/htc/music/HtcMusic;I)V

    .line 6640
    iget-object v2, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->stopDownloadAlbumArtService()V
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$7000(Lcom/htc/music/HtcMusic;)V

    .line 6641
    iget-object v2, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v2, v4}, Lcom/htc/music/HtcMusic;->dismissDialog(I)V

    goto :goto_0
.end method
