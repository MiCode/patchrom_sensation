.class public final Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;
.super Landroid/os/Handler;
.source "HtcIccPbkEntryCache_QMI.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;
.implements Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;


# static fields
.field static final ANR_ENTRY_INDEX_1:I = 0x0

.field static final ANR_ENTRY_INDEX_2:I = 0x1

.field static final DBG:Z = true

.field static final ERROR_ANR1_FULL:I = 0x2

.field static final ERROR_ANR2_FULL:I = 0x4

.field static final ERROR_EMAIL_FULL:I = 0x1

.field static final ERROR_NONE:I = 0x0

.field static final ERROR_UNKNOWN:I = 0x8

.field private static final EVENT_ADD_PB_ENTRY_DONE:I = 0x4

.field private static final EVENT_DELETE_PB_ENTRY_DONE:I = 0x6

.field private static final EVENT_GET_PB_LENGTH_DONE:I = 0x1

.field private static final EVENT_GET_PB_USED_NUM_DONE:I = 0x2

.field private static final EVENT_LOAD_PB_ADN_DONE:I = 0x9

.field private static final EVENT_LOAD_PB_ANR_DONE:I = 0xd

.field private static final EVENT_LOAD_PB_CC_DONE:I = 0x16

.field private static final EVENT_LOAD_PB_EMAIL_DONE:I = 0xc

.field private static final EVENT_LOAD_PB_ENTRIES_DONE:I = 0x3

.field private static final EVENT_LOAD_PB_EXT1_DONE:I = 0x8

.field private static final EVENT_LOAD_PB_IAP_DONE:I = 0xb

.field private static final EVENT_LOAD_PB_PBR_DONE:I = 0x7

.field private static final EVENT_LOAD_PB_PSC_DONE:I = 0x14

.field private static final EVENT_LOAD_PB_PUID_DONE:I = 0x18

.field private static final EVENT_LOAD_PB_UID_DONE:I = 0xa

.field private static final EVENT_UPDATE_ANR_DONE:I = 0x12

.field private static final EVENT_UPDATE_ANR_EXT1_DONE:I = 0x13

.field private static final EVENT_UPDATE_EMAIL_DONE:I = 0x11

.field private static final EVENT_UPDATE_EXT1_DONE:I = 0xf

.field private static final EVENT_UPDATE_IAP_DONE:I = 0x10

.field private static final EVENT_UPDATE_PB_CC_DONE:I = 0x17

.field private static final EVENT_UPDATE_PB_ENTRY_DONE:I = 0x5

.field private static final EVENT_UPDATE_PB_PSC_DONE:I = 0x15

.field private static final EVENT_UPDATE_PB_PUID_DONE:I = 0x19

.field private static final EVENT_UPDATE_PB_UID_DONE:I = 0xe

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final IAP_ENTRY_ANR_1_INDEX:I = 0x0

.field static final IAP_ENTRY_ANR_2_INDEX:I = 0x1

.field static final IAP_ENTRY_EMAIL_INDEX:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "HtcIccPbkEntryCache_QMI"

.field static final MAX_INT_VALUE:J = 0xffffffffL

.field static final MAX_NUM_ANR_PER_PBK_ENTRY:I = 0x2

.field static final MAX_SHORT_VALUE:I = 0xffff


# instance fields
.field m2GPhonebook:Z

.field mADNRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcAdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mANR_swap:Z

.field mAnrFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mAnrRecordLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AnrRecord;",
            ">;>;>;"
        }
    .end annotation
.end field

.field mChangeCounter:I

.field mEmailFileList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mEmailRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/EmailRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mExt1RecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcExt1Record;",
            ">;"
        }
    .end annotation
.end field

.field mIAPRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IAPRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mIap_Updatedata:[B

.field mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

.field mMsgNumber:I

.field mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

.field mPSC:J

.field mPUID:I

.field mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mRecordNums:I

.field mSimPbkEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            ">;"
        }
    .end annotation
.end field

