.class Lcom/android/camera/component/ThumbnailUI$9;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ThumbnailUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$9;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$9;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-virtual {v1}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v1

    if-nez v1, :cond_2

    .line 321
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$9;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_IsEnabled:Z
    invoke-static {v1}, Lcom/android/camera/component/ThumbnailUI;->access$000(Lcom/android/camera/component/ThumbnailUI;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$9;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #calls: Lcom/android/camera/component/ThumbnailUI;->startAlbum()V
    invoke-static {v1}, Lcom/android/camera/component/ThumbnailUI;->access$200(Lcom/android/camera/component/ThumbnailUI;)V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$9;->this$0:Lcom/android/camera/component/ThumbnailUI;

    const/4 v2, 0x1

    #setter for: Lcom/android/camera/component/ThumbnailUI;->m_HasPendingClickEvent:Z
    invoke-static {v1, v2}, Lcom/android/camera/component/ThumbnailUI;->access$302(Lcom/android/camera/component/ThumbnailUI;Z)Z

    goto :goto_0

    .line 328
    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$9;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-virtual {v1}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getActionScreen()Lcom/android/camera/actionscreen/ActionScreen;

    move-result-object v0

    .line 329
    .local v0, actionScreen:Lcom/android/camera/actionscreen/ActionScreen;
    instance-of v1, v0, Lcom/android/camera/actionscreen/CommonActionScreen;

    if-eqz v1, :cond_0

    .line 331
    check-cast v0, Lcom/android/camera/actionscreen/CommonActionScreen;

    .end local v0           #actionScreen:Lcom/android/camera/actionscreen/ActionScreen;
    new-instance v1, Lcom/android/camera/component/ThumbnailUI$9$1;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ThumbnailUI$9$1;-><init>(Lcom/android/camera/component/ThumbnailUI$9;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->performAction(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
