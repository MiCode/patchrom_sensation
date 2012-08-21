.class public abstract Lcom/broadcom/bt/service/map/provider/BaseProvider;
.super Ljava/lang/Object;
.source "BaseProvider.java"

# interfaces
.implements Lcom/broadcom/bt/service/map/IMapEventHandler;
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/map/provider/BaseProvider$1;,
        Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final D:Z = true

.field public static final TAG:Ljava/lang/String; = "BaseProvider"

.field public static final folderListingStatus_InvalidParentPath:B = 0x1t

.field public static final folderListingStatus_NoFolders:B = 0x2t

.field public static final folderListingStatus_Success:B


# instance fields
.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mContext:Landroid/content/Context;

.field protected mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

.field protected mIsStarted:Z

.field protected mNotificationsEnabled:Z

.field protected mProviderType:B

.field protected mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

.field protected mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onBluetoothDisable()V

    return-void
.end method

.method protected static getBoolean(Landroid/database/Cursor;IZ)Z
    .locals 4
    .parameter "c"
    .parameter "colId"
    .parameter "defaultValue"

    .prologue
    const/4 v1, 0x1

    .line 475
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v1, v2, :cond_0

    .line 478
    :goto_0
    return v1

    .line 475
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get boolean value from col "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p2

    .line 478
    goto :goto_0
.end method

.method protected static getInt(Landroid/database/Cursor;II)I
    .locals 4
    .parameter "c"
    .parameter "colId"
    .parameter "defaultValue"

    .prologue
    .line 457
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 460
    .end local p2
    :goto_0
    return p2

    .line 458
    .restart local p2
    :catch_0
    move-exception v0

    .line 459
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get int value from col "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static getLong(Landroid/database/Cursor;IJ)J
    .locals 4
    .parameter "c"
    .parameter "colId"
    .parameter "defaultValue"

    .prologue
    .line 466
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 469
    .end local p2
    :goto_0
    return-wide p2

    .line 467
    .restart local p2
    :catch_0
    move-exception v0

    .line 468
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get long value from col "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static isRootFolder(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 452
    const-string v0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static isValidMsgStatus(B)Z
    .locals 2
    .parameter "val"

    .prologue
    const/4 v0, 0x1

    .line 415
    if-eq v0, p0, :cond_0

    const/4 v1, 0x2

    if-ne v1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized onBluetoothDisable()V
    .locals 2

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    const-string v0, "BaseProvider"

    const-string v1, "onBluetoothDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onBluetoothEnable()V
    .locals 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    const-string v0, "BaseProvider"

    const-string v1, "onBluetoothEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static parseBMessage(Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessage;
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, filePath:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 550
    :try_start_0
    const-string v3, "BaseProvider"

    const-string v4, "Unable to parse BMessage file. Null file path"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :goto_0
    return-object v2

    .line 552
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_1

    .line 553
    move-object v0, p0

    .line 561
    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/broadcom/bt/util/bmsg/BMessage;->parse(Ljava/io/File;)Lcom/broadcom/bt/util/bmsg/BMessage;

    move-result-object v2

    goto :goto_0

    .line 554
    :cond_1
    const-string v3, "file://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 555
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 557
    :cond_2
    const-string v3, "BaseProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse BMessage file. URI is not a file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 562
    :catch_0
    move-exception v1

    .line 563
    .local v1, t:Ljava/lang/Throwable;
    const-string v3, "BaseProvider"

    const-string v4, "Unable to parse BMessage file."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected static setBMessageHeaderInfo(Lcom/broadcom/bt/util/bmsg/BMessage;BLjava/lang/String;Lcom/broadcom/bt/service/map/MessageInfo;)V
    .locals 7
    .parameter "bMsg"
    .parameter "vCardVersionId"
    .parameter "folderPath"
    .parameter "mInfo"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 505
    if-eqz p0, :cond_0

    if-eqz p1, :cond_1

    if-eq p1, v5, :cond_1

    .line 507
    :cond_0
    const-string v3, "BaseProvider"

    const-string v4, "Unable to set BMessage Header Info"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-boolean v3, p3, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/util/bmsg/BMessage;->setReadStatus(Z)V

    .line 513
    invoke-virtual {p0, p2}, Lcom/broadcom/bt/util/bmsg/BMessage;->setFolder(Ljava/lang/String;)V

    .line 514
    invoke-static {p0, p3}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->setBMessageType(Lcom/broadcom/bt/util/bmsg/BMessage;Lcom/broadcom/bt/service/map/MessageInfo;)V

    .line 517
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessage;->addOriginator()Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    move-result-object v1

    .line 526
    .local v1, bOriginator:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    invoke-virtual {v1, p1}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->setVersion(B)V

    .line 527
    iget-object v3, p3, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    invoke-virtual {v1, v5, v3, v4}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    .line 528
    iget-object v3, p3, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    invoke-virtual {v1, v6, v3, v4}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    .line 531
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessage;->addEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    move-result-object v0

    .line 534
    .local v0, bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    invoke-virtual {v0}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->addRecipient()Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    move-result-object v2

    .line 541
    .local v2, bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    invoke-virtual {v2, p1}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->setVersion(B)V

    .line 542
    iget-object v3, p3, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    invoke-virtual {v2, v5, v3, v4}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    .line 543
    iget-object v3, p3, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    invoke-virtual {v2, v6, v3, v4}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    goto :goto_0
