.class Lcom/htc/music/browserlayer/PlaylistBrowserActivity$11;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/PlaylistBrowserActivity;
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
    .line 1550
    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$11;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->createNewPlaylist()V
    invoke-static {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V

    .line 1553
    return-void
.end method
