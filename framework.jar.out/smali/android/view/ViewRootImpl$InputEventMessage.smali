.class Landroid/view/ViewRootImpl$InputEventMessage;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputEventMessage"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field private static sPool:Landroid/view/ViewRootImpl$InputEventMessage;

.field private static sPoolSize:I

.field private static final sPoolSync:Ljava/lang/Object;


# instance fields
.field mMessage:Landroid/os/Message;

.field mNext:Landroid/view/ViewRootImpl$InputEventMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3896
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSync:Ljava/lang/Object;

    .line 3898
    const/4 v0, 0x0

    sput v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 3902
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3903
    iput-object p1, p0, Landroid/view/ViewRootImpl$InputEventMessage;->mMessage:Landroid/os/Message;

    .line 3904
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 3905
    return-void
.end method

.method public static obtain(Landroid/os/Message;)Landroid/view/ViewRootImpl$InputEventMessage;
    .locals 3
    .parameter "msg"

    .prologue
    .line 3912
    sget-object v2, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 3913
    :try_start_0
    sget-object v1, Landroid/view/ViewRootImpl$InputEventMessage;->sPool:Landroid/view/ViewRootImpl$InputEventMessage;

    if-eqz v1, :cond_0

    .line 3914
    sget-object v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPool:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 3915
    .local v0, m:Landroid/view/ViewRootImpl$InputEventMessage;
    iget-object v1, v0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    sput-object v1, Landroid/view/ViewRootImpl$InputEventMessage;->sPool:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 3916
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 3917
    sget v1, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    .line 3918
    iput-object p0, v0, Landroid/view/ViewRootImpl$InputEventMessage;->mMessage:Landroid/os/Message;

    .line 3919
    monitor-exit v2

    .line 3922
    .end local v0           #m:Landroid/view/ViewRootImpl$InputEventMessage;
    :goto_0
    return-object v0

    .line 3921
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3922
    new-instance v0, Landroid/view/ViewRootImpl$InputEventMessage;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$InputEventMessage;-><init>(Landroid/os/Message;)V

    goto :goto_0

    .line 3921
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 3

    .prologue
    .line 3929
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputEventMessage;->mMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 3930
    sget-object v1, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 3931
    :try_start_0
    sget v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 3932
    sget-object v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPool:Landroid/view/ViewRootImpl$InputEventMessage;

    iput-object v0, p0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 3933
    sput-object p0, Landroid/view/ViewRootImpl$InputEventMessage;->sPool:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 3934
    sget v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    .line 3936
    :cond_0
    monitor-exit v1

    .line 3938
    return-void

    .line 3936
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
