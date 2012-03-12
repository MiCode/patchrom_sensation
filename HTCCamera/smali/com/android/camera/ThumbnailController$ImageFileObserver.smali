.class public Lcom/android/camera/ThumbnailController$ImageFileObserver;
.super Landroid/os/FileObserver;
.source "ThumbnailController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ThumbnailController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageFileObserver"
.end annotation


# instance fields
.field mode:I

.field final synthetic this$0:Lcom/android/camera/ThumbnailController;


# direct methods
.method public constructor <init>(Lcom/android/camera/ThumbnailController;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "path"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/camera/ThumbnailController$ImageFileObserver;->this$0:Lcom/android/camera/ThumbnailController;

    .line 324
    const/16 v0, 0x400

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ThumbnailController$ImageFileObserver;->mode:I

    .line 325
    const-string v0, "ThumbnailController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageFileObserver path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4
    .parameter "event"
    .parameter "path"

    .prologue
    .line 330
    const-string v1, "ThumbnailController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/16 v1, 0x400

    if-ne p1, v1, :cond_0

    .line 333
    const-string v1, "ThumbnailController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been delete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/android/camera/ThumbnailController$ImageFileObserver;->this$0:Lcom/android/camera/ThumbnailController;

    #getter for: Lcom/android/camera/ThumbnailController;->mCameraUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/ThumbnailController;->access$000(Lcom/android/camera/ThumbnailController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 335
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x33

    iput v1, v0, Landroid/os/Message;->what:I

    .line 336
    iget v1, p0, Lcom/android/camera/ThumbnailController$ImageFileObserver;->mode:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 338
    iget-object v1, p0, Lcom/android/camera/ThumbnailController$ImageFileObserver;->this$0:Lcom/android/camera/ThumbnailController;

    #getter for: Lcom/android/camera/ThumbnailController;->mCameraUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/ThumbnailController;->access$000(Lcom/android/camera/ThumbnailController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 339
    iget-object v1, p0, Lcom/android/camera/ThumbnailController$ImageFileObserver;->this$0:Lcom/android/camera/ThumbnailController;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/ThumbnailController;->isNotDeleteThumb:Z
    invoke-static {v1, v2}, Lcom/android/camera/ThumbnailController;->access$102(Lcom/android/camera/ThumbnailController;Z)Z

    .line 343
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public startWatching()V
    .locals 2

    .prologue
    .line 347
    const-string v0, "ThumbnailController"

    const-string v1, "ImageFileObserver startWatching"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-super {p0}, Landroid/os/FileObserver;->startWatching()V

    .line 349
    return-void
.end method

.method public stopWatching()V
    .locals 2

    .prologue
    .line 353
    const-string v0, "ThumbnailController"

    const-string v1, "ImageFileObserver stopWatching"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-super {p0}, Landroid/os/FileObserver;->stopWatching()V

    .line 355
    return-void
.end method
