.class Landroid/graphics/Bitmap$BitmapFinalizer;
.super Ljava/lang/Object;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapFinalizer"
.end annotation


# instance fields
.field private mBitmapSize:I

.field private final mNativeBitmap:I

.field private mPixelsIsAllocated:Z

.field private mRecycled:Z

.field private mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "nativeBitmap"

    .prologue
    const/4 v0, 0x0

    .line 1582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1577
    iput-boolean v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mRecycled:Z

    .line 1578
    iput v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mBitmapSize:I

    .line 1579
    iput-boolean v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mPixelsIsAllocated:Z

    .line 1583
    iput p1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:I

    .line 1584
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1619
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1624
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getRecycleBitmap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1625
    iget-boolean v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mRecycled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_0

    .line 1626
    iget-object v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    #calls: Landroid/graphics/Bitmap;->dumpStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V
    invoke-static {v0, v2}, Landroid/graphics/Bitmap;->access$100(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V

    .line 1630
    :cond_0
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1631
    invoke-static {}, Landroid/graphics/Bitmap;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1632
    :try_start_1
    iget-object v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/graphics/Bitmap;->access$300()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1633
    invoke-static {}, Landroid/graphics/Bitmap;->access$300()Ljava/util/Vector;

    move-result-object v0

    iget-object v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1634
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 1636
    :cond_2
    invoke-static {}, Landroid/graphics/Bitmap;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1637
    :try_start_2
    iget-boolean v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mPixelsIsAllocated:Z

    if-eqz v0, :cond_3

    .line 1638
    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mBitmapSize:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->access$420(I)I

    .line 1639
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mPixelsIsAllocated:Z

    .line 1641
    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 1643
    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:I

    :goto_0
    #calls: Landroid/graphics/Bitmap;->nativeDestructor(I)V
    invoke-static {v0}, Landroid/graphics/Bitmap;->access$500(I)V

    .line 1645
    return-void

    .line 1624
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getRecycleBitmap()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1625
    iget-boolean v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mRecycled:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v1, :cond_4

    .line 1626
    iget-object v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    #calls: Landroid/graphics/Bitmap;->dumpStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V
    invoke-static {v1, v2}, Landroid/graphics/Bitmap;->access$100(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V

    .line 1630
    :cond_4
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1631
    invoke-static {}, Landroid/graphics/Bitmap;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1632
    :try_start_3
    iget-object v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v2, :cond_5

    invoke-static {}, Landroid/graphics/Bitmap;->access$300()Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1633
    invoke-static {}, Landroid/graphics/Bitmap;->access$300()Ljava/util/Vector;

    move-result-object v2

    iget-object v3, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1634
    :cond_5
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1636
    :cond_6
    invoke-static {}, Landroid/graphics/Bitmap;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1637
    :try_start_4
    iget-boolean v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mPixelsIsAllocated:Z

    if-eqz v2, :cond_7

    .line 1638
    iget v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mBitmapSize:I

    invoke-static {v2}, Landroid/graphics/Bitmap;->access$420(I)I

    .line 1639
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mPixelsIsAllocated:Z

    .line 1641
    :cond_7
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1643
    iget v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:I

    #calls: Landroid/graphics/Bitmap;->nativeDestructor(I)V
    invoke-static {v1}, Landroid/graphics/Bitmap;->access$500(I)V

    .line 1624
    throw v0

    .line 1620
    :catch_0
    move-exception v0

    .line 1624
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getRecycleBitmap()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1625
    iget-boolean v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mRecycled:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_8

    .line 1626
    iget-object v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    #calls: Landroid/graphics/Bitmap;->dumpStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V
    invoke-static {v0, v2}, Landroid/graphics/Bitmap;->access$100(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V

    .line 1630
    :cond_8
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1631
    invoke-static {}, Landroid/graphics/Bitmap;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1632
    :try_start_5
    iget-object v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/graphics/Bitmap;->access$300()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1633
    invoke-static {}, Landroid/graphics/Bitmap;->access$300()Ljava/util/Vector;

    move-result-object v0

    iget-object v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1634
    :cond_9
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1636
    :cond_a
    invoke-static {}, Landroid/graphics/Bitmap;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1637
    :try_start_6
    iget-boolean v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mPixelsIsAllocated:Z

    if-eqz v0, :cond_b

    .line 1638
    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mBitmapSize:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->access$420(I)I

    .line 1639
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mPixelsIsAllocated:Z

    .line 1641
    :cond_b
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1643
    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:I

    goto/16 :goto_0

    .line 1634
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 1641
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 1634
    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    .line 1641
    :catchall_4
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    .line 1634
    :catchall_5
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v0

    .line 1641
    :catchall_6
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v0
.end method

.method protected setBitmapPixelIsAllocated(Z)V
    .locals 0
    .parameter "isPixelsAllocated"

    .prologue
    .line 1612
    iput-boolean p1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mPixelsIsAllocated:Z

    .line 1613
    return-void
.end method

.method protected setBitmapRecycled(Z)V
    .locals 0
    .parameter "isRecycled"

    .prologue
    .line 1597
    iput-boolean p1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mRecycled:Z

    .line 1598
    return-void
.end method

.method protected setBitmapSize(I)V
    .locals 0
    .parameter "bitmapSize"

    .prologue
    .line 1603
    iput p1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mBitmapSize:I

    .line 1604
    return-void
.end method

.method protected setBitmapStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;)V
    .locals 0
    .parameter "stackTrace"

    .prologue
    .line 1591
    iput-object p1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    .line 1592
    return-void
.end method
