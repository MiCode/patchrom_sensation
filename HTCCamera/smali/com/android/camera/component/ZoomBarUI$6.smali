.class Lcom/android/camera/component/ZoomBarUI$6;
.super Ljava/lang/Object;
.source "ZoomBarUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ZoomBarUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ZoomBarUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ZoomBarUI;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/camera/component/ZoomBarUI$6;->this$0:Lcom/android/camera/component/ZoomBarUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 255
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI$6;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #calls: Lcom/android/camera/component/ZoomBarUI;->updateZoomBarVisible()V
    invoke-static {v1}, Lcom/android/camera/component/ZoomBarUI;->access$800(Lcom/android/camera/component/ZoomBarUI;)V

    .line 256
    sget v0, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    .line 257
    .local v0, value:I
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI$6;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/component/ZoomBarUI;->m_Zoombar:Lcom/android/camera/widget/ZoomBar_ds;
    invoke-static {v1}, Lcom/android/camera/component/ZoomBarUI;->access$100(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/widget/ZoomBar_ds;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/widget/ZoomBar_ds;->setPosition(I)Z

    .line 259
    return-void
.end method
