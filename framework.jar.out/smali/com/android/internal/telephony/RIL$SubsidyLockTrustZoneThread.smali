.class Lcom/android/internal/telephony/RIL$SubsidyLockTrustZoneThread;
.super Ljava/lang/Thread;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubsidyLockTrustZoneThread"
.end annotation


# instance fields
.field private mMessage:Landroid/os/Message;

.field private mPassword:Ljava/lang/String;

.field private mQuery:Z

.field private mSubsidyType:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;ZLandroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "query"
    .parameter "response"

    .prologue
    .line 7748
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$SubsidyLockTrustZoneThread;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 7749
    iput-boolean p2, p0, Lcom/android/internal/telephony/RIL$SubsidyLockTrustZoneThread;->mQuery:Z

    .line 7750
    iput-object p3, p0, Lcom/android/internal/telephony/RIL$SubsidyLockTrustZoneThread;->mMessage:Landroid/os/Message;

    .line 7751
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 7759
    iget-boolean v2, p0, Lcom/android/internal/telephony/RIL$SubsidyLockTrustZoneThread;->mQuery:Z

    if-eqz v2, :cond_2

    .line 7760
    invoke-static {}, Lcom/android/internal/telephony/HtcSimLock;->getSubsidyLock()I

    move-result v1

    .line 7761
    .local v1, subsidyLockTypes:I
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$SubsidyLockTrustZoneThread;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[trustZone] subsidyLockTypes : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 7762
    if-gtz v1, :cond_0

    .line 7763
    const/4 v1, 0x0

    .line 7765
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$SubsidyLockTrustZoneThread;->mMessage:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 7766
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$SubsidyLockTrustZoneThread;->mMessage:Landroid/os/Message;

    invoke-static {v1, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 7767
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$SubsidyLockTrustZoneThread;->mMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 7779
    .end local v1           #subsidyLockTypes:I
    :cond_1
    :goto_0
    return-void

    .line 7770
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$SubsidyLockTrustZoneThread;->mSubsidyType:Ljava/lang/String;

    invoke-static {v2, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/RIL$SubsidyLockTrustZoneThread;->mPassword:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/HtcSimLock;->setSubsidyLock(ILjava/lang/String;)I

    move-result v0

    .line 7771
    .local v0, result:I
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$SubsidyLockTrustZoneThread;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[trustZone] setSubsidyLockTypes : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 7772
    if-nez v0, :cond_3

    .line 7773
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$SubsidyLockTrustZoneThread;->mMessage:Landroid/os/Message;

    invoke-static {v2, v5, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 7777
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$SubsidyLockTrustZoneThread;->mMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 7775
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$SubsidyLockTrustZoneThread;->mMessage:Landroid/os/Message;

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "GENERIC_FAILURE"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_1
.end method

.method public setParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "subsidyType"
    .parameter "password"

    .prologue
    .line 7754
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$SubsidyLockTrustZoneThread;->mSubsidyType:Ljava/lang/String;

    .line 7755
    iput-object p2, p0, Lcom/android/internal/telephony/RIL$SubsidyLockTrustZoneThread;->mPassword:Ljava/lang/String;

    .line 7756
    return-void
.end method
