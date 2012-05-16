.class public Lcom/htc/music/util/MemoryCache3DBitmap;
.super Lcom/htc/music/util/MemoryCacheBase;
.source "MemoryCache3DBitmap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/music/util/MemoryCacheBase",
        "<TK;",
        "Lcom/htc/sunny2/SBitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MemoryCache3DBitmap]"


# instance fields
.field protected mCount:I

.field protected mRefCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "count"

    .prologue
    .local p0, this:Lcom/htc/music/util/MemoryCache3DBitmap;,"Lcom/htc/music/util/MemoryCache3DBitmap<TK;>;"
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/htc/music/util/MemoryCacheBase;-><init>()V

    .line 13
    iput v0, p0, Lcom/htc/music/util/MemoryCache3DBitmap;->mRefCount:I

    .line 17
    iput p1, p0, Lcom/htc/music/util/MemoryCache3DBitmap;->mCount:I

    .line 18
    iput v0, p0, Lcom/htc/music/util/MemoryCache3DBitmap;->mRefCount:I

    .line 19
    return-void
.end method


# virtual methods
.method protected checkCapacity(Lcom/htc/sunny2/SBitmap;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 32
    .local p0, this:Lcom/htc/music/util/MemoryCache3DBitmap;,"Lcom/htc/music/util/MemoryCache3DBitmap<TK;>;"
    iget-object v0, p0, Lcom/htc/music/util/MemoryCache3DBitmap;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/music/util/MemoryCache3DBitmap;->mCount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic checkCapacity(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/util/OutOfCapacityException;
        }
    .end annotation

    .prologue
    .line 11
    .local p0, this:Lcom/htc/music/util/MemoryCache3DBitmap;,"Lcom/htc/music/util/MemoryCache3DBitmap<TK;>;"
    check-cast p1, Lcom/htc/sunny2/SBitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/music/util/MemoryCache3DBitmap;->checkCapacity(Lcom/htc/sunny2/SBitmap;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 38
    .local p0, this:Lcom/htc/music/util/MemoryCache3DBitmap;,"Lcom/htc/music/util/MemoryCache3DBitmap<TK;>;"
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/util/MemoryCache3DBitmap;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 40
    iget-object v3, p0, Lcom/htc/music/util/MemoryCache3DBitmap;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 41
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 43
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<TK;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    iget-object v3, p0, Lcom/htc/music/util/MemoryCache3DBitmap;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/SBitmap;

    .line 45
    .local v0, bmp:Lcom/htc/sunny2/SBitmap;
    invoke-virtual {v0}, Lcom/htc/sunny2/SBitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 50
    .end local v0           #bmp:Lcom/htc/sunny2/SBitmap;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<TK;>;"
    .end local v2           #keys:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/music/util/MemoryCache3DBitmap;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 48
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<TK;>;"
    .restart local v2       #keys:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    :cond_0
    :try_start_1
    invoke-super {p0}, Lcom/htc/music/util/MemoryCacheBase;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    iget-object v3, p0, Lcom/htc/music/util/MemoryCache3DBitmap;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 52
    return-void
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 27
    .local p0, this:Lcom/htc/music/util/MemoryCache3DBitmap;,"Lcom/htc/music/util/MemoryCache3DBitmap<TK;>;"
    iget v0, p0, Lcom/htc/music/util/MemoryCache3DBitmap;->mCount:I

    return v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 59
    .local p0, this:Lcom/htc/music/util/MemoryCache3DBitmap;,"Lcom/htc/music/util/MemoryCache3DBitmap<TK;>;"
    iget v0, p0, Lcom/htc/music/util/MemoryCache3DBitmap;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/music/util/MemoryCache3DBitmap;->mRefCount:I

    .line 60
    const-string v0, "[MemoryCache3DBitmap]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRefCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/util/MemoryCache3DBitmap;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 68
    .local p0, this:Lcom/htc/music/util/MemoryCache3DBitmap;,"Lcom/htc/music/util/MemoryCache3DBitmap<TK;>;"
    iget v0, p0, Lcom/htc/music/util/MemoryCache3DBitmap;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/util/MemoryCache3DBitmap;->mRefCount:I

    .line 69
    const-string v0, "[MemoryCache3DBitmap]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRefCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/util/MemoryCache3DBitmap;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget v0, p0, Lcom/htc/music/util/MemoryCache3DBitmap;->mRefCount:I

    if-gtz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/htc/music/util/MemoryCache3DBitmap;->clear()V

    .line 73
    :cond_0
    return-void
.end method

.method protected releaseItemResource(Lcom/htc/sunny2/SBitmap;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 23
    .local p0, this:Lcom/htc/music/util/MemoryCache3DBitmap;,"Lcom/htc/music/util/MemoryCache3DBitmap<TK;>;"
    invoke-virtual {p1}, Lcom/htc/sunny2/SBitmap;->recycle()V

    .line 24
    return-void
.end method

.method protected bridge synthetic releaseItemResource(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    .local p0, this:Lcom/htc/music/util/MemoryCache3DBitmap;,"Lcom/htc/music/util/MemoryCache3DBitmap<TK;>;"
    check-cast p1, Lcom/htc/sunny2/SBitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/music/util/MemoryCache3DBitmap;->releaseItemResource(Lcom/htc/sunny2/SBitmap;)V

    return-void
.end method
