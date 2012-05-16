.class Lcom/htc/music/browserlayer/DlnaBrowserActivity$7;
.super Ljava/lang/Object;
.source "DlnaBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DlnaBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$7;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 461
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$7;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    invoke-static {p2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    #setter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$302(Lcom/htc/music/browserlayer/DlnaBrowserActivity;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 463
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$7;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 464
    const-string v1, "DLNA"

    const-string v2, "mService is null in onServiceConnected"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :goto_0
    return-void

    .line 469
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$7;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$7;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$400(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->registerCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 470
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$7;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getServerList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 473
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 480
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$7;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$7;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$400(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    .line 483
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
