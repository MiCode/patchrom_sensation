.class Lcom/android/camera/CameraThread$3;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread;->checkCanTakePicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter

    .prologue
    .line 4772
    iput-object p1, p0, Lcom/android/camera/CameraThread$3;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4774
    sget v0, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-eqz v0, :cond_2

    .line 4775
    const-string v0, "CameraThread"

    const-string v1, "storage error"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4776
    iget-object v0, p0, Lcom/android/camera/CameraThread$3;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraThread;->showStorageToast(Z)V

    .line 4779
    sget v0, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-eqz v0, :cond_1

    .line 4780
    iget-object v0, p0, Lcom/android/camera/CameraThread$3;->this$0:Lcom/android/camera/CameraThread;

    #setter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v0, v5}, Lcom/android/camera/CameraThread;->access$2402(Lcom/android/camera/CameraThread;Z)Z

    .line 4799
    :goto_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread$3;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-ne v0, v4, :cond_0

    .line 4801
    iget-object v0, p0, Lcom/android/camera/CameraThread$3;->this$0:Lcom/android/camera/CameraThread;

    #setter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v0, v4}, Lcom/android/camera/CameraThread;->access$2402(Lcom/android/camera/CameraThread;Z)Z

    .line 4803
    :cond_0
    return-void

    .line 4782
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread$3;->this$0:Lcom/android/camera/CameraThread;

    #setter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v0, v4}, Lcom/android/camera/CameraThread;->access$2402(Lcom/android/camera/CameraThread;Z)Z

    goto :goto_0

    .line 4784
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraThread$3;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->calculatePicturesRemaining()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 4785
    const/4 v0, 0x3

    sput v0, Lcom/android/camera/CameraThread;->Storage_Status:I

    .line 4786
    iget-object v0, p0, Lcom/android/camera/CameraThread$3;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraThread;->showStorageToast(Z)V

    .line 4789
    sget v0, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-eqz v0, :cond_3

    .line 4790
    iget-object v0, p0, Lcom/android/camera/CameraThread$3;->this$0:Lcom/android/camera/CameraThread;

    #setter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v0, v5}, Lcom/android/camera/CameraThread;->access$2402(Lcom/android/camera/CameraThread;Z)Z

    goto :goto_0

    .line 4792
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraThread$3;->this$0:Lcom/android/camera/CameraThread;

    #setter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v0, v4}, Lcom/android/camera/CameraThread;->access$2402(Lcom/android/camera/CameraThread;Z)Z

    goto :goto_0

    .line 4795
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CameraThread$3;->this$0:Lcom/android/camera/CameraThread;

    #setter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v0, v4}, Lcom/android/camera/CameraThread;->access$2402(Lcom/android/camera/CameraThread;Z)Z

    goto :goto_0
.end method
