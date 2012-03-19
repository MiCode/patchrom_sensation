.class public Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;
.super Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;
.source "ImsSmsInterfaceManager.java"


# static fields
.field static final DBG:Z = true

.field private static final EVENT_LOAD_CDMA_DONE:I = 0x7

.field private static final EVENT_LOAD_DONE:I = 0x1

.field private static final EVENT_LOAD_GSM_DONE:I = 0x6

.field private static final EVENT_LOAD_SMSC_DONE:I = 0x3

.field private static final EVENT_SINGLE_LOAD_DONE:I = 0x5

.field private static final EVENT_UPDATE_DONE:I = 0x2

.field private static final EVENT_UPDATE_SMSC_DONE:I = 0x4

.field private static final EVENT_UPDATE_SMSFORMAT:I = 0x8

.field private static final EVENT_UPDATE_WRITEUICC:I = 0x9

.field static final LOG_TAG:Ljava/lang/String; = "SMS"


# instance fields
.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mReturnedIndex:I

.field private mSingleSms:[B

.field private mSms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation
.end field

.field protected mSmsc:Ljava/lang/String;

.field protected final mSmscLock:Ljava/lang/Object;

.field private mSuccess:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 1
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager$1;-><init>(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    .line 235
    new-instance v0, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/htcims/ImsSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 237
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSuccess:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSuccess:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mReturnedIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSingleSms:[B

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSingleSms:[B

    return-object p1
.end method


# virtual methods
.method public copyMessageToIccEf(I[B[B)Z
    .locals 1
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"

    .prologue
    .line 321
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->copyMessageToIccEfWithType(ZI[B[B)Z

    move-result v0

    return v0
.end method

.method public copyMessageToIccEfForResult(I[B[B)I
    .locals 1
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"

    .prologue
    .line 360
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->copyMessageToIccEfForResultWithType(ZI[B[B)I

    move-result v0

    return v0
.end method

.method public copyMessageToIccEfForResultByFormat(ZI[B[B)I
    .locals 1
    .parameter "isCdmaFormat"
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"

    .prologue
    .line 601
    const/4 v0, -0x1

    return v0
.end method

.method public copyMessageToIccEfForResultWithType(ZI[B[B)I
    .locals 6
    .parameter "isCdmaFormat"
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"

    .prologue
    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMessageToIccEf: status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "pdu=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), smsm=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 377
    const-string v2, "Copying message to SIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 378
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 379
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSuccess:Z

    .line 380
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mReturnedIndex:I

    .line 381
    iget-object v2, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 383
    .local v1, response:Landroid/os/Message;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p2, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 394
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    iget v2, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mReturnedIndex:I

    return v2

    .line 386
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, p2, v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 394
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 391
    .restart local v1       #response:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v2, "interrupted while trying to update by index"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public copyMessageToIccEfWithType(ZI[B[B)Z
    .locals 6
    .parameter "isCdmaFormat"
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"

    .prologue
    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMessageToIccEf: status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "pdu=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), smsm=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 338
    const-string v2, "Copying message to SIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 339
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 340
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSuccess:Z

    .line 341
    iget-object v2, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 343
    .local v1, response:Landroid/os/Message;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p2, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 354
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 355
    iget-boolean v2, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 346
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, p2, v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 354
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 351
    .restart local v1       #response:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v2, "interrupted while trying to update by index"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public disableCellBroadcast(I)Z
    .locals 1
    .parameter "messageIdentifier"

    .prologue
    .line 613
    const/4 v0, 0x0

    return v0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 1
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 615
    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 243
    :cond_0
    return-void
.end method

.method public enableCellBroadcast(I)Z
    .locals 1
    .parameter "messageIdentifier"

    .prologue
    .line 612
    const/4 v0, 0x0

    return v0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 1
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 614
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 247
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    const-string v1, "SMS"

    const-string v2, "SimSmsInterfaceManager finalized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, throwable:Ljava/lang/Throwable;
    const-string v1, "SMS"

    const-string v2, "Error while finalizing:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAllMessagesFromIccEf()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    const-string v4, "getAllMessagesFromEF"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 407
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 409
    .local v0, context:Landroid/content/Context;
    const-string v4, "android.permission.RECEIVE_SMS"

    const-string v5, "Reading messages from SIM"

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v5, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 414
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSms:Ljava/util/List;

    if-nez v4, :cond_2

    .line 415
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSms:Ljava/util/List;

    .line 419
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v6, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 420
    iget-object v4, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 421
    .local v2, response1:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v6, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v4

    const/16 v6, 0x6f3c

    invoke-virtual {v4, v6, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 431
    .end local v2           #response1:Landroid/os/Message;
    :cond_0
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v6, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 432
    iget-object v4, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 433
    .local v3, response2:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v6, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v4

    const/16 v6, 0x6f3c

    invoke-virtual {v4, v6, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 437
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 443
    .end local v3           #response2:Landroid/os/Message;
    :cond_1
    :goto_2
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 444
    iget-object v4, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object v4

    .line 417
    :cond_2
    :try_start_5
    iget-object v4, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSms:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 443
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 426
    .restart local v2       #response1:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 427
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_6
    const-string/jumbo v4, "interrupted while trying to load from the CSIM"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 438
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #response1:Landroid/os/Message;
    .restart local v3       #response2:Landroid/os/Message;
    :catch_1
    move-exception v1

    .line 439
    .restart local v1       #e:Ljava/lang/InterruptedException;
    const-string/jumbo v4, "interrupted while trying to load from the USIM"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public getCSCB()V
    .locals 0

    .prologue
    .line 607
    return-void
.end method

.method public getCarrierID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageFromIccEf(I)[B
    .locals 6
    .parameter "nIndexOnSim"

    .prologue
    .line 454
    const-string v3, "getMessageFromEF"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 456
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 458
    .local v0, context:Landroid/content/Context;
    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "Reading messages from SIM"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v4, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 462
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 464
    .local v2, response:Landroid/os/Message;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 465
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v5, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/16 v5, 0x6f3c

    invoke-virtual {v3, v5, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 476
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 477
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSingleSms:[B

    return-object v3

    .line 468
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v5, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/16 v5, 0x6f3c

    invoke-virtual {v3, v5, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto :goto_0

    .line 476
    .end local v2           #response:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 473
    .restart local v2       #response:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 474
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v3, "interrupted while trying to load from the SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getMessageFromIccEfExt(II)[B
    .locals 1
    .parameter "nIndexOnSim"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 627
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->getMessageFromIccEf(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getMessageFromIccEfWithType(ZI)[B
    .locals 6
    .parameter "bIsCdmaFormat"
    .parameter "nIndexOnSim"

    .prologue
    .line 481
    const-string v3, "getMessageFromEF"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 483
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 485
    .local v0, context:Landroid/content/Context;
    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "Reading messages from SIM"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v4, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 489
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 491
    .local v2, response:Landroid/os/Message;
    if-eqz p1, :cond_0

    .line 492
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v5, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/16 v5, 0x6f3c

    invoke-virtual {v3, v5, p2, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 503
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 504
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSingleSms:[B

    return-object v3

    .line 495
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v5, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/16 v5, 0x6f3c

    invoke-virtual {v3, v5, p2, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto :goto_0

    .line 503
    .end local v2           #response:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 500
    .restart local v2       #response:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 501
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v3, "interrupted while trying to load from the SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getSMSC()Ljava/lang/String;
    .locals 6

    .prologue
    .line 513
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 514
    .local v0, context:Landroid/content/Context;
    const-string v3, "android.permission.SEND_SMS"

    const-string v4, "Get SMSC"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v4, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    monitor-enter v4

    .line 519
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 520
    .local v2, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SMSDispatcher;->getSMSCenter(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 527
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 528
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSmsc:Ljava/lang/String;

    return-object v3

    .line 524
    :catch_0
    move-exception v1

    .line 525
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v3, "interrupted while trying to load SMSC from the SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 527
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #response:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getSMSCExt(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 620
    const/4 v0, 0x0

    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 591
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ImsSmsInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-void
.end method

.method public queryBCSMS(II)[I
    .locals 1
    .parameter "funccode"
    .parameter "index"

    .prologue
    .line 582
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCBEntry(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 608
    return-void
.end method

.method public setCSCB(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "mode"
    .parameter "mMsgId"
    .parameter "mDsc"

    .prologue
    .line 606
    return-void
.end method

.method public setSMSC(Ljava/lang/String;)V
    .locals 6
    .parameter "address"

    .prologue
    .line 536
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 537
    .local v0, context:Landroid/content/Context;
    const-string v3, "android.permission.SEND_SMS"

    const-string v4, "Set SMSC"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v4, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    monitor-enter v4

    .line 542
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 543
    .local v2, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3, p1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->setSMSCenter(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 550
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 551
    return-void

    .line 547
    :catch_0
    move-exception v1

    .line 548
    .local v1, e:Ljava/lang/InterruptedException;
    const-string/jumbo v3, "interrupted while trying to update SMSC into the SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 550
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #response:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public setSMSCExt(Ljava/lang/String;I)V
    .locals 0
    .parameter "address"
    .parameter "phoneType"

    .prologue
    .line 624
    return-void
.end method

.method public updateMessageOnIccEf(II[B)Z
    .locals 2
    .parameter "index"
    .parameter "status"
    .parameter "pdu"

    .prologue
    .line 257
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 258
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->updateMessageOnIccEfWithType(ZII[B)Z

    move-result v0

    .line 260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->updateMessageOnIccEfWithType(ZII[B)Z

    move-result v0

    goto :goto_0
.end method

.method public updateMessageOnIccEfByFormat(ZII[B)Z
    .locals 1
    .parameter "isCdmaFormat"
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"

    .prologue
    .line 597
    const/4 v0, 0x0

    return v0
.end method

.method public updateMessageOnIccEfWithType(ZII[B)Z
    .locals 8
    .parameter "isCdmaFormat"
    .parameter "index"
    .parameter "status"
    .parameter "pdu"

    .prologue
    const/4 v2, 0x1

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateMessageOnIccEf: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 280
    const-string v0, "Updating message on SIM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 281
    iget-object v7, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 282
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSuccess:Z

    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 285
    .local v5, response:Landroid/os/Message;
    if-nez p3, :cond_1

    .line 288
    if-ne p1, v2, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnRuim(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 315
    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    iget-boolean v0, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mSuccess:Z

    return v0

    .line 291
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnSim(ILandroid/os/Message;)V

    goto :goto_0

    .line 315
    .end local v5           #response:Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 293
    .restart local v5       #response:Landroid/os/Message;
    :cond_1
    :try_start_4
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->makeSmsRecordDataWithType(ZI[B)[B

    move-result-object v3

    .line 295
    .local v3, record:[B
    if-ne p1, v2, :cond_2

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f3c

    const/4 v4, 0x0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f3c

    const/4 v4, 0x0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 312
    .end local v3           #record:[B
    :catch_0
    move-exception v6

    .line 313
    .local v6, e:Ljava/lang/InterruptedException;
    const-string/jumbo v0, "interrupted while trying to update by index"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public updateNvItem()V
    .locals 7

    .prologue
    .line 556
    const-string v3, "ImsSmsInterfaceManager"

    const-string/jumbo v4, "updateNvItem"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v4, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 559
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 560
    .local v1, response1:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v5, "C8266A75"

    const/4 v6, 0x1

    invoke-interface {v3, v5, v6, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 569
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 570
    .local v2, response2:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v5, "C8266B75"

    const/4 v6, 0x1

    invoke-interface {v3, v5, v6, v2}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 573
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 577
    :goto_1
    :try_start_4
    monitor-exit v4

    .line 578
    return-void

    .line 564
    .end local v2           #response2:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 565
    .local v0, e:Ljava/lang/InterruptedException;
    const-string/jumbo v3, "interrupted while trying to update by index"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 577
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response1:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 574
    .restart local v1       #response1:Landroid/os/Message;
    .restart local v2       #response2:Landroid/os/Message;
    :catch_1
    move-exception v0

    .line 575
    .restart local v0       #e:Ljava/lang/InterruptedException;
    :try_start_5
    const-string/jumbo v3, "interrupted while trying to update by index"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/htcims/ImsSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method
