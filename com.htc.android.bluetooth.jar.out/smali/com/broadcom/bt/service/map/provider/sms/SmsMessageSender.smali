.class public Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;
.super Ljava/lang/Object;
.source "SmsMessageSender.java"


# static fields
.field private static final COLUMN_REPLY_PATH_PRESENT:I = 0x0

.field private static final COLUMN_SERVICE_CENTER:I = 0x1

.field private static final DEFAULT_DELIVERY_REPORT_MODE:Z = false

.field private static final SERVICE_CENTER_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SmsMessageSender"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDests:[Ljava/lang/String;

.field private mMessageText:Ljava/lang/String;

.field private mNumberOfDests:I

.field private mServiceCenter:Ljava/lang/String;

.field private mThreadId:J

.field private mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "reply_path_present"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_center"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter "context"
    .parameter "dests"
    .parameter "msgText"
    .parameter "threadId"

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mContext:Landroid/content/Context;

    .line 71
    iput-object p3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 72
    array-length v0, p2

    iput v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mNumberOfDests:I

    .line 73
    iget v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mNumberOfDests:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mDests:[Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mDests:[Ljava/lang/String;

    iget v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mNumberOfDests:I

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mTimestamp:J

    .line 76
    iput-wide p4, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mThreadId:J

    .line 77
    iget-wide v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mThreadId:J

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->getOutgoingServiceCenter(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private getOutgoingServiceCenter(J)Ljava/lang/String;
    .locals 11
    .parameter "threadId"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 237
    const/4 v7, 0x0

    .line 240
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 243
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 250
    :cond_0
    if-eqz v7, :cond_1

    .line 251
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v9

    :cond_2
    :goto_0
    return-object v0

    .line 247
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v8, v0, :cond_4

    .line 248
    .local v8, replyPathPresent:Z
    :goto_1
    if-eqz v8, :cond_5

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 250
    :goto_2
    if-eqz v7, :cond_2

    .line 251
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8           #replyPathPresent:Z
    :cond_4
    move v8, v10

    .line 247
    goto :goto_1

    .restart local v8       #replyPathPresent:Z
    :cond_5
    move-object v0, v9

    .line 248
    goto :goto_2

    .line 250
    .end local v8           #replyPathPresent:Z
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 251
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 258
    const-string v0, "SmsMessageSender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SmsMsgSender] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method


# virtual methods
.method public sendMessage(J)Landroid/net/Uri;
    .locals 27
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 99
    const/16 v26, 0x0

    .line 101
    .local v26, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mMessageText:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mNumberOfDests:I

    if-nez v2, :cond_1

    .line 103
    :cond_0
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Null message body or dest."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v25

    .line 108
    .local v25, smsManager:Landroid/telephony/SmsManager;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mNumberOfDests:I

    move/from16 v0, v16

    if-ge v0, v2, :cond_6

    .line 109
    const/4 v11, 0x0

    .line 120
    .local v11, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 123
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 125
    .local v22, messageCount:I
    const/4 v7, 0x1

    .line 127
    .local v7, requestDeliveryReport:Z
    if-nez v22, :cond_2

    .line 129
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmsMessageSender.sendMessage: divideMessage returned empty messages. Original message is \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mTimestamp:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mThreadId:J

    invoke-static/range {v2 .. v9}, Landroid/provider/Telephony$Sms$Outbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v26

    .line 142
    :goto_1
    new-instance v13, Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    .local v13, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v12, Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .local v12, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 148
    .local v24, prefs:Landroid/content/SharedPreferences;
    const-string v20, "com.broadcom.bt.app.system"

    .line 149
    .local v20, intentReceiverPackage:Ljava/lang/String;
    const-string v19, ".MapReceiver"

    .line 150
    .local v19, intentReceiverClass:Ljava/lang/String;
    const-string v18, "MapURI"

    .line 152
    .local v18, intentExtraName:Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, j:I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 153
    if-eqz v7, :cond_3

    .line 162
    new-instance v23, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED"

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v23, oneIntent:Landroid/content/Intent;
    const-string v2, "MapURI"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 165
    const-string v2, "com.broadcom.bt.app.system"

    const-string v3, "com.broadcom.bt.app.system.MapReceiver"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v23           #oneIntent:Landroid/content/Intent;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send Intent class = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->log(Ljava/lang/String;)V

    .line 192
    new-instance v17, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.service.map.sms.MESSAGE_SENT"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v17, intent:Landroid/content/Intent;
    const-string v2, "MapURI"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 196
    const-string v2, "com.broadcom.bt.app.system"

    const-string v3, "com.broadcom.bt.app.system.MapReceiver"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    add-int/lit8 v2, v22, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_4

    .line 199
    const-string v2, "SendNextMsg"

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 137
    .end local v12           #sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v13           #deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v17           #intent:Landroid/content/Intent;
    .end local v18           #intentExtraName:Ljava/lang/String;
    .end local v19           #intentReceiverClass:Ljava/lang/String;
    .end local v20           #intentReceiverPackage:Ljava/lang/String;
    .end local v21           #j:I
    .end local v24           #prefs:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v14

    .line 139
    .local v14, e:Landroid/database/sqlite/SQLiteException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v2, v14}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto/16 :goto_1

    .line 207
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v12       #sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .restart local v13       #deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .restart local v18       #intentExtraName:Ljava/lang/String;
    .restart local v19       #intentReceiverClass:Ljava/lang/String;
    .restart local v20       #intentReceiverPackage:Ljava/lang/String;
    .restart local v21       #j:I
    .restart local v24       #prefs:Landroid/content/SharedPreferences;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMessage: address["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mThreadId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msgs.count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->log(Ljava/lang/String;)V

    .line 211
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v9, v2, v16

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    move-object/from16 v8, v25

    invoke-virtual/range {v8 .. v13}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMessage: address["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mThreadId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msgs.count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->log(Ljava/lang/String;)V

    .line 108
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 213
    :catch_1
    move-exception v15

    .line 214
    .local v15, ex:Ljava/lang/Exception;
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmsMessageSender.sendMessage: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from SmsManager.sendMultipartTextMessage()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    .end local v7           #requestDeliveryReport:Z
    .end local v11           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v13           #deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v15           #ex:Ljava/lang/Exception;
    .end local v18           #intentExtraName:Ljava/lang/String;
    .end local v19           #intentReceiverClass:Ljava/lang/String;
    .end local v20           #intentReceiverPackage:Ljava/lang/String;
    .end local v21           #j:I
    .end local v22           #messageCount:I
    .end local v24           #prefs:Landroid/content/SharedPreferences;
    :cond_6
    return-object v26
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 2
    .parameter "dest"
    .parameter "msgText"
    .parameter "threadId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 86
    iput-object p2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 87
    iput v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mNumberOfDests:I

    .line 88
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mDests:[Ljava/lang/String;

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mTimestamp:J

    .line 90
    iput-wide p3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mThreadId:J

    .line 91
    iget-wide v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mThreadId:J

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->getOutgoingServiceCenter(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    .line 92
    invoke-virtual {p0, p3, p4}, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->sendMessage(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
