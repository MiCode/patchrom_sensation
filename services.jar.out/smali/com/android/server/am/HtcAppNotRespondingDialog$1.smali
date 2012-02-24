.class Lcom/android/server/am/HtcAppNotRespondingDialog$1;
.super Landroid/os/Handler;
.source "HtcAppNotRespondingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HtcAppNotRespondingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/HtcAppNotRespondingDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, appErrorIntent:Landroid/content/Intent;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 195
    :goto_0
    if-eqz v1, :cond_0

    .line 196
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 199
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    invoke-virtual {v3}, Lcom/android/server/am/HtcAppNotRespondingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_0
    :goto_1
    return-void

    .line 167
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    #getter for: Lcom/android/server/am/HtcAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/HtcAppNotRespondingDialog;->access$000(Lcom/android/server/am/HtcAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    monitor-enter v4

    .line 168
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    #getter for: Lcom/android/server/am/HtcAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/HtcAppNotRespondingDialog;->access$000(Lcom/android/server/am/HtcAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    #getter for: Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v5}, Lcom/android/server/am/HtcAppNotRespondingDialog;->access$100(Lcom/android/server/am/HtcAppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 169
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    #getter for: Lcom/android/server/am/HtcAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/HtcAppNotRespondingDialog;->access$000(Lcom/android/server/am/HtcAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    #getter for: Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v4}, Lcom/android/server/am/HtcAppNotRespondingDialog;->access$100(Lcom/android/server/am/HtcAppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 178
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    #getter for: Lcom/android/server/am/HtcAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/HtcAppNotRespondingDialog;->access$000(Lcom/android/server/am/HtcAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    monitor-enter v4

    .line 179
    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    #getter for: Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v3}, Lcom/android/server/am/HtcAppNotRespondingDialog;->access$100(Lcom/android/server/am/HtcAppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 181
    .local v0, app:Lcom/android/server/am/ProcessRecord;
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    .line 182
    iget-object v3, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    #getter for: Lcom/android/server/am/HtcAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/HtcAppNotRespondingDialog;->access$000(Lcom/android/server/am/HtcAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual {v3, v0, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 186
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 187
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 188
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    iget-object v5, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    if-ne v3, v5, :cond_2

    .line 189
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 191
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v0           #app:Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 200
    :catch_0
    move-exception v2

    .line 201
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "HtcAppNotRespondingDialog"

    const-string v4, "bug report receiver dissappeared"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 205
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    :cond_3
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.htc.feedback"

    const-string v5, "com.htc.feedback.FeedbackReceiver"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 207
    iget-object v3, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    invoke-virtual {v3}, Lcom/android/server/am/HtcAppNotRespondingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
