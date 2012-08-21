.class public Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;
.super Lcom/broadcom/bt/service/map/provider/BaseProvider;
.source "SmsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;
    }
.end annotation


# static fields
.field private static final CFG_SEND_MSG_SIZE_INFO_IN_LISTING:Z = true

.field private static final COL_ADDRESS:I = 0x1

.field private static final COL_BODY:I = 0x9

.field private static final COL_DATE:I = 0x2

.field private static final COL_DISPLAY_NAME:I = 0x3

.field private static final COL_FAMILY_NAME:I = 0x2

.field private static final COL_GIVEN_NAME:I = 0x0

.field private static final COL_ID:I = 0x0

.field private static final COL_LOCKED:I = 0x3

.field private static final COL_MIDDLE_NAME:I = 0x1

.field private static final COL_PERSON:I = 0x4

.field private static final COL_READ:I = 0x5

.field private static final COL_SUBJECT:I = 0x6

.field private static final COL_THREAD_ID:I = 0x8

.field private static final COL_TYPE_ID:I = 0x7

.field private static final DEL_COL_ADDRESS:I = 0x2

.field private static final DEL_COL_BODY:I = 0xb

.field private static final DEL_COL_DATE:I = 0x4

.field private static final DEL_COL_ID:I = 0x0

.field private static final DEL_COL_LOCKED:I = 0xd

.field private static final DEL_COL_PERSON:I = 0x3

.field private static final DEL_COL_READ:I = 0x6

.field private static final DEL_COL_SUBJECT:I = 0xa

.field private static final DEL_COL_THREAD_ID:I = 0x1

.field private static final DEL_COL_TYPE_ID:I = 0x8

.field private static final DS_SMS_DISPLAY_NAME_ID:I = 0x0

.field protected static final FOLDER_PATH_INBOX:Ljava/lang/String; = "/inbox"

.field protected static final FOLDER_PATH_OUTBOX:Ljava/lang/String; = "/outbox"

.field protected static final FOLDER_PATH_SENT:Ljava/lang/String; = "/sent"

