.class public Lcom/htc/music/ScanningProgressActivity;
.super Landroid/app/Activity;
.source "ScanningProgressActivity.java"


# static fields
.field private static final CHECK:I


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Lcom/htc/music/ScanningProgressActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/ScanningProgressActivity$1;-><init>(Lcom/htc/music/ScanningProgressActivity;)V

    iput-object v0, p0, Lcom/htc/music/ScanningProgressActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/music/ScanningProgressActivity;->setVolumeControlStream(I)V

    .line 67
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/ScanningProgressActivity;->requestWindowFeature(I)Z

    .line 68
    const v1, 0x7f030058

    invoke-virtual {p0, v1}, Lcom/htc/music/ScanningProgressActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/htc/music/ScanningProgressActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 71
    invoke-virtual {p0, v3}, Lcom/htc/music/ScanningProgressActivity;->setResult(I)V

    .line 73
    iget-object v1, p0, Lcom/htc/music/ScanningProgressActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 74
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/ScanningProgressActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 75
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/music/ScanningProgressActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 81
    return-void
.end method
