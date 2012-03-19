.class Lcom/android/camera/effect/EffectManager$5;
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
    .line 153
    iput-object p1, p0, Lcom/android/camera/effect/EffectManager$5;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 157
    iget-object v5, p0, Lcom/android/camera/effect/EffectManager$5;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_EffectList:Lcom/android/camera/effect/EffectList;
    invoke-static {v5}, Lcom/android/camera/effect/EffectManager;->access$1000(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectList;->getAllEffects()[Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    .local v0, arr$:[Lcom/android/camera/effect/EffectBase;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 158
    .local v1, effect:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v1}, Lcom/android/camera/effect/EffectBase;->releaseCachedResources()V

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v1           #effect:Lcom/android/camera/effect/EffectBase;
    :cond_0
    iget-object v5, p0, Lcom/android/camera/effect/EffectManager$5;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_SceneList:Lcom/android/camera/effect/EffectList;
    invoke-static {v5}, Lcom/android/camera/effect/EffectManager;->access$1100(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectList;->getAllEffects()[Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 162
    .local v4, scene:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v4}, Lcom/android/camera/effect/EffectBase;->releaseCachedResources()V

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 165
    .end local v4           #scene:Lcom/android/camera/effect/EffectBase;
    :cond_1
    iget-object v5, p0, Lcom/android/camera/effect/EffectManager$5;->this$0:Lcom/android/camera/effect/EffectManager;

    const/4 v6, 0x0

    #setter for: Lcom/android/camera/effect/EffectManager;->m_IsFlashDisabled:Z
    invoke-static {v5, v6}, Lcom/android/camera/effect/EffectManager;->access$1202(Lcom/android/camera/effect/EffectManager;Z)Z

    .line 166
    return-void
.end method
