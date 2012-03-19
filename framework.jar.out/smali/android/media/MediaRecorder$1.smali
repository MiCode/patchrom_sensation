.class Landroid/media/MediaRecorder$1;
.super Landroid/os/Handler;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaRecorder;->start_stop_notify(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaRecorder;

.field final synthetic val$act:I


# direct methods
.method constructor <init>(Landroid/media/MediaRecorder;Landroid/os/Looper;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 664
    iput-object p1, p0, Landroid/media/MediaRecorder$1;->this$0:Landroid/media/MediaRecorder;

    iput p3, p0, Landroid/media/MediaRecorder$1;->val$act:I

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 666
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 668
    .local v0, actThread:Landroid/app/ActivityThread;
    if-nez v0, :cond_0

    .line 669
    const-string v3, "HtcDeviceInfoManager"

    const-string v4, "MediaRecorder.start_stop_notify, no activity thread!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :goto_0
    return-void

    .line 672
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 673
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_1

    .line 674
    const-string v3, "HtcDeviceInfoManager"

    const-string v4, "MediaRecorder.start_stop_notify, no context!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 679
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 680
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.htc.HtcDeviceInfoManager.MediaReceiver"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    const-string/jumbo v3, "type"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 682
    const-string v3, "act"

    iget v4, p0, Landroid/media/MediaRecorder$1;->val$act:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 683
    const-string/jumbo v3, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 684
    invoke-virtual {v1, v2}, Landroid/app/ContextImpl;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
