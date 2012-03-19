.class public Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OutgoingCallBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OutgoingCallBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutgoingCallReceiver"
.end annotation


# static fields
.field private static final LOGV:Z = false

.field private static final SECRET_CODE_PREFIX_Type1:Ljava/lang/String; = "##"

.field private static final TAG:Ljava/lang/String; = "OutgoingCallReceiver"


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;


# direct methods
.method public constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 112
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$000()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "OutgoingCallReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doReceive: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    const-string v10, "android.phone.extra.ALREADY_CALLED"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 120
    .local v1, alreadyCalled:Z
    if-eqz v1, :cond_2

    .line 121
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$000()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "OutgoingCallReceiver"

    const-string v11, "CALL already placed -- returning."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->getResultData()Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, number:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 135
    .local v2, app:Lcom/android/phone/PhoneApp;
    const-string v10, "*147359*682*"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-boolean v10, Lcom/android/phone/PhoneUtils;->SUPPORT_OTA:Z

    if-eqz v10, :cond_3

    .line 136
    iget-object v8, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v8, Lcom/android/internal/telephony/PhoneProxy;

    .line 137
    .local v8, phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v4, v10

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 138
    .local v4, gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    const/4 v10, 0x0

    invoke-static {v4, v6, v10}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    goto :goto_0

    .line 148
    .end local v4           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v8           #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    :cond_3
    iget-object v10, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v10}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 149
    iget-object v10, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v10, v10, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v11, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v10, v11, :cond_9

    const/4 v0, 0x1

    .line 151
    .local v0, activateState:Z
    :goto_1
    iget-object v10, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v10, v10, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v11, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v10, v11, :cond_a

    const/4 v3, 0x1

    .line 154
    .local v3, dialogState:Z
    :goto_2
    const/4 v5, 0x0

    .line 161
    .local v5, isOtaCallActive:Z
    iget-object v10, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v10, v10, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v11, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_PROGRESS:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v10, v11, :cond_4

    iget-object v10, v2, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v10, v10, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v11, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v10, v11, :cond_5

    .line 165
    :cond_4
    const/4 v5, 0x1

    .line 168
    :cond_5
    if-nez v0, :cond_6

    if-eqz v3, :cond_b

    .line 174
    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->dismissOtaDialogs()V

    .line 175
    :cond_7
    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    .line 176
    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->clearInCallScreenMode()V

    .line 185
    .end local v0           #activateState:Z
    .end local v3           #dialogState:Z
    .end local v5           #isOtaCallActive:Z
    :cond_8
    if-nez v6, :cond_c

    .line 186
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$000()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "OutgoingCallReceiver"

    const-string v11, "CALL cancelled (null number), returning..."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    .line 151
    .restart local v0       #activateState:Z
    :cond_a
    const/4 v3, 0x0

    goto :goto_2

    .line 177
    .restart local v3       #dialogState:Z
    .restart local v5       #isOtaCallActive:Z
    :cond_b
    if-eqz v5, :cond_8

    .line 180
    const-string v10, "OutgoingCallReceiver"

    const-string v11, "OTASP call is active: disallowing a new outgoing call."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    .end local v0           #activateState:Z
    .end local v3           #dialogState:Z
    .end local v5           #isOtaCallActive:Z
    :cond_c
    iget-object v10, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v10}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v10, v11, :cond_d

    iget-object v10, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10, v6}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 191
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$000()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "OutgoingCallReceiver"

    const-string v11, "Call is active, a 2nd OTA call cancelled -- returning."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 193
    :cond_d
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 200
    const-string v10, "android.phone.extra.ORIGINAL_URI"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 202
    .local v7, originalUri:Ljava/lang/String;
    if-nez v7, :cond_e

    .line 203
    const-string v10, "OutgoingCallReceiver"

    const-string v11, "Intent is missing EXTRA_ORIGINAL_URI -- returning."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 207
    :cond_e
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 209
    .local v9, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$000()Z

    move-result v10

    if-eqz v10, :cond_f

    const-string v10, "OutgoingCallReceiver"

    const-string v11, "CALL to xxxxxxx proceeding."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_f
    iget-object v10, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #calls: Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    invoke-static {v10, p1, p2, v9, v6}, Lcom/android/phone/OutgoingCallBroadcaster;->access$100(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->doReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 108
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 109
    return-void
.end method
