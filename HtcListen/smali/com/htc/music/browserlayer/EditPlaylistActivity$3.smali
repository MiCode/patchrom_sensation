.class Lcom/htc/music/browserlayer/EditPlaylistActivity$3;
.super Ljava/lang/Object;
.source "EditPlaylistActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/EditPlaylistActivity;->initButtonsPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$3;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$3;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->onSaveClick()V

    .line 1280
    return-void
.end method
