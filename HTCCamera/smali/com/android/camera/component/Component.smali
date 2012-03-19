.class public abstract Lcom/android/camera/component/Component;
.super Lcom/android/camera/ThreadDependencyObject;
.source "Component.java"


# static fields
.field protected static final SHOW_MESSAGE_LOGS:Z = true

.field public static final STATE_DEINITIALIZED:I = 0x4

.field public static final STATE_DEINITIALIZING:I = 0x3

.field public static final STATE_INITIALIZING:I = 0x1

.field public static final STATE_NEW:I = 0x0

.field public static final STATE_RUNNING:I = 0x2


# instance fields
.field private final m_Handler:Landroid/os/Handler;

.field private final m_Name:Ljava/lang/String;

.field private m_Owner:Lcom/android/camera/component/IComponentOwner;

.field private m_State:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/component/Component;-><init>(Ljava/lang/String;Z)V

    .line 36
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .parameter "name"
    .parameter "hasHandler"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/camera/ThreadDependencyObject;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/Component;->m_State:I

    .line 40
    iput-object p1, p0, Lcom/android/camera/component/Component;->m_Name:Ljava/lang/String;

    .line 43
    if-nez p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "name == null in .ctor"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    if-eqz p2, :cond_1

    .line 52
    new-instance v0, Lcom/android/camera/component/Component$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/Component$1;-><init>(Lcom/android/camera/component/Component;)V

    iput-object v0, p0, Lcom/android/camera/component/Component;->m_Handler:Landroid/os/Handler;

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/Component;->m_Handler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/component/Component;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/Component;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget v0, p0, Lcom/android/camera/component/Component;->m_State:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/Component;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/Component;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final deinitialize()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 89
    invoke-virtual {p0}, Lcom/android/camera/component/Component;->threadAccessCheck()V

    .line 92
    iget v0, p0, Lcom/android/camera/component/Component;->m_State:I

    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    :pswitch_0
    return-void

    .line 97
    :pswitch_1
    iput v1, p0, Lcom/android/camera/component/Component;->m_State:I

    goto :goto_0

    .line 104
    :pswitch_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/component/Component;->m_State:I

    .line 105
    invoke-virtual {p0}, Lcom/android/camera/component/Component;->deinitializeOverride()V

    .line 106
    iput v1, p0, Lcom/android/camera/component/Component;->m_State:I

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/component/Component;->m_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/component/Component;->m_Name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOwner()Lcom/android/camera/component/IComponentOwner;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/camera/component/Component;->m_Owner:Lcom/android/camera/component/IComponentOwner;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/android/camera/component/Component;->m_State:I

    return v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 147
    return-void
.end method

.method public final hasHandler()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/camera/component/Component;->m_Handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final hasMessages(I)Z
    .locals 1
    .parameter "what"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/component/Component;->m_Handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/Component;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final hasMessages(Lcom/android/camera/component/Component;I)Z
    .locals 3
    .parameter "target"
    .parameter "what"

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "target == null in hasMessages()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "target is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 175
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final initialize()V
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/camera/component/Component;->threadAccessCheck()V

    .line 187
    iget v0, p0, Lcom/android/camera/component/Component;->m_State:I

    if-eqz v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 191
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/component/Component;->m_State:I

    .line 192
    invoke-virtual {p0}, Lcom/android/camera/component/Component;->initializeOverride()V

    .line 193
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/component/Component;->m_State:I

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method protected final removeMessages(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/camera/component/Component;->m_Handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/camera/component/Component;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    :cond_0
    return-void
.end method

.method protected final removeMessages(Lcom/android/camera/component/Component;I)V
    .locals 3
    .parameter "target"
    .parameter "what"

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "target == null in removeMessages()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "target is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 222
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    :cond_1
    return-void
.end method

.method protected final sendMessage(Lcom/android/camera/component/Component;I)Z
    .locals 8
    .parameter "target"
    .parameter "what"

    .prologue
    const/4 v3, 0x0

    .line 231
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/Component;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;IZ)Z

    move-result v0

    return v0
.end method

.method protected final sendMessage(Lcom/android/camera/component/Component;II)Z
    .locals 7
    .parameter "target"
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    const/4 v3, 0x0

    .line 239
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/component/Component;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method protected final sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 8
    .parameter "target"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    const/4 v6, 0x0

    .line 243
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/Component;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;IZ)Z

    move-result v0

    return v0
.end method

.method protected final sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;I)Z
    .locals 8
    .parameter "target"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 251
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/Component;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;IZ)Z

    move-result v0

    return v0
.end method

.method protected final sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;IZ)Z
    .locals 6
    .parameter "target"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delayMillis"
    .parameter "isUnique"

    .prologue
    .line 256
    if-nez p1, :cond_0

    .line 258
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "target == null in sendMessage()"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "target is NULL"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 263
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 264
    .local v0, handler:Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "there is not handler belongs to target component ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, msg:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 271
    .end local v1           #msg:Ljava/lang/String;
    :cond_1
    if-eqz p7, :cond_2

    .line 272
    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 273
    :cond_2
    if-gtz p6, :cond_4

    .line 274
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    .line 279
    .local v2, result:Z
    :goto_0
    if-nez v2, :cond_3

    .line 280
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot send message to target component ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_3
    return v2

    .line 276
    .end local v2           #result:Z
    :cond_4
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, p6

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    .restart local v2       #result:Z
    goto :goto_0
.end method

.method protected final sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;Z)Z
    .locals 8
    .parameter "target"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "isUnique"

    .prologue
    .line 247
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/Component;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;IZ)Z

    move-result v0

    return v0
.end method

.method protected final sendMessage(Lcom/android/camera/component/Component;IZ)Z
    .locals 8
    .parameter "target"
    .parameter "what"
    .parameter "isUnique"

    .prologue
    const/4 v3, 0x0

    .line 235
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v6, v3

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/Component;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;IZ)Z

    move-result v0

    return v0
.end method

.method final setOwner(Lcom/android/camera/component/IComponentOwner;)V
    .locals 1
    .parameter "owner"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/camera/component/Component;->m_Owner:Lcom/android/camera/component/IComponentOwner;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 292
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 295
    :cond_0
    iput-object p1, p0, Lcom/android/camera/component/Component;->m_Owner:Lcom/android/camera/component/IComponentOwner;

    .line 296
    return-void
.end method
