.class Lcom/htc/music/AudioPreview$2;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/htc/music/AudioPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/htc/music/AudioPreview$2;->this$0:Lcom/htc/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2
    .parameter "focusChange"

    .prologue
    const/4 v1, 0x0

    .line 429
    iget-object v0, p0, Lcom/htc/music/AudioPreview$2;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/htc/music/AudioPreview$2;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$700(Lcom/htc/music/AudioPreview;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 455
    :goto_0
    return-void

    .line 435
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 454
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/AudioPreview$2;->this$0:Lcom/htc/music/AudioPreview;

    #calls: Lcom/htc/music/AudioPreview;->updatePlayPause()V
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$1000(Lcom/htc/music/AudioPreview;)V

    goto :goto_0

    .line 437
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/AudioPreview$2;->this$0:Lcom/htc/music/AudioPreview;

    #setter for: Lcom/htc/music/AudioPreview;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v1}, Lcom/htc/music/AudioPreview;->access$802(Lcom/htc/music/AudioPreview;Z)Z

    .line 438
    iget-object v0, p0, Lcom/htc/music/AudioPreview$2;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->pause()V

    goto :goto_1

    .line 442
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/AudioPreview$2;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/htc/music/AudioPreview$2;->this$0:Lcom/htc/music/AudioPreview;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/AudioPreview;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v1}, Lcom/htc/music/AudioPreview;->access$802(Lcom/htc/music/AudioPreview;Z)Z

    .line 444
    iget-object v0, p0, Lcom/htc/music/AudioPreview$2;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->pause()V

    goto :goto_1

    .line 448
    :pswitch_3
    iget-object v0, p0, Lcom/htc/music/AudioPreview$2;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$800(Lcom/htc/music/AudioPreview;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/htc/music/AudioPreview$2;->this$0:Lcom/htc/music/AudioPreview;

    #setter for: Lcom/htc/music/AudioPreview;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v1}, Lcom/htc/music/AudioPreview;->access$802(Lcom/htc/music/AudioPreview;Z)Z

    .line 450
    iget-object v0, p0, Lcom/htc/music/AudioPreview$2;->this$0:Lcom/htc/music/AudioPreview;

    #calls: Lcom/htc/music/AudioPreview;->start()V
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$900(Lcom/htc/music/AudioPreview;)V

    goto :goto_1

    .line 435
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
