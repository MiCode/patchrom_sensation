.class Lcom/htc/music/MusicPluginManager$1;
.super Lcom/htc/music/IPluginIPCNotify$Stub;
.source "MusicPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MusicPluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MusicPluginManager;


# direct methods
.method constructor <init>(Lcom/htc/music/MusicPluginManager;)V
    .locals 0
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$1;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-direct {p0}, Lcom/htc/music/IPluginIPCNotify$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumArtPathByShuffleUpdated(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "path"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 626
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$1;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/MusicPluginManager;->onAlbumArtPathByShuffleUpdated(ILjava/lang/String;Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method public onAlbumArtPathUpdated(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "path"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 630
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$1;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/MusicPluginManager;->onAlbumArtPathUpdated(ILjava/lang/String;Ljava/lang/String;)V

    .line 631
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 634
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$1;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MusicPluginManager;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method public onNowplayingQueueUpdated([Landroid/content/ContentValues;IILjava/lang/String;)V
    .locals 1
    .parameter "values"
    .parameter "start"
    .parameter "end"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 616
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$1;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/music/MusicPluginManager;->onNowplayingQueueUpdated([Landroid/content/ContentValues;IILjava/lang/String;)V

    .line 617
    return-void
.end method

.method public onToastWarning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 638
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$1;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MusicPluginManager;->onToastWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method public onTrackDetailsUpdated(ILandroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .parameter "position"
    .parameter "values"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 621
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$1;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/MusicPluginManager;->onTrackDetailsUpdated(ILandroid/content/ContentValues;Ljava/lang/String;)V

    .line 622
    return-void
.end method

.method public pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "action"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$1;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MusicPluginManager;->pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    return-void
.end method
