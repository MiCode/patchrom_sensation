.class Lcom/htc/music/AudioPreview$PreviewPlayer;
.super Landroid/media/MediaPlayer;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewPlayer"
.end annotation


# instance fields
.field mActivity:Lcom/htc/music/AudioPreview;

.field mIsPrepared:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 796
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 798
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/AudioPreview$PreviewPlayer;->mIsPrepared:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/AudioPreview$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 796
    invoke-direct {p0}, Lcom/htc/music/AudioPreview$PreviewPlayer;-><init>()V

    return-void
.end method


# virtual methods
.method isPrepared()Z
    .locals 1

    .prologue
    .line 825
    iget-boolean v0, p0, Lcom/htc/music/AudioPreview$PreviewPlayer;->mIsPrepared:Z

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 820
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/AudioPreview$PreviewPlayer;->mIsPrepared:Z

    .line 821
    iget-object v0, p0, Lcom/htc/music/AudioPreview$PreviewPlayer;->mActivity:Lcom/htc/music/AudioPreview;

    invoke-virtual {v0, p1}, Lcom/htc/music/AudioPreview;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 822
    return-void
.end method

.method public setActivity(Lcom/htc/music/AudioPreview;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 801
    iput-object p1, p0, Lcom/htc/music/AudioPreview$PreviewPlayer;->mActivity:Lcom/htc/music/AudioPreview;

    .line 802
    invoke-virtual {p0, p0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 803
    iget-object v0, p0, Lcom/htc/music/AudioPreview$PreviewPlayer;->mActivity:Lcom/htc/music/AudioPreview;

    invoke-virtual {p0, v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 804
    iget-object v0, p0, Lcom/htc/music/AudioPreview$PreviewPlayer;->mActivity:Lcom/htc/music/AudioPreview;

    invoke-virtual {p0, v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 805
    return-void
.end method

.method public setDataSourceAndPrepare(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 809
    const-string v0, "[AudioPreview]"

    const-string v1, "setDataSourceAndPrepare()+"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/htc/music/AudioPreview$PreviewPlayer;->mActivity:Lcom/htc/music/AudioPreview;

    invoke-virtual {p0, v0, p1}, Lcom/htc/music/AudioPreview$PreviewPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 811
    invoke-virtual {p0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->prepare()V

    .line 812
    const-string v0, "[AudioPreview]"

    const-string v1, "setDataSourceAndPrepare()-"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    return-void
.end method
