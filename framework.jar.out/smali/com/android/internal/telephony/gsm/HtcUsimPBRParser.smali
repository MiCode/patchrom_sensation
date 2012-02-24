.class public Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;
.super Landroid/os/Handler;
.source "HtcUsimPBRParser.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "HtcUsimPBRParser"

.field public static final USIM_EFAAS_TAG:I = 0xc7

.field public static final USIM_EFADN_TAG:I = 0xc0

.field public static final USIM_EFANR_TAG:I = 0xc4

.field public static final USIM_EFCCP1_TAG:I = 0xcb

.field public static final USIM_EFEMAIL_TAG:I = 0xca

.field public static final USIM_EFEXT1_TAG:I = 0xc2

.field public static final USIM_EFGRP_TAG:I = 0xc6

.field public static final USIM_EFGSD_TAG:I = 0xc8

.field public static final USIM_EFIAP_TAG:I = 0xc1

.field public static final USIM_EFPBC_TAG:I = 0xc5

.field public static final USIM_EFSNE_TAG:I = 0xc3

.field public static final USIM_EFUID_TAG:I = 0xc9

.field public static final USIM_TYPE1_TAG:I = 0xa8

.field public static final USIM_TYPE2_TAG:I = 0xa9

.field public static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field private mANRPresentInIAP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailPresentInIAP:Ljava/lang/Boolean;

.field private mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field userResponse:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mANRPresentInIAP:Ljava/util/ArrayList;

    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    .line 91
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 92
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mEmailPresentInIAP:Ljava/lang/Boolean;

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mANRPresentInIAP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 94
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mEmailPresentInIAP:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mANRPresentInIAP:Ljava/util/ArrayList;

    return-object v0
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    .line 339
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 343
    :goto_0
    return-void

    .line 342
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    goto :goto_0
.end method

.method private getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 334
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 550
    const-string v0, "HtcUsimPBRParser"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-void
.end method

