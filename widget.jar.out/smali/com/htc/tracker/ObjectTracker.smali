.class public Lcom/htc/tracker/ObjectTracker;
.super Ljava/lang/Object;
.source "ObjectTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/tracker/ObjectTracker$Visitor;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/htc/tracker/ObjectTracker;


# instance fields
.field private mKey:Ljava/lang/Object;

.field private final mTempVisitors:Ljava/util/WeakHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashSet",
            "<",
            "Lcom/htc/tracker/ObjectTracker$Visitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisitors:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/WeakHashSet",
            "<",
            "Lcom/htc/tracker/ObjectTracker$Visitor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/tracker/ObjectTracker;->sInstance:Lcom/htc/tracker/ObjectTracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    .line 105
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    .line 106
    new-instance v0, Ljava/util/WeakHashSet;

    invoke-direct {v0}, Ljava/util/WeakHashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/tracker/ObjectTracker;->mTempVisitors:Ljava/util/WeakHashSet;

    .line 107
    return-void
.end method

.method public static getInstance()Lcom/htc/tracker/ObjectTracker;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/htc/tracker/ObjectTracker;->sInstance:Lcom/htc/tracker/ObjectTracker;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/htc/tracker/ObjectTracker;

    invoke-direct {v0}, Lcom/htc/tracker/ObjectTracker;-><init>()V

    sput-object v0, Lcom/htc/tracker/ObjectTracker;->sInstance:Lcom/htc/tracker/ObjectTracker;

    .line 112
    :cond_0
    sget-object v0, Lcom/htc/tracker/ObjectTracker;->sInstance:Lcom/htc/tracker/ObjectTracker;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized remove(Lcom/htc/tracker/ObjectTracker$Visitor;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 94
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashSet;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setKey(Ljava/lang/Object;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 22
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized track(Lcom/htc/tracker/ObjectTracker$Visitor;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    new-instance v0, Ljava/util/WeakHashSet;

    .end local v0           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    invoke-direct {v0}, Ljava/util/WeakHashSet;-><init>()V

    .line 52
    .restart local v0       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/WeakHashSet;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mTempVisitors:Ljava/util/WeakHashSet;

    invoke-virtual {v1}, Ljava/util/WeakHashSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mTempVisitors:Ljava/util/WeakHashSet;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashSet;->addAll(Ljava/util/Collection;)Z

    .line 60
    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mTempVisitors:Ljava/util/WeakHashSet;

    invoke-virtual {v1}, Ljava/util/WeakHashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 54
    .restart local v0       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    check-cast v0, Ljava/util/WeakHashSet;

    .restart local v0       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    goto :goto_0

    .line 63
    .end local v0           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :cond_2
    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mTempVisitors:Ljava/util/WeakHashSet;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 65
    :catch_0
    move-exception v1

    goto :goto_1

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized track(Ljava/lang/Object;Lcom/htc/tracker/ObjectTracker$Visitor;)V
    .locals 5
    .parameter "key"
    .parameter "obj"

    .prologue
    .line 27
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 28
    const/4 v1, 0x0

    .line 30
    .local v1, visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :try_start_0
    iget-object v3, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 31
    new-instance v2, Ljava/util/WeakHashSet;

    invoke-direct {v2}, Ljava/util/WeakHashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v1           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    .local v2, visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :try_start_1
    iget-object v3, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 36
    .end local v2           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    .restart local v1       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :goto_0
    :try_start_2
    invoke-virtual {v1, p2}, Ljava/util/WeakHashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    .end local v1           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 34
    .restart local v1       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v4, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/WeakHashSet;

    move-object v1, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 27
    :catchall_0
    move-exception v3

    :goto_2
    monitor-exit p0

    throw v3

    .line 38
    :catch_0
    move-exception v3

    goto :goto_1

    .end local v1           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    .restart local v2       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    .restart local v1       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    goto :goto_1

    .line 27
    .end local v1           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    .restart local v2       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    .restart local v1       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    goto :goto_2
.end method

.method public declared-synchronized visit(Ljava/lang/Object;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 73
    monitor-enter p0

    if-nez p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 76
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashSet;

    .line 78
    .local v1, visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    invoke-virtual {v1}, Ljava/util/WeakHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 79
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/tracker/ObjectTracker$Visitor;

    invoke-interface {v2}, Lcom/htc/tracker/ObjectTracker$Visitor;->visit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 83
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    .end local v1           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :catch_0
    move-exception v2

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
