.class Lcom/htc/music/HtcMusic$16$1;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic$16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/HtcMusic$16;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic$16;)V
    .locals 0
    .parameter

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/htc/music/HtcMusic$16$1;->this$1:Lcom/htc/music/HtcMusic$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1286
    iget-object v1, p0, Lcom/htc/music/HtcMusic$16$1;->this$1:Lcom/htc/music/HtcMusic$16;

    iget-object v1, v1, Lcom/htc/music/HtcMusic$16;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mFfwdListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$2200(Lcom/htc/music/HtcMusic;)Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    move-result-object v2

    monitor-enter v2

    .line 1288
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic$16$1;->this$1:Lcom/htc/music/HtcMusic$16;

    iget-boolean v1, v1, Lcom/htc/music/HtcMusic$16;->bFFW:Z

    if-eqz v1, :cond_0

    .line 1290
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/HtcMusic$16$1;->this$1:Lcom/htc/music/HtcMusic$16;

    iget-object v1, v1, Lcom/htc/music/HtcMusic$16;->this$0:Lcom/htc/music/HtcMusic;

    const-class v3, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1291
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1292
    const-string v1, "command"

    const-string v3, "ffstop"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1293
    iget-object v1, p0, Lcom/htc/music/HtcMusic$16$1;->this$1:Lcom/htc/music/HtcMusic$16;

    iget-object v1, v1, Lcom/htc/music/HtcMusic$16;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v1, v0}, Lcom/htc/music/HtcMusic;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1294
    iget-object v1, p0, Lcom/htc/music/HtcMusic$16$1;->this$1:Lcom/htc/music/HtcMusic$16;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/htc/music/HtcMusic$16;->bFFW:Z

    .line 1296
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    monitor-exit v2

    .line 1297
    return-void

    .line 1296
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
