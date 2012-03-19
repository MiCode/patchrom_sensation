.class Lcom/android/phone/Settings$MyHandler;
.super Landroid/os/Handler;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_PREFERRED_NETWORK_TYPE:I = 0x0

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/Settings;


# direct methods
.method private constructor <init>(Lcom/android/phone/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1107
    iput-object p1, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Settings;Lcom/android/phone/Settings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1107
    invoke-direct {p0, p1}, Lcom/android/phone/Settings$MyHandler;-><init>(Lcom/android/phone/Settings;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/16 v9, 0x9

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    .line 1190
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1192
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_5

    .line 1193
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v1, v3, v8

    .line 1196
    .local v1, modemNetworkMode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: modemNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/Settings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/Settings;->access$700(Ljava/lang/String;)V

    .line 1200
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/Settings;->access$800(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1206
    .local v2, settingsNetworkMode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeReponse: settingsNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/Settings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/Settings;->access$700(Ljava/lang/String;)V

    .line 1211
    if-eqz v1, :cond_0

    if-eq v1, v6, :cond_0

    if-eq v1, v7, :cond_0

    if-eq v1, v5, :cond_0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    const/16 v3, 0xc

    if-eq v1, v3, :cond_0

    const/4 v3, 0x7

    if-eq v1, v3, :cond_0

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    if-eq v1, v9, :cond_0

    const/16 v3, 0xb

    if-ne v1, v3, :cond_b

    .line 1225
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: if 1: modemNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/Settings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/Settings;->access$700(Ljava/lang/String;)V

    .line 1230
    if-eq v1, v2, :cond_1

    .line 1232
    const-string v3, "handleGetPreferredNetworkTypeResponse: if 2: modemNetworkMode != settingsNetworkMode"

    #calls: Lcom/android/phone/Settings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/Settings;->access$700(Ljava/lang/String;)V

    .line 1236
    move v2, v1

    .line 1238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: if 2: settingsNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/Settings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/Settings;->access$700(Ljava/lang/String;)V

    .line 1243
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/Settings;->access$800(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1249
    :cond_1
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #calls: Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V
    invoke-static {v3, v1}, Lcom/android/phone/Settings;->access$900(Lcom/android/phone/Settings;I)V

    .line 1251
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/Settings;->access$800(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 1253
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->LTE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1254
    if-eqz v1, :cond_2

    if-eq v1, v6, :cond_2

    if-eq v1, v7, :cond_2

    if-eq v1, v5, :cond_2

    if-eq v1, v9, :cond_2

    const/16 v3, 0xb

    if-ne v1, v3, :cond_6

    .line 1262
    :cond_2
    if-ne v1, v5, :cond_3

    .line 1263
    const-string v3, "change NetworkMode from NT_MODE_GSM_UMTS to NT_MODE_WCDMA_PREF"

    #calls: Lcom/android/phone/Settings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/Settings;->access$700(Ljava/lang/String;)V

    .line 1264
    const/4 v1, 0x0

    .line 1266
    :cond_3
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #calls: Lcom/android/phone/Settings;->UpdatePreferredGsmUmtsNetworkModeSummary(I)V
    invoke-static {v3, v1}, Lcom/android/phone/Settings;->access$1000(Lcom/android/phone/Settings;I)V

    .line 1267
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;
    invoke-static {v3}, Lcom/android/phone/Settings;->access$1100(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcListPreference;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1268
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;
    invoke-static {v3}, Lcom/android/phone/Settings;->access$1100(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcListPreference;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 1298
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;
    invoke-static {v3}, Lcom/android/phone/Settings;->access$1200(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcListPreference;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1299
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;
    invoke-static {v3}, Lcom/android/phone/Settings;->access$1200(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcListPreference;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 1306
    .end local v1           #modemNetworkMode:I
    .end local v2           #settingsNetworkMode:I
    :cond_5
    :goto_1
    return-void

    .line 1271
    .restart local v1       #modemNetworkMode:I
    .restart local v2       #settingsNetworkMode:I
    :cond_6
    const-string v3, "NetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong Band Mode for GSM/UMTS/LTE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    invoke-direct {p0}, Lcom/android/phone/Settings$MyHandler;->resetNetworkModeToDefault()V

    goto :goto_0

    .line 1275
    :cond_7
    if-eqz v1, :cond_8

    if-eq v1, v6, :cond_8

    if-eq v1, v7, :cond_8

    if-ne v1, v5, :cond_a

    .line 1281
    :cond_8
    if-ne v1, v5, :cond_9

    .line 1282
    const-string v3, "change NetworkMode from NT_MODE_GSM_UMTS to NT_MODE_WCDMA_PREF"

    #calls: Lcom/android/phone/Settings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/Settings;->access$700(Ljava/lang/String;)V

    .line 1283
    const/4 v1, 0x0

    .line 1285
    :cond_9
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #calls: Lcom/android/phone/Settings;->UpdatePreferredGsmUmtsNetworkModeSummary(I)V
    invoke-static {v3, v1}, Lcom/android/phone/Settings;->access$1000(Lcom/android/phone/Settings;I)V

    .line 1286
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;
    invoke-static {v3}, Lcom/android/phone/Settings;->access$1100(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcListPreference;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1287
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;
    invoke-static {v3}, Lcom/android/phone/Settings;->access$1100(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcListPreference;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 1290
    :cond_a
    const-string v3, "NetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong Band Mode for GSM/UMTS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    invoke-direct {p0}, Lcom/android/phone/Settings$MyHandler;->resetNetworkModeToDefault()V

    goto :goto_0

    .line 1302
    :cond_b
    const-string v3, "handleGetPreferredNetworkTypeResponse: else: reset to default"

    #calls: Lcom/android/phone/Settings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/Settings;->access$700(Ljava/lang/String;)V

    .line 1303
    invoke-direct {p0}, Lcom/android/phone/Settings$MyHandler;->resetNetworkModeToDefault()V

    goto :goto_1
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1309
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1311
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1316
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/Settings;->access$800(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1318
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;
    invoke-static {v2}, Lcom/android/phone/Settings;->access$1100(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1333
    .local v1, networkMode:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/Settings;->access$800(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1339
    .end local v1           #networkMode:I
    :goto_1
    return-void

    .line 1323
    :cond_0
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;
    invoke-static {v2}, Lcom/android/phone/Settings;->access$1200(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1       #networkMode:I
    goto :goto_0

    .line 1337
    .end local v1           #networkMode:I
    :cond_1
    iget-object v2, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/Settings;->access$800(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_1
.end method

.method private resetNetworkModeToDefault()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1344
    iget-object v0, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;
    invoke-static {v0}, Lcom/android/phone/Settings;->access$1200(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcListPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;
    invoke-static {v0}, Lcom/android/phone/Settings;->access$1200(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcListPreference;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/Settings;->access$800(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1351
    iget-object v0, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonPreferredGsmUmtsNetworkMode:Lcom/htc/preference/HtcListPreference;
    invoke-static {v0}, Lcom/android/phone/Settings;->access$1100(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcListPreference;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 1356
    :cond_1
    iget-object v0, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/Settings;->access$800(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1360
    iget-object v0, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/Settings;->access$800(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1362
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const v12, 0x7f0e009b

    const/4 v11, 0x6

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1114
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 1187
    :cond_0
    :goto_0
    return-void

    .line 1116
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/Settings$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 1120
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/Settings$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 1125
    :sswitch_2
    sget-boolean v5, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    if-eqz v5, :cond_0

    .line 1126
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1127
    .local v1, ar:Landroid/os/AsyncResult;
    const/4 v4, -0x1

    .line 1128
    .local v4, statusSmartDataRoamingMode:I
    const/4 v3, -0x1

    .line 1129
    .local v3, psIndication:I
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #setter for: Lcom/android/phone/Settings;->mSmartDataRoamingSuccess:Z
    invoke-static {v5, v8}, Lcom/android/phone/Settings;->access$302(Lcom/android/phone/Settings;Z)Z

    .line 1130
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_5

    .line 1131
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v4, v5, v8

    .line 1132
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v3, v5, v9

    .line 1134
    const-string v5, "NetworkSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "statusSmartDataRoamingMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", psIndication = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-virtual {v5}, Lcom/android/phone/Settings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 1137
    .local v2, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    if-ne v4, v9, :cond_1

    if-nez v3, :cond_1

    .line 1138
    const-string v5, "NetworkSettings"

    const-string v6, "add Roaming preference"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;
    invoke-static {v5}, Lcom/android/phone/Settings;->access$400(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1140
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #setter for: Lcom/android/phone/Settings;->mSmartDataRoamingMode:I
    invoke-static {v5, v9}, Lcom/android/phone/Settings;->access$502(Lcom/android/phone/Settings;I)I

    goto :goto_0

    .line 1141
    :cond_1
    if-ne v4, v10, :cond_0

    .line 1144
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;
    invoke-static {v5}, Lcom/android/phone/Settings;->access$400(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1147
    if-ne v3, v9, :cond_3

    .line 1148
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    const/4 v6, 0x4

    #setter for: Lcom/android/phone/Settings;->mSmartDataRoamingMode:I
    invoke-static {v5, v6}, Lcom/android/phone/Settings;->access$502(Lcom/android/phone/Settings;I)I

    .line 1149
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mForeground:Z
    invoke-static {v5}, Lcom/android/phone/Settings;->access$600(Lcom/android/phone/Settings;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1151
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #setter for: Lcom/android/phone/Settings;->mSmartDataRoamingSuccess:Z
    invoke-static {v5, v9}, Lcom/android/phone/Settings;->access$302(Lcom/android/phone/Settings;Z)Z

    .line 1152
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;
    invoke-static {v5}, Lcom/android/phone/Settings;->access$400(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 1154
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;
    invoke-static {v5}, Lcom/android/phone/Settings;->access$400(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    const v6, 0x7f0e0094

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 1155
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1156
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v10}, Lcom/android/phone/PhoneApp;->setSmartDataRoamingState(I)V

    goto/16 :goto_0

    .line 1158
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_2
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;
    invoke-static {v5}, Lcom/android/phone/Settings;->access$400(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_0

    .line 1160
    :cond_3
    if-ne v3, v10, :cond_4

    .line 1162
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1163
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v11}, Lcom/android/phone/PhoneApp;->setSmartDataRoamingState(I)V

    .line 1164
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;
    invoke-static {v5}, Lcom/android/phone/Settings;->access$400(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 1168
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;
    invoke-static {v5}, Lcom/android/phone/Settings;->access$400(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1170
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_4
    const/16 v5, 0x14

    if-ne v3, v5, :cond_0

    .line 1172
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;
    invoke-static {v5}, Lcom/android/phone/Settings;->access$400(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 1173
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonSmartDataRoaming:Lcom/htc/preference/HtcPreference;
    invoke-static {v5}, Lcom/android/phone/Settings;->access$400(Lcom/android/phone/Settings;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 1175
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1176
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v11}, Lcom/android/phone/PhoneApp;->setSmartDataRoamingState(I)V

    goto/16 :goto_0

    .line 1180
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v2           #prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    :cond_5
    const-string v5, "NetworkSettings"

    const-string v6, "result exception for data roaming"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1114
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x37 -> :sswitch_2
    .end sparse-switch
.end method
