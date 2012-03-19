.class public Lcom/android/camera/effect/EffectList;
.super Ljava/lang/Object;
.source "EffectList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/EffectList$OnEffectChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectList"


# instance fields
.field private m_AllEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

.field private m_CurrentEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field private m_OnEffectChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;Ljava/util/List;)V
    .locals 2
    .parameter "cameraActivity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/HTCCamera;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, allEffects:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/effect/EffectBase;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    .line 41
    if-nez p1, :cond_0

    .line 43
    const-string v0, "cameraActivity"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cameraActivity is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/android/camera/effect/EffectList;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    .line 47
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    return-void
.end method

.method private prepareApplyEffectInternal(Lcom/android/camera/effect/EffectBase;I)V
    .locals 3
    .parameter "effect"
    .parameter "flags"

    .prologue
    .line 130
    const-string v0, "EffectList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare applying effect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    invoke-virtual {p1, v0, p2}, Lcom/android/camera/effect/EffectBase;->prepareApply(Lcom/android/camera/effect/EffectBase;I)V

    .line 132
    return-void
.end method

.method private prepareCancelEffectInternal(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;I)V
    .locals 3
    .parameter "effect"
    .parameter "nextEffect"
    .parameter "flags"

    .prologue
    .line 163
    const-string v0, "EffectList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare canceling effect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1, p2, p3}, Lcom/android/camera/effect/EffectBase;->prepareApply(Lcom/android/camera/effect/EffectBase;I)V

    .line 165
    return-void
.end method

.method private setEffectInternal(Lcom/android/camera/effect/EffectBase;)V
    .locals 1
    .parameter "effect"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    .line 195
    .local v0, prevEffect:Lcom/android/camera/effect/EffectBase;
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectBase;->cancel(Lcom/android/camera/effect/EffectBase;)V

    .line 199
    :cond_0
    iput-object p1, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    .line 200
    if-eqz p1, :cond_1

    .line 201
    invoke-virtual {p1, v0}, Lcom/android/camera/effect/EffectBase;->apply(Lcom/android/camera/effect/EffectBase;)V

    .line 202
    :cond_1
    return-void
.end method