.end method

.method protected static setBMessageType(Lcom/broadcom/bt/util/bmsg/BMessage;Lcom/broadcom/bt/service/map/MessageInfo;)V
    .locals 2
    .parameter "bMsg"
    .parameter "mInfo"

    .prologue
    .line 483
    if-eqz p1, :cond_0

    .line 484
    iget-byte v0, p1, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    packed-switch v0, :pswitch_data_0

    .line 497
    :goto_0
    :pswitch_0
    const-string v0, "BaseProvider"

    const-string v1, "Unable to set message type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_0
    :goto_1
    return-void

    .line 486
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessage;->setMessageType(B)V

    goto :goto_1

    .line 489
    :pswitch_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessage;->setMessageType(B)V

    goto :goto_1

    .line 492
    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessage;->setMessageType(B)V

    goto :goto_1

    .line 495
    :pswitch_4
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessage;->setMessageType(B)V

    goto :goto_0

    .line 484
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected static setMsgRecipientNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V
    .locals 3
    .parameter "mInfo"
    .parameter "pInfo"

    .prologue
    .line 441
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    const-string v0, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMsgRecipientNameInfo - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mFamilyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mGivenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static setMsgReplyToNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V
    .locals 3
    .parameter "mInfo"
    .parameter "pInfo"

    .prologue
    .line 430
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    const-string v0, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMsgReplyToNameInfo - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mFamilyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mGivenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static setMsgSenderNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V
    .locals 3
    .parameter "mInfo"
    .parameter "pInfo"

    .prologue
    .line 420
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    const-string v0, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMsgSenderNameInfo - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mFamilyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mGivenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected abstract disableNotifications(Ljava/lang/String;)Z
.end method

.method protected abstract enableNotifications(Ljava/lang/String;)Z
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "BaseProvider"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->stop()V

    .line 157
    return-void
.end method

.method protected getEventCallbackHandler()Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    invoke-direct {v0}, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    .line 245
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->start()V

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 248
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    return-object v0
.end method

.method protected getOwnerInfo()Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getProviderId()Ljava/lang/String;
.end method

