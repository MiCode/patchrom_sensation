.class Lcom/htc/music/browserlayer/TrackBrowserActivity$10;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcReorderListView$RemoveListener;


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
    .line 1740
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .locals 1
    .parameter "which"

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->removePlaylistItem(I)V
    invoke-static {v0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1800(Lcom/htc/music/browserlayer/TrackBrowserActivity;I)V

    .line 1743
    return-void
.end method
