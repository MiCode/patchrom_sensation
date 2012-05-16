.class public Lcom/htc/music/util/MemoryCacheMBitmap;
.super Lcom/htc/music/util/MemoryCacheBase;
.source "MemoryCacheMBitmap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/music/util/MemoryCacheBase",
        "<TK;",
        "Lcom/htc/music/util/MBitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MemoryCacheMBitmap]"


# instance fields
.field protected mCount:I

.field protected mRefCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "count"

    .prologue
    .local p0, this:Lcom/htc/music/util/MemoryCacheMBitmap;,"Lcom/htc/music/util/MemoryCacheMBitmap<TK;>;"
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/htc/music/util/MemoryCacheBase;-><init>()V

    .line 10
    iput v0, p0, Lcom/htc/music/util/MemoryCacheMBitmap;->mRefCount:I

    .line 14
    iput p1, p0, Lcom/htc/music/util/MemoryCacheMBitmap;->mCount:I

    .line 15
    iput v0, p0, Lcom/htc/music/util/MemoryCacheMBitmap;->mRefCount:I

    .line 16
    return-void
.end method


# virtual methods
.method protected checkCapacity(Lcom/htc/music/util/MBitmap;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 34
    .local p0, this:Lcom/htc/music/util/MemoryCacheMBitmap;,"Lcom/htc/music/util/MemoryCacheMBitmap<TK;>;"
    iget-object v0, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/music/util/MemoryCacheMBitmap;->mCount:I

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
    .line 8
    .local p0, this:Lcom/htc/music/util/MemoryCacheMBitmap;,"Lcom/htc/music/util/MemoryCacheMBitmap<TK;>;"
    check-cast p1, Lcom/htc/music/util/MBitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/music/util/MemoryCacheMBitmap;->checkCapacity(Lcom/htc/music/util/MBitmap;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 40
    .local p0, this:Lcom/htc/music/util/MemoryCacheMBitmap;,"Lcom/htc/music/util/MemoryCacheMBitmap<TK;>;"
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 42
    iget-object v3, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 43
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 45
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<TK;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    iget-object v3, p0, Lcom/htc/music/util/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/util/MBitmap;

    .line 47
    .local v0, bmp:Lcom/htc/music/util/MBitmap;
    invoke-virtual {p0, v0}, Lcom/htc/music/util/MemoryCacheMBitmap;->releaseItemResource(Lcom/htc/music/util/MBitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 52
    .end local v0           #bmp:Lcom/htc/music/util/MBitmap;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<TK;>;"
    .end local v2           #keys:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 50
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<TK;>;"
    .restart local v2       #keys:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    :cond_0
    :try_start_1
    invoke-super {p0}, Lcom/htc/music/util/MemoryCacheBase;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    iget-object v3, p0, Lcom/htc/music/util/MemoryCacheBase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 54
    return-void
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 29
    .local p0, this:Lcom/htc/music/util/MemoryCacheMBitmap;,"Lcom/htc/music/util/MemoryCacheMBitmap<TK;>;"
    iget v0, p0, Lcom/htc/music/util/MemoryCacheMBitmap;->mCount:I

    return v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 61
    .local p0, this:Lcom/htc/music/util/MemoryCacheMBitmap;,"Lcom/htc/music/util/MemoryCacheMBitmap<TK;>;"
    iget v0, p0, Lcom/htc/music/util/MemoryCacheMBitmap;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/music/util/MemoryCacheMBitmap;->mRefCount:I

    .line 62
    const-string v0, "[MemoryCacheMBitmap]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRefCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/util/MemoryCacheMBitmap;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 70
    .local p0, this:Lcom/htc/music/util/MemoryCacheMBitmap;,"Lcom/htc/music/util/MemoryCacheMBitmap<TK;>;"
    iget v0, p0, Lcom/htc/music/util/MemoryCacheMBitmap;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/util/MemoryCacheMBitmap;->mRefCount:I

    .line 71
    const-string v0, "[MemoryCacheMBitmap]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRefCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/util/MemoryCacheMBitmap;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget v0, p0, Lcom/htc/music/util/MemoryCacheMBitmap;->mRefCount:I

    if-gtz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/htc/music/util/MemoryCacheMBitmap;->clear()V

    .line 75
    :cond_0
    return-void
.end method

.method protected releaseItemResource(Lcom/htc/music/util/MBitmap;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 20
    .local p0, this:Lcom/htc/music/util/MemoryCacheMBitmap;,"Lcom/htc/music/util/MemoryCacheMBitmap<TK;>;"
    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/htc/music/util/MBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 22
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 26
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method protected bridge synthetic releaseItemResource(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8
    .local p0, this:Lcom/htc/music/util/MemoryCacheMBitmap;,"Lcom/htc/music/util/MemoryCacheMBitmap<TK;>;"
    check-cast p1, Lcom/htc/music/util/MBitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/music/util/MemoryCacheMBitmap;->releaseItemResource(Lcom/htc/music/util/MBitmap;)V

    return-void
.end method
