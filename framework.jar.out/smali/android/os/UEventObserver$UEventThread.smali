.class Landroid/os/UEventObserver$UEventThread;
.super Ljava/lang/Thread;
.source "UEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UEventThread"
.end annotation


# instance fields
.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 98
    const-string v0, "UEventObserver"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    .line 99
    return-void
.end method


# virtual methods
.method public addObserver(Ljava/lang/String;Landroid/os/UEventObserver;)V
    .locals 2
    .parameter "match"
    .parameter "observer"

    .prologue
    .line 140
    iget-object v1, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    monitor-exit v1

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeObserver(Landroid/os/UEventObserver;)V
    .locals 5
    .parameter "observer"

    .prologue
    .line 150
    iget-object v3, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 151
    const/4 v0, 0x1

    .line 152
    .local v0, found:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 153
    const/4 v0, 0x0

    .line 154
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 155
    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 159
    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 160
    iget-object v2, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 161
    const/4 v0, 0x1

    .line 162
    goto :goto_0

    .line 154
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 166
    .end local v1           #i:I
    :cond_2
    monitor-exit v3

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public run()V
    .locals 8

    .prologue
    .line 102
    #calls: Landroid/os/UEventObserver;->native_setup()V
    invoke-static {}, Landroid/os/UEventObserver;->access$000()V

    .line 104
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 110
    .local v0, buffer:[B
    :cond_0
    :goto_0
    #calls: Landroid/os/UEventObserver;->next_event([B)I
    invoke-static {v0}, Landroid/os/UEventObserver;->access$100([B)I

    move-result v3

    .line 111
    .local v3, len:I
    if-lez v3, :cond_0

    .line 112
    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v0, v5, v3}, Ljava/lang/String;-><init>([BII)V

    .line 116
    .local v1, bufferStr:Ljava/lang/String;
    iget-object v6, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    monitor-enter v6

    .line 117
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_0
    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 120
    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 121
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    .line 124
    iget-object v5, p0, Landroid/os/UEventObserver$UEventThread;->mObservers:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UEventObserver;

    new-instance v7, Landroid/os/UEventObserver$UEvent;

    invoke-direct {v7, v1}, Landroid/os/UEventObserver$UEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/os/UEventObserver;->onUEvent(Landroid/os/UEventObserver$UEvent;)V

    .line 117
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 131
    .end local v4           #s:Ljava/lang/String;
    :cond_2
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
