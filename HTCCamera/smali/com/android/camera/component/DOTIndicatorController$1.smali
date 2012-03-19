.class Lcom/android/camera/component/DOTIndicatorController$1;
.super Ljava/lang/Object;
.source "DOTIndicatorController.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/DOTIndicatorController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/DOTIndicatorController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/DOTIndicatorController;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/camera/component/DOTIndicatorController$1;->this$0:Lcom/android/camera/component/DOTIndicatorController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 54
    check-cast p1, Lcom/android/camera/HTCCallbackEvent;

    .end local p1
    invoke-virtual {p1}, Lcom/android/camera/HTCCallbackEvent;->getArg1()I

    move-result v0

    .line 55
    .local v0, arg1:I
    if-nez v0, :cond_1

    .line 56
    iget-object v1, p0, Lcom/android/camera/component/DOTIndicatorController$1;->this$0:Lcom/android/camera/component/DOTIndicatorController;

    #calls: Lcom/android/camera/component/DOTIndicatorController;->sendLeaveLowLight()V
    invoke-static {v1}, Lcom/android/camera/component/DOTIndicatorController;->access$000(Lcom/android/camera/component/DOTIndicatorController;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/camera/component/DOTIndicatorController$1;->this$0:Lcom/android/camera/component/DOTIndicatorController;

    #calls: Lcom/android/camera/component/DOTIndicatorController;->sendEnterLowLight()V
    invoke-static {v1}, Lcom/android/camera/component/DOTIndicatorController;->access$100(Lcom/android/camera/component/DOTIndicatorController;)V

    goto :goto_0
.end method
