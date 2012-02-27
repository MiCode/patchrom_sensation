.class Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutgoingCallReceiver"
.end annotation


# static fields
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "OutgoingCallReceiver"


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2132
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2132
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 32
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2159
    const-string v28, "android.phone.extra.ALREADY_CALLED"

    const/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 2161
    .local v6, alreadyCalled:Z
    if-eqz v6, :cond_1

    .line 2383
    :cond_0
    :goto_0
    return-void

    .line 2166
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;->getResultData()Ljava/lang/String;

    move-result-object v18

    .line 2167
    .local v18, number:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    .line 2168
    .local v7, app:Lcom/android/phone/PhoneApp;
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v21

    .line 2171
    .local v21, phoneType:I
    const-string v28, "*147359*682*"

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    sget-boolean v28, Lcom/android/phone/PhoneUtils;->SUPPORT_OTA:Z

    if-eqz v28, :cond_2

    .line 2172
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/telephony/PhoneProxy;

    .line 2173
    .local v20, phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v28

    check-cast v28, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v9, v28

    check-cast v9, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 2174
    .local v9, gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    const/16 v28, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-static {v9, v0, v1}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    goto :goto_0

    .line 2179
    .end local v9           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v20           #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    :cond_2
    const/16 v28, 0x2

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 2180
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    move-object/from16 v28, v0

    sget-object v29, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_9

    const/4 v4, 0x1

    .line 2182
    .local v4, activateState:Z
    :goto_1
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    move-object/from16 v28, v0

    sget-object v29, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_a

    const/4 v8, 0x1

    .line 2185
    .local v8, dialogState:Z
    :goto_2
    const/4 v10, 0x0

    .line 2187
    .local v10, isOtaCallActive:Z
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    move-object/from16 v28, v0

    sget-object v29, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_PROGRESS:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_3

    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    move-object/from16 v28, v0

    sget-object v29, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 2191
    :cond_3
    const/4 v10, 0x1

    .line 2194
    :cond_4
    if-nez v4, :cond_5

    if-eqz v8, :cond_b

    .line 2195
    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->dismissOtaDialogs()V

    .line 2196
    :cond_6
    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    .line 2197
    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->clearInCallScreenMode()V

    .line 2204
    .end local v4           #activateState:Z
    .end local v8           #dialogState:Z
    .end local v10           #isOtaCallActive:Z
    :cond_7
    if-eqz v18, :cond_0

    .line 2207
    const/16 v28, 0x2

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    iget-object v0, v7, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v28

    sget-object v29, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_8

    iget-object v0, v7, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 2212
    :cond_8
    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_c

    .line 2213
    const-string v28, "OutgoingCallReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Cannot modify outgoing call to emergency number "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2180
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 2182
    .restart local v4       #activateState:Z
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 2198
    .restart local v8       #dialogState:Z
    .restart local v10       #isOtaCallActive:Z
    :cond_b
    if-eqz v10, :cond_7

    goto/16 :goto_0

    .line 2217
    .end local v4           #activateState:Z
    .end local v8           #dialogState:Z
    .end local v10           #isOtaCallActive:Z
    :cond_c
    const/16 v28, 0x2

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    sget-boolean v28, Lcom/android/phone/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v28, :cond_d

    const-string v28, "*2"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 2219
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2220
    .local v3, actIntent:Landroid/content/Intent;
    const-string v28, "com.sprint.dsa.DSA_ACTIVITY"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2221
    const-string v28, "vnd.sprint.dsa/vnd.sprint.dsa.main"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2222
    const-string v28, "com.sprint.dsa.url"

    const-string v29, "https://dsa.spcsdns.net:443/dsa/?number=*2"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2223
    const/high16 v28, 0x1000

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2224
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 2225
    .local v22, pm:Landroid/content/pm/PackageManager;
    const/16 v28, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 2226
    .local v5, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v28

    if-eqz v28, :cond_12

    .line 2227
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2234
    .end local v3           #actIntent:Landroid/content/Intent;
    .end local v5           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v22           #pm:Landroid/content/pm/PackageManager;
    :cond_d
    const/16 v28, 0x2

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_e

    sget-boolean v28, Lcom/android/phone/HtcFeatureList;->FEATURE_VIRGIN_611:Z

    if-eqz v28, :cond_e

    const-string v28, "611"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 2236
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2237
    .restart local v3       #actIntent:Landroid/content/Intent;
    const-string v28, "com.sprint.dsa.DSA_ACTIVITY"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2238
    const-string v28, "vnd.sprint.dsa/vnd.sprint.dsa.main"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2239
    const-string v28, "com.sprint.dsa.url"

    const-string v29, "https://dsa.spcsdns.net:443/dsa/?number=*2"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2240
    const/high16 v28, 0x1000

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2241
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 2242
    .restart local v22       #pm:Landroid/content/pm/PackageManager;
    const/16 v28, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 2243
    .restart local v5       #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v28

    if-eqz v28, :cond_12

    .line 2244
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2251
    .end local v3           #actIntent:Landroid/content/Intent;
    .end local v5           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v22           #pm:Landroid/content/pm/PackageManager;
    :cond_e
    const/16 v28, 0x2

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_f

    sget-boolean v28, Lcom/android/phone/HtcFeatureList;->FEATURE_POUNDPOUND_SECRETCODE_SEND:Z

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_10

    :cond_f
    sget-boolean v28, Lcom/android/phone/HtcFeatureList;->WORLDPHONE_FEATURE_POUNDPOUND_SECRETCODE_SEND:Z

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    .line 2254
    :cond_10
    const-string v28, "#4357"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 2256
    new-instance v23, Landroid/content/Intent;

    const-string v28, "android.provider.Telephony.SECRET_CODE"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "android_secret_code://cdma"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v31

    move-object/from16 v0, v18

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2258
    .local v23, poundIntent:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2261
    .end local v23           #poundIntent:Landroid/content/Intent;
    :cond_11
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_12

    const-string v28, "##"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_12

    const-string v28, "##4357"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_12

    .line 2267
    new-instance v23, Landroid/content/Intent;

    const-string v28, "android.provider.Telephony.SECRET_CODE"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "android_secret_code://cdma"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0x2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v31

    move-object/from16 v0, v18

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2269
    .restart local v23       #poundIntent:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2276
    .end local v23           #poundIntent:Landroid/content/Intent;
    :cond_12
    const-string v28, "android.phone.extra.ORIGINAL_URI"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2278
    .local v19, originalUri:Ljava/lang/String;
    if-nez v19, :cond_13

    .line 2279
    const-string v28, "OutgoingCallReceiver"

    const-string v29, "Intent is missing EXTRA_ORIGINAL_URI -- returning."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2283
    :cond_13
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    .line 2290
    .local v27, uri:Landroid/net/Uri;
    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v25

    .line 2291
    .local v25, scheme:Ljava/lang/String;
    const-string v28, "sip"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_14

    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_19

    :cond_14
    const/4 v11, 0x1

    .line 2293
    .local v11, isSIP:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v12

    .line 2295
    .local v12, mCallOption:Ljava/lang/String;
    if-eqz v12, :cond_15

    const-string v28, "SIP_ALWAYS"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_15

    .line 2296
    const/4 v11, 0x1

    .line 2299
    :cond_15
    if-eqz v7, :cond_16

    if-nez v11, :cond_16

    .line 2300
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/telephony/PhoneProxy;

    .line 2302
    .restart local v20       #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneName()Ljava/lang/String;

    move-result-object v28

    const-string v29, "GSM"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    .line 2304
    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2307
    .local v16, newDialString:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2309
    .local v15, networkPortion:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v28

    check-cast v28, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v9, v28

    check-cast v9, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 2311
    .restart local v9       #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v15, v9}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v14

    .line 2313
    .local v14, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    if-nez v14, :cond_1a

    .line 2338
    .end local v9           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v14           #mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .end local v15           #networkPortion:Ljava/lang/String;
    .end local v16           #newDialString:Ljava/lang/String;
    .end local v20           #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    :cond_16
    :goto_4
    const/4 v13, 0x0

    .line 2339
    .local v13, mUseSipPhone:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/phone/sip/SipProfileDb;->getProfilesCount()I

    move-result v24

    .line 2341
    .local v24, profileCount:I
    const-string v28, "PhoneInterfaceManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "-- mCallOption "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    const-string v28, "PhoneInterfaceManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "-- profileCount "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    new-instance v17, Landroid/content/Intent;

    const-string v28, "android.intent.action.CALL"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2346
    .local v17, newIntent:Landroid/content/Intent;
    const-string v28, "android.intent.extra.PHONE_NUMBER"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2347
    const-string v28, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2349
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 2350
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->copyDialExtra(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 2352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v28, v0

    const-class v29, Lcom/android/phone/InCallScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2353
    const/high16 v28, 0x1000

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2355
    const-string v28, "sip"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_17

    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 2356
    :cond_17
    const/4 v13, 0x1

    .line 2368
    :cond_18
    :goto_5
    const-string v28, "PhoneInterfaceManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "mUseSipPhone = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    if-nez v13, :cond_21

    .line 2373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2291
    .end local v11           #isSIP:Z
    .end local v12           #mCallOption:Ljava/lang/String;
    .end local v13           #mUseSipPhone:Z
    .end local v17           #newIntent:Landroid/content/Intent;
    .end local v24           #profileCount:I
    :cond_19
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 2315
    .restart local v9       #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v11       #isSIP:Z
    .restart local v12       #mCallOption:Ljava/lang/String;
    .restart local v14       #mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .restart local v15       #networkPortion:Ljava/lang/String;
    .restart local v16       #newDialString:Ljava/lang/String;
    .restart local v20       #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    :cond_1a
    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v28

    if-nez v28, :cond_16

    .line 2319
    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isModeCLIRForLexikon()Z

    move-result v28

    if-eqz v28, :cond_1b

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 2322
    const-string v28, "PhoneInterfaceManager"

    const-string v29, "isModeCLIRForLexikon"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2327
    :cond_1b
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v28

    if-eqz v28, :cond_1c

    .line 2328
    const/16 v28, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    goto/16 :goto_0

    .line 2331
    :cond_1c
    const/16 v28, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-static {v9, v0, v1}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    goto/16 :goto_0

    .line 2357
    .end local v9           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v14           #mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .end local v15           #networkPortion:Ljava/lang/String;
    .end local v16           #newDialString:Ljava/lang/String;
    .end local v20           #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    .restart local v13       #mUseSipPhone:Z
    .restart local v17       #newIntent:Landroid/content/Intent;
    .restart local v24       #profileCount:I
    :cond_1d
    const-string v28, "tel"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1f

    if-eqz v24, :cond_1e

    invoke-static/range {v17 .. v17}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v28

    if-eqz v28, :cond_1f

    .line 2358
    :cond_1e
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 2360
    :cond_1f
    if-eqz v12, :cond_20

    const-string v28, "SIP_ASK_ME_EACH_TIME"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_20

    .line 2362
    const/4 v13, 0x1

    goto/16 :goto_5

    .line 2364
    :cond_20
    if-eqz v12, :cond_18

    const-string v28, "SIP_ALWAYS"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_18

    .line 2365
    const/4 v13, 0x1

    goto/16 :goto_5

    .line 2377
    :cond_21
    new-instance v26, Landroid/content/Intent;

    const-string v28, "com.android.phone.SIP_SELECT_PHONE"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2378
    .local v26, selectPhoneIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v28, v0

    const-class v29, Lcom/android/phone/SipCallOptionHandler;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2379
    const-string v28, "android.phone.extra.NEW_CALL_INTENT"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2380
    const/high16 v28, 0x1000

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2139
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_ASK_EXIT_E911:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/phone/HtcCdmaPhoneApp;->mEnterEmergencyMode:Z

    if-eqz v2, :cond_0

    .line 2140
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;->getResultData()Ljava/lang/String;

    move-result-object v1

    .line 2141
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2142
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2143
    .local v0, exitEMC:Landroid/content/Intent;
    const/high16 v2, 0x1002

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2144
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 2150
    .end local v0           #exitEMC:Landroid/content/Intent;
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return-void

    .line 2149
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;->doReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
