.class Lcom/android/camera/HTCCamera$37;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->QueryToggleStorage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 10289
    iput-object p1, p0, Lcom/android/camera/HTCCamera$37;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 10292
    iget-object v1, p0, Lcom/android/camera/HTCCamera$37;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v1}, Lcom/android/camera/DCFRuler$StorageCardControl;->toggleStorageType(Landroid/app/Activity;)V

    .line 10296
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v1

    if-nez v1, :cond_0

    .line 10297
    const-string v0, "main_memory"

    .line 10300
    .local v0, storageValue:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera$37;->this$0:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_storage_location"

    invoke-static {v1, v2, v0}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 10301
    iget-object v1, p0, Lcom/android/camera/HTCCamera$37;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/MenuHandler;->updateStorageLocationItem()V

    .line 10304
    iget-object v1, p0, Lcom/android/camera/HTCCamera$37;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v2, 0x35

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 10307
    iget-object v1, p0, Lcom/android/camera/HTCCamera$37;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 10308
    return-void

    .line 10299
    .end local v0           #storageValue:Ljava/lang/String;
    :cond_0
    const-string v0, "sdcard"

    .restart local v0       #storageValue:Ljava/lang/String;
    goto :goto_0
.end method
