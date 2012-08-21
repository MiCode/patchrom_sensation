.class public Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver$ProcessMsgReceivedRunnable;
    }
.end annotation


# static fields
.field protected static final ACTION_HTC_MESSAGE_RECEIVED:Ljava/lang/String; = "com.htc.mms.smsreceiveinfo"

.field protected static final ACTION_MESSAGE_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field protected static final ACTION_MESSAGE_SENT:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_SENT"

.field protected static final ACTION_MESSAGE_SENT_BY_MMS_APP_FWD:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_SENT_BY_MMS_APP_FWD"

.field protected static final ACTION_MESSAGE_SENT_FORWARD:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_SENT_FORWARD"

.field protected static final ACTION_MESSAGE_STATUS_RECEIVED:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED"

.field protected static final ACTION_MESSAGE_STATUS_RECEIVED_BY_MMS_APP_FWD:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_BY_MMS_APP_FWD"

.field protected static final ACTION_MESSAGE_STATUS_RECEIVED_FORWARD:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_FORWARD"

.field protected static final ACTION_MMSAPP_MESSAGE_SENT:Ljava/lang/String; = "com.android.mms.transaction.MESSAGE_SENT"

.field protected static final ACTION_MMSAPP_MESSAGE_STATUS_RECEIVED:Ljava/lang/String; = "com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED"

.field public static final D:Z = true

.field protected static final MMSAPP_MSG_STATUS_RECEIVER_CLASS_NAME:Ljava/lang/String; = "com.android.mms.transaction.MessageStatusReceiver"

.field protected static final MMSAPP_PKG_NAME:Ljava/lang/String; = "com.android.mms"

.field protected static final MMSAPP_SMS_RECEIVER_CLASS_NAME:Ljava/lang/String; = "com.android.mms.transaction.SmsReceiver"

.field private static final ORDER_BY_SMS_RECEIVED:Ljava/lang/String; = "_id DESC "

