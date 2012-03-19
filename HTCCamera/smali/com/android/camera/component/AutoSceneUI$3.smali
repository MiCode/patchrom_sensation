.class Lcom/android/camera/component/AutoSceneUI$3;
.super Ljava/lang/Object;
.source "AutoSceneUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoSceneUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoSceneUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoSceneUI;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/camera/component/AutoSceneUI$3;->this$0:Lcom/android/camera/component/AutoSceneUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$3;->this$0:Lcom/android/camera/component/AutoSceneUI;

    check-cast p1, Lcom/android/camera/BooleanEvent;

    .end local p1
    invoke-virtual {p1}, Lcom/android/camera/BooleanEvent;->getBoolean()Z

    move-result v1

    #setter for: Lcom/android/camera/component/AutoSceneUI;->m_IsAutoSceneMode:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/AutoSceneUI;->access$702(Lcom/android/camera/component/AutoSceneUI;Z)Z

    .line 226
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$3;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #calls: Lcom/android/camera/component/AutoSceneUI;->updateIcon()V
    invoke-static {v0}, Lcom/android/camera/component/AutoSceneUI;->access$600(Lcom/android/camera/component/AutoSceneUI;)V

    .line 227
    return-void
.end method
