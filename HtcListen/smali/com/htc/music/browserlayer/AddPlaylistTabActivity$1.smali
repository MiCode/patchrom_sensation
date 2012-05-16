.class Lcom/htc/music/browserlayer/AddPlaylistTabActivity$1;
.super Ljava/lang/Object;
.source "AddPlaylistTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/AddPlaylistTabActivity;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AddPlaylistTabActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AddPlaylistTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/htc/music/browserlayer/AddPlaylistTabActivity$1;->this$0:Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 145
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    .line 146
    check-cast p1, Lcom/htc/widget/HeaderBarImage;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/widget/HeaderBarImage;->show()V

    .line 148
    :cond_0
    return-void
.end method