.method private readPbrFileAndWait()V
    .locals 4

    .prologue
    .line 306
    const-string/jumbo v1, "readPbrFileAndWait "

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->log(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_1

    .line 317
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "3F007F105F3A"

    .line 319
    .local v0, filePath:Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x4f30

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    .line 328
    .end local v0           #filePath:Ljava/lang/String;
    :goto_1
    return-void

    .line 317
    :cond_0
    const-string v0, "7F105F3A"

    goto :goto_0

    .line 325
    :cond_1
    const-string/jumbo v1, "phone is null "

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->log(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getANRnums()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    if-eqz v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget v0, v0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mANRNums:I

    goto :goto_0
.end method

.method public getEFADNrecNum(I)I
    .locals 3
    .parameter "SFI"

    .prologue
    const/4 v0, 0x0

    .line 168
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mADNOrder:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mADNOrder:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getEFId(II)I
    .locals 6
    .parameter "numRecs"
    .parameter "EFTag"

    .prologue
    const/4 v3, 0x0

    .line 183
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v3

    .line 184
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    if-eqz v4, :cond_0

    .line 186
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 189
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 191
    .local v2, type_val:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    const/16 v1, 0xa8

    .local v1, j:I
    :goto_1
    const/16 v4, 0xaa

    if-gt v1, v4, :cond_0

    .line 192
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 193
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 194
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 195
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 191
    .end local v0           #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getEFSFI(II)I
    .locals 7
    .parameter "numRecs"
    .parameter "EFTag"

    .prologue
    const/4 v4, 0x0

    .line 144
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v4

    .line 145
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    if-eqz v5, :cond_0

    .line 146
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-ge p1, v5, :cond_0

    .line 149
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 150
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 151
    .local v3, type_val:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    const/16 v2, 0xa8

    .local v2, j:I
    :goto_1
    const/16 v5, 0xaa

    if-gt v2, v5, :cond_0

    .line 152
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 153
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 154
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 155
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 156
    .local v0, fileId:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mSFIds:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 157
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mSFIds:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    .line 151
    .end local v0           #fileId:Ljava/lang/Integer;
    .end local v1           #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getEmailNums()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 121
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    if-eqz v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget v0, v0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mEmailNums:I

    goto :goto_0
.end method

.method public getIAPTagNumber(II)I
    .locals 4
    .parameter "numRecs"
    .parameter "EFid"

    .prologue
    const/4 v1, 0x0

    .line 233
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v1

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mIAPOrder:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mIAPOrder:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mIAPOrder:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 241
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getPBRNum()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 278
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    if-eqz v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 349
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v5, :pswitch_data_0

    .line 386
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    if-eqz v5, :cond_0

    .line 387
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 388
    iput-object v8, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    .line 390
    :cond_0
    :goto_1
    return-void

    .line 351
    :pswitch_0
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 352
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    .line 353
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->createPbrFile(Ljava/util/ArrayList;)V

    .line 354
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 355
    const-string/jumbo v5, "load PBR success"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 377
    .end local v0           #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v2

    .line 378
    .local v2, exc:Ljava/lang/RuntimeException;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    if-eqz v5, :cond_0

    .line 379
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    invoke-static {v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v5

    iput-object v2, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 380
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 381
    iput-object v8, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    goto :goto_1

    .line 358
    .end local v2           #exc:Ljava/lang/RuntimeException;
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :cond_1
    :try_start_2
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 359
    .local v4, originalPath:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v3, "3F007F105F3A"

    .line 361
    .local v3, expectedpath:Ljava/lang/String;
    :goto_2
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 362
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isRemovedMFPath()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v1, "3F007FFF5F3A"

    .line 363
    .local v1, changePath:Ljava/lang/String;
    :goto_3
    const-string v5, "HtcUsimPBRParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_PBR_LOAD_DONE changePath:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v5

    const/16 v6, 0x4f30

    const/4 v7, 0x1

    invoke-virtual {p0, v7, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v6, v1, v7}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 359
    .end local v1           #changePath:Ljava/lang/String;
    .end local v3           #expectedpath:Ljava/lang/String;
    :cond_2
    const-string v3, "7F105F3A"

    goto :goto_2

    .line 362
    .restart local v3       #expectedpath:Ljava/lang/String;
    :cond_3
    const-string v1, "7FFF5F3A"

    goto :goto_3

    .line 368
    :cond_4
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 369
    const-string/jumbo v5, "load PBR failed"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->log(Ljava/lang/String;)V

    .line 370
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "load EF-PBR failed"

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v5, v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isANRPresentInIAP(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mANRPresentInIAP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mANRPresentInIAP:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmailPresentInIAP()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mEmailPresentInIAP:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isPbrPresent()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSIMPhonebookFileId(I)Z
    .locals 7
    .parameter "efid"

    .prologue
    const/4 v4, 0x0

    .line 209
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v4

    .line 210
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    if-eqz v5, :cond_0

    .line 212
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 215
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 216
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 217
    .local v3, type_val:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    const/16 v2, 0xa8

    .local v2, j:I
    :goto_2
    const/16 v5, 0xaa

    if-gt v2, v5, :cond_3

    .line 218
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 219
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 220
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 221
    const/4 v4, 0x1

    goto :goto_0

    .line 217
    .end local v0           #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 212
    .end local v2           #j:I
    .end local v3           #type_val:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public loadEfPBRFromUsim(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    const/4 v2, 0x0

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "loadEfPBRFromUsim "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->log(Ljava/lang/String;)V

    .line 286
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 290
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    if-nez v0, :cond_2

    .line 296
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->readPbrFileAndWait()V

    .line 303
    :cond_1
    :goto_0
    return-void

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 300
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->userResponse:Landroid/os/Message;

    goto :goto_0
.end method

.method public removeEFId(II)V
    .locals 6
    .parameter "numRecs"
    .parameter "EFTag"

    .prologue
    .line 251
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 274
    :cond_0
    return-void

    .line 252
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    if-eqz v4, :cond_0

    .line 254
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 259
    move v1, p1

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 260
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 261
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 263
    .local v3, type_val:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    const/16 v2, 0xa8

    .local v2, j:I
    :goto_1
    const/16 v4, 0xaa

    if-gt v2, v4, :cond_3

    .line 264
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 265
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 266
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 267
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .end local v0           #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 259
    .end local v2           #j:I
    .end local v3           #type_val:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mPbrFile:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;

    .line 98
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 99
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mEmailPresentInIAP:Ljava/lang/Boolean;

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mANRPresentInIAP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 101
    return-void
.end method

.method public setPbrPresent(Z)V
    .locals 1
    .parameter "isPresent"

    .prologue
    .line 131
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 132
    return-void
.end method

.method public setupIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 0
    .parameter "iccFileHandler"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 137
    return-void
.end method
