.class public abstract Lcom/android/camera/ThreadDependencyObject;
.super Ljava/lang/Object;
.source "ThreadDependencyObject.java"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private final m_DependencyThread:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->m_DependencyThread:Ljava/lang/Thread;

    .line 20
    return-void
.end method


# virtual methods
.method public final getDependencyThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->m_DependencyThread:Ljava/lang/Thread;

    return-object v0
.end method

.method protected final threadAccessCheck()V
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->m_DependencyThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "cross-thread access"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    return-void
.end method