.field private static final PERSON_NAME_INFO_PROJ:[Ljava/lang/String; = null

.field private static final PROVIDER_DISPLAY_NAME_ID:I = 0x0

.field private static final PROVIDER_ID:Ljava/lang/String; = "com.broadcom.bt"

.field private static final SMS_PROVIDER_PROJ:[Ljava/lang/String; = null

.field private static final SMS_PROVIDER_PROJ_NO_BODY:[Ljava/lang/String; = null

.field private static final SMS_ROOT_FOLDERS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MapSMSProvider"


# instance fields
.field final CANCEL_MESSAGE_STATUS_RECEIVED_ACTION:Ljava/lang/String;

.field final CANCEL_NOTIFICATION_ID:Ljava/lang/String;

.field final NOTIFICATION_ID:I

.field private final deletedIndex:I

.field private final draftIndex:I

.field private final failedIndex:I

.field private final inboxIndex:I

.field protected mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

.field protected mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

.field protected mIdByFolder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOwnerPhoneNumber:Ljava/lang/String;

.field private mPhoneType:I

.field private mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

.field protected mSender:Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;

.field private mTmpDirectory:Ljava/io/File;

.field private final outboxIndex:I

.field private final queuedIndex:I

.field private final sentIndex:I

.field private final undeliveredIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "data2"

    aput-object v1, v0, v3

    const-string v1, "data5"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    sput-object v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->PERSON_NAME_INFO_PROJ:[Ljava/lang/String;

    .line 292
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "inbox"

    aput-object v1, v0, v3

    const-string v1, "outbox"

    aput-object v1, v0, v4

    const-string v1, "sent"

    aput-object v1, v0, v5

    const-string v1, "deleted"

    aput-object v1, v0, v6

    const-string v1, "draft"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "undelivered"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "failed"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "queued"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_ROOT_FOLDERS:[Ljava/lang/String;

    .line 309
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "locked"

    aput-object v1, v0, v6

    const-string v1, "person"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_PROVIDER_PROJ_NO_BODY:[Ljava/lang/String;

    .line 315
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "locked"

    aput-object v1, v0, v6

    const-string v1, "person"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "body"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_PROVIDER_PROJ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;-><init>()V

    .line 97
    const-string v0, "com.android.mms.transaction.MessageStatusReceiver.CANCEL_NOTIFICATION"

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->CANCEL_MESSAGE_STATUS_RECEIVED_ACTION:Ljava/lang/String;

    .line 98
    const-string v0, "id"

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->CANCEL_NOTIFICATION_ID:Ljava/lang/String;

    .line 99
    const/16 v0, 0x7b

    iput v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->NOTIFICATION_ID:I

    .line 105
    new-instance v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;-><init>(Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->inboxIndex:I

    .line 302
    const/4 v0, 0x1

    iput v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->outboxIndex:I

    .line 303
    const/4 v0, 0x2

    iput v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->sentIndex:I

    .line 304
    const/4 v0, 0x3

    iput v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->deletedIndex:I

    .line 305
    const/4 v0, 0x4

    iput v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->draftIndex:I

    .line 306
    const/4 v0, 0x5

    iput v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->undeliveredIndex:I

    .line 307
    const/4 v0, 0x6

    iput v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->failedIndex:I

    .line 308
    const/4 v0, 0x7

    iput v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->queuedIndex:I

    return-void
.end method

.method private static createFolderUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "folderPath"

    .prologue
    .line 416
    invoke-static {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    const-string v0, "MapSMSProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid folder path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v0, 0x0

    .line 421
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    :cond_1
    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private getBMsgBody(Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;)Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .locals 3
    .parameter "p_env"

    .prologue
    .line 1790
    const/4 v0, 0x0

    .line 1792
    .local v0, msgBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    if-nez p1, :cond_0

    .line 1793
    const-string v1, "MapSMSProvider"

    const-string v2, "Envelope is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    const/4 v1, 0x0

    .line 1806
    :goto_0
    return-object v1

    .line 1799
    :cond_0
    invoke-virtual {p1}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->getBody()Lcom/broadcom/bt/util/bmsg/BMessageBody;

    move-result-object v0

    .line 1800
    if-eqz v0, :cond_1

    .line 1801
    const-string v1, "MapSMSProvider"

    const-string v2, "Found bmessage body"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v1, v0

    .line 1806
    goto :goto_0

    .line 1804
    :cond_1
    invoke-virtual {p1}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->getChildEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1
.end method

.method static final getFolderPath(I)Ljava/lang/String;
    .locals 1
    .parameter "smsMessageType"

    .prologue
    .line 355
    packed-switch p0, :pswitch_data_0

    .line 369
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 357
    :pswitch_0
    const-string v0, "/draft"

    goto :goto_0

    .line 359
    :pswitch_1
    const-string v0, "/failed"

    goto :goto_0

    .line 361
    :pswitch_2
    const-string v0, "/inbox"

    goto :goto_0

    .line 363
    :pswitch_3
    const-string v0, "/outbox"

    goto :goto_0

    .line 365
    :pswitch_4
    const-string v0, "/queued"

    goto :goto_0

    .line 367
    :pswitch_5
    const-string v0, "/sent"

    goto :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method static getFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "virtualPath"

    .prologue
    .line 397
    if-eqz p0, :cond_0

    .line 398
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 399
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "root/telecom/msg"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    const-string v0, "root/telecom/msg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const-string v0, "root/telecom/msg"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 405
    .end local p0
    :cond_0
    return-object p0
.end method

.method static final getMessageType(Ljava/lang/String;)I
    .locals 1
    .parameter "folderPath"

    .prologue
    .line 374
    if-eqz p0, :cond_5

    .line 375
    const-string v0, "/draft"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    const/4 v0, 0x3

    .line 389
    :goto_0
    return v0

    .line 377
    :cond_0
    const-string v0, "/failed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    const/4 v0, 0x5

    goto :goto_0

    .line 379
    :cond_1
    const-string v0, "/inbox"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    const/4 v0, 0x1

    goto :goto_0

    .line 381
    :cond_2
    const-string v0, "/outbox"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 382
    const/4 v0, 0x4

    goto :goto_0

    .line 383
    :cond_3
    const-string v0, "/queued"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 384
    const/4 v0, 0x6

    goto :goto_0

    .line 385
    :cond_4
    const-string v0, "/sent"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 386
    const/4 v0, 0x2

    goto :goto_0

    .line 389
    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getPersonInfo(Ljava/lang/String;[Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .locals 9
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 488
    const/4 v7, 0x0

    .line 489
    .local v7, info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    const/4 v6, 0x0

    .line 491
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->PERSON_NAME_INFO_PROJ:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 493
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    new-instance v8, Lcom/broadcom/bt/service/map/provider/PersonInfo;

    invoke-direct {v8}, Lcom/broadcom/bt/service/map/provider/PersonInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .end local v7           #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .local v8, info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mGivenName:Ljava/lang/String;

    .line 497
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mFamilyName:Ljava/lang/String;

    .line 498
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mDisplayName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 503
    .end local v8           #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .restart local v7       #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 504
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 505
    const/4 v6, 0x0

    .line 507
    :cond_1
    return-object v7

    .line 500
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v7           #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .restart local v8       #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :catch_1
    move-exception v0

    move-object v7, v8

    .end local v8           #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .restart local v7       #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    goto :goto_0
.end method

.method private getPersonInfoByContactId(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .locals 3
    .parameter "personId"

    .prologue
    .line 479
    if-nez p1, :cond_0

    .line 480
    const/4 v0, 0x0

    .line 482
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "mimetype = \'vnd.android.cursor.item/name\' AND contact_id = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getPersonInfo(Ljava/lang/String;[Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private getPersonInfoByPhoneNo(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .locals 12
    .parameter "phoneNumber"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 444
    const/4 v7, 0x0

    .line 445
    .local v7, lookupKey:Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 446
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 448
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "lookup"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 450
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 456
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 457
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 458
    const/4 v6, 0x0

    .line 460
    :cond_1
    if-nez v7, :cond_2

    .line 462
    const-string v0, "MapSMSProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contact not found with number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 467
    :goto_1
    return-object v0

    .line 453
    :catch_0
    move-exception v8

    .line 454
    .local v8, t:Ljava/lang/Throwable;
    const-string v0, "MapSMSProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get contact lookup uri for phone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 467
    .end local v8           #t:Ljava/lang/Throwable;
    :cond_2
    const-string v0, "mimetype = \'vnd.android.cursor.item/name\' AND lookup = ?"

    new-array v2, v11, [Ljava/lang/String;

    aput-object v7, v2, v10

    invoke-direct {p0, v0, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getPersonInfo(Ljava/lang/String;[Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v0

    goto :goto_1
.end method

.method private getThreadRecipientAddresses(I)Ljava/util/List;
    .locals 12
    .parameter "threadId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    const/4 v6, 0x0

    .line 513
    .local v6, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 514
    .local v9, recipientIds:Ljava/lang/String;
    const/4 v7, 0x0

    .line 516
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/recipients"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "recipient_ids"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 519
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 525
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 526
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 528
    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 529
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v0, " "

    invoke-direct {v10, v9, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .local v10, t:Ljava/util/StringTokenizer;
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 532
    :cond_2
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 533
    .local v8, recipientId:Ljava/lang/String;
    new-instance v6, Ljava/util/LinkedList;

    .end local v6           #addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 535
    .restart local v6       #addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canonical-address/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "address"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 538
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 539
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 540
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 545
    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    .line 546
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 547
    const/4 v7, 0x0

    .line 549
    :cond_4
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_2

    .line 552
    .end local v8           #recipientId:Ljava/lang/String;
    .end local v10           #t:Ljava/util/StringTokenizer;
    :cond_5
    return-object v6

    .line 522
    :catch_0
    move-exception v10

    .line 523
    .local v10, t:Ljava/lang/Throwable;
    const-string v0, "MapSMSProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting conversation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 542
    .restart local v8       #recipientId:Ljava/lang/String;
    .local v10, t:Ljava/util/StringTokenizer;
    :catch_1
    move-exception v11

    .line 543
    .local v11, tt:Ljava/lang/Throwable;
    const-string v0, "MapSMSProvider"

    const-string v1, "Unable to get canonical address"

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private isDeletedFolder(Ljava/lang/String;)Z
    .locals 1
    .parameter "folderPath"

    .prologue
    .line 1127
    const-string v0, "deleted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isValidFolderPath(Ljava/lang/String;)Z
    .locals 2
    .parameter "folderPath"

    .prologue
    const/4 v0, 0x1

    .line 351
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_0

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static toProviderMessageDBID(I)I
    .locals 0
    .parameter "messageId"

    .prologue
    .line 434
    if-lez p0, :cond_0

    .end local p0
    :goto_0
    return p0

    .restart local p0
    :cond_0
    const/4 p0, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected disableNotifications(Ljava/lang/String;)Z
    .locals 2
    .parameter "datasourceId"

    .prologue
    .line 952
    const-string v0, "MapSMSProvider"

    const-string v1, "disableNotifications()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    .line 955
    const/4 v0, 0x1

    return v0
.end method

.method protected enableNotifications(Ljava/lang/String;)Z
    .locals 3
    .parameter "datasourceId"

    .prologue
    const/4 v2, 0x1

    .line 943
    const-string v0, "MapSMSProvider"

    const-string v1, "enableNotifications()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    .line 946
    return v2
.end method

.method protected getAllMsgListings()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1131
    const-string v0, "MapSMSProvider"

    const-string v3, "getAllMsgListings"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    .line 1134
    .local v2, projections:[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mIdByFolder:Ljava/util/ArrayList;

    .line 1138
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    sget-object v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_ROOT_FOLDERS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_3

    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_ROOT_FOLDERS:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->createFolderUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1140
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 1144
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1145
    .local v7, folderIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mIdByFolder:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    const/4 v6, 0x0

    .line 1148
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1149
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1152
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    const-string v0, "MapSMSProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "folder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_ROOT_FOLDERS:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 1161
    :goto_1
    if-eqz v6, :cond_1

    .line 1163
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1164
    const/4 v6, 0x0

    .line 1138
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #folderIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1156
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #folderIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_2
    const-string v0, "MapSMSProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "folder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_ROOT_FOLDERS:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " empty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1158
    :catch_0
    move-exception v9

    .line 1159
    .local v9, t:Ljava/lang/Throwable;
    const-string v0, "MapSMSProvider"

    const-string v3, "Error querying sms provider,"

    invoke-static {v0, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1170
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #folderIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #t:Ljava/lang/Throwable;
    :cond_3
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mIdByFolder:Ljava/util/ArrayList;

    return-object v0

    .line 1165
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #folderIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method protected getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 812
    const-string v0, "com.broadcom.bt"

    return-object v0
.end method

.method protected notificationsEnabled()Z
    .locals 1

    .prologue
    .line 959
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    return v0
.end method

.method protected onClientConnected(Ljava/lang/String;)V
    .locals 3
    .parameter "deviceName"

    .prologue
    .line 1757
    const-string v0, "MapSMSProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClientConnected(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    return-void
.end method

.method protected onClientDisconnected()V
    .locals 2

    .prologue
    .line 1762
    const-string v0, "MapSMSProvider"

    const-string v1, "onClientDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    return-void
.end method

.method protected declared-synchronized onDSDiscoverEvent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 1771
    monitor-enter p0

    :try_start_0
    const-string v1, "ds_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1772
    .local v0, providerId:Ljava/lang/String;
    const-string v1, "MapSMSProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onDSDiscoverEvent] provider Id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    const-string v1, "SMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1775
    iget-boolean v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    if-nez v1, :cond_0

    .line 1777
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1785
    :goto_0
    monitor-exit p0

    return-void

    .line 1780
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->registerDatasources()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1771
    .end local v0           #providerId:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1783
    .restart local v0       #providerId:Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string v1, "MapSMSProvider"

    const-string v2, "Ignore this DS event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected onGetFolderListing(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "maxEntries"
    .parameter "offset"

    .prologue
    .line 966
    invoke-static {p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 967
    const-string v0, "MapSMSProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetFolderListing(): SMS only contains root folders...Request path is not the root folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendFolderListingError_NoFolders(ILjava/lang/String;Ljava/lang/String;)V

    .line 975
    :goto_0
    return-void

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    sget-object v1, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_ROOT_FOLDERS:[Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendFolderListings(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    .locals 26
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "virtualFolderPath"
    .parameter "messageId"
    .parameter "charSetId"
    .parameter "includeAttachments"

    .prologue
    .line 981
    const-string v3, "MapSMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGetMsg: Msg_Id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", folder path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", virtual path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 985
    :cond_0
    const-string v3, "MapSMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGetMsg(): Invalid folder path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 1123
    :goto_0
    return-void

    .line 991
    :cond_1
    if-eqz p7, :cond_2

    .line 992
    const-string v3, "MapSMSProvider"

    const-string v5, "onGetMsg(): SMS provider currently doesn\'t support returning attachments"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_2
    move/from16 v13, p6

    .line 998
    .local v13, bCharset:B
    const/16 v16, 0x0

    .line 999
    .local v16, bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    const/16 v22, 0x0

    .line 1000
    .local v22, mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    const/16 v23, 0x0

    .line 1001
    .local v23, outFile:Ljava/io/File;
    const/16 v19, 0x0

    .line 1002
    .local v19, content:Ljava/lang/String;
    const/16 v18, 0x0

    .line 1003
    .local v18, c:Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 1004
    .local v21, err:Ljava/lang/Throwable;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isDeletedFolder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1005
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    const/16 v5, 0xa

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->getItemById(I)Landroid/database/Cursor;

    move-result-object v4

    .line 1006
    .end local v18           #c:Landroid/database/Cursor;
    .local v4, c:Landroid/database/Cursor;
    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1008
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->toDeletedMessageInfo(Landroid/database/Cursor;ZI)Lcom/broadcom/bt/service/map/MessageInfo;

    move-result-object v22

    .line 1010
    const/16 v3, 0xb

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1014
    :goto_1
    if-eqz v4, :cond_3

    .line 1015
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1016
    const/4 v4, 0x0

    .line 1057
    :cond_3
    :try_start_0
    new-instance v17, Lcom/broadcom/bt/util/bmsg/BMessage;

    invoke-direct/range {v17 .. v17}, Lcom/broadcom/bt/util/bmsg/BMessage;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 1058
    .end local v16           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .local v17, bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    const/4 v3, 0x0

    :try_start_1
    const-string v5, "root"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v3, v5, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setBMessageHeaderInfo(Lcom/broadcom/bt/util/bmsg/BMessage;BLjava/lang/String;Lcom/broadcom/bt/service/map/MessageInfo;)V

    .line 1062
    invoke-virtual/range {v17 .. v17}, Lcom/broadcom/bt/util/bmsg/BMessage;->getEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    move-result-object v15

    .line 1063
    .local v15, bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    invoke-virtual {v15}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->addBody()Lcom/broadcom/bt/util/bmsg/BMessageBody;

    move-result-object v12

    .line 1066
    .local v12, bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->setCharSet(B)V

    .line 1075
    invoke-virtual {v12}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->addContent()Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;

    move-result-object v14

    .line 1080
    .local v14, bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 1082
    const-string v3, "MapSMSProvider"

    const-string v5, "Native charset requested"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3, v5, v6}, Lcom/broadcom/bt/util/bmsg/BMessage;->encodeSMSDeliverPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1086
    .local v20, encodedContent:Ljava/lang/String;
    if-nez v20, :cond_b

    .line 1087
    const-string v3, "MapSMSProvider"

    const-string v5, "Native charset requested but encoding failed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    .end local v20           #encodedContent:Ljava/lang/String;
    :cond_4
    :goto_2
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->addMessageContent(Ljava/lang/String;)V

    .line 1104
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mTmpDirectory:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1106
    .end local v23           #outFile:Ljava/io/File;
    .local v24, outFile:Ljava/io/File;
    :try_start_2
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/util/bmsg/BMessage;->write(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v23, v24

    .end local v24           #outFile:Ljava/io/File;
    .restart local v23       #outFile:Ljava/io/File;
    move-object/from16 v16, v17

    .line 1111
    .end local v12           #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .end local v14           #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .end local v15           #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .end local v17           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v16       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    :goto_3
    if-eqz v16, :cond_5

    .line 1112
    invoke-virtual/range {v16 .. v16}, Lcom/broadcom/bt/util/bmsg/BMessage;->finish()V

    .line 1113
    const/16 v16, 0x0

    .line 1116
    :cond_5
    if-eqz v21, :cond_c

    .line 1117
    const-string v3, "MapSMSProvider"

    const-string v5, "onGetMsg(): Unable to create BMessage"

    move-object/from16 v0, v21

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1118
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1012
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1021
    .end local v4           #c:Landroid/database/Cursor;
    .restart local v18       #c:Landroid/database/Cursor;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_PROVIDER_PROJ:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v4

    .line 1024
    .end local v18           #c:Landroid/database/Cursor;
    .restart local v4       #c:Landroid/database/Cursor;
    if-eqz v4, :cond_8

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1026
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->toMessageInfo(Landroid/database/Cursor;ZILjava/lang/String;Ljava/lang/String;I)Lcom/broadcom/bt/service/map/MessageInfo;

    move-result-object v22

    .line 1028
    const/16 v3, 0x9

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/broadcom/bt/service/map/provider/sms/SmsUtils;->convertLf2Crlf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1029
    if-eqz v22, :cond_8

    if-eqz v19, :cond_8

    .line 1030
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    move-object/from16 v0, v22

    iput v3, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 1037
    :cond_8
    :goto_4
    if-eqz v4, :cond_9

    .line 1038
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1039
    const/4 v4, 0x0

    .line 1042
    :cond_9
    if-nez v22, :cond_a

    .line 1043
    const-string v3, "MapSMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGetMsg(): Unable to find message:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1033
    .end local v4           #c:Landroid/database/Cursor;
    .restart local v18       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v25

    move-object/from16 v4, v18

    .line 1034
    .end local v18           #c:Landroid/database/Cursor;
    .restart local v4       #c:Landroid/database/Cursor;
    .local v25, t:Ljava/lang/Throwable;
    :goto_5
    const-string v3, "MapSMSProvider"

    const-string v5, "onGetMsg(): Unable to query for SMS messages"

    move-object/from16 v0, v25

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1048
    .end local v25           #t:Ljava/lang/Throwable;
    :cond_a
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    if-nez v3, :cond_3

    .line 1049
    const-string v3, "MapSMSProvider"

    const-string v5, "onGetMsg(): Binary SMS not currentlly supported"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1089
    .end local v16           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v12       #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .restart local v14       #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .restart local v15       #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .restart local v17       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v20       #encodedContent:Ljava/lang/String;
    :cond_b
    :try_start_5
    const-string v3, "MapSMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Native charset requested - encoding succeeded - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    move-object/from16 v19, v20

    .line 1091
    invoke-virtual {v12, v13}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->setCharSet(B)V

    .line 1092
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->setEncoding(B)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 1107
    .end local v12           #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .end local v14           #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .end local v15           #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .end local v20           #encodedContent:Ljava/lang/String;
    :catch_1
    move-exception v25

    move-object/from16 v16, v17

    .line 1108
    .end local v17           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v16       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v25       #t:Ljava/lang/Throwable;
    :goto_6
    move-object/from16 v21, v25

    goto/16 :goto_3

    .line 1120
    .end local v25           #t:Ljava/lang/Throwable;
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move v9, v13

    move-object/from16 v11, p4

    invoke-virtual/range {v5 .. v11}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnMessage(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1107
    :catch_2
    move-exception v25

    goto :goto_6

    .end local v16           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .end local v23           #outFile:Ljava/io/File;
    .restart local v12       #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .restart local v14       #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .restart local v15       #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .restart local v17       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v24       #outFile:Ljava/io/File;
    :catch_3
    move-exception v25

    move-object/from16 v23, v24

    .end local v24           #outFile:Ljava/io/File;
    .restart local v23       #outFile:Ljava/io/File;
    move-object/from16 v16, v17

    .end local v17           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v16       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    goto :goto_6

    .line 1033
    .end local v12           #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .end local v14           #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .end local v15           #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    :catch_4
    move-exception v25

    goto :goto_5
.end method

.method protected onGetMsgListing(Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
    .locals 41
    .parameter "datasourceId"
    .parameter "requestId"
    .parameter "folderPath"
    .parameter "parameterMask"
    .parameter "maxEntries"
    .parameter "offsetMessageId"
    .parameter "maxSubjectLengthAsByte"
    .parameter "msgMask"
    .parameter "periodBegin"
    .parameter "periodEnd"
    .parameter "readStatus"
    .parameter "recipient"
    .parameter "originator"
    .parameter "pri_status"

    .prologue
    .line 1183
    const-string v4, "MapSMSProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "maxSubjectLengthAsByte = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1186
    :cond_0
    const-string v4, "MapSMSProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onGetMsgListing(): Invalid folder path:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    .line 1433
    :cond_1
    :goto_0
    return-void

    .line 1192
    :cond_2
    move/from16 v13, p7

    .line 1193
    .local v13, maxSubjectLength:I
    if-gez v13, :cond_3

    const/16 v4, -0x80

    if-lt v13, v4, :cond_3

    .line 1194
    add-int/lit16 v13, v13, 0x100

    .line 1200
    :cond_3
    const-string v4, "MapSMSProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onGetMsgListing(): folderPath="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " parameterMask="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " maxEntries="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " maxSubjectLength="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " periodBegin="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p9

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " periodEnd="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p10

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " readStatus="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p11

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " recipient="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p12

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " originator="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p13

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " msgMask = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " providerType = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-byte v9, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    if-gtz p5, :cond_7

    const/16 v36, 0x1

    .line 1208
    .local v36, returnAllMsgs:Z
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isDeletedFolder(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1212
    invoke-static/range {p6 .. p6}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->toProviderMessageDBID(I)I

    move-result v31

    .line 1213
    .local v31, messageDbId:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->getAllItemsGreaterThan(I)Landroid/database/Cursor;

    move-result-object v8

    .line 1214
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1216
    new-instance v30, Ljava/util/LinkedList;

    invoke-direct/range {v30 .. v30}, Ljava/util/LinkedList;-><init>()V

    .line 1219
    .local v30, mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    :cond_4
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v4, v13}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->toDeletedMessageInfo(Landroid/database/Cursor;ZI)Lcom/broadcom/bt/service/map/MessageInfo;

    move-result-object v29

    .line 1222
    .local v29, mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1224
    if-nez v36, :cond_5

    .line 1225
    add-int/lit8 p5, p5, -0x1

    .line 1228
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v36, :cond_4

    if-gtz p5, :cond_4

    .line 1229
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v30

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMessageListings(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1233
    .end local v29           #mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    .end local v30           #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    :goto_2
    if-eqz v8, :cond_1

    .line 1234
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1206
    .end local v8           #c:Landroid/database/Cursor;
    .end local v31           #messageDbId:I
    .end local v36           #returnAllMsgs:Z
    :cond_7
    const/16 v36, 0x0

    goto :goto_1

    .line 1231
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v31       #messageDbId:I
    .restart local v36       #returnAllMsgs:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1240
    .end local v8           #c:Landroid/database/Cursor;
    .end local v31           #messageDbId:I
    :cond_9
    const/16 v26, 0x0

    .line 1241
    .local v26, filterPriority:B
    const/16 v25, 0x0

    .line 1242
    .local v25, filterNewMsg:Z
    move/from16 v27, p11

    .line 1244
    .local v27, filterReadStatus:B
    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->createFolderUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1245
    .local v5, uri:Landroid/net/Uri;
    if-nez v5, :cond_a

    .line 1247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1251
    :cond_a
    const/16 v23, 0x0

    .line 1257
    .local v23, c:Landroid/database/Cursor;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    .line 1258
    .local v40, where:Ljava/lang/StringBuilder;
    const/16 v28, 0x0

    .line 1280
    .local v28, hasWhereCondition:Z
    const-string v4, "MapSMSProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onGetMsgList(): readStatus="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    invoke-static/range {v27 .. v27}, Lcom/broadcom/bt/service/map/BluetoothMAP;->isValidMsgStatus(B)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1286
    const-string v4, "MapSMSProvider"

    const-string v7, "Adding message status filter..."

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    if-eqz v28, :cond_11

    .line 1289
    const-string v4, " AND "

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    :goto_3
    const-string v4, "("

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    const-string v4, "read"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    const-string v4, " = "

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    const/4 v4, 0x2

    move/from16 v0, v27

    if-ne v0, v4, :cond_12

    const-string v4, "1"

    :goto_4
    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    const-string v4, ")"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    :cond_b
    if-eqz p9, :cond_c

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v7, 0x8

    if-lt v4, v7, :cond_c

    .line 1304
    new-instance v38, Landroid/text/format/Time;

    invoke-direct/range {v38 .. v38}, Landroid/text/format/Time;-><init>()V

    .line 1305
    .local v38, time:Landroid/text/format/Time;
    const-wide/16 v32, 0x0

    .line 1306
    .local v32, periodBeginmillis:J
    move-object/from16 v0, v38

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1308
    const/4 v4, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v32

    .line 1309
    const-string v4, "MapSMSProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "periodBegin: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v32

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    if-eqz v28, :cond_13

    .line 1312
    const-string v4, " AND "

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    :goto_5
    const-string v4, "("

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    const-string v4, "date"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    const-string v4, " >= "

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    .end local v32           #periodBeginmillis:J
    .end local v38           #time:Landroid/text/format/Time;
    :cond_c
    if-eqz p10, :cond_d

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v7, 0x8

    if-lt v4, v7, :cond_d

    .line 1324
    new-instance v38, Landroid/text/format/Time;

    invoke-direct/range {v38 .. v38}, Landroid/text/format/Time;-><init>()V

    .line 1325
    .restart local v38       #time:Landroid/text/format/Time;
    const-wide/16 v34, 0x0

    .line 1326
    .local v34, periodEndmillis:J
    move-object/from16 v0, v38

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1328
    const/4 v4, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v34

    .line 1329
    const-string v4, "MapSMSProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "periodEnd: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v34

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    if-eqz v28, :cond_14

    .line 1332
    const-string v4, " AND "

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    :goto_6
    const-string v4, "("

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    const-string v4, "date"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    const-string v4, " <= "

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v34

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    .end local v34           #periodEndmillis:J
    .end local v38           #time:Landroid/text/format/Time;
    :cond_d
    :try_start_0
    sget-object v6, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_PROVIDER_PROJ:[Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    .line 1350
    .local v6, projections:[Ljava/lang/String;
    const-string v4, "MapSMSProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onGetMsgListing(): Querying "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " with filter "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_15

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_7
    const/4 v8, 0x0

    const-string v9, "_id desc "

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 1358
    .end local v23           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    if-eqz v8, :cond_1d

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1360
    const-string v4, "MapSMSProvider"

    const-string v7, "onGetMsgListing(): Found messages!"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    if-lez p5, :cond_18

    .line 1365
    new-instance v30, Ljava/util/LinkedList;

    invoke-direct/range {v30 .. v30}, Ljava/util/LinkedList;-><init>()V

    .line 1368
    .restart local v30       #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    :cond_e
    if-nez p6, :cond_16

    .line 1369
    const/4 v9, 0x1

    move-object/from16 v7, p0

    move/from16 v10, p4

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    invoke-virtual/range {v7 .. v13}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->toMessageInfo(Landroid/database/Cursor;ZILjava/lang/String;Ljava/lang/String;I)Lcom/broadcom/bt/service/map/MessageInfo;

    move-result-object v29

    .line 1371
    .restart local v29       #mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    if-eqz v29, :cond_f

    .line 1372
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1374
    :cond_f
    add-int/lit8 p5, p5, -0x1

    .line 1379
    .end local v29           #mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    :goto_8
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_10

    if-gtz p5, :cond_e

    .line 1380
    :cond_10
    if-nez v30, :cond_17

    .line 1381
    const-string v4, "MapSMSProvider"

    const-string v7, "onGetMsgListing(): Unable to get memory!"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1428
    .end local v6           #projections:[Ljava/lang/String;
    .end local v30           #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    :goto_9
    if-eqz v8, :cond_1

    .line 1429
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1291
    .end local v8           #c:Landroid/database/Cursor;
    .restart local v23       #c:Landroid/database/Cursor;
    :cond_11
    const/16 v28, 0x1

    goto/16 :goto_3

    .line 1297
    :cond_12
    const-string v4, "0"

    goto/16 :goto_4

    .line 1314
    .restart local v32       #periodBeginmillis:J
    .restart local v38       #time:Landroid/text/format/Time;
    :cond_13
    const/16 v28, 0x1

    goto/16 :goto_5

    .line 1334
    .end local v32           #periodBeginmillis:J
    .restart local v34       #periodEndmillis:J
    :cond_14
    const/16 v28, 0x1

    goto/16 :goto_6

    .line 1355
    .end local v34           #periodEndmillis:J
    .end local v38           #time:Landroid/text/format/Time;
    .restart local v6       #projections:[Ljava/lang/String;
    :cond_15
    const/4 v7, 0x0

    goto :goto_7

    .line 1376
    .end local v23           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v30       #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    :cond_16
    :try_start_2
    const-string v4, "MapSMSProvider"

    const-string v7, "OnGetMsgListing() : skipping upto the offset"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    add-int/lit8 p6, p6, -0x1

    goto :goto_8

    .line 1384
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v30

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMessageListings(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    .line 1424
    .end local v30           #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    :catch_0
    move-exception v37

    .line 1425
    .end local v6           #projections:[Ljava/lang/String;
    .local v37, t:Ljava/lang/Throwable;
    :goto_a
    const-string v4, "MapSMSProvider"

    const-string v7, "onGetMsgListing(): Unable to query for SMS messages"

    move-object/from16 v0, v37

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1386
    .end local v37           #t:Ljava/lang/Throwable;
    .restart local v6       #projections:[Ljava/lang/String;
    :cond_18
    if-nez p5, :cond_1c

    .line 1387
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v39

    .line 1388
    .local v39, totalMsgCount:I
    const/16 v21, 0x0

    .line 1390
    .local v21, newMsg:B
    const-string v4, "MapSMSProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "msg size ="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    move/from16 v0, v39

    new-array v0, v0, [Lcom/broadcom/bt/service/map/MessageInfo;

    move-object/from16 v22, v0

    .line 1394
    .local v22, msgInfoArray:[Lcom/broadcom/bt/service/map/MessageInfo;
    const/16 v24, 0x0

    .line 1395
    .local v24, c1:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v16, v4

    const-string v17, "(read = 0)"

    const/16 v18, 0x0

    const-string v19, "_id LIMIT 1"

    move-object v15, v5

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 1396
    if-eqz v24, :cond_1a

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1a

    .line 1397
    const-string v4, "MapSMSProvider"

    const-string v7, "There is unread msg"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    const/16 v21, 0x1

    .line 1403
    :goto_b
    if-eqz v24, :cond_19

    .line 1404
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1405
    const/16 v24, 0x0

    .line 1408
    :cond_19
    if-nez v22, :cond_1b

    .line 1409
    const-string v4, "MapSMSProvider"

    const-string v7, "onGetMsgListing(): Unable to get memory!"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1400
    :cond_1a
    const-string v4, "MapSMSProvider"

    const-string v7, "There is no unread msg"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1412
    :cond_1b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v16, "com.broadcom.bt"

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v15, p2

    move-object/from16 v17, p1

    move-object/from16 v18, p3

    invoke-virtual/range {v14 .. v22}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMsgListInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)Z

    goto/16 :goto_9

    .line 1416
    .end local v21           #newMsg:B
    .end local v22           #msgInfoArray:[Lcom/broadcom/bt/service/map/MessageInfo;
    .end local v24           #c1:Landroid/database/Cursor;
    .end local v39           #totalMsgCount:I
    :cond_1c
    const-string v4, "MapSMSProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MaxListSize ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ") is smaller than 0..."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1420
    :cond_1d
    const-string v4, "MapSMSProvider"

    const-string v7, "[onGetMsgListing] No msgs are existed!!"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_9

    .line 1424
    .end local v6           #projections:[Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    .restart local v23       #c:Landroid/database/Cursor;
    :catch_1
    move-exception v37

    move-object/from16 v8, v23

    .end local v23           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    goto/16 :goto_a
.end method

.method protected onPushMsg(ILjava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 27
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "msgTransparent"
    .parameter "msgRetry"
    .parameter "msgCharset"
    .parameter "msgContentUri"
    .parameter "folderPath"
    .parameter "virtualFolderPath"

    .prologue
    .line 1439
    const/4 v6, 0x0

    .line 1440
    .local v6, content:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1441
    .local v5, destAddress:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1442
    .local v9, isRead:Z
    const/4 v7, 0x0

    .line 1443
    .local v7, subject:Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->parseBMessage(Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessage;

    move-result-object v16

    .line 1444
    .local v16, bMessage:Lcom/broadcom/bt/util/bmsg/BMessage;
    const-string v3, "MapSMSProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPushMsg() charset = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " msgContentUri = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    if-nez v16, :cond_0

    .line 1446
    const-string v3, "MapSMSProvider"

    const-string v8, "(onPushMsg(): Unable to push SMS message. Null BMessage"

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    .line 1614
    :goto_0
    return-void

    .line 1455
    :cond_0
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lcom/broadcom/bt/util/bmsg/BMessage;->getMessageType()B

    move-result v21

    .line 1459
    .local v21, msgType:B
    const-string v3, "MapSMSProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPushMsg(): Message type = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const/4 v3, 0x4

    move/from16 v0, v21

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    move/from16 v0, v21

    if-eq v0, v3, :cond_3

    .line 1463
    const-string v3, "MapSMSProvider"

    const-string v8, "onPushMsg(): Unable to process BMessage: not a SMS message type"

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1534
    .end local v21           #msgType:B
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    if-nez v5, :cond_e

    .line 1535
    :cond_2
    const-string v3, "MapSMSProvider"

    const-string v8, "onPushMsg(): Unable to push SMS text message. Invalid destination address or content"

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    goto :goto_0

    .line 1469
    .restart local v21       #msgType:B
    :cond_3
    const/4 v3, 0x4

    move/from16 v0, v21

    if-ne v0, v3, :cond_4

    :try_start_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mPhoneType:I

    const/4 v8, 0x2

    if-ne v3, v8, :cond_5

    :cond_4
    const/4 v3, 0x2

    move/from16 v0, v21

    if-ne v0, v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mPhoneType:I

    const/4 v8, 0x1

    if-eq v3, v8, :cond_6

    .line 1471
    :cond_5
    const-string v3, "MapSMSProvider"

    const-string v8, "onPushMsg(): Incorrect SMS format for this phone"

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1529
    .end local v21           #msgType:B
    :catch_0
    move-exception v19

    .line 1530
    .local v19, e:Ljava/lang/Exception;
    const-string v3, "MapSMSProvider"

    const-string v8, "onPushMsg(): Error parsing BMessage"

    move-object/from16 v0, v19

    invoke-static {v3, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1477
    .end local v19           #e:Ljava/lang/Exception;
    .restart local v21       #msgType:B
    :cond_6
    :try_start_2
    invoke-static/range {p7 .. p7}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static/range {p7 .. p7}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1478
    :cond_7
    const-string v3, "MapSMSProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPushMsg(): invalid folder path:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1482
    :cond_8
    invoke-virtual/range {v16 .. v16}, Lcom/broadcom/bt/util/bmsg/BMessage;->isRead()Z

    move-result v9

    .line 1485
    invoke-virtual/range {v16 .. v16}, Lcom/broadcom/bt/util/bmsg/BMessage;->getEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    move-result-object v15

    .line 1486
    .local v15, bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    if-nez v15, :cond_9

    .line 1487
    const-string v3, "MapSMSProvider"

    const-string v8, "onPushMsg(): Unable to process BMessage. Envelope is null"

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1492
    :cond_9
    invoke-virtual {v15}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->getRecipient()Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    move-result-object v18

    .line 1493
    .local v18, bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    if-nez v18, :cond_a

    .line 1494
    const-string v3, "MapSMSProvider"

    const-string v8, "onPushMsg(): Unable to process BMessage. Recipient is null"

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1499
    :cond_a
    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->getProperty(B)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    move-result-object v17

    .line 1501
    .local v17, bProp:Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;
    if-nez v17, :cond_b

    .line 1502
    const-string v3, "MapSMSProvider"

    const-string v8, "onPushMsg(): Unable to process BMessage. Recipient TEL property is null"

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1506
    :cond_b
    invoke-virtual/range {v17 .. v17}, Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 1510
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getBMsgBody(Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;)Lcom/broadcom/bt/util/bmsg/BMessageBody;

    move-result-object v13

    .line 1512
    .local v13, bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    if-nez v13, :cond_c

    .line 1513
    const-string v3, "MapSMSProvider"

    const-string v8, "onPushMsg(): Unable to process BMessage. Body is null"

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1518
    :cond_c
    invoke-virtual {v13}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->getContent()Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;

    move-result-object v14

    .line 1519
    .local v14, bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    if-nez v14, :cond_d

    .line 1520
    const-string v3, "MapSMSProvider"

    const-string v8, "onPushMsg(): Unable to process BMessage. Cintent is null"

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1523
    :cond_d
    invoke-virtual {v14}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->getFirstMessageContent()Ljava/lang/String;

    move-result-object v6

    .line 1524
    const/16 v22, 0x0

    .line 1525
    .local v22, next:Ljava/lang/String;
    :goto_2
    invoke-virtual {v14}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->getNextMessageContent()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_1

    .line 1526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    goto :goto_2

    .line 1540
    .end local v13           #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .end local v14           #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .end local v15           #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .end local v17           #bProp:Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;
    .end local v18           #bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    .end local v21           #msgType:B
    .end local v22           #next:Ljava/lang/String;
    :cond_e
    if-nez p5, :cond_f

    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    const/4 v8, 0x2

    if-ne v3, v8, :cond_f

    .line 1543
    const-string v3, "MapSMSProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Native charset used to push message - got message "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/broadcom/bt/util/bmsg/BMessage;->decodeSMSSubmitPDU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1546
    .local v23, sUTF8Content:Ljava/lang/String;
    if-nez v23, :cond_12

    .line 1547
    const-string v3, "MapSMSProvider"

    const-string v8, "Decoded message body - failed"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    .end local v23           #sUTF8Content:Ljava/lang/String;
    :cond_f
    invoke-virtual/range {v16 .. v16}, Lcom/broadcom/bt/util/bmsg/BMessage;->finish()V

    .line 1559
    const/16 v16, 0x0

    .line 1561
    const/16 v20, 0x0

    .line 1563
    .local v20, messageUri:Landroid/net/Uri;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v11

    .line 1564
    .local v11, threadId:J
    const-string v3, "/outbox"

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1566
    const-string v3, "MapSMSProvider"

    const-string v8, "Sending message..."

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mSender:Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;

    invoke-virtual {v3, v5, v6, v11, v12}, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->sendMessage(Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v20

    .line 1598
    .end local v11           #threadId:J
    :cond_10
    :goto_3
    if-eqz v20, :cond_14

    .line 1600
    const-string v3, "MapSMSProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Created message to send. Uri: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    const-string v3, "/outbox"

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1607
    const-string p7, "/sent"

    .line 1609
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p7

    invoke-virtual {v3, v0, v1, v8, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Success(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1549
    .end local v20           #messageUri:Landroid/net/Uri;
    .restart local v23       #sUTF8Content:Ljava/lang/String;
    :cond_12
    const-string v3, "MapSMSProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Decoded message body - got message "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    move-object/from16 v6, v23

    .line 1551
    if-nez v6, :cond_f

    .line 1552
    const-string v3, "MapSMSProvider"

    const-string v8, "onPushMsg(): Unable to push SMS text message. Empty content - conversion failed"

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1573
    .end local v23           #sUTF8Content:Ljava/lang/String;
    .restart local v11       #threadId:J
    .restart local v20       #messageUri:Landroid/net/Uri;
    :cond_13
    :try_start_4
    const-string v3, "MapSMSProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pushing message to "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    invoke-static/range {p7 .. p7}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->createFolderUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1576
    .local v4, addrUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v10, 0x1

    invoke-static/range {v3 .. v12}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v20

    .line 1579
    if-eqz v20, :cond_10

    .line 1580
    const/4 v3, 0x1

    invoke-static/range {p7 .. p7}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getMessageType(Ljava/lang/String;)I

    move-result v8

    if-ne v3, v8, :cond_10

    .line 1584
    const-string v3, "MapSMSProvider"

    const-string v8, "Updating properties for inbox message..."

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    new-instance v24, Landroid/content/ContentValues;

    const/4 v3, 0x3

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1587
    .local v24, v:Landroid/content/ContentValues;
    const-string v3, "protocol"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1588
    const-string v3, "reply_path_present"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1589
    const-string v3, "status"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v3, v0, v1, v8, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 1594
    .end local v4           #addrUri:Landroid/net/Uri;
    .end local v11           #threadId:J
    .end local v24           #v:Landroid/content/ContentValues;
    :catch_1
    move-exception v19

    .line 1595
    .restart local v19       #e:Ljava/lang/Exception;
    const-string v3, "MapSMSProvider"

    const-string v8, "Unable to push message"

    move-object/from16 v0, v19

    invoke-static {v3, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1612
    .end local v19           #e:Ljava/lang/Exception;
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onSetMessageDeletedStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 22
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "messageId"
    .parameter "deletedStatus"

    .prologue
    .line 1624
    const-string v2, "MapSMSProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetMessageDeletedStatus(): folderpath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " messageId ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    const/16 v20, 0x0

    .line 1631
    .local v20, status:B
    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1632
    :cond_0
    const-string v2, "MapSMSProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetMessageDeletedStatus(): Invalid folder path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getProviderId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    move/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)Z

    move/from16 v7, v20

    .line 1707
    .end local v20           #status:B
    .local v7, status:B
    :goto_0
    return-void

    .line 1640
    .end local v7           #status:B
    .restart local v20       #status:B
    :cond_1
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v2, v0, :cond_7

    .line 1642
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isDeletedFolder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1643
    const-string v2, "MapSMSProvider"

    const-string v3, "onSetMessageDeletedStatus: in deleted folder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->deleteItem(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1646
    const-string v2, "MapSMSProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetMessageDeletedStatus: Msg Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is deleted in deleted folder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v7, v20

    .line 1704
    .end local v20           #status:B
    .restart local v7       #status:B
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getProviderId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    move/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1648
    .end local v7           #status:B
    .restart local v20       #status:B
    :cond_2
    const-string v2, "MapSMSProvider"

    const-string v3, "onSetMessageDeletedStatus: Nothing to be deleted in deleted folder"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    const/4 v7, 0x1

    .end local v20           #status:B
    .restart local v7       #status:B
    goto :goto_1

    .line 1655
    .end local v7           #status:B
    .restart local v20       #status:B
    :cond_3
    const-string v2, "MapSMSProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetMessageDeletedStatus: in folder ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    const/16 v18, 0x0

    .line 1658
    .local v18, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p4

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_PROVIDER_PROJ:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1661
    if-eqz v18, :cond_5

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->getNextMsgId()I

    move-result v3

    const/16 v4, 0x8

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v8, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x7

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x6

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x9

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    const/16 v17, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-virtual/range {v2 .. v17}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->addItem(IILjava/lang/String;IJIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1676
    const-string v2, "MapSMSProvider"

    const-string v3, "onSetMessageDeletedStatus(): Unable to add item to deleted folder"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    :cond_4
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1683
    :cond_5
    :goto_2
    if-eqz v18, :cond_6

    .line 1684
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1685
    const/16 v18, 0x0

    .line 1688
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p4

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    .line 1690
    .local v19, rowsDeleted:I
    if-gtz v19, :cond_8

    .line 1691
    const/4 v7, 0x1

    .line 1692
    .end local v20           #status:B
    .restart local v7       #status:B
    const-string v2, "MapSMSProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1680
    .end local v7           #status:B
    .end local v19           #rowsDeleted:I
    .restart local v20       #status:B
    :catch_0
    move-exception v21

    .line 1681
    .local v21, t:Ljava/lang/Throwable;
    const-string v2, "MapSMSProvider"

    const-string v3, "onSetMessageDeletedStatus(): Unable to query for SMS messages"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1700
    .end local v18           #c:Landroid/database/Cursor;
    .end local v21           #t:Ljava/lang/Throwable;
    :cond_7
    const/4 v7, 0x1

    .line 1701
    .end local v20           #status:B
    .restart local v7       #status:B
    const-string v2, "MapSMSProvider"

    const-string v3, "Undelete is not supported for SMS"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v7           #status:B
    .restart local v18       #c:Landroid/database/Cursor;
    .restart local v19       #rowsDeleted:I
    .restart local v20       #status:B
    :cond_8
    move/from16 v7, v20

    .end local v20           #status:B
    .restart local v7       #status:B
    goto/16 :goto_1
.end method

.method protected onSetMessageReadStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 8
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "messageId"
    .parameter "readStatus"

    .prologue
    const/4 v7, 0x1

    .line 1712
    const-string v4, "MapSMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSetMessageReadStatus(): folderpath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " messageId ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    invoke-static {p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1718
    :cond_0
    const-string v4, "MapSMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSetMessageReadStatus(): Invalid folder path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    :goto_0
    return-void

    .line 1723
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 1724
    .local v3, values:Landroid/content/ContentValues;
    if-ne v7, p5, :cond_2

    .line 1725
    const-string v4, "read"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1732
    .local v1, result:I
    if-gtz v1, :cond_3

    .line 1733
    const-string v4, "MapSMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSetMessageReadStatus(): Unable to update read status. Message not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1743
    .end local v1           #result:I
    :catch_0
    move-exception v2

    .line 1744
    .local v2, t:Ljava/lang/Throwable;
    const-string v4, "MapSMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EonSetMessageReadStatus(): rror updating read status for message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1727
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_2
    const-string v4, "read"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1738
    .restart local v1       #result:I
    :cond_3
    :try_start_1
    const-string v4, "MapSMSProvider"

    const-string v5, "onSetMessageReadStatus(): Update read status success. Also update title bar and shortcut"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.mms.transaction.MessageStatusReceiver.CANCEL_NOTIFICATION"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1740
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "id"

    const/16 v5, 0x7b

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1741
    iget-object v4, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onStarted()V
    .locals 6

    .prologue
    .line 848
    new-instance v2, Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;-><init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V

    iput-object v2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    .line 852
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    if-eqz v2, :cond_0

    .line 853
    const-string v2, "MapSMSProvider"

    const-string v3, "Unregistering already registered receiver"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    :cond_0
    :goto_0
    new-instance v2, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;

    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mSender:Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;

    .line 861
    new-instance v2, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;-><init>(Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;)V

    iput-object v2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    .line 862
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getEventCallbackHandler()Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    move-result-object v0

    .line 863
    .local v0, handler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    iget-object v4, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 865
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 866
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->deleteAllItems()V

    .line 868
    :cond_1
    return-void

    .line 856
    .end local v0           #handler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;
    :catch_0
    move-exception v1

    .line 857
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "MapSMSProvider"

    const-string v3, "Unable to unregister receiver"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onStopped()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 871
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 872
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->deleteAllItems()V

    .line 873
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->closeDeletedFolderDatabase()V

    .line 877
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    if-eqz v1, :cond_1

    .line 878
    const-string v1, "MapSMSProvider"

    const-string v2, "Unregistering already registered receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 881
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    :goto_0
    iput-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    .line 887
    :cond_1
    return-void

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "MapSMSProvider"

    const-string v2, "Unable to unregister receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onUpdateInbox(Ljava/lang/String;)V
    .locals 2
    .parameter "datasourceId"

    .prologue
    .line 1752
    const-string v0, "MapSMSProvider"

    const-string v1, "onUpdateInbox(): Update inbox is not supported for SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    return-void
.end method

.method protected preStart()V
    .locals 4

    .prologue
    .line 817
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 819
    .local v0, mgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mPhoneType:I

    .line 820
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mOwnerPhoneNumber:Ljava/lang/String;

    .line 822
    const-string v1, "MapSMSProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preStart: mOwnerPhoneNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mOwnerPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mOwnerPhoneNumber:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 824
    const-string v1, ""

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mOwnerPhoneNumber:Ljava/lang/String;

    .line 829
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mTmpDirectory:Ljava/io/File;

    .line 830
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mTmpDirectory:Ljava/io/File;

    if-nez v1, :cond_1

    .line 831
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.broadcom.bt.app.system/map"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mTmpDirectory:Ljava/io/File;

    .line 832
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mTmpDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mTmpDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 833
    const-string v1, "MapSMSProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "******Cannot create temporary directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mTmpDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_1
    const-string v1, "MapSMSProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Temporary directory set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mTmpDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->openDeletedFolderDatabase()Z

    .line 844
    return-void
.end method

.method protected registerDatasources()V
    .locals 8

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 890
    const/4 v3, 0x5

    new-array v7, v3, [Ljava/lang/String;

    .line 892
    .local v7, folderMappings:[Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    const-string v4, "inbox=inbox"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v7, v2

    .line 893
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/String;

    const-string v5, "outbox=outbox"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v7, v3

    .line 894
    new-instance v3, Ljava/lang/String;

    const-string v4, "sent=sent"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v7, v1

    .line 895
    const/4 v3, 0x3

    new-instance v4, Ljava/lang/String;

    const-string v5, "deleted=deleted"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v7, v3

    .line 896
    new-instance v3, Ljava/lang/String;

    const-string v4, "draft=draft"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v7, v0

    .line 898
    iget v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mPhoneType:I

    if-ne v3, v1, :cond_0

    :goto_0
    iput-byte v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    .line 901
    iget-byte v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    const-string v3, "SMS"

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->registerDS(IILjava/lang/String;IZZ[Ljava/lang/String;)Z

    .line 904
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->startMSEInstance()V

    .line 905
    return-void

    :cond_0
    move v0, v1

    .line 898
    goto :goto_0
.end method

.method protected startMSEInstance()V
    .locals 2

    .prologue
    .line 922
    const-string v0, "MapSMSProvider"

    const-string v1, "startMSEInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMS"

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->startMSE(Ljava/lang/String;Ljava/lang/String;)Z

    .line 927
    return-void
.end method

.method protected stopMSEInstance()V
    .locals 2

    .prologue
    .line 932
    const-string v0, "MapSMSProvider"

    const-string v1, "stopMSEInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMS"

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->stopMSE(Ljava/lang/String;Ljava/lang/String;)Z

    .line 938
    return-void
.end method

.method protected toDeletedMessageInfo(Landroid/database/Cursor;ZI)Lcom/broadcom/bt/service/map/MessageInfo;
    .locals 15
    .parameter "c"
    .parameter "includeMessageSize"
    .parameter "maxSubjectLength"

    .prologue
    .line 559
    new-instance v7, Lcom/broadcom/bt/service/map/MessageInfo;

    invoke-direct {v7}, Lcom/broadcom/bt/service/map/MessageInfo;-><init>()V

    .line 560
    .local v7, mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    .line 561
    const/16 v11, 0x10d7

    iput v11, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    .line 565
    const/4 v11, 0x0

    iput-boolean v11, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mIsOutbound:Z

    .line 566
    iget v11, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mPhoneType:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_7

    const/4 v11, 0x4

    :goto_0
    iput-byte v11, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    .line 568
    const/4 v11, 0x1

    iput-boolean v11, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    .line 570
    const/4 v11, 0x4

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12, v13}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getLong(Landroid/database/Cursor;IJ)J

    move-result-wide v5

    .line 571
    .local v5, lDateTime:J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 572
    .local v2, d:Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyyMMddHHmmss"

    invoke-direct {v4, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 574
    .local v4, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 575
    const-string v11, "MapSMSProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Pre-split date :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    const/4 v13, 0x0

    const/16 v14, 0x8

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "T"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    const/16 v13, 0x8

    const/16 v14, 0xe

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 577
    const-string v11, "MapSMSProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Post-split date :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v11, 0x0

    iput-byte v11, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    .line 580
    const/4 v11, 0x1

    const/4 v12, 0x6

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getInt(Landroid/database/Cursor;II)I

    move-result v12

    if-ne v11, v12, :cond_8

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    .line 581
    const/4 v11, 0x0

    iput-boolean v11, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    .line 582
    const/4 v11, 0x0

    iput-boolean v11, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    .line 583
    const/16 v11, 0xd

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getBoolean(Landroid/database/Cursor;IZ)Z

    move-result v11

    iput-boolean v11, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    .line 584
    const/4 v11, 0x0

    iput v11, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    .line 585
    const/16 v11, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 586
    .local v3, encoded_del_subject:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 587
    invoke-static {v3}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 589
    :cond_0
    move/from16 v0, p3

    invoke-virtual {v7, v3, v0}, Lcom/broadcom/bt/service/map/MessageInfo;->setSubject(Ljava/lang/String;I)V

    .line 591
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getOwnerInfo()Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v9

    .line 594
    .local v9, ownerInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    const/4 v11, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getPersonInfoByContactId(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v10

    .line 595
    .local v10, pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    const/4 v11, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, address:Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 598
    invoke-static {v7, v10}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgSenderNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 599
    invoke-static {v7, v10}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgReplyToNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 601
    :cond_1
    iput-object v1, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    .line 602
    iput-object v1, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 605
    if-eqz v9, :cond_2

    .line 606
    invoke-static {v7, v9}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgRecipientNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 608
    :cond_2
    iget-object v11, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mOwnerPhoneNumber:Ljava/lang/String;

    iput-object v11, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 610
    if-eqz p2, :cond_6

    .line 611
    const/16 v11, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 612
    .local v8, msg:Ljava/lang/String;
    iget-object v11, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    if-nez v11, :cond_3

    .line 614
    const-string v11, ""

    iput-object v11, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 616
    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 617
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x10

    if-le v11, v12, :cond_9

    .line 618
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    const/16 v13, 0x10

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 625
    :cond_4
    :goto_2
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_a

    :cond_5
    const/4 v11, 0x0

    :goto_3
    iput v11, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    .line 628
    .end local v8           #msg:Ljava/lang/String;
    :cond_6
    return-object v7

    .line 566
    .end local v1           #address:Ljava/lang/String;
    .end local v2           #d:Ljava/util/Date;
    .end local v3           #encoded_del_subject:Ljava/lang/String;
    .end local v4           #formatter:Ljava/text/SimpleDateFormat;
    .end local v5           #lDateTime:J
    .end local v9           #ownerInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .end local v10           #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :cond_7
    const/4 v11, 0x2

    goto/16 :goto_0

    .line 580
    .restart local v2       #d:Ljava/util/Date;
    .restart local v4       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v5       #lDateTime:J
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 621
    .restart local v1       #address:Ljava/lang/String;
    .restart local v3       #encoded_del_subject:Ljava/lang/String;
    .restart local v8       #msg:Ljava/lang/String;
    .restart local v9       #ownerInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .restart local v10       #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :cond_9
    invoke-static {v8}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    goto :goto_2

    .line 625
    :cond_a
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x16

    goto :goto_3
.end method

.method protected toMessageInfo(Landroid/database/Cursor;ZILjava/lang/String;Ljava/lang/String;I)Lcom/broadcom/bt/service/map/MessageInfo;
    .locals 22
    .parameter "c"
    .parameter "includeMessageSize"
    .parameter "parameterMask"
    .parameter "recipient"
    .parameter "originator"
    .parameter "maxSubjectLength"

    .prologue
    .line 636
    const/16 v18, 0x7

    const/16 v19, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getInt(Landroid/database/Cursor;II)I

    move-result v16

    .line 637
    .local v16, smsFolderType:I
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getOwnerInfo()Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v13

    .line 640
    .local v13, ownerInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    new-instance v11, Lcom/broadcom/bt/service/map/MessageInfo;

    invoke-direct {v11}, Lcom/broadcom/bt/service/map/MessageInfo;-><init>()V

    .line 641
    .local v11, mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    .line 643
    if-nez p3, :cond_d

    .line 644
    const/16 v18, 0x10ff

    move/from16 v0, v18

    iput v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    .line 653
    :goto_0
    invoke-static/range {v16 .. v16}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v18

    if-nez v18, :cond_0

    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    :cond_0
    const/16 v18, 0x1

    :goto_1
    move/from16 v0, v18

    iput-boolean v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mIsOutbound:Z

    .line 654
    move-object/from16 v0, p0

    iget v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mPhoneType:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    const/16 v18, 0x4

    :goto_2
    move/from16 v0, v18

    iput-byte v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    .line 656
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    .line 658
    const/16 v18, 0x2

    const-wide/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getLong(Landroid/database/Cursor;IJ)J

    move-result-wide v9

    .line 659
    .local v9, lDateTime:J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 660
    .local v6, d:Ljava/util/Date;
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v18, "yyyyMMddHHmmss"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 662
    .local v8, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v8, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 663
    const-string v18, "MapSMSProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Pre-split date :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x8

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "T"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    const/16 v21, 0xe

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 665
    const-string v18, "MapSMSProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Post-split date :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-byte v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    .line 668
    const/16 v18, 0x1

    const/16 v19, 0x5

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getInt(Landroid/database/Cursor;II)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    iput-boolean v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    .line 670
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    const/16 v18, 0x5

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    :cond_1
    const/16 v18, 0x1

    :goto_4
    move/from16 v0, v18

    iput-boolean v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    .line 671
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    .line 672
    const/16 v18, 0x3

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getBoolean(Landroid/database/Cursor;IZ)Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    .line 673
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    .line 674
    const/16 v18, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 675
    .local v7, encoded_subject:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 676
    invoke-static {v7}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 678
    :cond_2
    move/from16 v0, p6

    invoke-virtual {v11, v7, v0}, Lcom/broadcom/bt/service/map/MessageInfo;->setSubject(Ljava/lang/String;I)V

    .line 683
    iget-boolean v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mIsOutbound:Z

    move/from16 v18, v0

    if-eqz v18, :cond_14

    .line 684
    const-string v18, "MapSMSProvider"

    const-string v19, "outbound message"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 689
    const/16 v18, 0x8

    const/16 v19, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getInt(Landroid/database/Cursor;II)I

    move-result v17

    .line 690
    .local v17, threadId:I
    if-lez v17, :cond_3

    .line 691
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getThreadRecipientAddresses(I)Ljava/util/List;

    move-result-object v5

    .line 692
    .local v5, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_3

    .line 694
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 695
    iget-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getPersonInfoByPhoneNo(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v14

    .line 696
    .local v14, pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    if-eqz v14, :cond_3

    .line 697
    invoke-static {v11, v14}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgRecipientNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 712
    .end local v5           #addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v14           #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .end local v17           #threadId:I
    :cond_3
    :goto_5
    if-eqz v13, :cond_4

    .line 713
    invoke-static {v11, v13}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgSenderNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 714
    invoke-static {v11, v13}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgReplyToNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 716
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mOwnerPhoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mOwnerPhoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 749
    :goto_6
    if-eqz p2, :cond_8

    .line 750
    const/16 v18, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 753
    .local v12, msg:Ljava/lang/String;
    iget-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_5

    .line 754
    const-string v18, ""

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 755
    :cond_5
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_6

    .line 758
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_17

    .line 759
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ..."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 767
    :cond_6
    :goto_7
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_18

    :cond_7
    const/16 v18, 0x0

    :goto_8
    move/from16 v0, v18

    iput v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    .line 772
    .end local v12           #msg:Ljava/lang/String;
    :cond_8
    if-eqz p4, :cond_a

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_a

    const-string v18, "*"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 773
    iget-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    iget-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_19

    .line 775
    :cond_9
    const-string v18, "MapSMSProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "toMessageInfo: receipient matches filter"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_a
    :goto_9
    if-eqz v11, :cond_c

    if-eqz p5, :cond_c

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_c

    const-string v18, "*"

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 782
    iget-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    iget-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1a

    .line 784
    :cond_b
    const-string v18, "MapSMSProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "toMessageInfo: sender matches filter"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_c
    :goto_a
    return-object v11

    .line 650
    .end local v6           #d:Ljava/util/Date;
    .end local v7           #encoded_subject:Ljava/lang/String;
    .end local v8           #formatter:Ljava/text/SimpleDateFormat;
    .end local v9           #lDateTime:J
    :cond_d
    move/from16 v0, p3

    iput v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    goto/16 :goto_0

    .line 653
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 654
    :cond_f
    const/16 v18, 0x2

    goto/16 :goto_2

    .line 668
    .restart local v6       #d:Ljava/util/Date;
    .restart local v8       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v9       #lDateTime:J
    :cond_10
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 670
    :cond_11
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 702
    .restart local v7       #encoded_subject:Ljava/lang/String;
    :cond_12
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 703
    const/16 v18, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 704
    .local v15, personId:Ljava/lang/String;
    if-nez v15, :cond_13

    iget-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getPersonInfoByPhoneNo(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v14

    .line 706
    .restart local v14       #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :goto_b
    if-eqz v14, :cond_3

    .line 707
    invoke-static {v11, v14}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgRecipientNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    goto/16 :goto_5

    .line 704
    .end local v14           #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getPersonInfoByContactId(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v14

    goto :goto_b

    .line 722
    .end local v15           #personId:Ljava/lang/String;
    :cond_14
    const-string v18, "MapSMSProvider"

    const-string v19, "inbound message"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const/16 v18, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getPersonInfoByContactId(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v14

    .line 724
    .restart local v14       #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 726
    .local v4, address:Ljava/lang/String;
    const-string v18, "MapSMSProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "address: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    if-eqz v14, :cond_15

    .line 729
    invoke-static {v11, v14}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgSenderNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 730
    invoke-static {v11, v14}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgReplyToNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 732
    :cond_15
    iput-object v4, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    .line 733
    iput-object v4, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 736
    if-eqz v13, :cond_16

    .line 737
    invoke-static {v11, v13}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgRecipientNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 739
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mOwnerPhoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 740
    const-string v18, "MapSMSProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Sender Name = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const-string v18, "MapSMSProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Sender Addressing = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const-string v18, "MapSMSProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ReplyTo Addressing = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-string v18, "MapSMSProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Recipient Addressing = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const-string v18, "MapSMSProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Recipient Name = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 761
    .end local v4           #address:Ljava/lang/String;
    .end local v14           #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .restart local v12       #msg:Ljava/lang/String;
    :cond_17
    invoke-static {v12}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    goto/16 :goto_7

    .line 767
    :cond_18
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x16

    goto/16 :goto_8

    .line 777
    .end local v12           #msg:Ljava/lang/String;
    :cond_19
    const/4 v11, 0x0

    goto/16 :goto_9

    .line 786
    :cond_1a
    const/4 v11, 0x0

    goto/16 :goto_a
.end method

.method protected unregisterDatasources()V
    .locals 2

    .prologue
    .line 910
    const-string v0, "MapSMSProvider"

    const-string v1, "unregisterDatasources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->stopMSEInstance()V

    .line 915
    const-string v0, "SMS"

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->unregisterDS(Ljava/lang/String;)Z

    .line 917
    return-void
.end method
