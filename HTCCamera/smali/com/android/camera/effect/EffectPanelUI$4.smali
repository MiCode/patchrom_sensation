.class Lcom/android/camera/effect/EffectPanelUI$4;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/EffectPanelUI;
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
    .line 120
    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 123
    check-cast p1, Lcom/android/camera/effect/EffectEvent;

    .end local p1
    invoke-virtual {p1}, Lcom/android/camera/effect/EffectEvent;->getEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    .line 124
    .local v0, effect:Lcom/android/camera/effect/EffectBase;
    instance-of v1, v0, Lcom/android/camera/effect/IScene;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$4;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->updateEffectButtonAvailability()V
    invoke-static {v1}, Lcom/android/camera/effect/EffectPanelUI;->access$100(Lcom/android/camera/effect/EffectPanelUI;)V

    .line 129
    :cond_0
    return-void
.end method
