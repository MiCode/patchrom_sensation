.class public Lcom/android/phone/HtcWorldPhoneUtils;
.super Ljava/lang/Object;
.source "HtcWorldPhoneUtils.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "WorldPhoneUtils"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V
    .locals 0
    .parameter "phone"
    .parameter "handler"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 23
    iput-object p2, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mHandler:Landroid/os/Handler;

    .line 24
    return-void
.end method


# virtual methods
.method public handleRadioTechChanged(Landroid/os/AsyncResult;)V
    .locals 11
    .parameter "async"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 80
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 81
    const-string v6, "WorldPhoneUtils"

    const-string v7, "Exception Radio Tech Changed:"

    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const/4 v5, -0x1

    .line 89
    .local v5, scanphonetype:I
    :try_start_0
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v6, :cond_6

    .line 91
    iget-object v6, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 92
    .local v1, currentType:I
    const-string v6, "persist.radio.prefer.network"

    const/4 v7, -0x1

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 93
    .local v3, networkMode:I
    const-string v6, "WorldPhoneUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleRadioTechChanged, prefer.network="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    packed-switch v3, :pswitch_data_0

    .line 119
    :cond_2
    :pswitch_0
    if-ne v1, v10, :cond_5

    .line 121
    const/4 v5, 0x0

    .line 127
    :cond_3
    :goto_1
    const-string v6, "WorldPhoneUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " No parameter phone type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v1           #currentType:I
    .end local v3           #networkMode:I
    :cond_4
    :goto_2
    if-ltz v5, :cond_0

    .line 138
    sget-boolean v6, Lcom/android/phone/PhoneApp;->mPhoneChanging:Z

    if-eqz v6, :cond_7

    .line 139
    iget-object v6, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x1f7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v2

    .line 145
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v1       #currentType:I
    .restart local v3       #networkMode:I
    :pswitch_1
    if-ne v1, v10, :cond_2

    goto :goto_0

    .line 113
    :pswitch_2
    if-ne v1, v9, :cond_2

    goto :goto_0

    .line 123
    :cond_5
    if-ne v1, v9, :cond_3

    .line 125
    const/4 v5, 0x1

    goto :goto_1

    .line 131
    .end local v1           #currentType:I
    .end local v3           #networkMode:I
    :cond_6
    :try_start_1
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    move-object v0, v6

    check-cast v0, [I

    move-object v4, v0

    .line 132
    .local v4, scanPhone:[I
    array-length v6, v4

    if-lez v6, :cond_4

    .line 133
    const/4 v6, 0x0

    aget v5, v4, v6

    .line 134
    const-string v6, "WorldPhoneUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " scan phone type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 141
    .end local v4           #scanPhone:[I
    :cond_7
    iget-object v6, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x1f5

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public placeE911Call()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 150
    const-string v2, "ro.ril.ecclist"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, numbers:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, emergencyNum:[Ljava/lang/String;
    array-length v2, v0

    if-lez v2, :cond_0

    .line 154
    const-string v2, "WorldPhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "911 number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    aget-object v3, v0, v5

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    .line 158
    .end local v0           #emergencyNum:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public swithPhone(I)V
    .locals 10
    .parameter "targetType"

    .prologue
    const/16 v7, 0x1f8

    const/16 v9, 0x1f6

    const/4 v6, 0x2

    const/4 v8, 0x1

    .line 26
    iget-object v5, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 27
    .local v1, currentType:I
    iget-object v5, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 28
    .local v3, phoneState:Lcom/android/internal/telephony/Phone$State;
    const/4 v0, 0x0

    .line 29
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    if-ne p1, v8, :cond_2

    if-ne v1, v6, :cond_2

    .line 30
    invoke-static {}, Lcom/android/phone/PhoneApp;->disposehtcCDMAPhone()V

    .line 31
    invoke-static {}, Lcom/android/phone/PhoneApp;->dispose()V

    .line 39
    sput-boolean v8, Lcom/android/phone/PhoneApp;->mPhoneChanging:Z

    .line 40
    sget-boolean v5, Lcom/android/phone/PhoneApp;->mResumeE911:Z

    if-nez v5, :cond_1

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v5, :cond_1

    .line 42
    iget-object v5, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 43
    .local v4, result:Landroid/os/Message;
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 44
    iget-object v5, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v5, v4}, Lcom/android/phone/PhoneUtils;->hangupAll(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)Z

    .line 45
    const-string v5, "WorldPhoneUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hangup call then switch from CDMA to GSM state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v4           #result:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const-string v5, "WorldPhoneUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "swithch from CDMA to GSM state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v5, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 49
    .local v2, message:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5, v8, v2}, Lcom/android/internal/telephony/Phone;->requesetSetPhoneType(ILandroid/os/Message;)V

    goto :goto_0

    .line 51
    .end local v2           #message:Landroid/os/Message;
    :cond_2
    if-ne p1, v6, :cond_4

    if-ne v1, v8, :cond_4

    .line 52
    invoke-static {}, Lcom/android/phone/PhoneApp;->dispose()V

    .line 60
    sput-boolean v8, Lcom/android/phone/PhoneApp;->mPhoneChanging:Z

    .line 61
    sget-boolean v5, Lcom/android/phone/PhoneApp;->mResumeE911:Z

    if-nez v5, :cond_3

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v5, :cond_3

    .line 63
    iget-object v5, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 64
    .restart local v4       #result:Landroid/os/Message;
    iput v6, v4, Landroid/os/Message;->arg1:I

    .line 65
    iget-object v5, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v5, v4}, Lcom/android/phone/PhoneUtils;->hangupAll(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)Z

    .line 66
    const-string v5, "WorldPhoneUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hangup call then swithch from GSM to CDMA state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    .end local v4           #result:Landroid/os/Message;
    :cond_3
    iget-object v5, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 69
    .restart local v2       #message:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 70
    iget-object v5, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5, v6, v2}, Lcom/android/internal/telephony/Phone;->requesetSetPhoneType(ILandroid/os/Message;)V

    .line 71
    const-string v5, "WorldPhoneUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "swithch from GSM to CDMA state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 73
    .end local v2           #message:Landroid/os/Message;
    :cond_4
    if-ne p1, v1, :cond_0

    .line 74
    const-string v5, "WorldPhoneUtils"

    const-string v6, "same phone type , do nothing"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
