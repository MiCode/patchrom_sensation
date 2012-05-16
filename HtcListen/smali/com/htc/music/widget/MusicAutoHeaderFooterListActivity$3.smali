.class Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$3;
.super Ljava/lang/Object;
.source "MusicAutoHeaderFooterListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 728
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$3;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 732
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 733
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$3;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->startActivity(Landroid/content/Intent;)V

    .line 734
    return-void
.end method
