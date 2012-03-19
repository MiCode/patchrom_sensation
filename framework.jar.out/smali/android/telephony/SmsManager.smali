.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"

# interfaces
.implements Landroid/telephony/HtcIfSmsManager;


# static fields
.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final RESULT_ERROR_SMS_FAILURE_CAUSE_MAX:I = 0x8d0

.field public static final RESULT_ERROR_SMS_FAILURE_CAUSE_OFFSET:I = 0x7d0

.field public static final RESULT_ERROR_SMS_FAILURE_CAUSE_SPEC:I = 0xff

.field public static final RESULT_ERROR_SMS_FAILURE_EXTRA_CAUSE_FDN:I = 0x100

.field public static final RESULT_ERROR_SMS_FAILURE_RETRY_SEND:I = 0x101

.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "SmsManager"

.field private static final sInstance:Landroid/telephony/SmsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Landroid/telephony/SmsManager;

    invoke-direct {v0}, Landroid/telephony/SmsManager;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 715
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 717
    return-void
.end method

.method private KddisendCmail(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 2
    .parameter "destinationAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "sendingMode"

    .prologue
    .line 1739
    :try_start_0
    const-string/jumbo v1, "iSendCmail"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface;

    move-result-object v0

    .line 1741
    .local v0, sendCmailInterface:Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface;
    if-eqz v0, :cond_0

    .line 1742
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface;->sendCmail(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1747
    .end local v0           #sendCmailInterface:Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface;
    :cond_0
    :goto_0
    return-void

    .line 1744
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private copyMessageToIccDefault([B[BI)Z
    .locals 5
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 747
    const/4 v2, 0x0

    .line 750
    .local v2, success:Z
    :try_start_0
    const-string/jumbo v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 751
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 752
    invoke-interface {v1, p3, p2, p1}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEf(I[B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 762
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "SmsManager"

    const-string v4, "Get NullPointerException in copyMessageToIcc()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 754
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private static createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1634
    .local p0, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1635
    .local v3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p0, :cond_1

    .line 1636
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1637
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1638
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 1640
    .local v1, data:Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 1641
    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getSimSmsIndex()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->isCdmaFormat()Z

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BZ)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 1642
    .local v4, sms:Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    .line 1643
    iget-object v5, v4, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->isCdmaFormat()Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/internal/telephony/SmsMessageBase;->isCdmaFormat:Z

    .line 1644
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1637
    .end local v4           #sms:Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1649
    .end local v0           #count:I
    .end local v1           #data:Lcom/android/internal/telephony/SmsRawData;
    .end local v2           #i:I
    :cond_1
    return-object v3
.end method

.method private createMessageListFromRawRecordsExt(Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1605
    .local p1, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1606
    .local v3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p1, :cond_1

    .line 1607
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1608
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1609
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 1611
    .local v1, data:Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 1612
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6, p2}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BI)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 1613
    .local v4, sms:Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    .line 1614
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1608
    .end local v4           #sms:Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1619
    .end local v0           #count:I
    .end local v1           #data:Lcom/android/internal/telephony/SmsRawData;
    .end local v2           #i:I
    :cond_1
    return-object v3
.end method

.method private deleteMessageFromIccDefault(I)Z
    .locals 6
    .parameter "messageIndex"

    .prologue
    .line 890
    const/4 v3, 0x0

    .line 891
    .local v3, success:Z
    const/16 v4, 0xaf

    new-array v2, v4, [B

    .line 892
    .local v2, pdu:[B
    const/4 v4, -0x1

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 895
    :try_start_0
    const-string/jumbo v4, "isms"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 896
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 897
    const/4 v4, 0x0

    invoke-interface {v1, p1, v4, v2}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 908
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v3

    .line 902
    :catch_0
    move-exception v0

    .line 903
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v4, "SmsManager"

    const-string v5, "Get NullPointerException in deleteMessageFromIcc()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 899
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static getAllMessagesFromIcc()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1030
    const/4 v2, 0x0

    .line 1033
    .local v2, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    const-string/jumbo v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1034
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1035
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEf()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1046
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "SmsManager"

    const-string v4, "Get NullPointerException in getAllMessagesFromIcc()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1037
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static getDefault()Landroid/telephony/SmsManager;
    .locals 1

    .prologue
    .line 712
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-object v0
.end method

.method private htcCopyMessageToIccForResult([B[BI)I
    .locals 5
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 807
    const/4 v2, -0x1

    .line 810
    .local v2, index:I
    :try_start_0
    const-string/jumbo v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 811
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 812
    invoke-interface {v1, p3, p2, p1}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfForResult(I[B[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 823
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 817
    :catch_0
    move-exception v0

    .line 818
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "SmsManager"

    const-string v4, "Get NullPointerException in copyMessageToIccForResult()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 814
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V
    .locals 9
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"

    .prologue
    .line 665
    :try_start_0
    const-string/jumbo v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 666
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 667
    const/4 v7, 0x0

    const-string v8, ""

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 669
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLjava/lang/String;)V
    .locals 9
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"
    .parameter "destaddr"

    .prologue
    .line 684
    :try_start_0
    const-string/jumbo v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 685
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 686
    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 688
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V
    .locals 9
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"
    .parameter "concatebundle"
    .parameter "destaddr"

    .prologue
    .line 697
    :try_start_0
    const-string/jumbo v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 698
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 699
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 701
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public acknowledgeSendRequest(ZII)Z
    .locals 3
    .parameter "sendAck"
    .parameter "result"
    .parameter "messageId"

    .prologue
    .line 1662
    const/4 v1, 0x0

    .line 1665
    .local v1, success:Z
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1666
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1667
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->kddiAcknowledgeSendRequest(ZII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1673
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1669
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public copyMessageToIcc(Z[B[BI)Z
    .locals 3
    .parameter "isCdmaFormat"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 770
    const/4 v1, 0x0

    .line 773
    .local v1, success:Z
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 774
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 775
    invoke-interface {v0, p1, p4, p3, p2}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfWithType(ZI[B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 780
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 777
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public copyMessageToIcc([B[BI)Z
    .locals 1
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 735
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/SmsManager;->copyMessageToIcc(Z[B[BI)Z

    move-result v0

    .line 738
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/SmsManager;->copyMessageToIccDefault([B[BI)Z

    move-result v0

    goto :goto_0
.end method

.method public copyMessageToIccExt([B[BII)I
    .locals 3
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"
    .parameter "phoneType"

    .prologue
    .line 1437
    const/4 v1, -0x1

    .line 1440
    .local v1, index:I
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1441
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1442
    invoke-interface {v0, p3, p2, p1, p4}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfExt(I[B[BI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1448
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1444
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public copyMessageToIccForResult(Z[B[BI)I
    .locals 6
    .parameter "isCdmaFormat"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 830
    const/4 v2, -0x1

    .line 833
    .local v2, index:I
    :try_start_0
    const-string/jumbo v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 834
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 835
    invoke-interface {v1, p1, p4, p3, p2}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfForResultWithType(ZI[B[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 846
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 840
    :catch_0
    move-exception v0

    .line 841
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get NullPointerException in copyMessageToIccForResult(isCdmaFormat = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 837
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public copyMessageToIccForResult([B[BI)I
    .locals 1
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 800
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/SmsManager;->copyMessageToIccForResult(Z[B[BI)I

    move-result v0

    .line 803
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/SmsManager;->htcCopyMessageToIccForResult([B[BI)I

    move-result v0

    goto :goto_0
.end method

.method public deleteMessageFromIcc(I)Z
    .locals 1
    .parameter "messageIndex"

    .prologue
    .line 876
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {p0, p1}, Landroid/telephony/SmsManager;->deleteMessageFromIccVZWLTE(I)Z

    move-result v0

    .line 879
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/SmsManager;->deleteMessageFromIccDefault(I)Z

    move-result v0

    goto :goto_0
.end method

.method public deleteMessageFromIcc(ZI)Z
    .locals 8
    .parameter "isCdmaFormat"
    .parameter "messageIndex"

    .prologue
    const/16 v3, 0xb0

    .line 915
    const/4 v4, 0x0

    .line 916
    .local v4, success:Z
    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    .line 918
    .local v3, recordLength:I
    :cond_0
    const/16 v5, 0xaf

    new-array v2, v5, [B

    .line 919
    .local v2, pdu:[B
    const/4 v5, -0x1

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 922
    :try_start_0
    const-string/jumbo v5, "isms"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 923
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 924
    const/4 v5, 0x0

    invoke-interface {v1, p1, p2, v5, v2}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfWithType(ZII[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 935
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v4

    .line 929
    :catch_0
    move-exception v0

    .line 930
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v5, "SmsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get NullPointerException in deleteMessageFromIcc(isCdmaFormat = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 926
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public deleteMessageFromIccExt(II)Z
    .locals 4
    .parameter "messageIndex"
    .parameter "phoneType"

    .prologue
    .line 1464
    const/4 v2, 0x0

    .line 1465
    .local v2, success:Z
    const/16 v3, 0xaf

    new-array v1, v3, [B

    .line 1466
    .local v1, pdu:[B
    const/4 v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 1469
    :try_start_0
    const-string/jumbo v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1470
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1471
    const/4 v3, 0x0

    invoke-interface {v0, p1, v3, v1, p2}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfExt(II[BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1477
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 1473
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public deleteMessageFromIccVZWLTE(I)Z
    .locals 4
    .parameter "messageIndex"

    .prologue
    const/4 v3, 0x1

    .line 854
    const-string v1, "gsm.vzw.sms.format"

    const-string v2, "3gpp2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, sFormat:Ljava/lang/String;
    const-string v1, "3gpp2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 857
    invoke-virtual {p0, v3, p1}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(ZI)Z

    move-result v1

    .line 859
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(ZI)Z

    move-result v1

    goto :goto_0
.end method

.method public disableCellBroadcast(I)Z
    .locals 3
    .parameter "messageIdentifier"

    .prologue
    .line 1095
    const/4 v1, 0x0

    .line 1098
    .local v1, success:Z
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1099
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1100
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->disableCellBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1106
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1102
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 3
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 1157
    const/4 v1, 0x0

    .line 1160
    .local v1, success:Z
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1161
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1162
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1168
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1164
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    const/4 v0, -0x1

    invoke-static {p1, v0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public divideMessageExt(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1279
    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->fragmentTextExt(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public enableCellBroadcast(I)Z
    .locals 3
    .parameter "messageIdentifier"

    .prologue
    .line 1065
    const/4 v1, 0x0

    .line 1068
    .local v1, success:Z
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1069
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1070
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->enableCellBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1076
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1072
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 3
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 1126
    const/4 v1, 0x0

    .line 1129
    .local v1, success:Z
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1130
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1131
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1137
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1133
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getAllMessagesFromIccExt(I)Ljava/util/ArrayList;
    .locals 3
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1520
    const/4 v1, 0x0

    .line 1523
    .local v1, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1524
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1525
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEfExt(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1531
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    invoke-direct {p0, v1, p1}, Landroid/telephony/SmsManager;->createMessageListFromRawRecordsExt(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2

    .line 1527
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getCarrierID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1938
    const/4 v0, 0x0

    .line 1940
    .local v0, response:Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1941
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1942
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getCarrierID()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1947
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1944
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getExtIccSmsPhoneType()I
    .locals 3

    .prologue
    .line 1585
    const/4 v1, 0x0

    .line 1587
    .local v1, phoneType:I
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1588
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1589
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getExtIccSmsPhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1593
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1591
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getIccSmsCount()I
    .locals 2

    .prologue
    .line 1572
    :try_start_0
    const-string/jumbo v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1573
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1574
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getIccSmsCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1578
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :goto_0
    return v1

    .line 1576
    :catch_0
    move-exception v1

    .line 1578
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccSmsCountExt(I)I
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 1555
    :try_start_0
    const-string/jumbo v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1556
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1557
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getIccSmsCountExt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1561
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :goto_0
    return v1

    .line 1559
    :catch_0
    move-exception v1

    .line 1561
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMessageFromSim(I)[B
    .locals 5
    .parameter "nIndexOnSim"

    .prologue
    .line 1179
    const/4 v1, 0x0

    .line 1182
    .local v1, record:[B
    :try_start_0
    const-string/jumbo v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1183
    .local v2, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_0

    .line 1184
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ISms;->getMessageFromIccEf(I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1196
    .end local v2           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v1

    .line 1190
    :catch_0
    move-exception v0

    .line 1191
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "SmsManager"

    const-string v4, "Get NullPointerException in getMessageFromSim()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1186
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public getMessageFromSimExt(II)[B
    .locals 3
    .parameter "nIndexOnSim"
    .parameter "phonetype"

    .prologue
    .line 2007
    const/4 v0, 0x0

    .line 2010
    .local v0, record:[B
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2011
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2012
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISms;->getMessageFromIccEfExt(II)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2018
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 2014
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getMessageFromSimWithType(ZI)[B
    .locals 3
    .parameter "bIsCdmaFormat"
    .parameter "nIndexOnSim"

    .prologue
    .line 1201
    const/4 v0, 0x0

    .line 1204
    .local v0, record:[B
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1205
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1206
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISms;->getMessageFromIccEfWithType(ZI)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1212
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1208
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getSMSC()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1755
    const/4 v0, 0x0

    .line 1757
    .local v0, result:Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1758
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1759
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getSMSC()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1765
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1761
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getSMSCExt(I)Ljava/lang/String;
    .locals 3
    .parameter "phonetype"

    .prologue
    .line 1981
    const/4 v0, 0x0

    .line 1983
    .local v0, result:Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1984
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1985
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISms;->getSMSCExt(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1991
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1987
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getTestBCSMS()[I
    .locals 3

    .prologue
    .line 1966
    const/4 v0, 0x0

    .line 1968
    .local v0, response:[I
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1969
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1970
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getTestBCSMS()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1975
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1972
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public htcSendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V
    .locals 0
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bFirstOfAll"
    .parameter "bLastOfAll"

    .prologue
    .line 677
    invoke-direct/range {p0 .. p6}, Landroid/telephony/SmsManager;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V

    .line 678
    return-void
.end method

.method public kddiSendCancel(Landroid/content/Context;Landroid/app/PendingIntent;)Z
    .locals 2
    .parameter "context"
    .parameter "cancelIntent"

    .prologue
    .line 1715
    :try_start_0
    const-string/jumbo v1, "iSendCmail"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface;

    move-result-object v0

    .line 1717
    .local v0, sendCmailInterface:Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface;
    if-eqz v0, :cond_0

    .line 1718
    invoke-interface {v0, p2}, Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface;->cancelCmail(Landroid/app/PendingIntent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1723
    .end local v0           #sendCmailInterface:Lcom/kddi/android/internal/telephony/cdma/ISendCmailInterface;
    :goto_0
    return v1

    .line 1720
    :catch_0
    move-exception v1

    .line 1723
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public kddiSendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ILandroid/content/Context;)V
    .locals 0
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "sendingMode"
    .parameter "context"

    .prologue
    .line 1698
    invoke-direct {p0, p1, p3, p4, p6}, Landroid/telephony/SmsManager;->KddisendCmail(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 1699
    return-void
.end method

.method public queryBCSMS(II)[I
    .locals 1
    .parameter "funccode"
    .parameter "index"

    .prologue
    .line 1906
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestGetBCSMSServiceEntry(II)[I
    .locals 3
    .parameter "funccode"
    .parameter "index"

    .prologue
    .line 1893
    const/4 v0, 0x0

    .line 1895
    .local v0, response:[I
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1896
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1897
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISms;->requestGetBCSMSServiceEntry(II)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1902
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1899
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public requestGetBCSMSServiceLabel(II)Landroid/os/Bundle;
    .locals 3
    .parameter "funccode"
    .parameter "index"

    .prologue
    .line 1880
    const/4 v0, 0x0

    .line 1882
    .local v0, response:Landroid/os/Bundle;
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1883
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1884
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISms;->requestGetBCSMSServiceLabel(II)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1889
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1886
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public requestGetBCSMSServiceNumber()I
    .locals 3

    .prologue
    .line 1867
    const/4 v0, 0x0

    .line 1869
    .local v0, response:I
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1870
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1871
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->requestGetBCSMSServiceNumber()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1876
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 1873
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public sendCDMATextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bundle"

    .prologue
    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_0
    :try_start_0
    const-string/jumbo v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 149
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 150
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 594
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 598
    :cond_0
    if-eqz p4, :cond_1

    array-length v1, p4

    if-nez v1, :cond_2

    .line 599
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 603
    :cond_2
    :try_start_0
    const-string/jumbo v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 604
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    .line 605
    const v1, 0xffff

    and-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 608
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendDataMessageExt(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 8
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "phoneType"

    .prologue
    .line 1403
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1404
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1407
    :cond_0
    if-eqz p4, :cond_1

    array-length v1, p4

    if-nez v1, :cond_2

    .line 1408
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1412
    :cond_2
    :try_start_0
    const-string/jumbo v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1413
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    .line 1414
    const v1, 0xffff

    and-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendDataExt(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1420
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 1417
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartDataMessage(Ljava/lang/String;Ljava/lang/String;SLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 8
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter
    .parameter
    .parameter
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 618
    .local p4, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 622
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 623
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 627
    :cond_2
    :try_start_0
    const-string/jumbo v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 628
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    .line 629
    const v1, 0xffff

    and-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 632
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 316
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "nli"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 391
    .local v6, bundle:Landroid/os/Bundle;
    const-string v0, "NLI"

    invoke-virtual {v6, v0, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 392
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 394
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 19
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 399
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 400
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid destinationAddress"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 404
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isSupportKddiMoPacketSms()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 405
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 406
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid message body"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 408
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 409
    .local v14, msgCnt:I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .local v15, sb:Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v14, :cond_3

    .line 411
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 413
    :cond_3
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 414
    .local v18, text:Ljava/lang/String;
    const/4 v8, 0x0

    .line 415
    .local v8, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #sentIntent:Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 416
    .restart local v8       #sentIntent:Landroid/app/PendingIntent;
    :cond_4
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v8, v4}, Landroid/telephony/SmsManager;->KddisendCmail(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 561
    .end local v8           #sentIntent:Landroid/app/PendingIntent;
    .end local v13           #i:I
    .end local v14           #msgCnt:I
    .end local v15           #sb:Ljava/lang/StringBuilder;
    .end local v18           #text:Ljava/lang/String;
    :cond_5
    :goto_1
    return-void

    .line 436
    :cond_6
    const/16 v16, 0x0

    .line 437
    .local v16, separate:Z
    if-eqz p6, :cond_7

    const-string/jumbo v4, "separate_msg"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 439
    :cond_7
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportEMS()Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v16, :cond_8

    .line 442
    :try_start_0
    const-string v4, "SmsManager"

    const-string v5, "General sendMultipartText"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string/jumbo v4, "isms"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 444
    .local v3, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_5

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 445
    invoke-interface/range {v3 .. v9}, Lcom/android/internal/telephony/ISms;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 448
    .end local v3           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 452
    :cond_8
    const-string v4, "SmsManager"

    const-string v5, "Sprint rule, separate to separate ones"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 454
    .local v17, size:I
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_2
    move/from16 v0, v17

    if-ge v13, v0, :cond_5

    .line 455
    const/4 v8, 0x0

    .line 456
    .restart local v8       #sentIntent:Landroid/app/PendingIntent;
    const/4 v9, 0x0

    .line 457
    .local v9, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_9

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v13, :cond_9

    .line 458
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #sentIntent:Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 460
    .restart local v8       #sentIntent:Landroid/app/PendingIntent;
    :cond_9
    if-eqz p5, :cond_a

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v13, :cond_a

    .line 461
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v9, Landroid/app/PendingIntent;

    .line 466
    .restart local v9       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_a
    const-string v7, ""

    .line 468
    .local v7, body:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #body:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 475
    .restart local v7       #body:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSendCdmaMoSms()Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v10, p6

    .line 478
    invoke-virtual/range {v4 .. v10}, Landroid/telephony/SmsManager;->sendCDMATextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 454
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 481
    :cond_b
    const/4 v11, 0x0

    .line 482
    .local v11, bFirstOfAll:Z
    const/4 v12, 0x0

    .line 484
    .local v12, bLastOfAll:Z
    if-eqz p6, :cond_c

    .line 485
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 486
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 488
    const/4 v4, 0x1

    if-ne v11, v4, :cond_10

    const/4 v4, 0x1

    if-ne v12, v4, :cond_10

    .line 489
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_d

    .line 490
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 491
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_c
    :goto_4
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v10, p6

    .line 514
    invoke-virtual/range {v4 .. v10}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    goto :goto_3

    .line 492
    :cond_d
    if-nez v13, :cond_e

    .line 493
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 494
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 495
    :cond_e
    add-int/lit8 v4, v17, -0x1

    if-ne v13, v4, :cond_f

    .line 496
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 497
    const-string v4, "LAST_SMS"

    const/4 v5, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 499
    :cond_f
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 500
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 502
    :cond_10
    if-nez v13, :cond_11

    const/4 v4, 0x1

    if-ne v11, v4, :cond_11

    .line 503
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 504
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 505
    :cond_11
    add-int/lit8 v4, v17, -0x1

    if-ne v13, v4, :cond_12

    const/4 v4, 0x1

    if-ne v12, v4, :cond_12

    .line 506
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 507
    const-string v4, "LAST_SMS"

    const/4 v5, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 509
    :cond_12
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 510
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4
.end method

.method public sendMultipartTextMessageExt(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;I)V
    .locals 13
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "bundle"
    .parameter "phoneType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1318
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1319
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1321
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 1322
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid message body"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1327
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportEMS()Z

    move-result v10

    .line 1328
    .local v10, bsupportEMS:Z
    const/4 v2, 0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSpecialNonEMS()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1329
    const/4 v10, 0x0

    .line 1332
    :cond_3
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    const/4 v2, 0x1

    if-ne v10, v2, :cond_5

    .line 1335
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1336
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_4

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 1337
    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ISms;->sendMultipartTextExt(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1370
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_4
    :goto_0
    return-void

    .line 1344
    :cond_5
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1345
    .local v12, size:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v12, :cond_4

    .line 1346
    const/4 v6, 0x0

    .line 1347
    .local v6, sentIntent:Landroid/app/PendingIntent;
    const/4 v7, 0x0

    .line 1348
    .local v7, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v11, :cond_6

    .line 1349
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #sentIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 1351
    .restart local v6       #sentIntent:Landroid/app/PendingIntent;
    :cond_6
    if-eqz p5, :cond_7

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v11, :cond_7

    .line 1352
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 1355
    .restart local v7       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_7
    const-string v5, ""

    .line 1356
    .local v5, body:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #body:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1359
    .restart local v5       #body:Ljava/lang/String;
    if-eqz p6, :cond_8

    const/4 v2, 0x1

    if-le v12, v2, :cond_8

    const/4 v2, 0x1

    move/from16 v0, p7

    if-ne v2, v0, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSpecialNonEMS()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1360
    const-string v2, "FIRST_SMS"

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1361
    const-string v2, "LAST_SMS"

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 1364
    invoke-virtual/range {v2 .. v9}, Landroid/telephony/SmsManager;->sendTextMessageExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;I)V

    .line 1345
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1340
    .end local v5           #body:Ljava/lang/String;
    .end local v6           #sentIntent:Landroid/app/PendingIntent;
    .end local v7           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v11           #i:I
    .end local v12           #size:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 122
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 129
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 24
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bundle"

    .prologue
    .line 189
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid destinationAddress"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 201
    :cond_0
    const/4 v8, 0x0

    .line 203
    .local v8, header:[B
    const/4 v9, -0x1

    .line 204
    .local v9, nli:I
    const/4 v15, 0x0

    .line 205
    .local v15, bFirstOfAll:Z
    const/16 v16, 0x0

    .line 206
    .local v16, bLastOfAll:Z
    if-eqz p6, :cond_1

    .line 207
    const-string v4, "NLI"

    const/4 v5, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 208
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 209
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 212
    :cond_1
    const/4 v4, -0x1

    if-eq v9, v4, :cond_4

    .line 214
    const/4 v4, 0x1

    new-array v0, v4, [B

    move-object/from16 v19, v0

    .line 215
    .local v19, data:[B
    const/4 v4, 0x0

    int-to-byte v5, v9

    aput-byte v5, v19, v4

    .line 216
    new-instance v23, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v23 .. v23}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 218
    .local v23, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    new-instance v21, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 220
    .local v21, eltSingle:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const/16 v4, 0xe

    if-eq v9, v4, :cond_2

    .line 221
    const/16 v4, 0x24

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 222
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 223
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_2
    const/4 v4, 0x3

    if-ne v9, v4, :cond_3

    .line 227
    new-instance v20, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 228
    .local v20, eltLocking:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const/16 v4, 0x25

    move-object/from16 v0, v20

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 229
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 230
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v20           #eltLocking:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_3
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v8

    .line 242
    .end local v19           #data:[B
    .end local v21           #eltSingle:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .end local v23           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isSupportKddiMoPacketSms()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 243
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/SmsManager;->KddisendCmail(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 267
    :goto_0
    return-void

    .line 248
    :cond_5
    if-eqz p5, :cond_7

    const/4 v7, 0x1

    :goto_1
    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-static/range {v4 .. v9}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v22

    .line 252
    .local v22, pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 254
    if-nez p6, :cond_6

    .line 255
    new-instance p6, Landroid/os/Bundle;

    .end local p6
    invoke-direct/range {p6 .. p6}, Landroid/os/Bundle;-><init>()V

    .line 256
    .restart local p6
    :cond_6
    const-string v4, "DEST_ADDRESS"

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, v22

    iget-object v11, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v22

    iget-object v12, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v10, p0

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v17, p6

    move-object/from16 v18, p1

    invoke-direct/range {v10 .. v18}, Landroid/telephony/SmsManager;->sendRawPduWithBundle([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 248
    .end local v22           #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .line 262
    .restart local v22       #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_8
    move-object/from16 v0, v22

    iget-object v11, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v0, v22

    iget-object v12, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v10, p0

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v17, p1

    invoke-direct/range {v10 .. v17}, Landroid/telephony/SmsManager;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLjava/lang/String;)V

    goto :goto_0
.end method

.method public sendTextMessageExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;I)V
    .locals 8
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "bundle"
    .parameter "phoneType"

    .prologue
    .line 1249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1250
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1260
    :cond_0
    :try_start_0
    const-string/jumbo v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1261
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    .line 1262
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendTextExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return-void

    .line 1264
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setBCSMS(II)I
    .locals 3
    .parameter "funccode"
    .parameter "index"

    .prologue
    .line 1923
    const/4 v0, 0x0

    .line 1925
    .local v0, response:I
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1926
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1927
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISms;->setBCSMS(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1932
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 1929
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setExtIccSmsPhoneType(I)V
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 1539
    :try_start_0
    const-string/jumbo v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1540
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1541
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->setExtIccSmsPhoneType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1545
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 1543
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setSMSC(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 1789
    :try_start_0
    const-string/jumbo v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1790
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1791
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->setSMSC(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1796
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 1793
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setSMSCExt(Ljava/lang/String;I)V
    .locals 2
    .parameter "address"
    .parameter "phonetype"

    .prologue
    .line 1996
    :try_start_0
    const-string/jumbo v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1997
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1998
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->setSMSCExt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2003
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 2000
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setTestBCSMS(II)I
    .locals 3
    .parameter "kddiTestData"
    .parameter "makerData"

    .prologue
    .line 1953
    const/4 v0, 0x0

    .line 1955
    .local v0, response:I
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1956
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1957
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISms;->setTestBCSMS(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1962
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 1959
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public syncCmasServiceTable()Landroid/os/Bundle;
    .locals 17

    .prologue
    .line 1804
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1806
    .local v2, bundle:Landroid/os/Bundle;
    const-string v14, "SmsManager"

    const-string/jumbo v15, "syncCmasServiceTable"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->requestGetBCSMSServiceNumber()I

    move-result v11

    .line 1809
    .local v11, mBCSMSServiceNumber:I
    if-gtz v11, :cond_0

    .line 1810
    const-string v14, "SmsManager"

    const-string v15, "Cannot get BCSMS service number"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    const/4 v2, 0x0

    .line 1862
    .end local v2           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 1814
    .restart local v2       #bundle:Landroid/os/Bundle;
    :cond_0
    new-array v10, v11, [I

    .line 1815
    .local v10, mBCSMSServiceID:[I
    new-array v7, v11, [I

    .line 1816
    .local v7, mBCSMSLanguage:[I
    new-array v9, v11, [I

    .line 1817
    .local v9, mBCSMSSelect:[I
    new-array v4, v11, [I

    .line 1818
    .local v4, mBCSMSAlert:[I
    new-array v8, v11, [I

    .line 1819
    .local v8, mBCSMSMaxMessages:[I
    new-array v6, v11, [I

    .line 1820
    .local v6, mBCSMSLabelEncode:[I
    new-array v5, v11, [Ljava/lang/String;

    .line 1822
    .local v5, mBCSMSLabel:[Ljava/lang/String;
    const/4 v1, 0x1

    .line 1823
    .local v1, bErr:Z
    const/4 v3, 0x0

    .local v3, index:I
    :goto_1
    if-ge v3, v11, :cond_2

    .line 1824
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Landroid/telephony/SmsManager;->requestGetBCSMSServiceEntry(II)[I

    move-result-object v12

    .line 1825
    .local v12, serviceEntry:[I
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Landroid/telephony/SmsManager;->requestGetBCSMSServiceLabel(II)Landroid/os/Bundle;

    move-result-object v13

    .line 1828
    .local v13, serviceLabel:Landroid/os/Bundle;
    if-eqz v12, :cond_1

    array-length v14, v12

    const/4 v15, 0x6

    if-lt v14, v15, :cond_1

    if-nez v13, :cond_3

    .line 1830
    :cond_1
    const-string v14, "SmsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get BCSMS fail. entry> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", label> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    const/4 v1, 0x0

    .line 1853
    .end local v12           #serviceEntry:[I
    .end local v13           #serviceLabel:Landroid/os/Bundle;
    :cond_2
    if-nez v1, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    .line 1835
    .restart local v12       #serviceEntry:[I
    .restart local v13       #serviceLabel:Landroid/os/Bundle;
    :cond_3
    const/4 v14, 0x1

    aget v14, v12, v14

    aput v14, v10, v3

    .line 1836
    const/4 v14, 0x2

    aget v14, v12, v14

    aput v14, v7, v3

    .line 1837
    const/4 v14, 0x3

    aget v14, v12, v14

    aput v14, v9, v3

    .line 1838
    const/4 v14, 0x4

    aget v14, v12, v14

    aput v14, v4, v3

    .line 1839
    const/4 v14, 0x5

    aget v14, v12, v14

    aput v14, v8, v3

    .line 1840
    const-string/jumbo v14, "label_encode"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    aput v14, v6, v3

    .line 1841
    const-string/jumbo v14, "label"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v5, v3

    .line 1823
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1854
    .end local v12           #serviceEntry:[I
    .end local v13           #serviceLabel:Landroid/os/Bundle;
    :cond_4
    const-string/jumbo v14, "service_number"

    invoke-virtual {v2, v14, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1855
    const-string/jumbo v14, "service_id"

    invoke-virtual {v2, v14, v10}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1856
    const-string/jumbo v14, "language"

    invoke-virtual {v2, v14, v7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1857
    const-string/jumbo v14, "select"

    invoke-virtual {v2, v14, v9}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1858
    const-string v14, "alert"

    invoke-virtual {v2, v14, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1859
    const-string/jumbo v14, "max_messages"

    invoke-virtual {v2, v14, v8}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1860
    const-string/jumbo v14, "label_encode"

    invoke-virtual {v2, v14, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1861
    const-string/jumbo v14, "label"

    invoke-virtual {v2, v14, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateMessageOnIcc(II[B)Z
    .locals 1
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"

    .prologue
    .line 967
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/SmsManager;->updateMessageOnIccVZWLTE(II[B)Z

    move-result v0

    .line 970
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/SmsManager;->updateMessageOnIccDefault(II[B)Z

    move-result v0

    goto :goto_0
.end method

.method public updateMessageOnIcc(ZII[B)Z
    .locals 6
    .parameter "isCdmaFormat"
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"

    .prologue
    .line 999
    const/4 v2, 0x0

    .line 1002
    .local v2, success:Z
    :try_start_0
    const-string/jumbo v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1003
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1004
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfWithType(ZII[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1015
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get NullPointerException in updateMessageOnIcc(isCdmaFormat = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1006
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public updateMessageOnIccDefault(II[B)Z
    .locals 5
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"

    .prologue
    .line 978
    const/4 v2, 0x0

    .line 981
    .local v2, success:Z
    :try_start_0
    const-string/jumbo v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 982
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 983
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 994
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 988
    :catch_0
    move-exception v0

    .line 989
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "SmsManager"

    const-string v4, "Get NullPointerException in updateMessageOnIcc()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 985
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public updateMessageOnIccExt(II[BI)Z
    .locals 3
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"
    .parameter "phoneType"

    .prologue
    .line 1496
    const/4 v1, 0x0

    .line 1499
    .local v1, success:Z
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1500
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1501
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfExt(II[BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1507
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1503
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public updateMessageOnIccVZWLTE(II[B)Z
    .locals 4
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"

    .prologue
    const/4 v3, 0x1

    .line 941
    const-string v1, "gsm.vzw.sms.format"

    const-string v2, "3gpp2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 943
    .local v0, sFormat:Ljava/lang/String;
    const-string v1, "3gpp2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 944
    invoke-virtual {p0, v3, p1, p2, p3}, Landroid/telephony/SmsManager;->updateMessageOnIcc(ZII[B)Z

    move-result v1

    .line 946
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/telephony/SmsManager;->updateMessageOnIcc(ZII[B)Z

    move-result v1

    goto :goto_0
.end method

.method public updateNvItem()V
    .locals 2

    .prologue
    .line 1772
    :try_start_0
    const-string/jumbo v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1773
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1774
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->updateNvItem()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1779
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 1776
    :catch_0
    move-exception v1

    goto :goto_0
.end method