.field mSimPbkWaiters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mSupportAnr:[Z

.field mSupportCC:Z

.field mSupportEmail:Z

.field mSupportPSC:Z

.field mSupportPUID:Z

.field private mTotal:I

.field mUIDRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/UIDRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUsed:I

.field mUserWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field misloading:Z

.field pollingContext:[I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    .line 170
    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    .line 172
    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    .line 178
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 179
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->misloading:Z

    .line 181
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    .line 183
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    .line 184
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    .line 188
    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 189
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 190
    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 192
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    .line 193
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    .line 194
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    .line 201
    iput-object p1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 202
    new-instance v0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    .line 203
    return-void
.end method

.method private addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V
    .locals 8
    .parameter "anrNumber"
    .parameter "entry"
    .parameter "anrEntryIndex"

    .prologue
    const/4 v4, 0x1

    .line 2229
    const-string v0, "addAnrRecord()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2230
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v0, :cond_1

    .line 2231
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v0

    if-ne v0, v4, :cond_1

    .line 2232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2234
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v7, v0, v1

    .line 2235
    .local v7, num:I
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, v7, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v3

    .line 2236
    .local v3, efid:I
    if-eqz v3, :cond_1

    .line 2238
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v1, v7

    sub-int v6, v0, v1

    .line 2240
    .local v6, adnRecordNumber:I
    const/4 v2, 0x0

    .line 2241
    .local v2, anrRecord:Lcom/android/internal/telephony/AnrRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v0

    if-ne v0, v4, :cond_2

    .line 2242
    invoke-virtual {p0, v7, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v2

    .line 2244
    if-eqz v2, :cond_0

    .line 2245
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget v1, v2, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, p3

    .line 2269
    :cond_0
    :goto_0
    if-eqz v2, :cond_6

    .line 2270
    const/4 v0, 0x0

    iput v0, v2, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 2271
    iput v6, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 2272
    iput-object p1, v2, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 2273
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v1, 0xc0

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v0

    iput v0, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 2275
    iget v1, v2, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    const/16 v0, 0x12

    invoke-virtual {p0, v0, v7, p3, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V

    .line 2286
    .end local v2           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .end local v3           #efid:I
    .end local v6           #adnRecordNumber:I
    .end local v7           #num:I
    :cond_1
    :goto_1
    return-void

    .line 2249
    .restart local v2       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .restart local v3       #efid:I
    .restart local v6       #adnRecordNumber:I
    .restart local v7       #num:I
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 2250
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_4

    .line 2252
    if-lez v6, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v6, v0, :cond_3

    .line 2255
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .restart local v2       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    goto :goto_0

    .line 2258
    :cond_3
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "out of anr index = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2262
    :cond_4
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "anrindex out of mAnrRecordLists.get(num).size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2265
    :cond_5
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v1, "num out of mAnrRecordLists.size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2280
    :cond_6
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "Can not find empty ANR record"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I
    .locals 7
    .parameter "number1"
    .parameter "number2"
    .parameter "email"
    .parameter "num"
    .parameter "entry"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 1917
    const/4 v2, 0x0

    .line 1918
    .local v2, error:I
    iput-boolean v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    .line 1920
    iget-boolean v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v5, v5, v3

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v5, v5, v6

    if-nez v5, :cond_0

    .line 1983
    :goto_0
    return v3

    .line 1924
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-nez v5, :cond_1

    move v3, v4

    .line 1925
    goto :goto_0

    .line 1928
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    .line 1929
    goto :goto_0

    .line 1933
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1934
    iget-boolean v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-ne v4, v6, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_3

    .line 1935
    iget v4, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-nez v4, :cond_3

    .line 1936
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyEmailRecord(I)Lcom/android/internal/telephony/EmailRecord;

    move-result-object v1

    .line 1937
    .local v1, emailRecord:Lcom/android/internal/telephony/EmailRecord;
    if-nez v1, :cond_3

    .line 1938
    add-int/lit8 v2, v2, 0x1

    .line 1945
    .end local v1           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1946
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v3

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v4

    if-ne v4, v6, :cond_4

    .line 1947
    iget-object v4, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v4, v4, v3

    if-nez v4, :cond_4

    .line 1948
    invoke-virtual {p0, p4, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v0

    .line 1949
    .local v0, anrRecord:Lcom/android/internal/telephony/AnrRecord;
    if-nez v0, :cond_4

    .line 1950
    add-int/lit8 v2, v2, 0x2

    .line 1956
    .end local v0           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1957
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v3, v3, v6

    if-ne v3, v6, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v3

    if-ne v3, v6, :cond_5

    .line 1958
    iget-object v3, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v3, v3, v6

    if-nez v3, :cond_5

    .line 1959
    invoke-virtual {p0, p4, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v0

    .line 1960
    .restart local v0       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    if-nez v0, :cond_5

    .line 1961
    add-int/lit8 v2, v2, 0x4

    .end local v0           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_5
    :goto_1
    move v3, v2

    .line 1983
    goto :goto_0

    .line 1966
    :cond_6
    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 1967
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v3, v3, v6

    if-ne v3, v6, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v3

    if-ne v3, v6, :cond_8

    .line 1968
    iget-object v3, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v3, v3, v6

    if-nez v3, :cond_9

    .line 1969
    invoke-virtual {p0, p4, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v0

    .line 1970
    .restart local v0       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    if-eqz v0, :cond_8

    .line 1971
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    .line 1978
    .end local v0           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_8
    :goto_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    if-ne v3, v6, :cond_5

    .line 1979
    add-int/lit8 v2, v2, -0x2

    goto :goto_1

    .line 1974
    :cond_9
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    goto :goto_2
.end method

.method private checkNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "number"
    .parameter "number1"
    .parameter "number2"

    .prologue
    const/16 v6, 0x2b

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v1, 0x8

    const/4 v3, 0x1

    .line 1883
    const/4 v0, 0x0

    .line 1885
    .local v0, error:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1886
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 1913
    .end local v0           #error:I
    :cond_0
    :goto_0
    return v0

    .line 1891
    .restart local v0       #error:I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v5

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v3

    if-ne v2, v3, :cond_4

    .line 1892
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-nez v2, :cond_3

    move v0, v1

    .line 1893
    goto :goto_0

    .line 1896
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 1897
    goto :goto_0

    .line 1901
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v5

    if-ne v2, v3, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1902
    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_5

    move v0, v1

    .line 1903
    goto :goto_0

    .line 1907
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v5

    if-ne v2, v3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1908
    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 1909
    goto :goto_0
.end method

.method private getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 2

    .prologue
    .line 2965
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v0, :cond_0

    .line 2966
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 2968
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    goto :goto_0
.end method

.method private getPbkEntryListIfLoaded()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private handleExt1loaded(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 1295
    const-string v4, "handleExt1loaded"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1298
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1299
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    move-object v1, v4

    check-cast v1, Ljava/util/ArrayList;

    .line 1301
    .local v1, ext1Data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1302
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1303
    .local v2, ext1DataSize:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    .line 1304
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1305
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v6, v4}, Lcom/android/internal/telephony/HtcExt1Record;->parseFromEf(I[B)Lcom/android/internal/telephony/HtcExt1Record;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1310
    .end local v2           #ext1DataSize:I
    .end local v3           #i:I
    :cond_0
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "Failed to load EF_EXT1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :cond_1
    return-void
.end method

.method private handlePollPBResult(ILandroid/os/AsyncResult;)V
    .locals 5
    .parameter "what"
    .parameter "ar"

    .prologue
    .line 1316
    iget-object v3, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    if-eq v3, v4, :cond_1

    .line 1348
    :cond_0
    :goto_0
    return-void

    .line 1318
    :cond_1
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1321
    const-string/jumbo v3, "handlePollPBResult()"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1323
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 1324
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1326
    :pswitch_0
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1328
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 1329
    .local v2, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    if-eqz v2, :cond_0

    .line 1331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handlePollPBResult() temp.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1334
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1335
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1337
    .local v0, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handlePollPBResult() entry.index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1339
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1340
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1334
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1324
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2587
    const-string v0, "HtcIccPbkEntryCache_QMI"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    return-void
.end method

.method private notifySimPbkWaiter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1283
    const-string/jumbo v2, "notifySimPbkWaiter"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1285
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1286
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 1287
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1288
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SIM_CONTACTS_READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1289
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v1, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1292
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 7
    .parameter
    .parameter "ar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    const/4 v6, 0x0

    .line 2490
    if-nez p1, :cond_0

    .line 2501
    :goto_0
    return-void

    .line 2494
    :cond_0
    const-string v3, "HtcIccPbkEntryCache_QMI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyWaiters"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 2496
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 2497
    .local v2, waiter:Landroid/os/Message;
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2498
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2495
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2500
    .end local v2           #waiter:Landroid/os/Message;
    :cond_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->misloading:Z

    goto :goto_0
.end method

.method private pollPBList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1420
    const/4 v3, 0x1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    .line 1421
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    aput v5, v3, v5

    .line 1423
    const/4 v2, 0x0

    .local v2, start:I
    const/4 v0, 0x0

    .line 1425
    .local v0, end:I
    const-string/jumbo v3, "pollPBList()"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1427
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    if-ge v0, v3, :cond_2

    .line 1428
    add-int/lit8 v2, v0, 0x1

    .line 1429
    add-int/lit8 v0, v2, 0xa

    .line 1431
    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    if-le v0, v3, :cond_0

    .line 1432
    iget v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 1434
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    aget v4, v3, v5

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v5

    .line 1435
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1438
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v3, :cond_1

    .line 1439
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v2, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntries(IILandroid/os/Message;)V

    .line 1444
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1441
    :cond_1
    const-string/jumbo v3, "mPhone is null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1446
    .end local v1           #response:Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .parameter "response"
    .parameter "errString"

    .prologue
    .line 2504
    if-eqz p1, :cond_0

    .line 2505
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2506
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2507
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2509
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    .line 2512
    if-nez p1, :cond_0

    .line 2518
    :goto_0
    return-void

    .line 2516
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2517
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    .line 1867
    if-nez p0, :cond_0

    .line 1868
    const/4 v4, 0x0

    .line 1879
    :goto_0
    return-object v4

    .line 1870
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1871
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1873
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1874
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1875
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator_FDN(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1876
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1873
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1879
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V
    .locals 7
    .parameter "name"
    .parameter "number"
    .parameter "entry"
    .parameter "response"

    .prologue
    .line 2390
    const/4 v2, 0x0

    .line 2391
    .local v2, efid:I
    iget v5, p3, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v3, v5, v6

    .line 2392
    .local v3, num:I
    iget v5, p3, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v6, v3

    sub-int v1, v5, v6

    .line 2394
    .local v1, adnRecordNumber:I
    iget-boolean v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    if-nez v5, :cond_1

    .line 2395
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v5, :cond_0

    .line 2396
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 2397
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v6, 0xc0

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2404
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 2405
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 2406
    if-lez v1, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v1, v5, :cond_2

    .line 2407
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HtcAdnRecord;

    .line 2408
    .local v0, adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    iput-object p1, v0, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    .line 2409
    iput-object p2, v0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    .line 2412
    iget v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    rem-int/lit16 v5, v5, 0xff

    iput v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    .line 2413
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    iget v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    invoke-virtual {v5, v6, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2415
    const/4 v5, 0x5

    iget v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    invoke-virtual {p0, v5, v6, v3, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2417
    .local v4, res:Landroid/os/Message;
    iget v5, v0, Lcom/android/internal/telephony/HtcAdnRecord;->recordNumber:I

    invoke-virtual {p0, v5, v0, v2, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateADNByIndex(ILcom/android/internal/telephony/HtcAdnRecord;ILandroid/os/Message;)V

    .line 2430
    .end local v0           #adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    .end local v4           #res:Landroid/os/Message;
    :goto_1
    return-void

    .line 2401
    :cond_1
    const/16 v2, 0x6f3a

    goto :goto_0

    .line 2419
    :cond_2
    const-string v5, "HtcIccPbkEntryCache_QMI"

    const-string v6, "adnRecordNumber out of mADNRecordList.get(num).size()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    const-string v5, "error"

    invoke-direct {p0, p4, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1

    .line 2423
    :cond_3
    const-string v5, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v6, "num out of mADNRecordList.size()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    const-string v5, "error"

    invoke-direct {p0, p4, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1

    .line 2427
    :cond_4
    const-string v5, "HtcIccPbkEntryCache_QMI"

    const-string v6, "The efid of ADN is 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    const-string v5, "error"

    invoke-direct {p0, p4, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V
    .locals 11
    .parameter "anrNumber"
    .parameter "entry"
    .parameter "anrEntryIndex"

    .prologue
    const/16 v5, 0xff

    const/16 v4, 0x12

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAnrRecord()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2292
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v0, :cond_0

    .line 2293
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v0

    if-ne v0, v9, :cond_0

    .line 2294
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v8, v0, v1

    .line 2295
    .local v8, num:I
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, v8, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v3

    .line 2296
    .local v3, efid:I
    if-eqz v3, :cond_0

    .line 2298
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v1, v8

    sub-int v6, v0, v1

    .line 2300
    .local v6, adnRecordNumber:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v9, :cond_4

    .line 2302
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 2303
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 2304
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eq v0, v5, :cond_0

    .line 2306
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-lez v0, :cond_1

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v1, v0, :cond_1

    .line 2309
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v1, p3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .line 2312
    .local v2, anrRecord:Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/AnrRecord;->clear()V

    .line 2313
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    invoke-virtual {p0, v4, v8, p3, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V

    .line 2317
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aput v10, v0, p3

    .line 2318
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p3

    .line 2320
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v0

    if-ne v0, v9, :cond_0

    .line 2321
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v7

    .line 2322
    .local v7, index:I
    if-ltz v7, :cond_0

    .line 2323
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v1, -0x1

    aput-byte v1, v0, v7

    .line 2387
    .end local v2           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .end local v3           #efid:I
    .end local v6           #adnRecordNumber:I
    .end local v7           #index:I
    .end local v8           #num:I
    :cond_0
    :goto_0
    return-void

    .line 2327
    .restart local v3       #efid:I
    .restart local v6       #adnRecordNumber:I
    .restart local v8       #num:I
    :cond_1
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "out of anr index = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v4, v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2332
    :cond_2
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "anrEntryIndex out of mAnrRecordLists.get(num).size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2335
    :cond_3
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v1, "num out of mAnrRecordLists.size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2341
    :cond_4
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eqz v0, :cond_9

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eq v0, v5, :cond_9

    .line 2344
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v0

    if-ne v0, v9, :cond_5

    .line 2345
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v7

    .line 2346
    .restart local v7       #index:I
    if-ltz v7, :cond_5

    .line 2347
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v1, p3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 2351
    .end local v7           #index:I
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_8

    .line 2352
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_7

    .line 2353
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-lez v0, :cond_6

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v1, v0, :cond_6

    .line 2356
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v1, p3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .line 2359
    .restart local v2       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    iput v10, v2, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 2360
    iput v6, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 2361
    iput-object p1, v2, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 2362
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v1, 0xc0

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v0

    iput v0, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 2364
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    invoke-virtual {p0, v4, v8, p3, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2369
    .end local v2           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_6
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "out of anr index = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v4, v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2373
    :cond_7
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "anrEntryIndex out of mAnrRecordLists.get(num).size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2376
    :cond_8
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v1, "num out of mAnrRecordLists.size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2381
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    goto/16 :goto_0
.end method

.method private updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V
    .locals 11
    .parameter "email"
    .parameter "entry"

    .prologue
    const/16 v10, 0xc0

    const/16 v9, 0x11

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1988
    const-string/jumbo v4, "updateEmailRecord()"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1989
    iget-boolean v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-ne v4, v6, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v4, :cond_0

    .line 1991
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 1992
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v3, v4, v5

    .line 1993
    .local v3, num:I
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v5, 0xca

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v1

    .line 1995
    .local v1, efid:I
    if-eqz v1, :cond_0

    .line 1996
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v5, v3

    sub-int v0, v4, v5

    .line 1998
    .local v0, adnRecordNumber:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2000
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2001
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-eqz v4, :cond_0

    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    const/16 v5, 0xff

    if-eq v4, v5, :cond_0

    .line 2003
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-lez v4, :cond_1

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v5, v4, :cond_1

    .line 2006
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/EmailRecord;

    .line 2009
    .local v2, emailRecord:Lcom/android/internal/telephony/EmailRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/EmailRecord;->clear()V

    .line 2010
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {p0, v9, v3, v7, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V

    .line 2017
    iput v7, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    .line 2018
    const-string v4, ""

    iput-object v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 2020
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 2022
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v5, -0x1

    aput-byte v5, v4, v8

    .line 2116
    .end local v0           #adnRecordNumber:I
    .end local v1           #efid:I
    .end local v2           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    .end local v3           #num:I
    :cond_0
    :goto_0
    return-void

    .line 2025
    .restart local v0       #adnRecordNumber:I
    .restart local v1       #efid:I
    .restart local v3       #num:I
    :cond_1
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "out of e-mail index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2031
    :cond_2
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v5, "num out of mEmailRecordList.size()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2034
    :cond_3
    const/4 v2, 0x0

    .line 2037
    .restart local v2       #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-eqz v4, :cond_7

    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    const/16 v5, 0xff

    if-eq v4, v5, :cond_7

    .line 2039
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_4

    .line 2040
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v8

    .line 2042
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 2043
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-lez v4, :cond_5

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v5, v4, :cond_5

    .line 2046
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    check-cast v2, Lcom/android/internal/telephony/EmailRecord;

    .line 2048
    .restart local v2       #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    iput v0, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    .line 2049
    iput-object p1, v2, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 2050
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4, v3, v10}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    .line 2055
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {p0, v9, v3, v7, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2063
    :cond_5
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "out of e-mail index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2068
    :cond_6
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v5, "num out of mEmailRecordList.size()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2073
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_9

    .line 2074
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyEmailRecord(I)Lcom/android/internal/telephony/EmailRecord;

    move-result-object v2

    .line 2075
    if-eqz v2, :cond_8

    .line 2076
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget v5, v2, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v8

    .line 2094
    :cond_8
    :goto_1
    if-eqz v2, :cond_c

    .line 2095
    iput v0, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    .line 2096
    iput-object p1, v2, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 2097
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4, v3, v10}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    .line 2101
    iget v4, v2, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    invoke-virtual {p0, v9, v3, v7, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2079
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 2080
    if-lez v0, :cond_a

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v0, v4, :cond_a

    .line 2083
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    check-cast v2, Lcom/android/internal/telephony/EmailRecord;

    .restart local v2       #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    goto :goto_1

    .line 2087
    :cond_a
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "out of e-mail index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2090
    :cond_b
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v5, "num out of mEmailRecordList.size()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2109
    :cond_c
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "Can not find empty email record"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateIAP(IZ)V
    .locals 15
    .parameter "index"
    .parameter "clear"

    .prologue
    .line 2119
    const-string/jumbo v11, "updateIAP()"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2120
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 2124
    :cond_0
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v11, :cond_3

    iget v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v11, :cond_3

    .line 2125
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 2126
    add-int/lit8 v11, p1, -0x1

    iget v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v7, v11, v12

    .line 2128
    .local v7, num:I
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v12, 0xc1

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v3

    .line 2131
    .local v3, efid_iap:I
    if-eqz v3, :cond_9

    .line 2132
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_8

    .line 2133
    iget v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v11, v7

    sub-int v9, p1, v11

    .line 2135
    .local v9, recordNumber:I
    if-lez v9, :cond_7

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gt v9, v11, :cond_7

    .line 2138
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    add-int/lit8 v12, v9, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IAPRecord;

    .line 2141
    .local v5, iapRecord:Lcom/android/internal/telephony/IAPRecord;
    iget-object v11, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v11, v11

    new-array v10, v11, [B

    .line 2143
    .local v10, recordString:[B
    const/4 v1, 0x0

    .line 2144
    .local v1, doUpdate:Z
    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_4

    .line 2145
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v11, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v11, v11

    if-ge v4, v11, :cond_1

    .line 2146
    const/4 v11, -0x1

    aput-byte v11, v10, v4

    .line 2145
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2148
    :cond_1
    const/4 v1, 0x1

    .line 2199
    .end local v4           #i:I
    :cond_2
    :goto_1
    const/4 v11, 0x1

    if-ne v1, v11, :cond_3

    .line 2200
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "num ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " doUpdate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " iapRecord.mRecordNumber = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2203
    const/4 v11, 0x0

    iget-object v12, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    const/4 v13, 0x0

    iget-object v14, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v14, v14

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2207
    const/16 v11, 0x10

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v7, v12, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {p0, v9, v5, v3, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateIAPByIndex(ILcom/android/internal/telephony/IAPRecord;ILandroid/os/Message;)V

    .line 2224
    .end local v1           #doUpdate:Z
    .end local v3           #efid_iap:I
    .end local v5           #iapRecord:Lcom/android/internal/telephony/IAPRecord;
    .end local v7           #num:I
    .end local v9           #recordNumber:I
    .end local v10           #recordString:[B
    :cond_3
    :goto_2
    return-void

    .line 2150
    .restart local v1       #doUpdate:Z
    .restart local v3       #efid_iap:I
    .restart local v5       #iapRecord:Lcom/android/internal/telephony/IAPRecord;
    .restart local v7       #num:I
    .restart local v9       #recordNumber:I
    .restart local v10       #recordString:[B
    :cond_4
    iget-object v11, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v14, v14

    invoke-static {v11, v12, v10, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2153
    iget-boolean v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 2155
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v12, 0xca

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2157
    .local v2, efid:I
    if-eqz v2, :cond_5

    .line 2158
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11, v7, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIAPTagNumber(II)I

    move-result v8

    .line 2160
    .local v8, position:I
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v12, 0x2

    aget-byte v11, v11, v12

    if-eqz v11, :cond_5

    if-lez v8, :cond_5

    .line 2161
    add-int/lit8 v11, v8, -0x1

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v13, 0x2

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 2162
    const/4 v1, 0x1

    .line 2167
    .end local v2           #efid:I
    .end local v8           #position:I
    :cond_5
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v12, 0x0

    aget-boolean v11, v11, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 2170
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x0

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2172
    .restart local v2       #efid:I
    if-eqz v2, :cond_6

    .line 2173
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11, v7, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIAPTagNumber(II)I

    move-result v8

    .line 2175
    .restart local v8       #position:I
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v6

    .line 2176
    .local v6, index_iap:I
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v11, v11, v6

    if-eqz v11, :cond_6

    if-lez v8, :cond_6

    .line 2177
    add-int/lit8 v11, v8, -0x1

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v12, v12, v6

    aput-byte v12, v10, v11

    .line 2178
    const/4 v1, 0x1

    .line 2183
    .end local v2           #efid:I
    .end local v6           #index_iap:I
    .end local v8           #position:I
    :cond_6
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v12, 0x1

    aget-boolean v11, v11, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 2186
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x1

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2188
    .restart local v2       #efid:I
    if-eqz v2, :cond_2

    .line 2189
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11, v7, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIAPTagNumber(II)I

    move-result v8

    .line 2191
    .restart local v8       #position:I
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v6

    .line 2192
    .restart local v6       #index_iap:I
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v11, v11, v6

    if-eqz v11, :cond_2

    if-lez v8, :cond_2

    .line 2193
    add-int/lit8 v11, v8, -0x1

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v12, v12, v6

    aput-byte v12, v10, v11

    .line 2194
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 2212
    .end local v1           #doUpdate:Z
    .end local v2           #efid:I
    .end local v5           #iapRecord:Lcom/android/internal/telephony/IAPRecord;
    .end local v6           #index_iap:I
    .end local v8           #position:I
    .end local v10           #recordString:[B
    :cond_7
    const-string v11, "HtcIccPbkEntryCache_QMI"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "out of mIAPRecordList.get(num).size()"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2215
    .end local v9           #recordNumber:I
    :cond_8
    const-string v11, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v12, "num out of mIAPRecordList.size()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2218
    :cond_9
    const-string v11, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v12, "no EF-IAP"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private updatePSCRecord(ZII)V
    .locals 11
    .parameter "addpbk"
    .parameter "num"
    .parameter "index"

    .prologue
    .line 1770
    const/4 v6, 0x0

    .line 1771
    .local v6, updatePSC:Z
    const/4 v4, 0x0

    .line 1772
    .local v4, resetAllUID:Z
    iget-boolean v7, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 1773
    iget v7, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 1775
    iget v7, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    const v8, 0xffff

    if-le v7, v8, :cond_0

    .line 1776
    const/4 v6, 0x1

    .line 1777
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 1780
    :cond_0
    const/4 v7, 0x2

    new-array v0, v7, [B

    .line 1781
    .local v0, data:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v7, 0x2

    if-ge v2, v7, :cond_1

    .line 1782
    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v2

    mul-int/lit8 v3, v7, 0x8

    .line 1783
    .local v3, offset:I
    iget v7, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    ushr-int/2addr v7, v3

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v2

    .line 1781
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1785
    .end local v3           #offset:I
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Update Change Counter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1787
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v7

    const/16 v8, 0x4f23

    const/16 v9, 0x17

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v8, v0, v9}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 1791
    .end local v0           #data:[B
    .end local v2           #i:I
    :cond_2
    const/4 v7, 0x1

    if-ne p1, v7, :cond_6

    iget-boolean v7, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 1792
    iget v7, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 1794
    iget v7, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    const v8, 0xffff

    if-le v7, v8, :cond_3

    .line 1796
    const/4 v6, 0x1

    .line 1797
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 1800
    :cond_3
    const/4 v7, 0x2

    new-array v0, v7, [B

    .line 1801
    .restart local v0       #data:[B
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    const/4 v7, 0x2

    if-ge v2, v7, :cond_4

    .line 1802
    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v2

    mul-int/lit8 v3, v7, 0x8

    .line 1803
    .restart local v3       #offset:I
    iget v7, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    ushr-int/2addr v7, v3

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v2

    .line 1801
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1805
    .end local v3           #offset:I
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Update mPUID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1807
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v7

    const/16 v8, 0x4f24

    const/16 v9, 0x19

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v8, v0, v9}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 1810
    iget-object v7, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v7

    if-ge p2, v7, :cond_a

    .line 1811
    iget-object v7, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v8, 0xc9

    invoke-virtual {v7, p2, v8}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v1

    .line 1812
    .local v1, efid:I
    if-eqz v1, :cond_9

    .line 1813
    iget-object v7, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p3, v7, :cond_8

    .line 1814
    iget-object v7, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    add-int/lit8 v8, p3, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/UIDRecord;

    .line 1815
    .local v5, uidRecord:Lcom/android/internal/telephony/UIDRecord;
    array-length v7, v0

    iget-object v8, v5, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    array-length v8, v8

    if-ne v7, v8, :cond_6

    .line 1816
    const/4 v2, 0x0

    :goto_2
    iget-object v7, v5, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    array-length v7, v7

    if-ge v2, v7, :cond_5

    .line 1817
    iget-object v7, v5, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    aget-byte v8, v0, v2

    aput-byte v8, v7, v2

    .line 1816
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1819
    :cond_5
    new-instance v7, Lcom/android/internal/telephony/UIDRecordLoader;

    iget-object v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v9, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v7, v8, v9}, Lcom/android/internal/telephony/UIDRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    iget v8, v5, Lcom/android/internal/telephony/UIDRecord;->mRecordNumber:I

    const/16 v9, 0xe

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v1, v8, v5, v9}, Lcom/android/internal/telephony/UIDRecordLoader;->updateEF(IILcom/android/internal/telephony/UIDRecord;Landroid/os/Message;)V

    .line 1848
    .end local v0           #data:[B
    .end local v1           #efid:I
    .end local v2           #i:I
    .end local v5           #uidRecord:Lcom/android/internal/telephony/UIDRecord;
    :cond_6
    :goto_3
    iget-boolean v7, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    const/4 v7, 0x1

    if-ne v6, v7, :cond_c

    .line 1849
    iget-wide v7, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 1850
    iget-wide v7, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    const-wide v9, 0xffffffffL

    cmp-long v7, v7, v9

    if-lez v7, :cond_7

    .line 1851
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 1853
    :cond_7
    const/4 v7, 0x4

    new-array v0, v7, [B

    .line 1854
    .restart local v0       #data:[B
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    const/4 v7, 0x4

    if-ge v2, v7, :cond_b

    .line 1855
    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v2

    mul-int/lit8 v3, v7, 0x8

    .line 1856
    .restart local v3       #offset:I
    iget-wide v7, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    ushr-long/2addr v7, v3

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v0, v2

    .line 1854
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1823
    .end local v3           #offset:I
    .restart local v1       #efid:I
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "out of EFUID index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1826
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can not find EFUID id num:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1829
    .end local v1           #efid:I
    :cond_a
    const-string/jumbo v7, "num out of mUIDRecordList().size()"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1859
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Update PSC: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1861
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v7

    const/16 v8, 0x4f22

    const/16 v9, 0x15

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v8, v0, v9}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 1863
    .end local v0           #data:[B
    .end local v2           #i:I
    :cond_c
    return-void
.end method


# virtual methods
.method public addPBKEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)J
    .locals 18
    .parameter "name"
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "emailAddress"
    .parameter "response"

    .prologue
    .line 1458
    const-string v4, "addPBKEntry()"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1459
    const-wide/16 v13, 0x0

    .line 1460
    .local v13, index:J
    const/4 v10, 0x0

    .line 1463
    .local v10, error:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v4, :cond_0

    .line 1464
    const-string/jumbo v4, "mPhone null"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move-wide v15, v13

    .line 1572
    .end local v13           #index:J
    .local v15, index:J
    :goto_0
    return-wide v15

    .line 1470
    .end local v15           #index:J
    .restart local v13       #index:J
    :cond_0
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    array-length v4, v4

    if-ge v11, v4, :cond_1

    .line 1471
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v5, 0x0

    aput-byte v5, v4, v11

    .line 1470
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1474
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1476
    .local v17, phonenumber:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1477
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move-wide v15, v13

    .line 1478
    .end local v13           #index:J
    .restart local v15       #index:J
    goto :goto_0

    .line 1481
    .end local v15           #index:J
    .restart local v13       #index:J
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->checkNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 1483
    if-eqz v10, :cond_3

    .line 1484
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move-wide v15, v13

    .line 1485
    .end local v13           #index:J
    .restart local v15       #index:J
    goto :goto_0

    .line 1489
    .end local v15           #index:J
    .restart local v13       #index:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v12

    .line 1491
    .local v12, iccCardInterface:Lcom/android/internal/telephony/IccCard;
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_4

    sget-boolean v4, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-nez v4, :cond_4

    .line 1493
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    :goto_2
    move-wide v15, v13

    .line 1572
    .end local v13           #index:J
    .restart local v15       #index:J
    goto :goto_0

    .line 1497
    .end local v15           #index:J
    .restart local v13       #index:J
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyPbkRecord()Lcom/android/internal/telephony/PhoneBookEntry;

    move-result-object v9

    .line 1499
    .local v9, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-nez v9, :cond_5

    .line 1500
    const-string v4, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_2

    .line 1502
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-gtz v4, :cond_6

    .line 1503
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_2

    .line 1505
    :cond_6
    iget v4, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v8, v4, v5

    .line 1507
    .local v8, num:I
    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 1508
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I

    move-result v10

    .line 1510
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 1511
    move-object/from16 p4, p3

    .line 1512
    const-string p3, ""

    .line 1515
    :cond_7
    if-eqz v10, :cond_8

    .line 1516
    packed-switch v10, :pswitch_data_0

    .line 1527
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_2

    .line 1524
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MemoryFull:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_2

    .line 1533
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 1534
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V

    .line 1540
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 1541
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v9, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1544
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v5, 0x1

    aget-boolean v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 1545
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v9, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1551
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1552
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v5, 0x1

    aget-boolean v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    .line 1555
    :cond_c
    iget v4, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateIAP(IZ)V

    .line 1562
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    .line 1564
    const/4 v4, 0x1

    iget v5, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updatePSCRecord(ZII)V

    .line 1566
    iget v4, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    int-to-long v13, v4

    goto/16 :goto_2

    .line 1516
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method checkSupportANR(I)Z
    .locals 1
    .parameter "anrEntryIndex"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method checkSupportEmail()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    return v0
.end method

.method convertEventToTag(II)I
    .locals 1
    .parameter "event"
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    .line 2864
    packed-switch p1, :pswitch_data_0

    .line 2884
    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2867
    :pswitch_0
    const/16 v0, 0xc9

    goto :goto_0

    .line 2870
    :pswitch_1
    const/16 v0, 0xc0

    goto :goto_0

    .line 2872
    :pswitch_2
    const/16 v0, 0xc1

    goto :goto_0

    .line 2874
    :pswitch_3
    const/16 v0, 0xca

    goto :goto_0

    .line 2876
    :pswitch_4
    const/16 v0, 0xc2

    goto :goto_0

    .line 2878
    :pswitch_5
    if-nez p2, :cond_1

    .line 2879
    const/4 v0, 0x0

    goto :goto_0

    .line 2880
    :cond_1
    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 2864
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public deletePBKEntry(ILandroid/os/Message;)V
    .locals 9
    .parameter "recordNumber"
    .parameter "response"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1580
    const-string v4, "deletePBKEntry()"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1582
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v4, :cond_0

    .line 1583
    const-string/jumbo v4, "mPhone null"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1587
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 1589
    .local v1, iccCardInterface:Lcom/android/internal/telephony/IccCard;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_1

    sget-boolean v4, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-nez v4, :cond_1

    .line 1591
    const-string v4, "error"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1646
    :goto_0
    return-void

    .line 1595
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    .line 1596
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1598
    .local v0, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v0, :cond_2

    iget v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-gtz v4, :cond_3

    .line 1599
    :cond_2
    const-string v4, "error"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1604
    :cond_3
    iget-boolean v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-ne v4, v6, :cond_4

    .line 1605
    invoke-direct {p0, v8, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V

    .line 1611
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v7

    if-ne v4, v6, :cond_5

    .line 1612
    invoke-direct {p0, v8, v0, v7}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1615
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v6

    if-ne v4, v6, :cond_6

    .line 1616
    invoke-direct {p0, v8, v0, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1622
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1624
    iget-boolean v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-eq v4, v6, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v7

    if-eq v4, v6, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v6

    if-ne v4, v6, :cond_8

    .line 1627
    :cond_7
    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-direct {p0, v4, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateIAP(IZ)V

    .line 1634
    :cond_8
    const/4 v2, 0x0

    .line 1635
    .local v2, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1636
    .local v3, number:Ljava/lang/String;
    invoke-direct {p0, v2, v3, v0, p2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    .line 1638
    invoke-direct {p0, v7, v7, v7}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updatePSCRecord(ZII)V

    goto :goto_0

    .line 1642
    .end local v0           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    :cond_9
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v5, "mSimPbkEntryList = null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    const-string v4, "error"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2904
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 2905
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v7, :cond_0

    .line 2906
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispose()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    new-instance v1, Ljava/lang/Exception;

    const-string v4, "SIM Phonebook Entries have been droped."

    invoke-direct {v1, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2910
    .local v1, ex:Ljava/lang/Exception;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v8, v8, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2911
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 2915
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    if-eqz v4, :cond_3

    .line 2916
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lt v4, v7, :cond_3

    .line 2917
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispose()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    const/4 v2, 0x0

    .local v2, msgNum:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gt v2, v4, :cond_3

    .line 2919
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 2920
    .local v3, response:Landroid/os/Message;
    if-eqz v3, :cond_2

    .line 2921
    iget v4, v3, Landroid/os/Message;->what:I

    if-eqz v4, :cond_1

    .line 2922
    const-string v4, "error"

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 2924
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 2918
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2929
    .end local v2           #msgNum:I
    .end local v3           #response:Landroid/os/Message;
    :cond_3
    return-void
.end method

.method public dropSimPbkEntries()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2601
    const-string v1, "HtcIccPbkEntryCache_QMI"

    const-string v2, "dropSimPbkEntries()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    iput-boolean v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 2604
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aput-boolean v3, v1, v3

    .line 2605
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v2, 0x1

    aput-boolean v3, v1, v2

    .line 2607
    const-string v1, "gsm.usim.number.length"

    const-string v2, "20"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    const-string v1, "gsm.adn.records.capacity"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2609
    const-string v1, "gsm.usim.email.max-no"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2610
    const-string v1, "gsm.usim.anr.max-no"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2613
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_0

    .line 2614
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_CONTACTS_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2615
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 2617
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->dispose()V

    .line 2619
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 2620
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2621
    iput-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 2623
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 2624
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2627
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 2628
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2632
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 2633
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2634
    iput-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    .line 2638
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 2639
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2643
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v1, :cond_6

    .line 2644
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->reset()V

    .line 2649
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    if-eqz v1, :cond_7

    .line 2650
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2653
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    .line 2654
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2657
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    .line 2658
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2662
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    .line 2663
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2666
    :cond_a
    return-void
.end method

.method getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;
    .locals 4
    .parameter "num"
    .parameter "anrEntryIndex"

    .prologue
    const/4 v3, 0x0

    .line 2469
    const/4 v0, 0x0

    .line 2471
    .local v0, entry:Lcom/android/internal/telephony/AnrRecord;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p1, :cond_1

    :cond_0
    move-object v2, v3

    .line 2485
    :goto_0
    return-object v2

    .line 2473
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p2, :cond_2

    move-object v2, v3

    .line 2474
    goto :goto_0

    .line 2476
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2477
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lcom/android/internal/telephony/AnrRecord;
    check-cast v0, Lcom/android/internal/telephony/AnrRecord;

    .line 2479
    .restart local v0       #entry:Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/AnrRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    .line 2480
    goto :goto_0

    .line 2476
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v2, v3

    .line 2485
    goto :goto_0
.end method

.method getFirstEmptyEmailRecord(I)Lcom/android/internal/telephony/EmailRecord;
    .locals 4
    .parameter "num"

    .prologue
    const/4 v3, 0x0

    .line 2451
    const/4 v0, 0x0

    .line 2453
    .local v0, entry:Lcom/android/internal/telephony/EmailRecord;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p1, :cond_1

    :cond_0
    move-object v2, v3

    .line 2465
    :goto_0
    return-object v2

    .line 2456
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2457
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lcom/android/internal/telephony/EmailRecord;
    check-cast v0, Lcom/android/internal/telephony/EmailRecord;

    .line 2459
    .restart local v0       #entry:Lcom/android/internal/telephony/EmailRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/EmailRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 2460
    goto :goto_0

    .line 2456
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 2465
    goto :goto_0
.end method

.method getFirstEmptyPbkRecord()Lcom/android/internal/telephony/PhoneBookEntry;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2433
    const/4 v0, 0x0

    .line 2435
    .local v0, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 2447
    :cond_0
    :goto_0
    return-object v2

    .line 2438
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2439
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    check-cast v0, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 2441
    .restart local v0       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, v0

    .line 2442
    goto :goto_0

    .line 2438
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method getIAPIndex(I)I
    .locals 1
    .parameter "anrEntryIndex"

    .prologue
    .line 2889
    packed-switch p1, :pswitch_data_0

    .line 2895
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2891
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2893
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2889
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getNextEvent(III)I
    .locals 5
    .parameter "event"
    .parameter "num"
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    .line 2826
    const/4 v0, 0x0

    .line 2827
    .local v0, nextEvent:I
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->convertEventToTag(II)I

    move-result v1

    .line 2828
    .local v1, tag:I
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v2, :cond_0

    .line 2829
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 2830
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    move p1, v0

    .line 2860
    .end local p1
    :cond_1
    :goto_1
    return p1

    .line 2834
    .restart local p1
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2837
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, p2, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    if-eqz v2, :cond_3

    .line 2838
    const/16 p1, 0xb

    goto :goto_1

    .line 2841
    :cond_3
    const/16 v2, 0xc

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v0

    .line 2844
    goto :goto_0

    .line 2852
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, p2, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    if-nez v2, :cond_1

    .line 2855
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v0

    goto :goto_0

    .line 2830
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 42
    .parameter "msg"

    .prologue
    .line 222
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v37, v0

    packed-switch v37, :pswitch_data_0

    .line 1280
    :cond_0
    :goto_0
    return-void

    .line 224
    :pswitch_0
    const-string v37, "EVENT_LOAD_PB_PBR_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    if-eqz v37, :cond_2

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_1

    .line 228
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v37

    const/16 v38, 0x4f22

    const/16 v39, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 240
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_0

    .line 243
    new-instance v37, Lcom/android/internal/telephony/HtcExt1RecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v39, v0

    invoke-direct/range {v37 .. v39}, Lcom/android/internal/telephony/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v38, 0x6f4a

    const/16 v39, 0x8

    const/16 v40, 0x0

    const/16 v41, 0x6f4a

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(III)Landroid/os/Message;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/HtcExt1RecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto :goto_0

    .line 232
    :cond_1
    const-string v37, "Support Global phonebook"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 233
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    goto :goto_1

    .line 237
    :cond_2
    const-string v37, "Support Global phonebook"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 238
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    goto :goto_1

    .line 251
    :pswitch_1
    const-string v37, "EVENT_LOAD_PB_PSC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 253
    .local v13, ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_4

    .line 254
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, [B

    move-object/from16 v14, v37

    check-cast v14, [B

    .line 255
    .local v14, data:[B
    if-eqz v14, :cond_3

    array-length v0, v14

    move/from16 v37, v0

    if-lez v37, :cond_3

    .line 256
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Phonebook Synchronisation Counter: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 257
    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x10

    invoke-static/range {v37 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v37

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v37, v0

    move-wide/from16 v0, v37

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 258
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    .line 265
    .end local v14           #data:[B
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_0

    .line 267
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v37

    const/16 v38, 0x4f23

    const/16 v39, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 260
    .restart local v14       #data:[B
    :cond_3
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    goto :goto_2

    .line 263
    .end local v14           #data:[B
    :cond_4
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    goto :goto_2

    .line 274
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v37, "EVENT_UPDATE_PB_PSC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 276
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 277
    const-string v37, "Update PB_PCS failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    const-string v37, "EVENT_LOAD_PB_CC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 283
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 284
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_6

    .line 285
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, [B

    move-object/from16 v14, v37

    check-cast v14, [B

    .line 286
    .restart local v14       #data:[B
    if-eqz v14, :cond_5

    array-length v0, v14

    move/from16 v37, v0

    if-lez v37, :cond_5

    .line 287
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Change Counter: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 288
    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x10

    invoke-static/range {v37 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 289
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    .line 296
    .end local v14           #data:[B
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_0

    .line 298
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v37

    const/16 v38, 0x4f24

    const/16 v39, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 291
    .restart local v14       #data:[B
    :cond_5
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    goto :goto_3

    .line 294
    .end local v14           #data:[B
    :cond_6
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    goto :goto_3

    .line 305
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    const-string v37, "EVENT_UPDATE_PB_CC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 307
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 308
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 309
    const-string v37, "Update PB_CC failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 315
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    const-string v37, "EVENT_LOAD_PB_PUID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 316
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 317
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_8

    .line 318
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, [B

    move-object/from16 v14, v37

    check-cast v14, [B

    .line 319
    .restart local v14       #data:[B
    if-eqz v14, :cond_7

    array-length v0, v14

    move/from16 v37, v0

    if-lez v37, :cond_7

    .line 320
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Previous Unique Identifier: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 321
    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x10

    invoke-static/range {v37 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 322
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    .line 330
    .end local v14           #data:[B
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_0

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0xc2

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v16

    .line 334
    .local v16, efid:I
    if-eqz v16, :cond_9

    .line 335
    const/16 v37, 0x8

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 324
    .end local v16           #efid:I
    .restart local v14       #data:[B
    :cond_7
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    goto :goto_4

    .line 327
    .end local v14           #data:[B
    :cond_8
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    goto :goto_4

    .line 337
    .restart local v16       #efid:I
    :cond_9
    const-string v37, "gsm.usim.number.length"

    const-string v38, "20"

    invoke-static/range {v37 .. v38}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const/16 v37, 0x9

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 347
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v16           #efid:I
    :pswitch_6
    const-string v37, "EVENT_UPDATE_PB_PUID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 349
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 350
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 351
    const-string v37, "Update PB_PUID failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 357
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    const-string v37, "EVENT_LOAD_PB_UID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 358
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 359
    .restart local v13       #ar:Landroid/os/AsyncResult;
    const/16 v20, 0x0

    .line 360
    .local v20, event:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 362
    .local v30, num:I
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_b

    .line 363
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/util/ArrayList;

    move-object/from16 v36, v37

    check-cast v36, Ljava/util/ArrayList;

    .line 364
    .local v36, uidRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v30

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 366
    add-int/lit8 v30, v30, 0x1

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v37

    move/from16 v0, v30

    move/from16 v1, v37

    if-ge v0, v1, :cond_a

    .line 368
    const/16 v37, 0xa

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v30

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 378
    .end local v36           #uidRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    :goto_5
    if-eqz v20, :cond_d

    .line 379
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v29

    .line 380
    .local v29, next_event:I
    if-eqz v29, :cond_c

    .line 381
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "next_event = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 370
    .end local v29           #next_event:I
    .restart local v36       #uidRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    :cond_a
    const/16 v20, 0xb

    goto :goto_5

    .line 373
    .end local v36           #uidRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    :cond_b
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "EVENT_LOAD_PB_UID_DONE Failed: num = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " ar.exception = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/16 v20, 0xb

    goto :goto_5

    .line 384
    .restart local v29       #next_event:I
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 387
    .end local v29           #next_event:I
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 393
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v20           #event:I
    .end local v30           #num:I
    :pswitch_8
    const-string v37, "EVENT_UPDATE_PB_UID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 395
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 396
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 397
    const-string v37, "Update PB_UID failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 404
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    const-string v37, "EVENT_LOAD_PB_EXT1_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 405
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 406
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_e

    .line 407
    const-string v37, "gsm.usim.number.length"

    const-string v38, "40"

    invoke-static/range {v37 .. v38}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/util/ArrayList;

    move-object/from16 v22, v37

    check-cast v22, Ljava/util/ArrayList;

    .line 410
    .local v22, ext1RecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcExt1Record;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    .line 416
    .end local v22           #ext1RecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcExt1Record;>;"
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v37, v0

    if-nez v37, :cond_10

    .line 417
    const/16 v37, 0x9

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v20

    .line 418
    .restart local v20       #event:I
    if-eqz v20, :cond_f

    .line 419
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 412
    .end local v20           #event:I
    :cond_e
    const-string v37, "gsm.usim.number.length"

    const-string v38, "20"

    invoke-static/range {v37 .. v38}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 421
    .restart local v20       #event:I
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 426
    .end local v20           #event:I
    :cond_10
    new-instance v37, Lcom/android/internal/telephony/ADNRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v40, v0

    invoke-direct/range {v37 .. v40}, Lcom/android/internal/telephony/ADNRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v38, 0x6f3a

    const/16 v39, 0x9

    const/16 v40, 0x0

    const/16 v41, 0x6f3a

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(III)Landroid/os/Message;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/ADNRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 434
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_a
    const-string v37, "EVENT_LOAD_PB_ADN_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 436
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 437
    .restart local v13       #ar:Landroid/os/AsyncResult;
    const/16 v20, 0x0

    .line 438
    .restart local v20       #event:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 440
    .restart local v30       #num:I
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_1b

    .line 441
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/util/ArrayList;

    move-object/from16 v6, v37

    check-cast v6, Ljava/util/ArrayList;

    .line 442
    .local v6, adnRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcAdnRecord;>;"
    if-nez v30, :cond_13

    .line 443
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    .line 445
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_12

    .line 446
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 453
    :cond_11
    :goto_7
    const-string v37, "gsm.adn.records.capacity"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v37, v0

    if-lez v37, :cond_13

    .line 456
    new-instance v37, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_13

    .line 458
    const/16 v24, 0x0

    .local v24, i:I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v37, v0

    move/from16 v0, v24

    move/from16 v1, v37

    if-ge v0, v1, :cond_13

    .line 459
    new-instance v18, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    .line 460
    .local v18, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    add-int/lit8 v37, v24, 0x1

    move/from16 v0, v37

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    add-int/lit8 v24, v24, 0x1

    goto :goto_8

    .line 448
    .end local v18           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v24           #i:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    if-eqz v37, :cond_11

    .line 449
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v38

    mul-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    goto :goto_7

    .line 467
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_1a

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 474
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v24

    move/from16 v1, v37

    if-ge v0, v1, :cond_16

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    move-object/from16 v0, v37

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/HtcAdnRecord;

    .line 476
    .local v5, adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    invoke-virtual {v5}, Lcom/android/internal/telephony/HtcAdnRecord;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_14

    .line 477
    const/4 v7, 0x0

    .line 478
    .local v7, adnRecordNumber:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v37, v0

    mul-int v37, v37, v30

    iget v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->recordNumber:I

    move/from16 v38, v0

    add-int v7, v37, v38

    .line 481
    if-lez v7, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-gt v7, v0, :cond_15

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    add-int/lit8 v38, v7, -0x1

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 485
    .local v31, pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    invoke-virtual {v5}, Lcom/android/internal/telephony/HtcAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 486
    invoke-virtual {v5}, Lcom/android/internal/telephony/HtcAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 487
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 489
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "pbkEntry.index = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 492
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "pbkEntry.indexEmail = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 495
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "pbkEntry.email = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 474
    .end local v7           #adnRecordNumber:I
    .end local v31           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_14
    :goto_a
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_9

    .line 497
    .restart local v7       #adnRecordNumber:I
    :cond_15
    const-string v37, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v38, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 503
    .end local v5           #adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    .end local v7           #adnRecordNumber:I
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v37, v0

    if-nez v37, :cond_19

    .line 504
    add-int/lit8 v30, v30, 0x1

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v37

    move/from16 v0, v30

    move/from16 v1, v37

    if-ge v0, v1, :cond_17

    .line 506
    const/16 v37, 0x9

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v30

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 513
    :goto_b
    if-eqz v20, :cond_0

    .line 514
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v29

    .line 515
    .restart local v29       #next_event:I
    if-eqz v29, :cond_18

    .line 516
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "next_event = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 509
    .end local v29           #next_event:I
    :cond_17
    const/16 v20, 0xa

    goto :goto_b

    .line 519
    .restart local v29       #next_event:I
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 523
    .end local v29           #next_event:I
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 526
    .end local v24           #i:I
    :cond_1a
    const-string v37, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v38, "mSimPbkEntryList is null"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 530
    .end local v6           #adnRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcAdnRecord;>;"
    :cond_1b
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "EVENT_LOAD_PB_ADN_DONE Failed: num = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " ar.exception = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0xc0

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_1c

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 536
    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 538
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 543
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v20           #event:I
    .end local v30           #num:I
    :pswitch_b
    const-string v37, "EVENT_LOAD_PB_IAP_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 545
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 546
    .restart local v13       #ar:Landroid/os/AsyncResult;
    const/16 v20, 0x0

    .line 547
    .restart local v20       #event:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 549
    .restart local v30       #num:I
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_1f

    .line 550
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/util/ArrayList;

    move-object/from16 v25, v37

    check-cast v25, Ljava/util/ArrayList;

    .line 551
    .local v25, iapRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IAPRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v30

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 553
    add-int/lit8 v30, v30, 0x1

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v37

    move/from16 v0, v30

    move/from16 v1, v37

    if-ge v0, v1, :cond_1d

    .line 555
    const/16 v37, 0xb

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v30

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 560
    :goto_c
    if-eqz v20, :cond_0

    .line 561
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v29

    .line 562
    .restart local v29       #next_event:I
    if-eqz v29, :cond_1e

    .line 563
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "next_event = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 557
    .end local v29           #next_event:I
    :cond_1d
    const/16 v20, 0xc

    goto :goto_c

    .line 566
    .restart local v29       #next_event:I
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 570
    .end local v25           #iapRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IAPRecord;>;"
    .end local v29           #next_event:I
    :cond_1f
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "EVENT_LOAD_PB_IAP_DONE Failed: num = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " ar.exception = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 574
    const/16 v20, 0xc

    .line 576
    const-string v37, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v38, "remove IAP file from mPbrFile.mFileIds catch"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0xc1

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v37

    if-eqz v37, :cond_20

    .line 580
    const/16 v20, 0x8

    .line 581
    const-string v37, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v38, "remove E-mail file from mPbrFile.mFileIds catch"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0xca

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 585
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v37

    if-nez v37, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v37

    if-eqz v37, :cond_22

    .line 586
    :cond_21
    const/16 v20, 0x0

    .line 587
    const-string v37, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v38, "remove ANR1 file from mPbrFile.mFileIds catch"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 590
    const-string v37, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v38, "remove ANR2 file from mPbrFile.mFileIds catch"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x1

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 594
    :cond_22
    if-eqz v20, :cond_24

    .line 595
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v29

    .line 596
    .restart local v29       #next_event:I
    if-eqz v29, :cond_23

    .line 597
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "next_event = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 600
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 603
    .end local v29           #next_event:I
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 610
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v20           #event:I
    .end local v30           #num:I
    :pswitch_c
    const-string v37, "EVENT_LOAD_PB_EMAIL_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 612
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 614
    .restart local v13       #ar:Landroid/os/AsyncResult;
    const/16 v20, 0x0

    .line 615
    .restart local v20       #event:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 616
    .restart local v30       #num:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    .line 617
    .restart local v16       #efid:I
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_2b

    .line 618
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/util/ArrayList;

    move-object/from16 v27, v37

    check-cast v27, Ljava/util/ArrayList;

    .line 620
    .local v27, mailRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    move-object/from16 v37, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v37

    move/from16 v0, v30

    move/from16 v1, v37

    if-ge v0, v1, :cond_29

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v30

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 626
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v24

    move/from16 v1, v37

    if-ge v0, v1, :cond_29

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    move-object/from16 v0, v37

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/EmailRecord;

    .line 629
    .local v17, emailRecord:Lcom/android/internal/telephony/EmailRecord;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/EmailRecord;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_26

    .line 630
    const/4 v7, 0x0

    .line 631
    .restart local v7       #adnRecordNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_27

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFADNrecNum(I)I

    move-result v32

    .line 634
    .local v32, recNum:I
    if-lez v32, :cond_25

    .line 635
    add-int/lit8 v37, v32, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v38, v0

    mul-int v37, v37, v38

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v38, v0

    add-int v7, v37, v38

    .line 643
    .end local v32           #recNum:I
    :cond_25
    :goto_e
    if-lez v7, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-gt v7, v0, :cond_28

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    add-int/lit8 v38, v7, -0x1

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 646
    .restart local v31       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    .line 647
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 649
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "pbkEntry.index = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 652
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "pbkEntry.indexEmail = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 655
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "pbkEntry.email = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 626
    .end local v7           #adnRecordNumber:I
    .end local v31           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_26
    :goto_f
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_d

    .line 639
    .restart local v7       #adnRecordNumber:I
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v37, v0

    mul-int v37, v37, v30

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v38, v0

    add-int v7, v37, v38

    goto/16 :goto_e

    .line 657
    :cond_28
    const-string v37, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v38, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 664
    .end local v7           #adnRecordNumber:I
    .end local v17           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    .end local v24           #i:I
    :cond_29
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 665
    const-string v37, "gsm.usim.email.max-no"

    const-string v38, "1"

    invoke-static/range {v37 .. v38}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "mEmailRecordList num = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 670
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "mEmailRecordList size = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 673
    add-int/lit8 v30, v30, 0x1

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v37

    move/from16 v0, v30

    move/from16 v1, v37

    if-ge v0, v1, :cond_2a

    .line 675
    const/16 v37, 0xc

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v30

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 694
    .end local v27           #mailRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    :goto_10
    if-eqz v20, :cond_0

    .line 695
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v29

    .line 696
    .restart local v29       #next_event:I
    if-eqz v29, :cond_2c

    .line 697
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 677
    .end local v29           #next_event:I
    .restart local v27       #mailRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    :cond_2a
    const/16 v20, 0xd

    goto :goto_10

    .line 680
    .end local v27           #mailRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    :cond_2b
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "EVENT_LOAD_PB_EMAIL_DONE Failed: num = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " ar.exception = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/HashMap;->clear()V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 685
    const/16 v20, 0xd

    .line 686
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 687
    const-string v37, "gsm.usim.email.max-no"

    const-string v38, "0"

    invoke-static/range {v37 .. v38}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v37, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v38, "remove E-mail file from mPbrFile.mFileIds catch"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0xca

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    goto/16 :goto_10

    .line 699
    .restart local v29       #next_event:I
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 706
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v16           #efid:I
    .end local v20           #event:I
    .end local v29           #next_event:I
    .end local v30           #num:I
    :pswitch_d
    const-string v37, "EVENT_LOAD_PB_ANR_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 708
    :try_start_0
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 709
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 710
    .restart local v30       #num:I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    .line 711
    .local v8, anrEntryIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1, v8}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v16

    .line 713
    .restart local v16       #efid:I
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_3b

    .line 714
    if-eqz v16, :cond_2d

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-ge v8, v0, :cond_30

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 722
    .local v9, anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_11
    if-eqz v9, :cond_2d

    .line 723
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-ge v8, v0, :cond_31

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 732
    .end local v9           #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2d
    :goto_12
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/util/ArrayList;

    move-object/from16 v0, v37

    check-cast v0, Ljava/util/ArrayList;

    move-object v12, v0

    .line 735
    .local v12, anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    if-nez v8, :cond_32

    .line 736
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .local v10, anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    :goto_13
    if-eqz v10, :cond_3a

    .line 741
    invoke-virtual {v10, v8, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 742
    if-nez v8, :cond_33

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 751
    :goto_14
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_15
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v24

    move/from16 v1, v37

    if-ge v0, v1, :cond_36

    .line 752
    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/AnrRecord;

    .line 754
    .local v11, anrRecord:Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v11}, Lcom/android/internal/telephony/AnrRecord;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_2f

    .line 755
    const/4 v7, 0x0

    .line 756
    .restart local v7       #adnRecordNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_34

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFADNrecNum(I)I

    move-result v32

    .line 759
    .restart local v32       #recNum:I
    if-lez v32, :cond_2e

    .line 760
    add-int/lit8 v37, v32, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v38, v0

    mul-int v37, v37, v38

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v38, v0

    add-int v7, v37, v38

    .line 770
    .end local v32           #recNum:I
    :cond_2e
    :goto_16
    if-lez v7, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-gt v7, v0, :cond_35

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    add-int/lit8 v38, v7, -0x1

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 773
    .restart local v31       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    move-object/from16 v37, v0

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v38, v0

    aput v38, v37, v8

    .line 774
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    move-object/from16 v37, v0

    iget-object v0, v11, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v37, v8

    .line 776
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "pbkEntry.index = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 779
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "pbkEntry.indexAnr = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    move-object/from16 v38, v0

    aget v38, v38, v8

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 783
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "pbkEntry.adnumber = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    move-object/from16 v38, v0

    aget-object v38, v38, v8

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 751
    .end local v7           #adnRecordNumber:I
    .end local v31           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_2f
    :goto_17
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_15

    .line 720
    .end local v10           #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v11           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .end local v12           #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .end local v24           #i:I
    :cond_30
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .restart local v9       #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto/16 :goto_11

    .line 727
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_12

    .line 844
    .end local v8           #anrEntryIndex:I
    .end local v9           #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v16           #efid:I
    .end local v30           #num:I
    :catch_0
    move-exception v15

    .line 845
    .local v15, e:Ljava/lang/Exception;
    const-string v37, "HtcIccPbkEntryCache_QMI"

    const-string v38, "ANR arraylist problem"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-static {v0, v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 846
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 738
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v8       #anrEntryIndex:I
    .restart local v12       #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .restart local v13       #ar:Landroid/os/AsyncResult;
    .restart local v16       #efid:I
    .restart local v30       #num:I
    :cond_32
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .restart local v10       #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    goto/16 :goto_13

    .line 745
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    .line 765
    .restart local v7       #adnRecordNumber:I
    .restart local v11       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .restart local v24       #i:I
    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v37, v0

    mul-int v37, v37, v30

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v38, v0

    add-int v7, v37, v38

    goto/16 :goto_16

    .line 786
    :cond_35
    const-string v37, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v38, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 792
    .end local v7           #adnRecordNumber:I
    .end local v11           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_36
    const/16 v37, 0x2

    move/from16 v0, v37

    if-ge v8, v0, :cond_37

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aput-boolean v38, v37, v8

    .line 794
    const-string v37, "gsm.usim.anr.max-no"

    add-int/lit8 v38, v8, 0x1

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    :cond_37
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "mAnrRecordList num = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 801
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "mAnrRecordList anrEntryIndex = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 804
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "mAnrRecordList size = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 807
    add-int/lit8 v8, v8, 0x1

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getANRnums()I

    move-result v37

    move/from16 v0, v37

    if-ge v8, v0, :cond_38

    const/16 v37, 0x2

    move/from16 v0, v37

    if-ge v8, v0, :cond_38

    .line 810
    const/16 v37, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 813
    :cond_38
    add-int/lit8 v30, v30, 0x1

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v37

    move/from16 v0, v30

    move/from16 v1, v37

    if-ge v0, v1, :cond_39

    .line 815
    const/4 v8, 0x0

    .line 816
    const/16 v37, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 820
    :cond_39
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 824
    .end local v24           #i:I
    :cond_3a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 827
    .end local v10           #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v12           #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    :cond_3b
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "EVENT_LOAD_PB_ANR_DONE Failed, num = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " anrEntryIndex = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " ar.exception = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x1

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 836
    const-string v37, "gsm.usim.anr.max-no"

    const-string v38, "0"

    invoke-static/range {v37 .. v38}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x0

    aput-boolean v39, v37, v38

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v37, v0

    const/16 v38, 0x1

    const/16 v39, 0x0

    aput-boolean v39, v37, v38

    .line 842
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 865
    .end local v8           #anrEntryIndex:I
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v16           #efid:I
    .end local v30           #num:I
    :pswitch_e
    const-string v37, "EVENT_GET_PB_USED_NUM_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 866
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 869
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_3e

    .line 870
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/internal/telephony/PhoneBookMemory;

    .line 872
    .local v26, mPBMemory:Lcom/android/internal/telephony/PhoneBookMemory;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "get PB length:total="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->total:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " used="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->used:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 873
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->total:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 874
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->used:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUsed:I

    .line 875
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "get PB length:total="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " used="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUsed:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 878
    new-instance v37, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 880
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v37, v0

    move/from16 v0, v24

    move/from16 v1, v37

    if-ge v0, v1, :cond_3c

    .line 881
    new-instance v18, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    .line 882
    .restart local v18       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    add-int/lit8 v37, v24, 0x1

    move/from16 v0, v37

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    add-int/lit8 v24, v24, 0x1

    goto :goto_18

    .line 886
    .end local v18           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_3c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v37, v0

    if-lez v37, :cond_3d

    .line 887
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollPBList()V

    goto/16 :goto_0

    .line 889
    :cond_3d
    const-string/jumbo v37, "load PB complete!! mTotal = 0"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 890
    const/16 v37, 0x0

    move-object/from16 v0, v37

    iput-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 894
    .end local v24           #i:I
    .end local v26           #mPBMemory:Lcom/android/internal/telephony/PhoneBookMemory;
    :cond_3e
    const-string v37, "Cannot get PB memory"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 897
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 899
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v37, v0

    if-lez v37, :cond_40

    .line 900
    new-instance v37, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 902
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v37, v0

    move/from16 v0, v24

    move/from16 v1, v37

    if-ge v0, v1, :cond_3f

    .line 903
    new-instance v18, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    .line 904
    .restart local v18       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    add-int/lit8 v37, v24, 0x1

    move/from16 v0, v37

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    add-int/lit8 v24, v24, 0x1

    goto :goto_19

    .line 908
    .end local v18           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_3f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollPBList()V

    goto/16 :goto_0

    .line 910
    .end local v24           #i:I
    :cond_40
    const-string/jumbo v37, "load PB complete!! mTotal = 0"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 911
    const/16 v37, 0x0

    move-object/from16 v0, v37

    iput-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 920
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_f
    const-string v37, "EVENT_LOAD_PB_ENTRIES_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 921
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 922
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_41

    .line 923
    const-string v37, "EVENT_LOAD_PB_ENTRIES_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 924
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handlePollPBResult(ILandroid/os/AsyncResult;)V

    .line 929
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget v39, v37, v38

    add-int/lit8 v39, v39, -0x1

    aput v39, v37, v38

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget v37, v37, v38

    if-nez v37, :cond_0

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iput-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 934
    const-string/jumbo v37, "load Phonebook Entries Complete!! "

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 936
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v37

    if-nez v37, :cond_0

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 926
    :cond_41
    const-string v37, "Error on loading PB"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto :goto_1a

    .line 948
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_10
    const-string v37, "EVENT_ADD_PB_ENTRY_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 949
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 950
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 951
    .local v28, msgNum:I
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 952
    .restart local v18       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/Message;

    .line 954
    .local v35, response:Landroid/os/Message;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_42

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 956
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 959
    :cond_42
    const-string v37, "Cannot add PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 961
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBookEntry;->clear()V

    .line 963
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v37, v0

    if-eqz v37, :cond_43

    .line 964
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/internal/telephony/CommandException;

    check-cast v37, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v19

    .line 967
    .local v19, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v37, Lcom/android/internal/telephony/CommandException$Error;->PB_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_43

    .line 968
    const-string v37, "Cannot add PB entry PB_MEM_FULL"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 969
    const-string v37, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 974
    .end local v19           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_43
    const-string v37, "add falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 981
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v18           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v28           #msgNum:I
    .end local v35           #response:Landroid/os/Message;
    :pswitch_11
    const-string v37, "EVENT_UPDATE_PB_ENTRY_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 982
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 983
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 984
    .restart local v28       #msgNum:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    .line 985
    .restart local v30       #num:I
    iget-object v5, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/HtcAdnRecord;

    .line 986
    .restart local v5       #adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/Message;

    .line 988
    .restart local v35       #response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 990
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_4d

    .line 991
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v37, v0

    mul-int v37, v37, v30

    iget v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->recordNumber:I

    move/from16 v38, v0

    add-int v7, v37, v38

    .line 993
    .restart local v7       #adnRecordNumber:I
    if-lez v7, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-gt v7, v0, :cond_4c

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    add-int/lit8 v38, v7, -0x1

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 995
    .restart local v31       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v31, :cond_44

    .line 996
    iget-object v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 997
    iget-object v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 998
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    move-object/from16 v37, v0

    if-eqz v37, :cond_47

    .line 999
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 1008
    :cond_44
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    iget v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->recordNumber:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1011
    invoke-virtual {v5}, Lcom/android/internal/telephony/HtcAdnRecord;->hasExtendedRecord()Z

    move-result v37

    if-eqz v37, :cond_4b

    .line 1013
    const/16 v16, 0x0

    .line 1014
    .restart local v16       #efid:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v37, v0

    if-nez v37, :cond_48

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    if-eqz v37, :cond_45

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_45

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0xc2

    move-object/from16 v0, v37

    move/from16 v1, v30

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v16

    .line 1024
    :cond_45
    :goto_1c
    if-eqz v16, :cond_4a

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_49

    .line 1027
    iget v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    move/from16 v23, v0

    .line 1028
    .local v23, ext1index:I
    if-lez v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v23

    move/from16 v1, v37

    if-gt v0, v1, :cond_0

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    add-int/lit8 v38, v23, -0x1

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/HtcExt1Record;

    .line 1030
    .local v21, ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v28

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1031
    const/16 v37, 0xf

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    move/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v34

    .line 1034
    .local v34, res:Landroid/os/Message;
    iget-boolean v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->mClearExt1Record:Z

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_46

    .line 1035
    const/16 v37, 0xff

    move/from16 v0, v37

    iput v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    .line 1036
    const/16 v37, 0x0

    move/from16 v0, v37

    iput-boolean v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->mClearExt1Record:Z

    .line 1038
    :cond_46
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/HtcExt1Record;->mRecId:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v21

    move/from16 v3, v16

    move-object/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateExt1ByIndex(ILcom/android/internal/telephony/HtcExt1Record;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1001
    .end local v16           #efid:I
    .end local v21           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    .end local v23           #ext1index:I
    .end local v34           #res:Landroid/os/Message;
    :cond_47
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    move-object/from16 v37, v0

    if-nez v37, :cond_44

    .line 1002
    const/16 v37, -0x1

    move/from16 v0, v37

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 1003
    const/16 v37, -0x1

    move/from16 v0, v37

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->hidden:I

    .line 1004
    const/16 v37, -0x1

    move/from16 v0, v37

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->adtype:I

    goto/16 :goto_1b

    .line 1022
    .restart local v16       #efid:I
    :cond_48
    const/16 v16, 0x6f4a

    goto/16 :goto_1c

    .line 1041
    :cond_49
    const-string v37, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v38, "mExt1RecordList is null, but it shall not"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1044
    :cond_4a
    const-string/jumbo v37, "update falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1047
    .end local v16           #efid:I
    :cond_4b
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1050
    .end local v31           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_4c
    const-string/jumbo v37, "update falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1053
    .end local v7           #adnRecordNumber:I
    :cond_4d
    const-string v37, "Cannot update PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1055
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v37, v0

    if-eqz v37, :cond_4e

    .line 1056
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/internal/telephony/CommandException;

    check-cast v37, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v19

    .line 1059
    .restart local v19       #err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v37, Lcom/android/internal/telephony/CommandException$Error;->PB_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_4e

    .line 1060
    const-string v37, "Cannot update PB entry PB_MEM_FULL"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1061
    const-string v37, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1066
    .end local v19           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_4e
    const-string/jumbo v37, "update falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1072
    .end local v5           #adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v28           #msgNum:I
    .end local v30           #num:I
    .end local v35           #response:Landroid/os/Message;
    :pswitch_12
    const-string v37, "EVENT_UPDATE_EXT1_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1073
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1074
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 1075
    .restart local v28       #msgNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/Message;

    .line 1076
    .restart local v35       #response:Landroid/os/Message;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_4f

    .line 1077
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1079
    :cond_4f
    const-string v37, "Cannot update EXT1 entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1080
    const-string/jumbo v37, "update failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1086
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v28           #msgNum:I
    .end local v35           #response:Landroid/os/Message;
    :pswitch_13
    const-string v37, "EVENT_UPDATE_ANR_EXT1_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1087
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1089
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_50

    .line 1090
    const-string v37, "Update EXT1 entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1092
    :cond_50
    const-string v37, "Cannot update EXT1 entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1098
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_14
    const-string v37, "EVENT_DELETE_PB_ENTRY_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1099
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1100
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 1101
    .restart local v28       #msgNum:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v33, v0

    .line 1102
    .local v33, recordNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/Message;

    .line 1104
    .restart local v35       #response:Landroid/os/Message;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_51

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    add-int/lit8 v38, v33, -0x1

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1107
    .restart local v18       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBookEntry;->clear()V

    .line 1108
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1110
    .end local v18           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_51
    const-string v37, "Cannot delete PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1111
    const-string v37, "delete falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1117
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v28           #msgNum:I
    .end local v33           #recordNumber:I
    .end local v35           #response:Landroid/os/Message;
    :pswitch_15
    const-string v37, "EVENT_UPDATE_IAP_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1118
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1119
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 1120
    .restart local v30       #num:I
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_54

    .line 1121
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/IAPRecord;

    .line 1123
    .local v18, entry:Lcom/android/internal/telephony/IAPRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v30

    move/from16 v1, v37

    if-ge v0, v1, :cond_53

    .line 1124
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v37, v0

    if-lez v37, :cond_52

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v38

    move/from16 v1, v37

    if-gt v0, v1, :cond_52

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1128
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "num = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "IAPRecord.mRecordNumber = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1132
    :cond_52
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "out of IAP index = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1135
    :cond_53
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "out of mIAPRecordList.size() = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1138
    .end local v18           #entry:Lcom/android/internal/telephony/IAPRecord;
    :cond_54
    const-string v37, "Update IAP entry failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1144
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v30           #num:I
    :pswitch_16
    const-string v37, "EVENT_UPDATE_EMAIL_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1146
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1147
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 1149
    .restart local v30       #num:I
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_59

    .line 1150
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/EmailRecord;

    .line 1151
    .local v18, entry:Lcom/android/internal/telephony/EmailRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v30

    move/from16 v1, v37

    if-ge v0, v1, :cond_58

    .line 1152
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/EmailRecord;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_55

    .line 1153
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v37, v0

    if-lez v37, :cond_57

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v38

    move/from16 v1, v37

    if-gt v0, v1, :cond_57

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1158
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v37, v0

    mul-int v37, v37, v30

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v38, v0

    add-int v7, v37, v38

    .line 1160
    .restart local v7       #adnRecordNumber:I
    if-lez v7, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-gt v7, v0, :cond_56

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    add-int/lit8 v38, v7, -0x1

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1163
    .restart local v31       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v31, :cond_55

    .line 1164
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    .line 1165
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 1175
    .end local v7           #adnRecordNumber:I
    .end local v31           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_55
    :goto_1d
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "num = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "EmailRecord.mRecordNumber = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "EmailRecord.mAdnRecordNumber ="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 1182
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "EmailRecord.mEmailAddress ="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1168
    .restart local v7       #adnRecordNumber:I
    :cond_56
    const-string v37, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v38, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 1171
    .end local v7           #adnRecordNumber:I
    :cond_57
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "out of E-mail index = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 1186
    :cond_58
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "out of mEmailRecordList.size() = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1189
    .end local v18           #entry:Lcom/android/internal/telephony/EmailRecord;
    :cond_59
    const-string v37, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v38, "updateEmailRecord failed"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1195
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v30           #num:I
    :pswitch_17
    const-string v37, "EVENT_UPDATE_ANR_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1197
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 1198
    .restart local v30       #num:I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    .line 1200
    .restart local v8       #anrEntryIndex:I
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1202
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_62

    const/16 v37, 0x2

    move/from16 v0, v37

    if-ge v8, v0, :cond_62

    .line 1204
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/AnrRecord;

    .line 1206
    .local v18, entry:Lcom/android/internal/telephony/AnrRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v30

    move/from16 v1, v37

    if-ge v0, v1, :cond_61

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-ge v8, v0, :cond_60

    .line 1208
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/AnrRecord;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_5a

    .line 1210
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v37, v0

    if-lez v37, :cond_5e

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v38

    move/from16 v1, v37

    if-gt v0, v1, :cond_5e

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1215
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v37, v0

    mul-int v37, v37, v30

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v38, v0

    add-int v7, v37, v38

    .line 1217
    .restart local v7       #adnRecordNumber:I
    if-lez v7, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-gt v7, v0, :cond_5d

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    add-int/lit8 v38, v7, -0x1

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1221
    .restart local v31       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v31, :cond_5a

    .line 1222
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    move-object/from16 v37, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v38, v0

    aput v38, v37, v8

    .line 1223
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v37, v8

    .line 1234
    .end local v7           #adnRecordNumber:I
    .end local v31           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_5a
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    if-eqz v37, :cond_5c

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_5c

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0xc2

    move-object/from16 v0, v37

    move/from16 v1, v30

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v16

    .line 1238
    .restart local v16       #efid:I
    if-eqz v16, :cond_5c

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_5f

    .line 1240
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    move/from16 v23, v0

    .line 1241
    .restart local v23       #ext1index:I
    if-lez v23, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v23

    move/from16 v1, v37

    if-gt v0, v1, :cond_5c

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    add-int/lit8 v38, v23, -0x1

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/HtcExt1Record;

    .line 1243
    .restart local v21       #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    const/16 v37, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v34

    .line 1244
    .restart local v34       #res:Landroid/os/Message;
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_5b

    .line 1245
    const/16 v37, 0xff

    move/from16 v0, v37

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 1246
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 1248
    :cond_5b
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/HtcExt1Record;->mRecId:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v21

    move/from16 v3, v16

    move-object/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateExt1ByIndex(ILcom/android/internal/telephony/HtcExt1Record;ILandroid/os/Message;)V

    .line 1257
    .end local v16           #efid:I
    .end local v21           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    .end local v23           #ext1index:I
    .end local v34           #res:Landroid/os/Message;
    :cond_5c
    :goto_1f
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "num = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "anrEntryIndex = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "AnrRecord.mRecordNumber = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "AnrRecord.mAdnRecordNumber ="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 1265
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "AnrRecord.mNumber ="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1226
    .restart local v7       #adnRecordNumber:I
    :cond_5d
    const-string v37, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v38, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 1229
    .end local v7           #adnRecordNumber:I
    :cond_5e
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "out of Anr index = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 1251
    .restart local v16       #efid:I
    :cond_5f
    const-string v37, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v38, "mExt1RecordList is null, but it shall not"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1268
    .end local v16           #efid:I
    :cond_60
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "anrEntryIndex out of mAnrRecordLists.get(num).size = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1271
    :cond_61
    const-string v37, "HtcIccPbkEntryCache_QMI"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "num out of mAnrRecordLists.size() = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1274
    .end local v18           #entry:Lcom/android/internal/telephony/AnrRecord;
    :cond_62
    const-string v37, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v38, "updateAnrRecord failed"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_8
        :pswitch_12
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_13
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method handleNextSequence(III)V
    .locals 15
    .parameter "event"
    .parameter "num"
    .parameter "index"

    .prologue
    .line 2671
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v11, :cond_1

    .line 2821
    :cond_0
    :goto_0
    return-void

    .line 2675
    :cond_1
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v11, :cond_0

    .line 2676
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 2677
    move/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->convertEventToTag(II)I

    move-result v10

    .line 2678
    .local v10, tag:I
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move/from16 v0, p2

    invoke-virtual {v11, v0, v10}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v5

    .line 2679
    .local v5, efid:I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2742
    :pswitch_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Read EF-EXT1 num:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2745
    new-instance v11, Lcom/android/internal/telephony/HtcExt1RecordLoader;

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v13, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v11, v12, v13}, Lcom/android/internal/telephony/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v12, 0x8

    move/from16 v0, p2

    invoke-virtual {p0, v12, v0, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Lcom/android/internal/telephony/HtcExt1RecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto :goto_0

    .line 2683
    :pswitch_1
    new-instance v11, Lcom/android/internal/telephony/UIDRecordLoader;

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v13, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v11, v12, v13}, Lcom/android/internal/telephony/UIDRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v12, 0xa

    move/from16 v0, p2

    invoke-virtual {p0, v12, v0, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Lcom/android/internal/telephony/UIDRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto :goto_0

    .line 2692
    :pswitch_2
    new-instance v11, Lcom/android/internal/telephony/ADNRecordLoader;

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v11, v12, v13, v14}, Lcom/android/internal/telephony/ADNRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v12, 0x9

    move/from16 v0, p2

    invoke-virtual {p0, v12, v0, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Lcom/android/internal/telephony/ADNRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto :goto_0

    .line 2698
    :pswitch_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Read EF-IAP num:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2701
    new-instance v11, Lcom/android/internal/telephony/IAPRecordLoader;

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v13, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v11, v12, v13}, Lcom/android/internal/telephony/IAPRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v12, 0xb

    move/from16 v0, p2

    invoke-virtual {p0, v12, v0, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Lcom/android/internal/telephony/IAPRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2707
    :pswitch_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Read EF-EMAIL num:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2708
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2709
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2710
    .local v6, fileindex:I
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_4

    .line 2711
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v11, v0, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2714
    add-int/lit8 p2, p2, 0x1

    .line 2715
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v11

    move/from16 v0, p2

    if-ge v0, v11, :cond_2

    .line 2716
    const/16 v11, 0xc

    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-virtual {p0, v11, v0, v12}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 2719
    :cond_2
    const/16 v11, 0xd

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v9

    .line 2721
    .local v9, next_event:I
    if-eqz v9, :cond_3

    .line 2722
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v9, v11, v12}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 2724
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 2728
    .end local v9           #next_event:I
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fileindex:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "EmailRecordList.size():"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2731
    .end local v6           #fileindex:I
    :cond_5
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v8

    .line 2734
    .local v8, inIAP:Z
    new-instance v11, Lcom/android/internal/telephony/EmailRecordLoader;

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v13, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v11, v12, v13}, Lcom/android/internal/telephony/EmailRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v12, 0xc

    move/from16 v0, p2

    invoke-virtual {p0, v12, v0, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v5, v8, v12}, Lcom/android/internal/telephony/EmailRecordLoader;->loadAllFromEF(IZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 2751
    .end local v8           #inIAP:Z
    :pswitch_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Read EF-ANR num"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "index:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2752
    const/4 v7, 0x1

    .line 2753
    .local v7, flag:Z
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move/from16 v0, p3

    if-ge v0, v11, :cond_8

    .line 2754
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 2755
    .local v2, anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2756
    const/4 v7, 0x0

    .line 2757
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2759
    .restart local v6       #fileindex:I
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_d

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move/from16 v0, p3

    if-ge v0, v11, :cond_d

    .line 2760
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2764
    .local v4, anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    if-nez p3, :cond_9

    .line 2765
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2770
    .local v3, anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    :goto_1
    if-eqz v3, :cond_6

    .line 2771
    move/from16 v0, p3

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2772
    if-nez p3, :cond_a

    .line 2773
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v11, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2779
    :cond_6
    :goto_2
    const/4 v11, 0x2

    move/from16 v0, p3

    if-ge v0, v11, :cond_7

    .line 2780
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v12, 0x1

    aput-boolean v12, v11, p3

    .line 2781
    const-string v11, "gsm.usim.anr.max-no"

    add-int/lit8 v12, p3, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2785
    :cond_7
    add-int/lit8 p3, p3, 0x1

    .line 2786
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getANRnums()I

    move-result v11

    move/from16 v0, p3

    if-ge v0, v11, :cond_b

    const/4 v11, 0x2

    move/from16 v0, p3

    if-ge v0, v11, :cond_b

    .line 2788
    const/16 v11, 0xd

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v11, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 2807
    .end local v2           #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v3           #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v4           #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .end local v6           #fileindex:I
    :cond_8
    :goto_3
    if-eqz v7, :cond_0

    .line 2808
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v8

    .line 2811
    .restart local v8       #inIAP:Z
    new-instance v11, Lcom/android/internal/telephony/AnrRecordLoader;

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v11, v12, v13, v14}, Lcom/android/internal/telephony/AnrRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v12, 0xd

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v12, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v5, v8, v12}, Lcom/android/internal/telephony/AnrRecordLoader;->loadAllFromEF(IZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 2767
    .end local v8           #inIAP:Z
    .restart local v2       #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v4       #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .restart local v6       #fileindex:I
    :cond_9
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .restart local v3       #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    goto :goto_1

    .line 2775
    :cond_a
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v11, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2791
    :cond_b
    add-int/lit8 p2, p2, 0x1

    .line 2792
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v11

    move/from16 v0, p2

    if-ge v0, v11, :cond_c

    .line 2793
    const/16 v11, 0xd

    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-virtual {p0, v11, v0, v12}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto :goto_3

    .line 2797
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto :goto_3

    .line 2801
    .end local v3           #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v4           #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    :cond_d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fileindex:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " > "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "mAnrRecordLists.size():"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "or index: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " > "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "mAnrRecordLists.get(fileindex).size():"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2679
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isSIMPhonebookFileId(I)Z
    .locals 2
    .parameter "efid"

    .prologue
    .line 2939
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    .line 2940
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2941
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isSIMPhonebookFileId(I)Z

    move-result v0

    .line 2944
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestLoadAllPBEntry(Landroid/os/Message;)V
    .locals 8
    .parameter "response"

    .prologue
    const/16 v7, 0x6f4a

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1365
    iget-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->misloading:Z

    if-nez v2, :cond_2

    .line 1366
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getPbkEntryListIfLoaded()Ljava/util/ArrayList;

    move-result-object v1

    .line 1370
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    if-eqz v1, :cond_2

    .line 1371
    if-eqz p1, :cond_0

    .line 1372
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1373
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1375
    :cond_0
    const-string v2, "PB has already loaded"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1414
    .end local v1           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    :cond_1
    :goto_0
    return-void

    .line 1379
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1381
    const-string v2, "HtcIccPbkEntryCache_QMI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestLoadAllPBEntry()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v5, :cond_1

    .line 1397
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 1398
    .local v0, card:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_4

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1399
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v2, :cond_3

    .line 1400
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->loadEfPBRFromUsim(Landroid/os/Message;)V

    .line 1413
    :cond_3
    :goto_1
    iput-boolean v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->misloading:Z

    goto :goto_0

    .line 1403
    :cond_4
    iput-boolean v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    .line 1404
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v2, :cond_5

    .line 1405
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->setPbrPresent(Z)V

    .line 1407
    :cond_5
    new-instance v2, Lcom/android/internal/telephony/HtcExt1RecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v3, v4}, Lcom/android/internal/telephony/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v6, v7}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lcom/android/internal/telephony/HtcExt1RecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto :goto_1
.end method

.method public setupIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 1
    .parameter "iccFileHandler"

    .prologue
    .line 2951
    iput-object p1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 2952
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    .line 2953
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->setupIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)V

    .line 2956
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-nez v0, :cond_1

    .line 2957
    const-string/jumbo v0, "setupIccFileHandler: set mIccFileHandler to null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2960
    :cond_1
    return-void
.end method

.method updateADNByIndex(ILcom/android/internal/telephony/HtcAdnRecord;ILandroid/os/Message;)V
    .locals 4
    .parameter "recordIndex"
    .parameter "adnRecord"
    .parameter "efid"
    .parameter "response"

    .prologue
    .line 2562
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateADNByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2566
    new-instance v0, Lcom/android/internal/telephony/ADNRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ADNRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/android/internal/telephony/ADNRecordLoader;->updateEF(IILcom/android/internal/telephony/HtcAdnRecord;Landroid/os/Message;)V

    .line 2571
    :cond_0
    return-void
.end method

.method updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V
    .locals 6
    .parameter "recordIndex"
    .parameter "anrRecord"
    .parameter "efid"
    .parameter "anrEntryIndex"
    .parameter "response"

    .prologue
    .line 2536
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAnrByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v4

    .line 2539
    .local v4, inIAP:Z
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2542
    new-instance v0, Lcom/android/internal/telephony/AnrRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/AnrRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    move v1, p3

    move v2, p1

    move-object v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/AnrRecordLoader;->updateEF(IILcom/android/internal/telephony/AnrRecord;ZLandroid/os/Message;)V

    .line 2546
    :cond_0
    return-void
.end method

.method updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V
    .locals 6
    .parameter "efid"
    .parameter "recordIndex"
    .parameter "emailRecord"
    .parameter "response"

    .prologue
    .line 2522
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEmailByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    .line 2525
    .local v4, inIAP:Z
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2528
    new-instance v0, Lcom/android/internal/telephony/EmailRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/EmailRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/EmailRecordLoader;->updateEF(IILcom/android/internal/telephony/EmailRecord;ZLandroid/os/Message;)V

    .line 2532
    :cond_0
    return-void
.end method

.method updateExt1ByIndex(ILcom/android/internal/telephony/HtcExt1Record;ILandroid/os/Message;)V
    .locals 3
    .parameter "recordIndex"
    .parameter "ext1Record"
    .parameter "efid"
    .parameter "response"

    .prologue
    .line 2575
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateExt1ByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2579
    new-instance v0, Lcom/android/internal/telephony/HtcExt1RecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/android/internal/telephony/HtcExt1RecordLoader;->updateEF(IILcom/android/internal/telephony/HtcExt1Record;Landroid/os/Message;)V

    .line 2583
    :cond_0
    return-void
.end method

.method updateIAPByIndex(ILcom/android/internal/telephony/IAPRecord;ILandroid/os/Message;)V
    .locals 3
    .parameter "recordIndex"
    .parameter "iapRecord"
    .parameter "efid"
    .parameter "response"

    .prologue
    .line 2550
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIAPByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2554
    new-instance v0, Lcom/android/internal/telephony/IAPRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IAPRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/android/internal/telephony/IAPRecordLoader;->updateEF(IILcom/android/internal/telephony/IAPRecord;Landroid/os/Message;)V

    .line 2558
    :cond_0
    return-void
.end method

.method public updatePBKEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "recordNumber"
    .parameter "name"
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "newEmail"
    .parameter "response"

    .prologue
    .line 1654
    const-string/jumbo v1, "updatePBKEntry()"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1656
    const/4 v7, 0x0

    .line 1659
    .local v7, error:I
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v1, :cond_0

    .line 1660
    const-string/jumbo v1, "mPhone null"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1766
    :goto_0
    return-void

    .line 1664
    :cond_0
    invoke-static {p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1666
    .local v10, phonenumber:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1667
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1671
    :cond_1
    move-object/from16 v0, p5

    invoke-direct {p0, v10, p4, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->checkNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1673
    if-eqz v7, :cond_2

    .line 1674
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1679
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v9

    .line 1682
    .local v9, iccCardInterface:Lcom/android/internal/telephony/IccCard;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    array-length v1, v1

    if-ge v8, v1, :cond_3

    .line 1683
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v8

    .line 1682
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1687
    :cond_3
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_4

    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-nez v1, :cond_4

    .line 1689
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1693
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v1, :cond_e

    .line 1694
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1696
    .local v6, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v6, :cond_5

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-gtz v1, :cond_6

    .line 1697
    :cond_5
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1699
    :cond_6
    iget v1, v6, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v5, v1, v2

    .line 1700
    .local v5, num:I
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 1701
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I

    move-result v7

    .line 1702
    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 1703
    move-object/from16 p5, p4

    .line 1704
    const-string p4, ""

    .line 1707
    :cond_7
    if-eqz v7, :cond_8

    .line 1708
    packed-switch v7, :pswitch_data_0

    .line 1719
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1716
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MemoryFull:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1725
    :cond_8
    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 1726
    move-object/from16 v0, p6

    invoke-direct {p0, v0, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V

    .line 1732
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 1733
    const/4 v1, 0x0

    invoke-direct {p0, p4, v6, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1736
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 1737
    const/4 v1, 0x1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v6, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1743
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1744
    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 1747
    :cond_c
    iget v1, v6, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateIAP(IZ)V

    .line 1754
    :cond_d
    move-object/from16 v0, p7

    invoke-direct {p0, p2, v10, v6, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    .line 1757
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updatePSCRecord(ZII)V

    goto/16 :goto_0

    .line 1762
    .end local v5           #num:I
    .end local v6           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_e
    const-string v1, "HtcIccPbkEntryCache_QMI"

    const-string/jumbo v2, "mSimPbkEntryList = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1708
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