.method protected getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "resourceId"
    .parameter "defaultVal"

    .prologue
    .line 569
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    if-gtz p1, :cond_0

    .line 577
    .end local p2
    :goto_0
    return-object p2

    .line 573
    .restart local p2
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get string resource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Z)V
    .locals 5
    .parameter "ctx"
    .parameter "startImmediately"

    .prologue
    const/4 v4, 0x0

    .line 122
    const-string v1, "BaseProvider"

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    .line 124
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 125
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    if-nez v1, :cond_0

    .line 126
    new-instance v1, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;Lcom/broadcom/bt/service/map/provider/BaseProvider$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getEventCallbackHandler()Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    .line 130
    invoke-static {v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->addFilter_DSDiscover(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 131
    .local v0, ifilter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    iget-object v3, v3, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 134
    if-eqz p2, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->start()V

    .line 137
    :cond_1
    return-void
.end method

.method protected abstract onClientConnected(Ljava/lang/String;)V
.end method

.method protected abstract onClientDisconnected()V
.end method

.method protected declared-synchronized onDSDiscoverEvent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 637
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    :goto_0
    monitor-exit p0

    return-void

    .line 642
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->registerDatasources()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract onGetFolderListing(ILjava/lang/String;Ljava/lang/String;II)V
.end method

.method protected abstract onGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
.end method

.method protected abstract onGetMsgListing(Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
.end method

.method public onMCEConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "deviceName"

    .prologue
    .line 268
    const-string v0, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMCEConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p0, p3}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onClientConnected(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public onMCEDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "providerId"
    .parameter "datasourceId"

    .prologue
    .line 274
    const-string v0, "BaseProvider"

    const-string v1, "onMCEDisconnected "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onClientDisconnected()V

    .line 276
    return-void
.end method

.method public onMCEGetFolderListing(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .parameter "request_id"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "maxEntries"
    .parameter "offset"

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    const-string v0, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get folder listing. Wrong providerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    .line 351
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onGetFolderListing(ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public onMCEGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    .locals 8
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "virtualFolderPath"
    .parameter "messageId"
    .parameter "charSet"
    .parameter "includeAttachment"

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    const-string v0, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get message. Wrong providerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    move/from16 v7, p8

    .line 385
    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V

    goto :goto_0
.end method

.method public onMCEGetMsgListing(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
    .locals 16
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "requestId"
    .parameter "folderPath"
    .parameter "parameterMask"
    .parameter "maxListCnt"
    .parameter "listStartOffset"
    .parameter "subjectLength"
    .parameter "msgMask"
    .parameter "periodBegin"
    .parameter "periodEnd"
    .parameter "readStatus"
    .parameter "recipient"
    .parameter "originator"
    .parameter "pri_status"

    .prologue
    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    const-string v1, "BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to update get message listing. Wrong providerId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :goto_0
    return-void

    :cond_0
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    .line 362
    invoke-virtual/range {v1 .. v15}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onGetMsgListing(Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V

    goto :goto_0
.end method

.method public onMCEPushMsg(ILjava/lang/String;Ljava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "msgTransparent"
    .parameter "msgRetry"
    .parameter "msgCharset"
    .parameter "folderPath"
    .parameter "virtualFolderPath"
    .parameter "msgContentUri"

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    const-string v0, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to push message. Wrong providerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object/from16 v6, p9

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 375
    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onPushMsg(ILjava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMCERegisterForNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "notificationMode"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 296
    const/4 v0, 0x0

    .line 298
    .local v0, isSuccess:Z
    const-string v1, "BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMCERegisterForNotification("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    const-string v1, "BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to enable/disable notifications. Wrong providerId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_0
    return-void

    .line 307
    :cond_0
    const-string v1, "on"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 308
    iget-boolean v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    if-eqz v1, :cond_2

    .line 309
    const/4 v0, 0x1

    .line 326
    :cond_1
    :goto_1
    if-ne v0, v4, :cond_7

    .line 328
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v1, p1, p2, p3, v5}, Lcom/broadcom/bt/service/map/BluetoothMAP;->notifyRegistrationResponse(ILjava/lang/String;Ljava/lang/String;B)I

    goto :goto_0

    .line 310
    :cond_2
    invoke-virtual {p0, p3}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->enableNotifications(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 311
    iput-boolean v4, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    .line 312
    const/4 v0, 0x1

    goto :goto_1

    .line 314
    :cond_3
    const-string v1, "BaseProvider"

    const-string v2, "Unable to enable notifications"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 316
    :cond_4
    const-string v1, "off"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 317
    iget-boolean v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    if-nez v1, :cond_5

    .line 318
    const/4 v0, 0x1

    goto :goto_1

    .line 319
    :cond_5
    invoke-virtual {p0, p3}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->disableNotifications(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    iput-boolean v5, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    .line 321
    const/4 v0, 0x1

    goto :goto_1

    .line 324
    :cond_6
    const-string v1, "BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to enable/disable notifications: invalid mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 332
    :cond_7
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v1, p1, p2, p3, v4}, Lcom/broadcom/bt/service/map/BluetoothMAP;->notifyRegistrationResponse(ILjava/lang/String;Ljava/lang/String;B)I

    goto :goto_0
.end method

.method public onMCESetMessageStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    .locals 6
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "messageId"
    .parameter "statusType"
    .parameter "statusValue"

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    const-string v0, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMCESetMessageStatus(): Unable to set message status. Wrong providerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_0
    return-void

    .line 395
    :cond_0
    const/4 v0, 0x1

    if-ne p6, v0, :cond_1

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p7

    .line 396
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onSetMessageReadStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    goto :goto_0

    .line 398
    :cond_1
    const/4 v0, 0x2

    if-ne p6, v0, :cond_2

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p7

    .line 399
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onSetMessageDeletedStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    goto :goto_0

    .line 402
    :cond_2
    const-string v0, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMCESetMessageStatus(): invalid message status type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMCEUpdateInbox(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "providerId"
    .parameter "datasourceId"

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    const-string v0, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to update inbox. Wrong providerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-virtual {p0, p2}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onUpdateInbox(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onMSEInstanceStarted()V
    .locals 2

    .prologue
    .line 665
    const-string v0, "BaseProvider"

    const-string v1, "BaseProvider.onMSEInstanceStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    return-void
.end method

.method protected onMSEInstanceStopped()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 670
    const-string v0, "BaseProvider"

    const-string v1, "BaseProvider.onMSEInstanceStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 674
    iput-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    if-eqz v0, :cond_1

    .line 678
    const-string v0, "BaseProvider"

    const-string v1, "mEventCallbackHandler.finish.finish()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->finish()V

    .line 680
    iput-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v0, :cond_2

    .line 684
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/map/BluetoothMAP;->finish()V

    .line 685
    iput-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    .line 687
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    .line 689
    const-string v0, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onStopped()V

    .line 693
    return-void
.end method

.method public onMSEStateChanged(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 2
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    .line 280
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 281
    const-string v0, "BaseProvider"

    const-string v1, "Unable to start/stop provider: context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 286
    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    .line 287
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onMSEInstanceStarted()V

    goto :goto_0

    .line 288
    :cond_2
    if-ne p3, v1, :cond_0

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    .line 290
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onMSEInstanceStopped()V

    goto :goto_0
.end method

.method public onMsgGetInProgress()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public onMsgPushInProgress()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 3
    .parameter "proxyObject"

    .prologue
    .line 221
    check-cast p1, Lcom/broadcom/bt/service/map/BluetoothMAP;

    .end local p1
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    .line 224
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->registerDatasources()V

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    .line 229
    const-string v0, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider started!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onStarted()V

    .line 236
    return-void
.end method

.method protected abstract onPushMsg(ILjava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract onSetMessageDeletedStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
.end method

.method protected abstract onSetMessageReadStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
.end method

.method protected onStarted()V
    .locals 0

    .prologue
    .line 650
    return-void
.end method

.method protected onStopped()V
    .locals 0

    .prologue
    .line 662
    return-void
.end method

.method protected abstract onUpdateInbox(Ljava/lang/String;)V
.end method

.method protected preStart()V
    .locals 0

    .prologue
    .line 631
    return-void
.end method

.method protected preStop()V
    .locals 0

    .prologue
    .line 656
    return-void
.end method

.method protected registerDS(IILjava/lang/String;IZZ[Ljava/lang/String;)Z
    .locals 15
    .parameter "providerType"
    .parameter "providerNameResourceId"
    .parameter "datasourceId"
    .parameter "datasourceNameResourceId"
    .parameter "supportsMessageFilter"
    .parameter "supportsMessageOffsetBrowsing"
    .parameter "folderMappings"

    .prologue
    .line 584
    const/4 v1, 0x0

    move/from16 v0, p2

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 585
    .local v13, providerDisplayName:Ljava/lang/String;
    const/4 v1, 0x0

    move/from16 v0, p4

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 586
    .local v12, dsDisplayName:Ljava/lang/String;
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v1, :cond_0

    if-nez p3, :cond_1

    .line 587
    :cond_0
    const-string v1, "BaseProvider"

    const-string v2, "Unable to register datasource. Proxy or datasource is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/4 v1, 0x0

    .line 596
    :goto_0
    return v1

    .line 591
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    move/from16 v0, p1

    int-to-byte v4, v0

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v5

    if-nez v13, :cond_2

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-nez v12, :cond_3

    move-object/from16 v8, p3

    :goto_2
    move-object v3, p0

    move-object/from16 v7, p3

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v1 .. v11}, Lcom/broadcom/bt/service/map/BluetoothMAP;->init(Landroid/content/Context;Lcom/broadcom/bt/service/map/IMapEventHandler;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)I

    .line 595
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/map/BluetoothMAP;->registerDSProvider()I

    move-result v14

    .line 596
    .local v14, status:I
    if-nez v14, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    .end local v14           #status:I
    :cond_2
    move-object v6, v13

    .line 591
    goto :goto_1

    :cond_3
    move-object v8, v12

    goto :goto_2

    .line 596
    .restart local v14       #status:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract registerDatasources()V
.end method

.method protected declared-synchronized start()V
    .locals 3

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    const-string v0, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 169
    const-string v0, "BaseProvider"

    const-string v1, "Unable to start provider. Invalid context specified,"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :goto_0
    monitor-exit p0

    return-void

    .line 172
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    if-eqz v0, :cond_1

    .line 173
    const-string v0, "BaseProvider"

    const-string v1, "Cannot start provider. Already started..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 176
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->preStart()V

    .line 180
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/broadcom/bt/service/map/BluetoothMAP;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected startMSE(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "providerId"
    .parameter "datasourceId"

    .prologue
    const/4 v1, 0x0

    .line 609
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-nez v2, :cond_1

    .line 610
    const-string v2, "BaseProvider"

    const-string v3, "Unable to start datasource. Proxy  is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_0
    :goto_0
    return v1

    .line 614
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v2, p1, p2}, Lcom/broadcom/bt/service/map/BluetoothMAP;->startMSEInstance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 615
    .local v0, status:I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected abstract startMSEInstance()V
.end method

.method protected declared-synchronized stop()V
    .locals 3

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    const-string v0, "BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 193
    const-string v0, "BaseProvider"

    const-string v1, "Cannot stop provider. Already stopped..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :goto_0
    monitor-exit p0

    return-void

    .line 197
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->preStop()V

    .line 198
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->unregisterDatasources()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected stopMSE(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "providerId"
    .parameter "datasourceId"

    .prologue
    const/4 v1, 0x0

    .line 619
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-nez v2, :cond_1

    .line 620
    const-string v2, "BaseProvider"

    const-string v3, "Unable to stop datasource. Proxy  is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_0
    :goto_0
    return v1

    .line 624
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v2, p1, p2}, Lcom/broadcom/bt/service/map/BluetoothMAP;->stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 625
    .local v0, status:I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected abstract stopMSEInstance()V
.end method

.method protected unregisterDS(Ljava/lang/String;)Z
    .locals 4
    .parameter "datasourceId"

    .prologue
    const/4 v1, 0x0

    .line 600
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v2, :cond_0

    if-nez p1, :cond_2

    .line 601
    :cond_0
    const-string v2, "BaseProvider"

    const-string v3, "Unable to unregister datasource. Proxy or datasource is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_1
    :goto_0
    return v1

    .line 604
    :cond_2
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/broadcom/bt/service/map/BluetoothMAP;->unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 605
    .local v0, status:I
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected abstract unregisterDatasources()V
.end method
