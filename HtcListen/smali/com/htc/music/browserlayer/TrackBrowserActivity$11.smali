.class Lcom/htc/music/browserlayer/TrackBrowserActivity$11;
.super Landroid/content/BroadcastReceiver;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1780
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1793
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mUiHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$UIHandler;->sendEmptyMessage(I)Z

    .line 1796
    :cond_0
    return-void
.end method
