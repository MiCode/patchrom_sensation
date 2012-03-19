.class Lcom/android/camera/effect/EffectManager$3;
.super Ljava/lang/Object;
.source "EffectManager.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/EffectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectManager;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectManager;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/camera/effect/EffectManager$3;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 137
    move-object v0, p1

    check-cast v0, Lcom/android/camera/TwoValuesEvent;

    .line 138
    .local v0, valuesEvent:Lcom/android/camera/TwoValuesEvent;,"Lcom/android/camera/TwoValuesEvent<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager$3;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v0}, Lcom/android/camera/TwoValuesEvent;->getValue1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/camera/TwoValuesEvent;->getValue2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/android/camera/effect/EffectManager;->prepareEffectForNewMode(II)V
    invoke-static {v2, v3, v1}, Lcom/android/camera/effect/EffectManager;->access$800(Lcom/android/camera/effect/EffectManager;II)V

    .line 139
    return-void
.end method
