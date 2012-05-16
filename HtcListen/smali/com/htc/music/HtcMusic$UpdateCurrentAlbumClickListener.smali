.class Lcom/htc/music/HtcMusic$UpdateCurrentAlbumClickListener;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateCurrentAlbumClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 6862
    iput-object p1, p0, Lcom/htc/music/HtcMusic$UpdateCurrentAlbumClickListener;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 6864
    iget-object v0, p0, Lcom/htc/music/HtcMusic$UpdateCurrentAlbumClickListener;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->updateCurrentAlbum()V
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$7200(Lcom/htc/music/HtcMusic;)V

    .line 6865
    iget-object v0, p0, Lcom/htc/music/HtcMusic$UpdateCurrentAlbumClickListener;->this$0:Lcom/htc/music/HtcMusic;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->dismissDialog(I)V

    .line 6866
    return-void
.end method
