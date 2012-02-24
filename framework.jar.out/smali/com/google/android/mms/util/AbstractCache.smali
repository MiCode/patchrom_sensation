.class public abstract Lcom/google/android/mms/util/AbstractCache;
.super Ljava/util/LinkedHashMap;
.source "AbstractCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_CACHE_SIZE:I = 0x32

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "AbstractCache"

.field private static final serialVersionUID:J = -0x5651925f887dda58L


# instance fields
.field private mCacheSize:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 132
    .local p0, this:Lcom/google/android/mms/util/AbstractCache;,"Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/google/android/mms/util/AbstractCache;-><init>(I)V

    .line 133
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 3
    .parameter "cacheSize"

    .prologue
    .line 136
    .local p0, this:Lcom/google/android/mms/util/AbstractCache;,"Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    const/16 v0, 0xa

    const/high16 v1, 0x3f80

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 137
    iput p1, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheSize:I

    .line 138
    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, this:Lcom/google/android/mms/util/AbstractCache;,"Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 161
    .local v0, ret:Ljava/lang/Object;,"TV;"
    monitor-exit p0

    return-object v0

    .line 155
    .end local v0           #ret:Ljava/lang/Object;,"TV;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getCachedItemCount()I
    .locals 1

    .prologue
    .line 191
    .local p0, this:Lcom/google/android/mms/util/AbstractCache;,"Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/util/LinkedHashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, this:Lcom/google/android/mms/util/AbstractCache;,"Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/mms/util/AbstractCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 180
    .local v0, ret:Ljava/lang/Object;,"TV;"
    monitor-exit p0

    return-object v0

    .line 174
    .end local v0           #ret:Ljava/lang/Object;,"TV;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized invalidateAll()V
    .locals 1

    .prologue
    .line 187
    .local p0, this:Lcom/google/android/mms/util/AbstractCache;,"Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, this:Lcom/google/android/mms/util/AbstractCache;,"Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, this:Lcom/google/android/mms/util/AbstractCache;,"Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-super {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheSize:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