# virtual methods
.method public getAllEffects()[Lcom/android/camera/effect/EffectBase;
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Lcom/android/camera/effect/EffectBase;

    .line 56
    .local v0, effects:[Lcom/android/camera/effect/EffectBase;
    iget-object v1, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 57
    return-object v0
.end method

.method public final getCurrentEffect()Lcom/android/camera/effect/EffectBase;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method public final getCurrentEffectCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getEffect(I)Lcom/android/camera/effect/EffectBase;
    .locals 1
    .parameter "index"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method public final getEffect(Ljava/lang/String;)Lcom/android/camera/effect/EffectBase;
    .locals 4
    .parameter "name"

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 88
    const-string v2, "name"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 89
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    .line 95
    .local v0, effect:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    .end local v0           #effect:Lcom/android/camera/effect/EffectBase;
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final prepareApplyEffect(II)V
    .locals 1
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    invoke-direct {p0, v0, p2}, Lcom/android/camera/effect/EffectList;->prepareApplyEffectInternal(Lcom/android/camera/effect/EffectBase;I)V

    .line 127
    return-void
.end method

.method public final prepareApplyEffect(Ljava/lang/String;I)V
    .locals 5
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 109
    const-string v2, "name"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 110
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    .line 116
    .local v0, effect:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    invoke-direct {p0, v0, p2}, Lcom/android/camera/effect/EffectList;->prepareApplyEffectInternal(Lcom/android/camera/effect/EffectBase;I)V

    .line 123
    .end local v0           #effect:Lcom/android/camera/effect/EffectBase;
    :goto_0
    return-void

    .line 122
    :cond_2
    const-string v2, "EffectList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find effect \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final prepareCancelEffect(ILcom/android/camera/effect/EffectBase;I)V
    .locals 1
    .parameter "index"
    .parameter "nextEffect"
    .parameter "flags"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/camera/effect/EffectList;->prepareCancelEffectInternal(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;I)V

    .line 160
    return-void
.end method

.method public final prepareCancelEffect(Ljava/lang/String;Lcom/android/camera/effect/EffectBase;I)V
    .locals 5
    .parameter "name"
    .parameter "nextEffect"
    .parameter "flags"

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 142
    const-string v2, "name"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 143
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    .line 149
    .local v0, effect:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    invoke-direct {p0, v0, p2, p3}, Lcom/android/camera/effect/EffectList;->prepareCancelEffectInternal(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;I)V

    .line 156
    .end local v0           #effect:Lcom/android/camera/effect/EffectBase;
    :goto_0
    return-void

    .line 155
    :cond_2
    const-string v2, "EffectList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find effect \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 3
    .parameter "effect"

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 175
    const-string v0, "effect"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 190
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    const-string v0, "EffectList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not in current effect list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_OnEffectChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_OnEffectChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

    iget-object v1, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    invoke-interface {v0, p0, v1, p1}, Lcom/android/camera/effect/EffectList$OnEffectChangedListener;->onEffectChanged(Lcom/android/camera/effect/EffectList;Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;)V

    .line 189
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectList;->setEffectInternal(Lcom/android/camera/effect/EffectBase;)V

    goto :goto_0
.end method

.method setOnEffectChangedListener(Lcom/android/camera/effect/EffectList$OnEffectChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/camera/effect/EffectList;->m_OnEffectChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

    .line 210
    return-void
.end method

.method public final updateCurrentEffects()V
    .locals 12

    .prologue
    .line 218
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v9}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    .line 219
    .local v1, cameraThread:Lcom/android/camera/CameraThread;
    if-nez v1, :cond_0

    .line 221
    const-string v9, "EffectList"

    const-string v10, "There is no camera thread"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v7

    .line 227
    .local v7, mode:I
    if-nez v7, :cond_2

    const/16 v8, 0x10

    .line 230
    .local v8, modeCapabilityFlag:I
    :goto_1
    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraType()I

    move-result v2

    .line 232
    .local v2, cameraType:I
    packed-switch v2, :pswitch_data_0

    .line 244
    const-string v9, "EffectList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown camera type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x0

    .line 250
    .local v0, cameraCapabilityFlag:I
    :goto_2
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 251
    const/4 v6, 0x0

    .local v6, i:I
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, count:I
    :goto_3
    if-ge v6, v4, :cond_4

    .line 253
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/effect/EffectBase;

    .line 254
    .local v5, effect:Lcom/android/camera/effect/EffectBase;
    invoke-virtual {v5}, Lcom/android/camera/effect/EffectBase;->getCapabilities()I

    move-result v3

    .line 255
    .local v3, capabilities:I
    and-int v9, v3, v8

    if-ne v9, v8, :cond_3

    and-int v9, v3, v0

    if-ne v9, v0, :cond_3

    .line 256
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_1
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 227
    .end local v0           #cameraCapabilityFlag:I
    .end local v2           #cameraType:I
    .end local v3           #capabilities:I
    .end local v4           #count:I
    .end local v5           #effect:Lcom/android/camera/effect/EffectBase;
    .end local v6           #i:I
    .end local v8           #modeCapabilityFlag:I
    :cond_2
    const/16 v8, 0x20

    goto :goto_1

    .line 235
    .restart local v2       #cameraType:I
    .restart local v8       #modeCapabilityFlag:I
    :pswitch_0
    const/4 v0, 0x1

    .line 236
    .restart local v0       #cameraCapabilityFlag:I
    goto :goto_2

    .line 238
    .end local v0           #cameraCapabilityFlag:I
    :pswitch_1
    const/4 v0, 0x2

    .line 239
    .restart local v0       #cameraCapabilityFlag:I
    goto :goto_2

    .line 241
    .end local v0           #cameraCapabilityFlag:I
    :pswitch_2
    const/4 v0, 0x4

    .line 242
    .restart local v0       #cameraCapabilityFlag:I
    goto :goto_2

    .line 257
    .restart local v3       #capabilities:I
    .restart local v4       #count:I
    .restart local v5       #effect:Lcom/android/camera/effect/EffectBase;
    .restart local v6       #i:I
    :cond_3
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    if-ne v9, v5, :cond_1

    .line 258
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/camera/effect/EffectList;->setEffectInternal(Lcom/android/camera/effect/EffectBase;)V

    goto :goto_4

    .line 262
    .end local v3           #capabilities:I
    .end local v5           #effect:Lcom/android/camera/effect/EffectBase;
    :cond_4
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 263
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/effect/EffectBase;

    invoke-direct {p0, v9}, Lcom/android/camera/effect/EffectList;->setEffectInternal(Lcom/android/camera/effect/EffectBase;)V

    .line 266
    :cond_5
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v9}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v9

    new-instance v10, Lcom/android/camera/OneValueEvent;

    const-string v11, "EffectList.Updated"

    invoke-direct {v10, v11, p0}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto/16 :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
