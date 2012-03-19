.class Lcom/android/camera/component/PanoramaController$1;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/PanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 134
    move-object v1, p1

    check-cast v1, Lcom/android/camera/CloseCameraRequestEvent;

    .line 135
    .local v1, requestEvent:Lcom/android/camera/CloseCameraRequestEvent;
    invoke-virtual {v1}, Lcom/android/camera/CloseCameraRequestEvent;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    .line 136
    .local v0, camera:Landroid/hardware/Camera;
    invoke-virtual {v1}, Lcom/android/camera/CloseCameraRequestEvent;->isHandled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$000(Lcom/android/camera/component/PanoramaController;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$000(Lcom/android/camera/component/PanoramaController;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v2

    invoke-interface {v2}, Lcom/scalado/camera/FeatureCamera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 138
    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$100(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Release camera by PanoramaController"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v2}, Lcom/android/camera/component/PanoramaController;->access$000(Lcom/android/camera/component/PanoramaController;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v2

    invoke-interface {v2}, Lcom/scalado/camera/FeatureCamera;->release()V

    .line 140
    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$1;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/component/PanoramaController;->m_ScaladoCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v2, v3}, Lcom/android/camera/component/PanoramaController;->access$002(Lcom/android/camera/component/PanoramaController;Lcom/scalado/camera/FeatureCamera;)Lcom/scalado/camera/FeatureCamera;

    .line 141
    invoke-virtual {v1}, Lcom/android/camera/CloseCameraRequestEvent;->setHandled()V

    .line 143
    :cond_0
    return-void
.end method
