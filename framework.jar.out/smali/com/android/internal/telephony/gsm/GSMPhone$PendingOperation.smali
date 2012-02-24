.class Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;
.super Ljava/lang/Object;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingOperation"
.end annotation


# instance fields
.field protected mOnComplete:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "onComplete"

    .prologue
    .line 3549
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3550
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;->mOnComplete:Landroid/os/Message;

    .line 3551
    return-void
.end method


# virtual methods
.method public onSessionStarted(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "res"
    .parameter "e"

    .prologue
    .line 3556
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;->mOnComplete:Landroid/os/Message;

    invoke-static {v0, p1, p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3557
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;->mOnComplete:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 3558
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone$PendingOperation;->mOnComplete:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3560
    :cond_0
    return-void
.end method
