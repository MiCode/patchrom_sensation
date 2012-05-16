.class public Lcom/htc/music/util/MemoryCacheMBitmapByTime;
.super Lcom/htc/music/util/MemoryCacheMBitmap;
.source "MemoryCacheMBitmapByTime.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/music/util/MemoryCacheMBitmap",
        "<",
        "Lcom/htc/music/util/TimedKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MemoryCacheMBitmapByTime]"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/htc/music/util/MemoryCacheMBitmap;-><init>(I)V

    .line 11
    return-void
.end method


# virtual methods
.method public pull(I)Lcom/htc/music/util/MBitmap;
    .locals 4
    .parameter "key"

    .prologue
    .line 53
    if-gez p1, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    .line 57
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 59
    new-instance v1, Lcom/htc/music/util/TimedKey;

    invoke-direct {v1, p1}, Lcom/htc/music/util/TimedKey;-><init>(I)V

    .line 60
    .local v1, timedKey:Lcom/htc/music/util/TimedKey;
    iget-object v2, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/util/MBitmap;

    .line 61
    .local v0, bitmap:Lcom/htc/music/util/MBitmap;
    if-eqz v0, :cond_1

    .line 62
    iget-object v2, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0           #bitmap:Lcom/htc/music/util/MBitmap;
    .end local v1           #timedKey:Lcom/htc/music/util/TimedKey;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public pull(Lcom/htc/music/util/TimedKey;)Lcom/htc/music/util/MBitmap;
    .locals 3
    .parameter "key"

    .prologue
    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 76
    iget-object v1, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/util/MBitmap;

    .line 77
    .local v0, bitmap:Lcom/htc/music/util/MBitmap;
    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 81
    return-object v0

    .line 83
    .end local v0           #bitmap:Lcom/htc/music/util/MBitmap;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public bridge synthetic pull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    check-cast p1, Lcom/htc/music/util/TimedKey;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->pull(Lcom/htc/music/util/TimedKey;)Lcom/htc/music/util/MBitmap;

    move-result-object v0

    return-object v0
.end method

.method public push(ILcom/htc/music/util/MBitmap;)Z
    .locals 2
    .parameter "key"
    .parameter "bitmap"

    .prologue
    .line 93
    new-instance v0, Lcom/htc/music/util/TimedKey;

    invoke-direct {v0, p1}, Lcom/htc/music/util/TimedKey;-><init>(I)V

    .line 94
    .local v0, k:Lcom/htc/music/util/TimedKey;
    invoke-super {p0, v0, p2}, Lcom/htc/music/util/MemoryCacheMBitmap;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public push(ILcom/htc/music/util/MBitmap;J)Z
    .locals 2
    .parameter "key"
    .parameter "bitmap"
    .parameter "timeStamp"

    .prologue
    .line 88
    new-instance v0, Lcom/htc/music/util/TimedKey;

    invoke-direct {v0, p1, p3, p4}, Lcom/htc/music/util/TimedKey;-><init>(IJ)V

    .line 89
    .local v0, k:Lcom/htc/music/util/TimedKey;
    invoke-super {p0, v0, p2}, Lcom/htc/music/util/MemoryCacheMBitmap;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected removeTheLowestPriorityItem(Lcom/htc/music/util/TimedKey;)Z
    .locals 11
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/util/OutOfCapacityException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 15
    iget-object v7, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v7

    if-gtz v7, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v5

    .line 16
    :cond_1
    if-nez p1, :cond_2

    move v5, v6

    goto :goto_0

    .line 18
    :cond_2
    iget-object v7, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 19
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/music/util/TimedKey;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 20
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/music/util/TimedKey;>;"
    const/4 v4, 0x0

    .line 21
    .local v4, lowestPriorityKey:Lcom/htc/music/util/TimedKey;
    const/4 v0, 0x0

    .line 22
    .local v0, compareKey:Lcom/htc/music/util/TimedKey;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #lowestPriorityKey:Lcom/htc/music/util/TimedKey;
    check-cast v4, Lcom/htc/music/util/TimedKey;

    .line 24
    .restart local v4       #lowestPriorityKey:Lcom/htc/music/util/TimedKey;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #compareKey:Lcom/htc/music/util/TimedKey;
    check-cast v0, Lcom/htc/music/util/TimedKey;

    .line 26
    .restart local v0       #compareKey:Lcom/htc/music/util/TimedKey;
    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 27
    invoke-virtual {v4}, Lcom/htc/music/util/TimedKey;->getAccessTime()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/htc/music/util/TimedKey;->getAccessTime()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    .line 28
    move-object v4, v0

    goto :goto_1

    .line 34
    :cond_4
    if-nez v4, :cond_5

    move v5, v6

    .line 35
    goto :goto_0

    .line 39
    :cond_5
    invoke-virtual {v4}, Lcom/htc/music/util/TimedKey;->getAccessTime()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/htc/music/util/TimedKey;->getAccessTime()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_6

    move v5, v6

    .line 40
    goto :goto_0

    .line 43
    :cond_6
    iget-object v6, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/MBitmap;

    .line 45
    .local v2, item:Lcom/htc/music/util/MBitmap;
    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {p0, v2}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->releaseItemResource(Lcom/htc/music/util/MBitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic removeTheLowestPriorityItem(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/util/OutOfCapacityException;
        }
    .end annotation

    .prologue
    .line 6
    check-cast p1, Lcom/htc/music/util/TimedKey;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->removeTheLowestPriorityItem(Lcom/htc/music/util/TimedKey;)Z

    move-result v0

    return v0
.end method
