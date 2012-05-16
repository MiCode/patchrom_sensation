.class Lcom/htc/music/ScanningProgressActivity$1;
.super Landroid/os/Handler;
.source "ScanningProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/ScanningProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/ScanningProgressActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/ScanningProgressActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/htc/music/ScanningProgressActivity$1;->this$0:Lcom/htc/music/ScanningProgressActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 39
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 40
    .local v8, status:Ljava/lang/String;
    const-string v0, "mounted"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/htc/music/ScanningProgressActivity$1;->this$0:Lcom/htc/music/ScanningProgressActivity;

    invoke-virtual {v0}, Lcom/htc/music/ScanningProgressActivity;->finish()V

    .line 59
    .end local v8           #status:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 46
    .restart local v8       #status:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/htc/music/ScanningProgressActivity$1;->this$0:Lcom/htc/music/ScanningProgressActivity;

    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 48
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 51
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 52
    iget-object v0, p0, Lcom/htc/music/ScanningProgressActivity$1;->this$0:Lcom/htc/music/ScanningProgressActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/ScanningProgressActivity;->setResult(I)V

    .line 53
    iget-object v0, p0, Lcom/htc/music/ScanningProgressActivity$1;->this$0:Lcom/htc/music/ScanningProgressActivity;

    invoke-virtual {v0}, Lcom/htc/music/ScanningProgressActivity;->finish()V

    goto :goto_0

    .line 56
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/ScanningProgressActivity$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 57
    .local v7, next:Landroid/os/Message;
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v7, v0, v1}, Lcom/htc/music/ScanningProgressActivity$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
