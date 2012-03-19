.class public final Lcom/android/camera/component/ComponentManager;
.super Lcom/android/camera/ThreadDependencyObject;
.source "ComponentManager.java"


# static fields
.field private static final PRINT_ADD_REMOVE_LOGS:Z

.field private static final PRINT_INIT_LOGS:Z


# instance fields
.field private final m_Components:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/camera/component/Component;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsAutoInitEnabled:Z

.field private final m_Owner:Lcom/android/camera/component/IComponentOwner;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 16
    sget v0, Lcom/android/camera/debug/Debugger;->GENERIC_DEBUG_LEVEL:I

    if-lt v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/camera/component/ComponentManager;->PRINT_INIT_LOGS:Z

    .line 17
    sget v0, Lcom/android/camera/debug/Debugger;->GENERIC_DEBUG_LEVEL:I

    if-lt v0, v1, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/camera/component/ComponentManager;->PRINT_ADD_REMOVE_LOGS:Z

    return-void

    :cond_0
    move v0, v2

    .line 16
    goto :goto_0

    :cond_1
    move v1, v2

    .line 17
    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/camera/component/IComponentOwner;)V
    .locals 2
    .parameter "owner"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/ThreadDependencyObject;-><init>()V

    .line 22
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    .line 31
    if-nez p1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "owner is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "owner is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/android/camera/component/ComponentManager;->m_Owner:Lcom/android/camera/component/IComponentOwner;

    .line 37
    return-void
.end method

.method private deinitializeComponent(Lcom/android/camera/component/Component;)V
    .locals 3
    .parameter "component"

    .prologue
    .line 96
    sget-boolean v0, Lcom/android/camera/component/ComponentManager;->PRINT_INIT_LOGS:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deinitializing component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->deinitialize()V

    .line 101
    return-void
.end method

.method private initializeComponent(Lcom/android/camera/component/Component;)V
    .locals 3
    .parameter "component"

    .prologue
    .line 165
    sget-boolean v0, Lcom/android/camera/component/ComponentManager;->PRINT_INIT_LOGS:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->initialize()V

    .line 170
    return-void
.end method


# virtual methods
.method public addComponent(Lcom/android/camera/component/Component;)V
    .locals 5
    .parameter "component"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->threadAccessCheck()V

    .line 49
    if-nez p1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "component is NULL in addComponent()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "component is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getOwner()Lcom/android/camera/component/IComponentOwner;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "component is already owned"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "component is already owned"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getDependencyThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->getDependencyThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 61
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "component is created from another thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "component is created from another thread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_2
    iget-object v2, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v2

    .line 69
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' has been added before"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' has been added before"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    .end local v0           #name:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 77
    .restart local v0       #name:Ljava/lang/String;
    :cond_3
    :try_start_1
    sget-boolean v1, Lcom/android/camera/component/ComponentManager;->PRINT_ADD_REMOVE_LOGS:Z

    if-eqz v1, :cond_4

    .line 78
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

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

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_4
    iget-object v1, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lcom/android/camera/component/ComponentManager;->m_Owner:Lcom/android/camera/component/IComponentOwner;

    invoke-virtual {p1, v1}, Lcom/android/camera/component/Component;->setOwner(Lcom/android/camera/component/IComponentOwner;)V

    .line 85
    iget-boolean v1, p0, Lcom/android/camera/component/ComponentManager;->m_IsAutoInitEnabled:Z

    if-eqz v1, :cond_5

    .line 86
    invoke-direct {p0, p1}, Lcom/android/camera/component/ComponentManager;->initializeComponent(Lcom/android/camera/component/Component;)V

    .line 87
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    return-void
.end method

.method public deinitializeComponents()V
    .locals 4

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->threadAccessCheck()V

    .line 112
    iget-object v3, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v3

    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/Component;

    .line 115
    .local v0, component:Lcom/android/camera/component/Component;
    invoke-direct {p0, v0}, Lcom/android/camera/component/ComponentManager;->deinitializeComponent(Lcom/android/camera/component/Component;)V

    goto :goto_0

    .line 116
    .end local v0           #component:Lcom/android/camera/component/Component;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    return-void
.end method

.method public enableAutoInitialization(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/camera/component/ComponentManager;->m_IsAutoInitEnabled:Z

    if-eq v0, p1, :cond_0

    .line 126
    iput-boolean p1, p0, Lcom/android/camera/component/ComponentManager;->m_IsAutoInitEnabled:Z

    .line 127
    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->initializeComponents()V

    .line 130
    :cond_0
    return-void
.end method

.method public getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;
    .locals 2
    .parameter "name"

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "name is NULL in getComponent()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/Component;

    monitor-exit v1

    return-object v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOwner()Lcom/android/camera/component/IComponentOwner;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/camera/component/ComponentManager;->m_Owner:Lcom/android/camera/component/IComponentOwner;

    return-object v0
.end method

.method public initializeComponents()V
    .locals 4

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->threadAccessCheck()V

    .line 181
    iget-object v3, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v3

    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/Component;

    .line 184
    .local v0, component:Lcom/android/camera/component/Component;
    invoke-direct {p0, v0}, Lcom/android/camera/component/ComponentManager;->initializeComponent(Lcom/android/camera/component/Component;)V

    goto :goto_0

    .line 185
    .end local v0           #component:Lcom/android/camera/component/Component;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    return-void
.end method

.method public removeComponent(Lcom/android/camera/component/Component;)Z
    .locals 6
    .parameter "component"

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->threadAccessCheck()V

    .line 198
    if-nez p1, :cond_0

    .line 200
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "component is NULL in addComponent()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "component is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 205
    :cond_0
    iget-object v3, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v3

    .line 207
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/component/Component;->getName()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/Component;

    .line 209
    .local v0, candComponent:Lcom/android/camera/component/Component;
    if-ne v0, p1, :cond_2

    .line 212
    invoke-direct {p0, p1}, Lcom/android/camera/component/ComponentManager;->deinitializeComponent(Lcom/android/camera/component/Component;)V

    .line 215
    sget-boolean v2, Lcom/android/camera/component/ComponentManager;->PRINT_ADD_REMOVE_LOGS:Z

    if-eqz v2, :cond_1

    .line 216
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing component "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

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

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/camera/component/Component;->setOwner(Lcom/android/camera/component/IComponentOwner;)V

    .line 220
    iget-object v2, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const/4 v2, 0x1

    monitor-exit v3

    .line 223
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 224
    .end local v0           #candComponent:Lcom/android/camera/component/Component;
    .end local v1           #name:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeComponents()V
    .locals 10

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/camera/component/ComponentManager;->threadAccessCheck()V

    .line 237
    iget-object v7, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    monitor-enter v7

    .line 240
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 241
    .local v5, names:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 244
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 247
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/Component;

    .line 248
    .local v1, component:Lcom/android/camera/component/Component;
    invoke-direct {p0, v1}, Lcom/android/camera/component/ComponentManager;->deinitializeComponent(Lcom/android/camera/component/Component;)V

    .line 251
    sget-boolean v6, Lcom/android/camera/component/ComponentManager;->PRINT_ADD_REMOVE_LOGS:Z

    if-eqz v6, :cond_0

    .line 252
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing component "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/camera/component/Component;->setOwner(Lcom/android/camera/component/IComponentOwner;)V

    .line 256
    iget-object v6, p0, Lcom/android/camera/component/ComponentManager;->m_Components:Ljava/util/Hashtable;

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    .end local v1           #component:Lcom/android/camera/component/Component;
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    monitor-exit v7

    .line 259
    return-void

    .line 258
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #names:[Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method
