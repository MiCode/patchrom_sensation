.class Lcom/htc/music/HtcMusic$39;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->createSoundEffectDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 6379
    iput-object p1, p0, Lcom/htc/music/HtcMusic$39;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 6381
    const-string v0, "SoundEffectDialog"

    const-string v1, "NegativeButton onClick +++"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6382
    iget-object v0, p0, Lcom/htc/music/HtcMusic$39;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v1, p0, Lcom/htc/music/HtcMusic$39;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->nowHWAudioSetting:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$3200(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/htc/music/HtcMusic;->setSoundEffect(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/htc/music/HtcMusic;->access$6500(Lcom/htc/music/HtcMusic;Ljava/lang/String;I)V

    .line 6384
    const-string v0, "SoundEffectDialog"

    const-string v1, "NegativeButton onClick ---"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6385
    return-void
.end method
