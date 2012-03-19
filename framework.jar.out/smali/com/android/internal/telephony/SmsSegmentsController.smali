.class public Lcom/android/internal/telephony/SmsSegmentsController;
.super Ljava/lang/Object;
.source "SmsSegmentsController.java"


# static fields
.field public static final MAX_REQUEST_COUNT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "SMS"

.field private static sInstance:Lcom/android/internal/telephony/SmsSegmentsController;


# instance fields
.field private mRemainingMessages:I

.field private mReqeustQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mReqeustQueue:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/SmsSegmentsController;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    if-nez v0, :cond_1

    .line 29
    const-class v1, Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/android/internal/telephony/SmsSegmentsController;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsSegmentsController;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 126
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SmsSegmentsController]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method


# virtual methods
.method public addAllRequestInqueue(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;>;"
    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mReqeustQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addRequestInQueue(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .parameter "tracker"

    .prologue
    .line 75
    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mReqeustQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    monitor-exit v1

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkInSegment()Z
    .locals 3

    .prologue
    .line 93
    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    .line 98
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkInSegment> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsSegmentsController;->logd(Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkOutSegment()V
    .locals 3

    .prologue
    .line 105
    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    .line 106
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkOutSegment> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsSegmentsController;->logd(Ljava/lang/String;)V

    .line 109
    iget v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    if-gez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    .line 112
    :cond_0
    monitor-exit v1

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearRequest()V
    .locals 2

    .prologue
    .line 69
    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mReqeustQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    monitor-exit v1

    .line 72
    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAvailable()I
    .locals 2

    .prologue
    .line 39
    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    .line 40
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    rsub-int/lit8 v0, v0, 0x7

    monitor-exit v1

    return v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRemainingMsgInRIL()I
    .locals 2

    .prologue
    .line 45
    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    .line 46
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    monitor-exit v1

    return v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequest(I)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 2
    .parameter "index"

    .prologue
    .line 57
    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mReqeustQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequestQueueSize()I
    .locals 2

    .prologue
    .line 51
    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mReqeustQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasAllRequestDone()Z
    .locals 2

    .prologue
    .line 87
    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mReqeustQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasRequestInQueue()Z
    .locals 2

    .prologue
    .line 120
    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mReqeustQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSendSegment()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public removeRequest(I)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 2
    .parameter "index"

    .prologue
    .line 63
    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mReqeustQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
