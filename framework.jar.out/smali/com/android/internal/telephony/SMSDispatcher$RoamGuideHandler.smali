.class Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamGuideHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 3206
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    .line 3207
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3208
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3212
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 3266
    :goto_0
    return-void

    .line 3214
    :pswitch_0
    const-string v8, "RoamingGuide"

    const-string v9, "MSG_SPRINT_ROAMING_GUIDE  >>>"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v8, v8, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 3219
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    .line 3222
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v8, v8, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->htcGetCdmaEriCallGuard()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 3224
    const-string v6, "RoamingGuide"

    const-string v7, " CDMA roaming !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/internal/telephony/SMSDispatcher;->showRoamingGuideDialogAndWait(Ljava/lang/Object;II)V
    invoke-static {v6, v7, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->access$600(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/Object;II)V

    .line 3262
    :cond_0
    :goto_1
    const-string v6, "RoamingGuide"

    const-string v7, "MSG_SPRINT_ROAMING_GUIDE  <<<"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3227
    :cond_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_0

    .line 3228
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 3229
    .local v5, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-lez v8, :cond_2

    move v1, v6

    .line 3230
    .local v1, bFirstOfAll:Z
    :goto_2
    iget v8, p1, Landroid/os/Message;->arg2:I

    if-lez v8, :cond_3

    move v2, v6

    .line 3232
    .local v2, bLastOfAll:Z
    :goto_3
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v7}, Lcom/android/internal/telephony/SMSDispatcher;->isImproveSmsSending()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3233
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v6, v5, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V

    goto :goto_1

    .end local v1           #bFirstOfAll:Z
    .end local v2           #bLastOfAll:Z
    :cond_2
    move v1, v7

    .line 3229
    goto :goto_2

    .restart local v1       #bFirstOfAll:Z
    :cond_3
    move v2, v7

    .line 3230
    goto :goto_3

    .line 3237
    .restart local v2       #bLastOfAll:Z
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v7, v7, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 3239
    .local v3, ss:I
    const-string v7, "RoamingGuide"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bFirstOfAll >"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bLastOfAll >"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #calls: Lcom/android/internal/telephony/SMSDispatcher;->isNotInService(I)Z
    invoke-static {v7, v3}, Lcom/android/internal/telephony/SMSDispatcher;->access$000(Lcom/android/internal/telephony/SMSDispatcher;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3241
    invoke-static {v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 3243
    :cond_5
    iget-object v7, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-static {v7}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 3244
    .local v0, appName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #getter for: Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;
    invoke-static {v7}, Lcom/android/internal/telephony/SMSDispatcher;->access$100(Lcom/android/internal/telephony/SMSDispatcher;)Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v7

    invoke-virtual {v7, v0, v6}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3245
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v6, v5, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V

    goto :goto_1

    .line 3247
    :cond_6
    const/4 v6, 0x7

    invoke-virtual {p0, v6, v5}, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 3257
    .end local v0           #appName:Ljava/lang/String;
    .end local v1           #bFirstOfAll:Z
    .end local v2           #bLastOfAll:Z
    .end local v3           #ss:I
    .end local v5           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_7
    const-string v6, "RoamingGuide"

    const-string v7, " GSM roaming !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$RoamGuideHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/internal/telephony/SMSDispatcher;->showRoamingGuideDialogAndWait(Ljava/lang/Object;II)V
    invoke-static {v6, v7, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->access$600(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 3212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
