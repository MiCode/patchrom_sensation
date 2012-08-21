.class Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;
.super Landroid/os/Handler;
.source "ProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/map/provider/ProviderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationHandler"
.end annotation


# static fields
.field private static final DELAYED_NOTIF_TIME:I = 0x3e8


# instance fields
.field private numOfNotification:I

.field final synthetic this$0:Lcom/broadcom/bt/service/map/provider/ProviderHelper;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/map/provider/ProviderHelper;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->this$0:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->numOfNotification:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/map/provider/ProviderHelper;Lcom/broadcom/bt/service/map/provider/ProviderHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;-><init>(Lcom/broadcom/bt/service/map/provider/ProviderHelper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_0

    .line 88
    const/4 v6, 0x0

    .line 90
    .local v6, notifMsg:Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6           #notifMsg:Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;
    check-cast v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;

    .line 91
    .restart local v6       #notifMsg:Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;
    const-string v0, "ProviderHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleMessage] NOTIF_TYPE ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mNotifType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "PROVIDER_ID= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mProviderId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", MESSAGE_ID = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mMessageId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", MESSAGE_FOLDER = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mMessageFolder:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget v0, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mNotifType:I

    sparse-switch v0, :sswitch_data_0

    .line 139
    const-string v0, "ProviderHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleMessage] Unknown notification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mNotifType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    iget v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->numOfNotification:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->numOfNotification:I

    .line 145
    .end local v6           #notifMsg:Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;
    :cond_0
    return-void

    .line 94
    .restart local v6       #notifMsg:Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;
    :sswitch_0
    const-string v0, "ProviderHelper"

    const-string v1, "[handleMessage] NEW MSG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->this$0:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    iget-object v1, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mProviderId:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mMessageId:Ljava/lang/String;

    iget-object v4, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mMessageFolder:Ljava/lang/String;

    const-string v5, ""

    #calls: Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->access$000(Lcom/broadcom/bt/service/map/provider/ProviderHelper;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 99
    :sswitch_1
    const-string v0, "ProviderHelper"

    const-string v1, "[handleMessage] DELIVERY SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->this$0:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    iget-object v1, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mProviderId:Ljava/lang/String;

    iget-object v3, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mMessageId:Ljava/lang/String;

    iget-object v4, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mMessageFolder:Ljava/lang/String;

    const-string v5, ""

    #calls: Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->access$000(Lcom/broadcom/bt/service/map/provider/ProviderHelper;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 104
    :sswitch_2
    const-string v0, "ProviderHelper"

    const-string v1, "[handleMessage] SENDING SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->this$0:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    iget-object v1, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mProviderId:Ljava/lang/String;

    const/4 v2, 0x2

    iget-object v3, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mMessageId:Ljava/lang/String;

    iget-object v4, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mMessageFolder:Ljava/lang/String;

    const-string v5, ""

    #calls: Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->access$000(Lcom/broadcom/bt/service/map/provider/ProviderHelper;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 109
    :sswitch_3
    const-string v0, "ProviderHelper"

    const-string v1, "[handleMessage] DELIVERY FAILURE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->this$0:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    iget-object v1, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mProviderId:Ljava/lang/String;

    const/4 v2, 0x3

    iget-object v3, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mMessageId:Ljava/lang/String;

    iget-object v4, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mMessageFolder:Ljava/lang/String;

    const-string v5, ""

    #calls: Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->access$000(Lcom/broadcom/bt/service/map/provider/ProviderHelper;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 114
    :sswitch_4
    const-string v0, "ProviderHelper"

    const-string v1, "[handleMessage] MEMORY FULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->this$0:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    iget-object v1, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mProviderId:Ljava/lang/String;

    const/4 v2, 0x5

    iget-object v3, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mMessageId:Ljava/lang/String;

    iget-object v4, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mMessageFolder:Ljava/lang/String;

    const-string v5, ""

    #calls: Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->access$000(Lcom/broadcom/bt/service/map/provider/ProviderHelper;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 119
    :sswitch_5
    const-string v0, "ProviderHelper"

    const-string v1, "[handleMessage] MEMORY AVAILABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->this$0:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    iget-object v1, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mProviderId:Ljava/lang/String;

    const/4 v2, 0x6

    iget-object v3, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mMessageId:Ljava/lang/String;

    iget-object v4, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mMessageFolder:Ljava/lang/String;

    const-string v5, ""

    #calls: Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->access$000(Lcom/broadcom/bt/service/map/provider/ProviderHelper;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 124
    :sswitch_6
    const-string v0, "ProviderHelper"

    const-string v1, "[handleMessage] MSG DELETED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->this$0:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    iget-object v1, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mProviderId:Ljava/lang/String;

    const/4 v2, 0x7

    iget-object v3, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mMessageId:Ljava/lang/String;

    iget-object v4, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mMessageFolder:Ljava/lang/String;

    const-string v5, ""

    #calls: Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->access$000(Lcom/broadcom/bt/service/map/provider/ProviderHelper;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 129
    :sswitch_7
    const-string v0, "ProviderHelper"

    const-string v1, "[handleMessage] MSG SHIFT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->this$0:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    iget-object v1, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mProviderId:Ljava/lang/String;

    const/16 v2, 0x8

    iget-object v3, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mMessageId:Ljava/lang/String;

    iget-object v4, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mMessageFolder:Ljava/lang/String;

    iget-object v5, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mOldFolder:Ljava/lang/String;

    #calls: Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->access$000(Lcom/broadcom/bt/service/map/provider/ProviderHelper;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 134
    :sswitch_8
    const-string v0, "ProviderHelper"

    const-string v1, "[handleMessage] MSG REMOVE FROM MAP ONLY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->this$0:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    iget-object v1, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mProviderId:Ljava/lang/String;

    const/16 v2, 0x7d

    iget-object v3, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mMessageId:Ljava/lang/String;

    iget-object v4, v6, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;->mMessageFolder:Ljava/lang/String;

    const-string v5, ""

    #calls: Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->access$000(Lcom/broadcom/bt/service/map/provider/ProviderHelper;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 92
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x7d -> :sswitch_8
    .end sparse-switch
.end method

.method public sendDelayedNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "notifType"
    .parameter "providerId"
    .parameter "messageId"
    .parameter "messageFolder"
    .parameter "oldFolder"

    .prologue
    .line 75
    iget v1, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->numOfNotification:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->numOfNotification:I

    .line 77
    const-string v1, "ProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sendDelayedNotification] notifType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", provider id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", message id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", message folder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;

    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->this$0:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;-><init>(Lcom/broadcom/bt/service/map/provider/ProviderHelper;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .local v0, notifMsg:Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationMsg;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 82
    .local v7, msg:Landroid/os/Message;
    const-string v1, "ProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sendDelayedNotification] numOfNotifiction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->numOfNotification:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", delay time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->numOfNotification:I

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget v1, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->numOfNotification:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v7, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper$NotificationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 84
    return-void
.end method
