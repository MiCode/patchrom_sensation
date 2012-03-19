.class Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;
.super Ljava/lang/Object;
.source "FeatureCameraFactory.java"

# interfaces
.implements Lcom/scalado/camera/FeatureCamera;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/FeatureCameraFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureCameraImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "ScaladoCameraFramework"


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

.field private mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

.field private mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

.field final synthetic this$0:Lcom/scalado/camera/FeatureCameraFactory;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/FeatureCameraFactory;Landroid/hardware/Camera;)V
    .locals 1
    .parameter
    .parameter "camera"

    .prologue
    const/4 v0, 0x0

    .line 92
    iput-object p1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->this$0:Lcom/scalado/camera/FeatureCameraFactory;

    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    .line 86
    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    .line 87
    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    .line 88
    new-instance v0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-direct {v0, p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;-><init>(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)V

    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    .line 91
    iput-object p2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/FeatureCameraFactory;Landroid/hardware/Camera;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;-><init>(Lcom/scalado/camera/FeatureCameraFactory;Landroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic access$1(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCamera$Parameters;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    return-object v0
.end method

.method static synthetic access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 1
    .parameter "callbackBuffer"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-virtual {v0, p1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->addApplicationPreviewBuffer([B)V

    .line 489
    return-void
.end method

.method public autoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-virtual {v0, p1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->doAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureImplementation;->onAutoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-virtual {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->doCancelAutoFocus()V

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    invoke-interface {v0}, Lcom/scalado/camera/Feature$FeatureImplementation;->onCancelAutoFocus()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    .line 685
    :cond_0
    return-void
.end method

.method public getAndroidCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/scalado/camera/Camera$Parameters;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    if-nez v0, :cond_0

    .line 520
    new-instance v0, Lcom/scalado/camera/ParametersImplementation;

    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-direct {v0, v1}, Lcom/scalado/camera/ParametersImplementation;-><init>(Landroid/hardware/Camera;)V

    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;

    return-object v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 529
    return-void
.end method

.method public reconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V

    .line 534
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 539
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    invoke-interface {v0}, Lcom/scalado/camera/Feature$FeatureImplementation;->deregisterCamera()V

    .line 541
    iput-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-virtual {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->clearCallbackBuffers()V

    .line 544
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 545
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 546
    iput-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    .line 547
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 1
    .parameter "degrees"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 552
    return-void
.end method

.method public setErrorCallback(Lcom/scalado/camera/Camera$ErrorCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-static {p1, p0}, Lcom/scalado/camera/FeatureCameraFactory$ErrorCallbackAdapter;->createErrorCallbackAdapter(Lcom/scalado/camera/Camera$ErrorCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory$ErrorCallbackAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 557
    return-void
.end method

.method public setFeature(Lcom/scalado/camera/Feature;)V
    .locals 4
    .parameter "feature"

    .prologue
    const/4 v3, 0x0

    .line 689
    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    if-eqz v1, :cond_0

    .line 690
    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    invoke-interface {v1}, Lcom/scalado/camera/Feature$FeatureImplementation;->deregisterCamera()V

    .line 691
    iput-object v3, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    .line 693
    :cond_0
    if-eqz p1, :cond_1

    .line 694
    invoke-interface {p1}, Lcom/scalado/camera/Feature;->getFeatureImplementation()Lcom/scalado/camera/Feature$FeatureImplementation;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    .line 695
    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    if-eqz v1, :cond_1

    .line 697
    :try_start_0
    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    iget-object v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-interface {v1, p0, v2}, Lcom/scalado/camera/Feature$FeatureImplementation;->registerCamera(Lcom/scalado/camera/FeatureCamera;Lcom/scalado/camera/Feature$FeatureSocket;)V
    :try_end_0
    .catch Lcom/scalado/camera/FeatureNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    :cond_1
    return-void

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, e:Lcom/scalado/camera/FeatureNotSupportedException;
    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    invoke-interface {v1}, Lcom/scalado/camera/Feature$FeatureImplementation;->deregisterCamera()V

    .line 700
    iput-object v3, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    .line 701
    throw v0
.end method

.method public setOneShotPreviewCallback(Lcom/scalado/camera/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->setApplicationPreviewCallback(Lcom/scalado/camera/Camera$PreviewCallback;Z)V

    .line 562
    return-void
.end method

.method public setParameters(Lcom/scalado/camera/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    if-nez v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-virtual {v0, p1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->doSetParameters(Lcom/scalado/camera/Camera$Parameters;)V

    .line 577
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureImplementation;->onSetParameters(Lcom/scalado/camera/Camera$Parameters;)V

    goto :goto_0
.end method

.method public setPreviewCallback(Lcom/scalado/camera/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->setApplicationPreviewCallback(Lcom/scalado/camera/Camera$PreviewCallback;Z)V

    .line 587
    return-void
.end method

.method public setPreviewCallbackWithBuffer(Lcom/scalado/camera/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->setApplicationPreviewCallback(Lcom/scalado/camera/Camera$PreviewCallback;Z)V

    .line 597
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 601
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 602
    return-void
.end method

.method public setZoomChangeListener(Lcom/scalado/camera/Camera$OnZoomChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-static {p1, p0}, Lcom/scalado/camera/FeatureCameraFactory$OnZoomChangeListenerAdapter;->createOnZoomChangeListenerAdapter(Lcom/scalado/camera/Camera$OnZoomChangeListener;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory$OnZoomChangeListenerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 607
    return-void
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-virtual {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->reAddCallbackBuffers()V

    .line 612
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 613
    return-void
.end method

.method public startSmoothZoom(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-virtual {v0, p1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->doStartSmoothZoom(I)V

    .line 623
    :goto_0
    return-void

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    invoke-interface {v0, p1}, Lcom/scalado/camera/Feature$FeatureImplementation;->onStartSmoothZoom(I)V

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-virtual {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->clearCallbackBuffers()V

    .line 628
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 629
    return-void
.end method

.method public stopSmoothZoom()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    if-nez v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-virtual {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->doStopSmoothZoom()V

    .line 639
    :goto_0
    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    invoke-interface {v0}, Lcom/scalado/camera/Feature$FeatureImplementation;->onStopSmoothZoom()V

    goto :goto_0
.end method

.method public takePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 1
    .parameter "shutter"
    .parameter "raw"
    .parameter "jpeg"

    .prologue
    .line 671
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->takePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 672
    return-void
.end method

.method public takePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 1
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    .line 658
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mFeature:Lcom/scalado/camera/Feature$FeatureImplementation;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/scalado/camera/Feature$FeatureImplementation;->onTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    .line 664
    :goto_0
    return-void

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mSocketImplementation:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->doTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 677
    return-void
.end method
