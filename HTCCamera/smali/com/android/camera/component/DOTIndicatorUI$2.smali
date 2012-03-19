.class Lcom/android/camera/component/DOTIndicatorUI$2;
.super Ljava/lang/Object;
.source "DOTIndicatorUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/DOTIndicatorUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/DOTIndicatorUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/DOTIndicatorUI;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/camera/component/DOTIndicatorUI$2;->this$0:Lcom/android/camera/component/DOTIndicatorUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 165
    iget-object v1, p0, Lcom/android/camera/component/DOTIndicatorUI$2;->this$0:Lcom/android/camera/component/DOTIndicatorUI;

    #getter for: Lcom/android/camera/component/DOTIndicatorUI;->m_NeedDetect:Z
    invoke-static {v1}, Lcom/android/camera/component/DOTIndicatorUI;->access$400(Lcom/android/camera/component/DOTIndicatorUI;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    check-cast p1, Lcom/android/camera/BooleanEvent;

    .end local p1
    invoke-virtual {p1}, Lcom/android/camera/BooleanEvent;->getBoolean()Z

    move-result v0

    .line 167
    .local v0, IsChanged:Z
    if-eqz v0, :cond_1

    .line 168
    iget-object v1, p0, Lcom/android/camera/component/DOTIndicatorUI$2;->this$0:Lcom/android/camera/component/DOTIndicatorUI;

    #calls: Lcom/android/camera/component/DOTIndicatorUI;->showHandshake()V
    invoke-static {v1}, Lcom/android/camera/component/DOTIndicatorUI;->access$500(Lcom/android/camera/component/DOTIndicatorUI;)V

    .line 173
    .end local v0           #IsChanged:Z
    :cond_0
    :goto_0
    return-void

    .line 170
    .restart local v0       #IsChanged:Z
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/DOTIndicatorUI$2;->this$0:Lcom/android/camera/component/DOTIndicatorUI;

    #calls: Lcom/android/camera/component/DOTIndicatorUI;->hideHandshake()V
    invoke-static {v1}, Lcom/android/camera/component/DOTIndicatorUI;->access$600(Lcom/android/camera/component/DOTIndicatorUI;)V

    goto :goto_0
.end method