.field private static final PROJECTION_SMS_RECEIVED:[Ljava/lang/String; = null

.field private static final SELECTION_SMS_RECEIVED:Ljava/lang/String; = "type = 1 AND protocol = ? AND address = ? AND body = ? AND date = ?"

.field public static final TAG:Ljava/lang/String; = "SmsEventReceiver"

.field protected static final enableHtcSmsRec:Z = true


# instance fields
.field final intentExtraName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

.field private mProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->PROJECTION_SMS_RECEIVED:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 128
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 110
    const-string v0, "MapURI"

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->intentExtraName:Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    .line 130
    iget-object v0, p1, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHandler:Landroid/os/Handler;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;Landroid/content/Context;[Landroid/telephony/SmsMessage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageReceived(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)V

    return-void
.end method

.method private processHtcSmsReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 409
    const-string v2, "SmsEventReceiver"

    const-string v3, "processHtcSmsReceivedAction()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->notificationsEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 412
    const-string v2, "SmsEventReceiver"

    const-string v3, "MAP notification not enabled...Skipping event (ACTION_HTC_MESSAGE_RECEIVED)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :goto_0
    return-void

    .line 416
    :cond_0
    const-string v2, "uri"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 417
    .local v1, messageUri:Ljava/lang/String;
    const-string v2, "content://sms/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, messageId:Ljava/lang/String;
    const-string v2, "SmsEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "messageURI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", messageId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v3, "SMS"

    const-string v4, "/inbox"

    invoke-virtual {v2, v3, v0, v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_NewMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processMessageReceived(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)V
    .locals 11
    .parameter "ctx"
    .parameter "msg"
    .parameter "retryCount"

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 251
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    .line 253
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 254
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, -0x1

    .line 255
    .local v9, messageId:I
    const/4 v7, 0x0

    .line 257
    .local v7, hasError:Z
    aget-object v0, p2, v2

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 258
    aget-object v0, p2, v2

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 259
    const-string v0, ""

    aput-object v0, v4, v3

    .line 260
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, p2

    if-ge v8, v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v4, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p2, v8

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 260
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 264
    :cond_0
    aget-object v0, p2, v2

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 270
    :try_start_0
    const-string v0, "SmsEventReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Querying for SMS inbox message: protocol identifier= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", originating address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " retry count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " disaplay message body = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->PROJECTION_SMS_RECEIVED:[Ljava/lang/String;

    const-string v3, "type = 1 AND protocol = ? AND address = ? AND body = ? AND date = ?"

    const-string v5, "_id DESC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 278
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 288
    :goto_1
    if-eqz v6, :cond_1

    .line 289
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 290
    const/4 v6, 0x0

    .line 292
    :cond_1
    if-eqz v7, :cond_3

    .line 323
    :goto_2
    return-void

    .line 281
    :cond_2
    :try_start_1
    const-string v0, "SmsEventReceiver"

    const-string v1, "Querying for SMS inbox message: Either cursor is null or no rows returned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 284
    :catch_0
    move-exception v10

    .line 285
    .local v10, t:Ljava/lang/Throwable;
    const-string v0, "SmsEventReceiver"

    const-string v1, "Error querying database"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    const/4 v7, 0x1

    goto :goto_1

    .line 297
    .end local v10           #t:Ljava/lang/Throwable;
    :cond_3
    const-string v0, "SmsEventReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v0, "SmsEventReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v0, -0x1

    if-eq v9, v0, :cond_4

    .line 315
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v1, "SMS"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/inbox"

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_NewMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 317
    :cond_4
    const/4 v0, 0x5

    if-ge p3, v0, :cond_5

    .line 318
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver$ProcessMsgReceivedRunnable;

    add-int/lit8 p3, p3, 0x1

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver$ProcessMsgReceivedRunnable;-><init>(Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;Landroid/content/Context;[Landroid/telephony/SmsMessage;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 321
    :cond_5
    const-string v0, "SmsEventReceiver"

    const-string v1, "Unable to process SMS receive. Retry count exceeded."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private processMessageReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 218
    return-void
.end method

.method private processMessageSentAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 173
    const-string v3, "SmsEventReceiver"

    const-string v4, "processMessageSentAction()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v3, "com.broadcom.bt.service.map.sms.MESSAGE_SENT_BY_MMS_APP_FWD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->sendMmsAppMessageSentEvent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 180
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->notificationsEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 182
    const-string v3, "SmsEventReceiver"

    const-string v4, "MAP notification not enabled...Skipping event"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    return-void

    .line 187
    :cond_1
    const/4 v0, 0x0

    .line 188
    .local v0, messageId:Ljava/lang/String;
    const-string v3, "MapURI"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 189
    .local v1, messageUri:Landroid/net/Uri;
    if-nez v1, :cond_2

    .line 190
    const-string v3, "SmsEventReceiver"

    const-string v4, "Unable to get Message URI for message"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->getResultCode()I

    move-result v2

    .line 196
    .local v2, resultCode:I
    const/4 v3, -0x1

    if-ne v3, v2, :cond_3

    .line 198
    const-string v3, "SmsEventReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message sent successfully. MessageId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v4, "SMS"

    const-string v5, "/outbox"

    invoke-virtual {v3, v4, v0, v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_SendingSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_3
    const-string v3, "SmsEventReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". ResultCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ErrorCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "errorCode"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v4, "SMS"

    const-string v5, "/failed"

    invoke-virtual {v3, v4, v0, v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_SendingFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processMessageStatusReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 327
    const-string v1, "SmsEventReceiver"

    const-string v3, "processMessageStatusReceivedAction()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v1, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_BY_MMS_APP_FWD"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    invoke-direct/range {p0 .. p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->sendMmsAppMessageStatusReceivedEvent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->notificationsEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 337
    const-string v1, "SmsEventReceiver"

    const-string v3, "MAP notification not enabled...Skipping event"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :goto_0
    return-void

    .line 343
    :cond_1
    const-string v1, "MapURI"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 344
    .local v2, messageUri:Landroid/net/Uri;
    if-nez v2, :cond_2

    .line 345
    const-string v1, "SmsEventReceiver"

    const-string v3, "Unable to process message status. Invalid messageUri"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 348
    :cond_2
    const-string v1, "SmsEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got message URI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v9, -0x1

    .line 350
    .local v9, folderType:I
    const/4 v7, 0x0

    .line 352
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 354
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 355
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 360
    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    .line 361
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 362
    const/4 v7, 0x0

    .line 365
    :cond_4
    invoke-static {v9}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getFolderPath(I)Ljava/lang/String;

    move-result-object v8

    .line 366
    .local v8, folderPath:Ljava/lang/String;
    if-nez v8, :cond_5

    .line 367
    const-string v1, "SmsEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid folder path for folder type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 357
    .end local v8           #folderPath:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 358
    .local v14, t:Ljava/lang/Throwable;
    const-string v1, "SmsEventReceiver"

    const-string v3, "Error querying database"

    invoke-static {v1, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 370
    .end local v14           #t:Ljava/lang/Throwable;
    .restart local v8       #folderPath:Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    .line 372
    .local v11, messageId:Ljava/lang/String;
    const-string v1, "pdu"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v12, v1

    check-cast v12, [B

    .line 373
    .local v12, pdu:[B
    if-eqz v12, :cond_7

    .line 374
    invoke-static {v12}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v10

    .line 375
    .local v10, message:Landroid/telephony/SmsMessage;
    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getStatus()I

    move-result v13

    .line 376
    .local v13, status:I
    if-nez v13, :cond_6

    .line 377
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v3, "SMS"

    invoke-virtual {v1, v3, v11, v8}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_DeliverySuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 379
    :cond_6
    const-string v1, "SmsEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error deliverying message. ErrorCode= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v3, "SMS"

    invoke-virtual {v1, v3, v11, v8}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_DeliveryFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 383
    .end local v10           #message:Landroid/telephony/SmsMessage;
    .end local v13           #status:I
    :cond_7
    const-string v1, "SmsEventReceiver"

    const-string v3, "Got delivery report with no pdus"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private sendMmsAppMessageSentEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 388
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 389
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.mms.transaction.MESSAGE_SENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string v1, "com.android.mms"

    const-string v2, "com.android.mms.transaction.SmsReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const-string v1, "errorCode"

    const-string v2, "errorCode"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 392
    const-string v1, "MapURI"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 394
    return-void
.end method

.method private sendMmsAppMessageStatusReceivedEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 397
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 398
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v1, "com.android.mms"

    const-string v2, "com.android.mms.transaction.MessageStatusReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v1, "MapURI"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 403
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 405
    return-void
.end method


# virtual methods
.method public createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    new-instance p1, Landroid/content/IntentFilter;

    .end local p1
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .restart local p1
    :cond_0
    const-string v0, "com.broadcom.bt.service.map.sms.MESSAGE_SENT_FORWARD"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v0, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_FORWARD"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v0, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_BY_MMS_APP_FWD"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v0, "com.broadcom.bt.service.map.sms.MESSAGE_SENT_BY_MMS_APP_FWD"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v0, "com.htc.mms.smsreceiveinfo"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    return-object p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, action:Ljava/lang/String;
    const-string v1, "SmsEventReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v1, "com.broadcom.bt.service.map.sms.MESSAGE_SENT_FORWARD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageSentAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 155
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string v1, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_FORWARD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageStatusReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 143
    :cond_1
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 145
    :cond_2
    const-string v1, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_BY_MMS_APP_FWD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageStatusReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 147
    :cond_3
    const-string v1, "com.broadcom.bt.service.map.sms.MESSAGE_SENT_BY_MMS_APP_FWD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageSentAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 149
    :cond_4
    const-string v1, "com.htc.mms.smsreceiveinfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processHtcSmsReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 153
    :cond_5
    const-string v1, "SmsEventReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to process action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
