.class Lcom/htc/music/browserlayer/MusicBrowserTabActivity$6;
.super Ljava/lang/Object;
.source "MusicBrowserTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1547
    iput-object p1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$6;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$6;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    #calls: Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startOnlineSearchPage()V
    invoke-static {v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->access$100(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V

    .line 1550
    return-void
.end method
