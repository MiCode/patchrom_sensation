.class Lcom/htc/music/HtcMusic$DataFeeWanringDialogClickListener;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataFeeWanringDialogClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 6769
    iput-object p1, p0, Lcom/htc/music/HtcMusic$DataFeeWanringDialogClickListener;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 6771
    packed-switch p2, :pswitch_data_0

    .line 6780
    const-string v0, "[HtcMusic]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown button clicked. which is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6783
    :goto_0
    return-void

    .line 6773
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic$DataFeeWanringDialogClickListener;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v1, 0x1

    #calls: Lcom/htc/music/HtcMusic;->autoUpdateAlbumArt(I)V
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$6900(Lcom/htc/music/HtcMusic;I)V

    .line 6774
    iget-object v0, p0, Lcom/htc/music/HtcMusic$DataFeeWanringDialogClickListener;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->startAutoDownloadAlbum()V
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$6800(Lcom/htc/music/HtcMusic;)V

    goto :goto_0

    .line 6777
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic$DataFeeWanringDialogClickListener;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v1, 0x0

    #calls: Lcom/htc/music/HtcMusic;->autoUpdateAlbumArt(I)V
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$6900(Lcom/htc/music/HtcMusic;I)V

    goto :goto_0

    .line 6771
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
