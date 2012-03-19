.class Lcom/android/camera/effect/EffectPanelUI$22;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectPanelUI;->onEffectButtonClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$22;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 471
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$22;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectPanelUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getLastMediaInfo()Lcom/android/camera/MediaInfo;

    move-result-object v0

    .line 472
    .local v0, mediaInfo:Lcom/android/camera/MediaInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/camera/MediaInfo;->filePath:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$22;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/effect/EffectPanelUI;->access$2200(Lcom/android/camera/effect/EffectPanelUI;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "No media information to perform action"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$22;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;
    invoke-static {v1}, Lcom/android/camera/effect/EffectPanelUI;->access$000(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/actionscreen/CommonActionScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 477
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$22;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;
    invoke-static {v1}, Lcom/android/camera/effect/EffectPanelUI;->access$000(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/actionscreen/CommonActionScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->clearAction()V

    .line 478
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$22;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;
    invoke-static {v1}, Lcom/android/camera/effect/EffectPanelUI;->access$000(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/actionscreen/CommonActionScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    .line 488
    :cond_1
    :goto_0
    return-void

    .line 484
    :cond_2
    iget-object v1, v0, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 485
    :cond_3
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$22;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->startPhotoEnhancer(Lcom/android/camera/MediaInfo;)V
    invoke-static {v1, v0}, Lcom/android/camera/effect/EffectPanelUI;->access$2300(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/MediaInfo;)V

    goto :goto_0

    .line 487
    :cond_4
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$22;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->startVideoTrimmer(Lcom/android/camera/MediaInfo;)V
    invoke-static {v1, v0}, Lcom/android/camera/effect/EffectPanelUI;->access$2400(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/MediaInfo;)V

    goto :goto_0
.end method
