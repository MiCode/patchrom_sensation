.class public final Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "HtcCdmaSIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "HtcCdmaSIMFileHandler"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 48
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 49
    return-void
.end method


# virtual methods
.method protected appendFilePath(I)I
    .locals 5
    .parameter "efid"

    .prologue
    .line 128
    move v1, p1

    .line 129
    .local v1, newEfid:I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;->isCommonIccFile(I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v2, sb:Ljava/lang/StringBuilder;
    const/16 v3, 0x6f3c

    if-eq p1, v3, :cond_0

    const/16 v3, 0x6f31

    if-ne p1, v3, :cond_2

    .line 133
    :cond_0
    const-string v3, "7F25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, fileid:Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 141
    .end local v0           #fileid:Ljava/lang/String;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return v1

    .line 135
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    :cond_2
    const-string v3, "7F10"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 53
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "CDMA"

    const-string v1, "HtcCdmaSIMFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 4
    .parameter "efid"

    .prologue
    .line 75
    sparse-switch p1, :sswitch_data_0

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, path:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 116
    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 117
    .local v0, card:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    const-string v1, "3F007F105F3A"

    .line 122
    .end local v0           #card:Lcom/android/internal/telephony/IccCard;
    .end local v1           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 79
    :sswitch_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    const-string v1, "3F007F25"

    goto :goto_0

    .line 84
    :cond_1
    const-string v1, "3F007F10"

    goto :goto_0

    .line 86
    :sswitch_1
    const-string v1, "7F25"

    goto :goto_0

    .line 97
    :sswitch_2
    const-string v1, "3F007F20"

    goto :goto_0

    .line 105
    :sswitch_3
    const-string v1, "3F007F20"

    goto :goto_0

    .line 109
    :sswitch_4
    const-string v1, "3F007F105F3A"

    goto :goto_0

    .line 120
    .restart local v0       #card:Lcom/android/internal/telephony/IccCard;
    .restart local v1       #path:Ljava/lang/String;
    :cond_2
    const-string v2, "HtcCdmaSIMFileHandler"

    const-string v3, "Error: EF Path being returned in null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_4
        0x6f11 -> :sswitch_3
        0x6f13 -> :sswitch_3
        0x6f14 -> :sswitch_3
        0x6f16 -> :sswitch_3
        0x6f17 -> :sswitch_3
        0x6f18 -> :sswitch_3
        0x6f31 -> :sswitch_1
        0x6f38 -> :sswitch_2
        0x6f3c -> :sswitch_0
        0x6f46 -> :sswitch_2
        0x6fad -> :sswitch_2
        0x6fc5 -> :sswitch_2
        0x6fc7 -> :sswitch_2
        0x6fc8 -> :sswitch_2
        0x6fc9 -> :sswitch_2
        0x6fca -> :sswitch_2
        0x6fcb -> :sswitch_2
        0x6fcd -> :sswitch_2
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 64
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "HtcCdmaSIMFileHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " HtcCdmaSIMFileHandler drop event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 149
    const-string v0, "HtcCdmaSIMFileHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcCdmaSIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 153
    const-string v0, "HtcCdmaSIMFileHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcCdmaSIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method
