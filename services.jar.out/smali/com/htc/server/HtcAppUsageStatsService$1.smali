.class Lcom/htc/server/HtcAppUsageStatsService$1;
.super Landroid/os/Handler;
.source "HtcAppUsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcAppUsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/HtcAppUsageStatsService;


# direct methods
.method constructor <init>(Lcom/htc/server/HtcAppUsageStatsService;)V
    .locals 0
    .parameter

    .prologue
    .line 957
    iput-object p1, p0, Lcom/htc/server/HtcAppUsageStatsService$1;->this$0:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 961
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 970
    :goto_0
    return-void

    .line 963
    :pswitch_0
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService$1;->this$0:Lcom/htc/server/HtcAppUsageStatsService;

    #getter for: Lcom/htc/server/HtcAppUsageStatsService;->mStatsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/server/HtcAppUsageStatsService;->access$000(Lcom/htc/server/HtcAppUsageStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 964
    :try_start_0
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService$1;->this$0:Lcom/htc/server/HtcAppUsageStatsService;

    const/4 v2, 0x0

    #calls: Lcom/htc/server/HtcAppUsageStatsService;->writeStatsToFileSLOCK(Z)V
    invoke-static {v0, v2}, Lcom/htc/server/HtcAppUsageStatsService;->access$400(Lcom/htc/server/HtcAppUsageStatsService;Z)V

    .line 965
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 961
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
