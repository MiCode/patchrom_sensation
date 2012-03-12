.class Lcom/android/camera/CameraThread$1;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread;->restartPreview(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2510
    iput-object p1, p0, Lcom/android/camera/CameraThread$1;->this$0:Lcom/android/camera/CameraThread;

    iput p2, p0, Lcom/android/camera/CameraThread$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2513
    iget-object v0, p0, Lcom/android/camera/CameraThread$1;->this$0:Lcom/android/camera/CameraThread;

    iget v1, p0, Lcom/android/camera/CameraThread$1;->val$status:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->restartPreview(I)V

    .line 2514
    return-void
.end method
