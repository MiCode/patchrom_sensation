.class Lcom/android/camera/effect/EffectPanelUI$20;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectPanelUI;->initializeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$20;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p1, listView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$20;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectList:Lcom/android/camera/effect/EffectList;
    invoke-static {v1}, Lcom/android/camera/effect/EffectPanelUI;->access$700(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/effect/EffectList;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/camera/effect/EffectList;->getEffect(I)Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    .line 425
    .local v0, effect:Lcom/android/camera/effect/EffectBase;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$20;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->isCaptureUIBlocked()Z
    invoke-static {v1}, Lcom/android/camera/effect/EffectPanelUI;->access$1900(Lcom/android/camera/effect/EffectPanelUI;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$20;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/EffectManager;
    invoke-static {v1}, Lcom/android/camera/effect/EffectPanelUI;->access$2000(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/effect/EffectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectManager;->getCurrentEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 429
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$20;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/EffectManager;
    invoke-static {v1}, Lcom/android/camera/effect/EffectPanelUI;->access$2000(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/effect/EffectManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectManager;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 430
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$20;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;
    invoke-static {v1}, Lcom/android/camera/effect/EffectPanelUI;->access$600(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/effect/EffectPanelAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectPanelAdapter;->notifyDataSetChanged()V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$20;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectPanel:Lcom/android/camera/widget/SlidingPanel;
    invoke-static {v1}, Lcom/android/camera/effect/EffectPanelUI;->access$500(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/widget/SlidingPanel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/SlidingPanel;->close(Z)V

    goto :goto_0
.end method
