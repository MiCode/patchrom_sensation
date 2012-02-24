.class Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "HtcIccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 52
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    sget-boolean v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mDropEvent:Z

    if-eqz v3, :cond_1

    .line 54
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    const-string v4, "drop event: "

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 61
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 65
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 66
    :try_start_0
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 67
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v2, v0

    .line 68
    .local v2, result:[I
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    const/4 v5, 0x0

    aget v5, v2, v5

    #setter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsServiceNumber:I
    invoke-static {v3, v5}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;I)I

    .line 74
    .end local v2           #result:[I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 75
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 71
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    const-string v5, "Cannot get BCSMS service number"

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 72
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    const/4 v5, 0x0

    #setter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsServiceNumber:I
    invoke-static {v3, v5}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 78
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 79
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 80
    :try_start_2
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3

    .line 81
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;

    #setter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsServiceLabel:Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;
    invoke-static {v5, v3}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$202(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;)Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;

    .line 87
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 88
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 84
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    const-string v5, "Cannot get BCSMS service label"

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 85
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    const/4 v5, 0x0

    #setter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsServiceLabel:Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;
    invoke-static {v3, v5}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$202(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;)Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 91
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 92
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 93
    :try_start_4
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4

    .line 94
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    #setter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsServiceEntry:[I
    invoke-static {v5, v3}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$302(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;[I)[I

    .line 100
    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 101
    monitor-exit v4

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3

    .line 97
    :cond_4
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    const-string v5, "Cannot query BCSMS service entry"

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 98
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    const/4 v5, 0x0

    #setter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsServiceEntry:[I
    invoke-static {v3, v5}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$302(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;[I)[I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 104
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 105
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 106
    :try_start_6
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_5

    .line 107
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    const/4 v5, 0x1

    #setter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsSetResult:I
    invoke-static {v3, v5}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$402(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;I)I

    .line 113
    :goto_4
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$000(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 114
    monitor-exit v4

    goto/16 :goto_0

    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v3

    .line 110
    :cond_5
    :try_start_7
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    const-string v5, "Cannot set BCSMS"

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 111
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    const/4 v5, 0x0

    #setter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mBCSmsSetResult:I
    invoke-static {v3, v5}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$402(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;I)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    .line 119
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 120
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mSetTestBCSmsLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$500(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 121
    :try_start_8
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_6

    .line 122
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    const/4 v5, 0x1

    #setter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mTestBCSmsSetResult:I
    invoke-static {v3, v5}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$602(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;I)I

    .line 128
    :goto_5
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mSetTestBCSmsLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$500(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 129
    monitor-exit v4

    goto/16 :goto_0

    :catchall_4
    move-exception v3

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v3

    .line 125
    :cond_6
    :try_start_9
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    const-string v5, "Cannot set Test BCSMS"

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 126
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    const/4 v5, 0x0

    #setter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mTestBCSmsSetResult:I
    invoke-static {v3, v5}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$602(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_5

    .line 132
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 133
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mGetTestBCSmsLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$700(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 134
    :try_start_a
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_7

    .line 135
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    #setter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mTestBCSmsGetResult:[I
    invoke-static {v5, v3}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$802(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;[I)[I

    .line 141
    :goto_6
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mGetTestBCSmsLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$700(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 142
    monitor-exit v4

    goto/16 :goto_0

    :catchall_5
    move-exception v3

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v3

    .line 138
    :cond_7
    :try_start_b
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    const-string v5, "Cannot query Test BCSMS"

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;

    const/4 v5, 0x0

    #setter for: Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->mTestBCSmsGetResult:[I
    invoke-static {v3, v5}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->access$802(Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;[I)[I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_6

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
