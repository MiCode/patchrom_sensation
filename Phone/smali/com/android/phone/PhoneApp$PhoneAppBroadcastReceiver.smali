.class Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneAppBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 3355
    iput-object p1, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3355
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 41
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3358
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 3359
    .local v8, action:Ljava/lang/String;
    const-string v37, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_9

    .line 3361
    const-string v37, "state"

    const/16 v38, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v37

    if-nez v37, :cond_8

    const/4 v15, 0x1

    .line 3368
    .local v15, enabled:Z
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v37

    if-eqz v37, :cond_0

    .line 3369
    const-string v37, "PhoneAppBroadcastReceiver"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "ACTION_AIRPLANE_MODE_CHANGED enabled = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    :cond_0
    if-nez v15, :cond_1

    .line 3376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v37, v0

    const/16 v38, 0x12d

    invoke-virtual/range {v37 .. v38}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3379
    :cond_1
    new-instance v35, Lcom/android/phone/PhoneApp$RadioThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v15}, Lcom/android/phone/PhoneApp$RadioThread;-><init>(Lcom/android/phone/PhoneApp;Z)V

    .line 3380
    .local v35, thread:Lcom/android/phone/PhoneApp$RadioThread;
    invoke-virtual/range {v35 .. v35}, Lcom/android/phone/PhoneApp$RadioThread;->start()V

    .line 3387
    if-eqz v15, :cond_2

    .line 3388
    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->access$3302(Z)Z

    .line 3821
    .end local v15           #enabled:Z
    .end local v35           #thread:Lcom/android/phone/PhoneApp$RadioThread;
    :cond_2
    :goto_1
    const-string v37, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_45

    .line 3822
    const-string v37, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 3823
    .local v34, stateExtra:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v37

    if-eqz v37, :cond_3

    .line 3824
    const-string v37, "PhoneApp"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "ACTION_SIM_STATE_CHANGED:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3826
    :cond_3
    const-string v37, "NOT_READY"

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_4

    .line 3828
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v37

    const-string v38, "device_provisioned"

    const/16 v39, 0x1

    invoke-static/range {v37 .. v39}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3835
    :cond_4
    :goto_2
    sput-object v34, Lcom/android/phone/PhoneApp;->mSimState:Ljava/lang/String;

    .line 3837
    const-string v37, "PhoneApp"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "ACTION_SIM_STATE_CHANGED:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3839
    const-string v37, "NOT_READY"

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_5

    const-string v37, "ABSENT"

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_5

    const-string v37, "LOCKED"

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_6

    .line 3842
    :cond_5
    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Lcom/android/phone/util/CbsUtils;->setCbSyncCompleted(Z)V

    .line 3846
    :cond_6
    const-string v37, "LOADED"

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_7

    .line 3848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    #setter for: Lcom/android/phone/PhoneApp;->mSimReady:Z
    invoke-static/range {v37 .. v38}, Lcom/android/phone/PhoneApp;->access$5202(Lcom/android/phone/PhoneApp;Z)Z

    .line 3849
    const-string v37, "PhoneApp"

    const-string v38, "call doCbQuery from phone boot"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->doCbQuery()V

    .line 3908
    .end local v34           #stateExtra:Ljava/lang/String;
    :cond_7
    :goto_3
    return-void

    .line 3361
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 3390
    :cond_9
    const-string v37, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_c

    .line 3391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    const-string v38, "android.bluetooth.profile.extra.STATE"

    const/16 v39, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    .line 3397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Lcom/android/phone/PhoneApp;->updateBluetoothIndication(Z)V

    .line 3400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    move/from16 v37, v0

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_b

    .line 3401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0e00da

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    invoke-static/range {v37 .. v39}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/Toast;->show()V

    .line 3413
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v37, v0

    if-eqz v37, :cond_2

    .line 3414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto/16 :goto_1

    .line 3404
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    move/from16 v37, v0

    if-nez v37, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    #getter for: Lcom/android/phone/PhoneApp;->mAutoConnect:Z
    invoke-static/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->access$3400(Lcom/android/phone/PhoneApp;)Z

    move-result v37

    if-nez v37, :cond_a

    .line 3406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0e00db

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    invoke-static/range {v37 .. v39}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 3417
    :cond_c
    const-string v37, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_d

    .line 3418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    const-string v38, "android.bluetooth.profile.extra.STATE"

    const/16 v39, 0xa

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    .line 3425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Lcom/android/phone/PhoneApp;->updateBluetoothIndication(Z)V

    goto/16 :goto_1

    .line 3427
    :cond_d
    const-string v37, "android.intent.action.ANY_DATA_STATE"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_13

    .line 3428
    #calls: Lcom/android/phone/PhoneApp;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneApp;->access$3500(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v33

    .line 3429
    .local v33, state:Lcom/android/internal/telephony/Phone$DataState;
    const-string v37, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 3430
    .local v27, reason:Ljava/lang/String;
    const-string v37, "apn"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3436
    .local v9, apnName:Ljava/lang/String;
    sget-short v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_f

    .line 3438
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v5

    .line 3440
    .local v5, DataConnectionState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lcom/android/internal/telephony/Phone;->getGprsState()I

    move-result v37

    if-nez v37, :cond_10

    sget-object v37, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_e

    sget-object v37, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_10

    const/16 v37, 0x2

    move/from16 v0, v37

    if-ne v5, v0, :cond_10

    .line 3443
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    #getter for: Lcom/android/phone/PhoneApp;->mNotifyDataConnected:Z
    invoke-static/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->access$3600(Lcom/android/phone/PhoneApp;)Z

    move-result v37

    if-nez v37, :cond_f

    .line 3444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v38, v0

    const/16 v39, 0x11

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v0, v1, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    #setter for: Lcom/android/phone/PhoneApp;->mNotifyDataConnected:Z
    invoke-static/range {v37 .. v38}, Lcom/android/phone/PhoneApp;->access$3602(Lcom/android/phone/PhoneApp;Z)Z

    .line 3456
    .end local v5           #DataConnectionState:I
    :cond_f
    :goto_5
    const/4 v13, 0x0

    .line 3457
    .local v13, disconnectedDueToRoaming:Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v36

    .line 3458
    .local v36, tm:Landroid/telephony/TelephonyManager;
    const-string v37, "DISCONNECTED"

    const-string v38, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_11

    const-string v37, "roamingOn"

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_11

    .line 3462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v37, v0

    const/16 v38, 0xa

    invoke-virtual/range {v37 .. v38}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 3447
    .end local v13           #disconnectedDueToRoaming:Z
    .end local v36           #tm:Landroid/telephony/TelephonyManager;
    .restart local v5       #DataConnectionState:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    #getter for: Lcom/android/phone/PhoneApp;->mNotifyDataConnected:Z
    invoke-static/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->access$3600(Lcom/android/phone/PhoneApp;)Z

    move-result v37

    if-eqz v37, :cond_f

    .line 3448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v37, v0

    const/16 v38, 0x12

    invoke-virtual/range {v37 .. v38}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mNotifyDataConnected:Z
    invoke-static/range {v37 .. v38}, Lcom/android/phone/PhoneApp;->access$3602(Lcom/android/phone/PhoneApp;Z)Z

    goto :goto_5

    .line 3463
    .end local v5           #DataConnectionState:I
    .restart local v13       #disconnectedDueToRoaming:Z
    .restart local v36       #tm:Landroid/telephony/TelephonyManager;
    :cond_11
    const-string v37, "CONNECTED"

    const-string v38, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_12

    invoke-virtual/range {v36 .. v36}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v37

    if-nez v37, :cond_2

    .line 3465
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v37, v0

    const/16 v38, 0xb

    invoke-virtual/range {v37 .. v38}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 3469
    .end local v9           #apnName:Ljava/lang/String;
    .end local v13           #disconnectedDueToRoaming:Z
    .end local v27           #reason:Ljava/lang/String;
    .end local v33           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v36           #tm:Landroid/telephony/TelephonyManager;
    :cond_13
    const-string v37, "android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_14

    .line 3470
    const-string v37, "cw_uw_reg_state_key"

    const/16 v38, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v33

    .line 3471
    .local v33, state:I
    const-string v37, "PhoneApp"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "get ACTION_CW_REGISTRATION_STATE_CHANGED: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3484
    .end local v33           #state:I
    :cond_14
    const-string v37, "android.intent.action.CW_ANY_DATA_STATE"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_17

    .line 3485
    const-string v37, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 3486
    .local v33, state:Ljava/lang/String;
    const-string v37, "PhoneApp"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "get ACTION_ANY_CW_DATA_CONNECTION_STATE_CHANGED: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3487
    const-string v37, "CONNECTED"

    move-object/from16 v0, v37

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_15

    const-string v37, "SUSPENDED"

    move-object/from16 v0, v37

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_16

    .line 3488
    :cond_15
    const-string v37, "PhoneApp"

    const-string v38, "C+W ppp connected!!"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v38, v0

    const/16 v39, 0x11

    invoke-virtual/range {v38 .. v39}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    #setter for: Lcom/android/phone/PhoneApp;->mNotifyDataConnected:Z
    invoke-static/range {v37 .. v38}, Lcom/android/phone/PhoneApp;->access$3602(Lcom/android/phone/PhoneApp;Z)Z

    .line 3491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mIsCwConnected:Z

    goto/16 :goto_1

    .line 3493
    :cond_16
    const-string v37, "PhoneApp"

    const-string v38, "C+W ppp disconnected!!"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mIsCwConnected:Z

    goto/16 :goto_1

    .line 3497
    .end local v33           #state:Ljava/lang/String;
    :cond_17
    const-string v37, "android.intent.action.HEADSET_PLUG"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_1c

    .line 3511
    const-string v37, "state"

    const/16 v38, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 3513
    .local v26, plugState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v38, v0

    and-int/lit8 v37, v26, 0x3

    if-nez v37, :cond_18

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x80

    move/from16 v37, v0

    const/16 v39, 0x80

    move/from16 v0, v37

    move/from16 v1, v39

    if-ne v0, v1, :cond_1a

    :cond_18
    const/16 v37, 0x1

    :goto_6
    move-object/from16 v0, v38

    move/from16 v1, v37

    #setter for: Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$3702(Lcom/android/phone/PhoneApp;Z)Z

    .line 3514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v38, v0

    and-int/lit8 v37, v26, 0x4

    if-eqz v37, :cond_1b

    const/16 v37, 0x1

    :goto_7
    move-object/from16 v0, v38

    move/from16 v1, v37

    #setter for: Lcom/android/phone/PhoneApp;->mIsTTYPlugged:Z
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$3802(Lcom/android/phone/PhoneApp;Z)Z

    .line 3515
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v37

    if-eqz v37, :cond_19

    .line 3516
    const-string v37, "PhoneApp"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "mIsTTYPlugged: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v39, v0

    #getter for: Lcom/android/phone/PhoneApp;->mIsTTYPlugged:Z
    invoke-static/range {v39 .. v39}, Lcom/android/phone/PhoneApp;->access$3800(Lcom/android/phone/PhoneApp;)Z

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3518
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v38, v0

    const/16 v39, 0x7

    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v37, v0

    if-eqz v37, :cond_2

    .line 3522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto/16 :goto_1

    .line 3513
    :cond_1a
    const/16 v37, 0x0

    goto/16 :goto_6

    .line 3514
    :cond_1b
    const/16 v37, 0x0

    goto :goto_7

    .line 3525
    .end local v26           #plugState:I
    :cond_1c
    const-string v37, "android.intent.action.BATTERY_LOW"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_1d

    .line 3528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/phone/CallNotifier;->sendBatteryLow()V

    goto/16 :goto_1

    .line 3529
    :cond_1d
    const-string v37, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->access$1200(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v37

    if-eqz v37, :cond_1e

    .line 3535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v38, v0

    const/16 v39, 0x8

    const-string v40, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 3538
    :cond_1e
    const-string v37, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_20

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportSimHotSwapFeature()Z

    move-result v37

    if-eqz v37, :cond_20

    .line 3540
    const-string v37, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3541
    .local v32, simstate:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v37

    if-eqz v37, :cond_1f

    .line 3542
    const-string v37, "PhoneApp"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "simstate: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    :cond_1f
    const-string v37, "READY"

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_2

    .line 3544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->displaySIMReadyToast()V

    goto/16 :goto_1

    .line 3549
    .end local v32           #simstate:Ljava/lang/String;
    :cond_20
    const-string v37, "android.intent.action.SELECT_INCORRECT_OPERATOR"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_27

    .line 3552
    const-wide/16 v6, 0x7530

    .line 3553
    .local v6, Timer:J
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v37

    if-nez v37, :cond_21

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v37

    if-eqz v37, :cond_23

    .line 3554
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v37

    const-string v38, "preferred_network_mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v39, v0

    const/16 v39, 0x0

    invoke-static/range {v37 .. v39}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    .line 3558
    .local v30, settingsNetworkMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v37, v0

    const/16 v37, 0x1

    move/from16 v0, v30

    move/from16 v1, v37

    if-eq v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v37, v0

    const/16 v37, 0x2

    move/from16 v0, v30

    move/from16 v1, v37

    if-ne v0, v1, :cond_25

    .line 3560
    :cond_22
    const-wide/32 v6, 0x13880

    .line 3566
    .end local v30           #settingsNetworkMode:I
    :cond_23
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    #getter for: Lcom/android/phone/PhoneApp;->mTimeout:Landroid/os/Handler;
    invoke-static/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->access$3900(Lcom/android/phone/PhoneApp;)Landroid/os/Handler;

    move-result-object v37

    if-nez v37, :cond_26

    .line 3567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    #getter for: Lcom/android/phone/PhoneApp;->mInCorrectTimeout:Landroid/os/Handler;
    invoke-static/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->access$4000(Lcom/android/phone/PhoneApp;)Landroid/os/Handler;

    move-result-object v37

    if-eqz v37, :cond_24

    .line 3568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    #getter for: Lcom/android/phone/PhoneApp;->mInCorrectTimeout:Landroid/os/Handler;
    invoke-static/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->access$4000(Lcom/android/phone/PhoneApp;)Landroid/os/Handler;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v38, v0

    #getter for: Lcom/android/phone/PhoneApp;->mIncorrectTimerCallback:Lcom/android/phone/PhoneApp$IncorrectTimerCallback;
    invoke-static/range {v38 .. v38}, Lcom/android/phone/PhoneApp;->access$4100(Lcom/android/phone/PhoneApp;)Lcom/android/phone/PhoneApp$IncorrectTimerCallback;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mInCorrectTimeout:Landroid/os/Handler;
    invoke-static/range {v37 .. v38}, Lcom/android/phone/PhoneApp;->access$4002(Lcom/android/phone/PhoneApp;Landroid/os/Handler;)Landroid/os/Handler;

    .line 3570
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v37

    if-eqz v37, :cond_24

    .line 3571
    const-string v37, "PhoneApp"

    const-string v38, "(SELECT_INCORRECT_OPERATOR), cancelTimer mInCorrectTimeout (mIncorrectTimerCallback)"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3573
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    new-instance v38, Landroid/os/Handler;

    invoke-direct/range {v38 .. v38}, Landroid/os/Handler;-><init>()V

    #setter for: Lcom/android/phone/PhoneApp;->mInCorrectTimeout:Landroid/os/Handler;
    invoke-static/range {v37 .. v38}, Lcom/android/phone/PhoneApp;->access$4002(Lcom/android/phone/PhoneApp;Landroid/os/Handler;)Landroid/os/Handler;

    .line 3574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    #getter for: Lcom/android/phone/PhoneApp;->mInCorrectTimeout:Landroid/os/Handler;
    invoke-static/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->access$4000(Lcom/android/phone/PhoneApp;)Landroid/os/Handler;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v38, v0

    #getter for: Lcom/android/phone/PhoneApp;->mIncorrectTimerCallback:Lcom/android/phone/PhoneApp$IncorrectTimerCallback;
    invoke-static/range {v38 .. v38}, Lcom/android/phone/PhoneApp;->access$4100(Lcom/android/phone/PhoneApp;)Lcom/android/phone/PhoneApp$IncorrectTimerCallback;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3575
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v37

    if-eqz v37, :cond_2

    .line 3576
    const-string v37, "PhoneApp"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "..start timer..from  (SELECT_INCORRECT_OPERATOR)  delayTimer:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3561
    .restart local v30       #settingsNetworkMode:I
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v37, v0

    const/16 v37, 0x3

    move/from16 v0, v30

    move/from16 v1, v37

    if-ne v0, v1, :cond_23

    .line 3562
    const-wide/32 v6, 0x30d40

    goto/16 :goto_8

    .line 3579
    .end local v30           #settingsNetworkMode:I
    :cond_26
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v37

    if-eqz v37, :cond_2

    .line 3580
    const-string v37, "PhoneApp"

    const-string v38, "mTimeout is already start, since did not start mInCorrectTimeout  (SELECT_INCORRECT_OPERATOR)"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3600
    .end local v6           #Timer:J
    :cond_27
    const-string v37, "android.intent.action.RADIO_TECHNOLOGY"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_28

    .line 3601
    const-string v37, "phoneName"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3602
    .local v24, newPhone:Ljava/lang/String;
    const-string v37, "PhoneApp"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Radio technology switched. Now "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " is active."

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    #calls: Lcom/android/phone/PhoneApp;->initForNewRadioTechnology()V
    invoke-static/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->access$2900(Lcom/android/phone/PhoneApp;)V

    goto/16 :goto_1

    .line 3604
    .end local v24           #newPhone:Ljava/lang/String;
    :cond_28
    const-string v37, "android.intent.action.SERVICE_STATE"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_2b

    .line 3605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    #calls: Lcom/android/phone/PhoneApp;->handleServiceStateChanged(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$4200(Lcom/android/phone/PhoneApp;Landroid/content/Intent;)V

    .line 3607
    sget-short v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v38, 0xd2

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_29

    .line 3609
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v37

    if-eqz v37, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneApp;->access$3300()Z

    move-result v37

    if-nez v37, :cond_2

    .line 3611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    #calls: Lcom/android/phone/PhoneApp;->displayWarningDialog()V
    invoke-static/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->access$4300(Lcom/android/phone/PhoneApp;)V

    .line 3612
    const/16 v37, 0x1

    invoke-static/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->access$3302(Z)Z

    goto/16 :goto_1

    .line 3614
    :cond_29
    sget-short v37, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v38, 0x9b

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_2

    .line 3615
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v29

    .line 3616
    .local v29, roaming:Z
    sget-boolean v37, Lcom/android/phone/PhoneApp;->mRoaming:Z

    move/from16 v0, v37

    move/from16 v1, v29

    if-eq v0, v1, :cond_2a

    if-eqz v29, :cond_2a

    const/16 v31, 0x1

    .line 3617
    .local v31, showDialog:Z
    :goto_9
    sput-boolean v29, Lcom/android/phone/PhoneApp;->mRoaming:Z

    .line 3619
    const-string v37, "PhoneApp"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "TelephonyManager.getDefault().isNetworkRoaming()="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", roamingEnabled()="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/phone/PhoneApp;->getDataOnRoamingEnabled()Z

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", Roaming="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sget-boolean v39, Lcom/android/phone/PhoneApp;->mRoaming:Z

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v37

    if-eqz v37, :cond_2

    .line 3621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->getDataOnRoamingEnabled()Z

    move-result v37

    if-nez v37, :cond_2

    if-eqz v31, :cond_2

    .line 3623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    #calls: Lcom/android/phone/PhoneApp;->showTMORoamingDialog()V
    invoke-static/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->access$4400(Lcom/android/phone/PhoneApp;)V

    goto/16 :goto_1

    .line 3616
    .end local v31           #showDialog:Z
    :cond_2a
    const/16 v31, 0x0

    goto :goto_9

    .line 3629
    .end local v29           #roaming:Z
    :cond_2b
    const-string v37, "android.intent.action.QUICKBOOT_POWERON"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_2c

    .line 3630
    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->access$3302(Z)Z

    .line 3631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    #calls: Lcom/android/phone/PhoneApp;->turnAirplaneModeByAlarm()V
    invoke-static/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->access$4500(Lcom/android/phone/PhoneApp;)V

    goto/16 :goto_1

    .line 3635
    :cond_2c
    const-string v37, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_2d

    .line 3636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TelephonyCapabilities;->supportsEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v37

    if-nez v37, :cond_2

    .line 3654
    const-string v37, "PhoneApp"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Error! Emergency Callback Mode not supported for "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " phones"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3657
    :cond_2d
    const-string v37, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_2e

    .line 3658
    const-string v37, "android.intent.extra.DOCK_STATE"

    const/16 v38, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v37

    sput v37, Lcom/android/phone/PhoneApp;->mDockState:I

    .line 3662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v38, v0

    const/16 v39, 0xd

    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 3663
    :cond_2e
    const-string v37, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_2f

    .line 3664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    const-string v38, "ttyPreferredMode"

    const/16 v39, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    #setter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static/range {v37 .. v38}, Lcom/android/phone/PhoneApp;->access$1402(Lcom/android/phone/PhoneApp;I)I

    .line 3667
    const-string v37, "PhoneApp"

    const-string v38, "mReceiver: TTY_PREFERRED_MODE_CHANGE_ACTION"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3669
    const-string v37, "PhoneApp"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "    mode: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v39, v0

    #getter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static/range {v39 .. v39}, Lcom/android/phone/PhoneApp;->access$1400(Lcom/android/phone/PhoneApp;)I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v38, v0

    const/16 v39, 0xe

    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 3671
    :cond_2f
    const-string v37, "android.media.RINGER_MODE_CHANGED"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_30

    .line 3672
    const-string v37, "android.media.EXTRA_RINGER_MODE"

    const/16 v38, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 3674
    .local v28, ringerMode:I
    if-nez v28, :cond_2

    .line 3675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_1

    .line 3678
    .end local v28           #ringerMode:I
    :cond_30
    const-string v37, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_31

    .line 3679
    const-string v37, "PhoneApp"

    const-string v38, ">>>>>>>>>>Receieved CUSTOMIZATION_CHANGE<<<<<<<<<<"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3680
    const-string v37, "com.htc.CUSTOMIZED_REASON"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3681
    .local v12, customizedReason:Ljava/lang/String;
    const-string v37, "com.htc.FOTA_UPGRADE"

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_2

    .line 3682
    const-string v37, "PhoneApp"

    const-string v38, ">>>>>>>>sky: start checkHtcCustomization<<<<<<<<"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v38, v0

    #calls: Lcom/android/phone/PhoneApp;->checkHtcCustomization(Landroid/content/Context;)V
    invoke-static/range {v37 .. v38}, Lcom/android/phone/PhoneApp;->access$4600(Lcom/android/phone/PhoneApp;Landroid/content/Context;)V

    .line 3684
    const-string v37, "PhoneApp"

    const-string v38, ">>>>>>>>sky: end checkHtcCustomization<<<<<<<<"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3689
    .end local v12           #customizedReason:Ljava/lang/String;
    :cond_31
    const-string v37, "android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_33

    .line 3690
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v37

    if-eqz v37, :cond_32

    .line 3691
    const-string v37, "PhoneApp"

    const-string v38, "Receieved SetupWizard is done!!"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v37, v0

    const/16 v38, 0xca

    invoke-virtual/range {v37 .. v38}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 3695
    :cond_33
    const-string v37, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_34

    .line 3696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    const-string v38, "android.intent.extra.DOCK_STATE"

    const/16 v39, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    #setter for: Lcom/android/phone/PhoneApp;->mDockMode:I
    invoke-static/range {v37 .. v38}, Lcom/android/phone/PhoneApp;->access$4702(Lcom/android/phone/PhoneApp;I)I

    .line 3698
    const-string v37, "test"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "dock event: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v39, v0

    #getter for: Lcom/android/phone/PhoneApp;->mDockMode:I
    invoke-static/range {v39 .. v39}, Lcom/android/phone/PhoneApp;->access$4700(Lcom/android/phone/PhoneApp;)I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3701
    :cond_34
    const-string v37, "com.htc.laputa.navi.action.HTCNAVI_FOREGROUND"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_35

    .line 3702
    const-string v37, "PhoneApp"

    const-string v38, "HTCNAVI_FOREGROUND"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mLaputaNaviForeground:Z

    goto/16 :goto_1

    .line 3705
    :cond_35
    const-string v37, "com.htc.laputa.navi.action.HTCNAVI_BACKGROUND"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_36

    .line 3706
    const-string v37, "PhoneApp"

    const-string v38, "HTCNAVI_BACKGROUND"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mLaputaNaviForeground:Z

    goto/16 :goto_1

    .line 3709
    :cond_36
    const-string v37, "com.htc.util.contacts.Intent.ACTION_END_CALL"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_37

    .line 3710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/phone/PhoneUtils;->hangupFromNotification(Lcom/android/internal/telephony/CallManager;)Z

    goto/16 :goto_1

    .line 3717
    :cond_37
    const-string v37, "android.intent.action.CONTACTS_DB_READY"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_38

    .line 3718
    const-string v37, "PhoneApp"

    const-string v38, "ACTION_CONTACTS_DB_READY"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/phone/CallNotifier;->bindDialerService()V

    goto/16 :goto_1

    .line 3724
    :cond_38
    const-string v37, "com.htc.phone.callforwarding"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_3d

    .line 3725
    const-string v37, "PhoneApp"

    const-string v38, "com.htc.phone.callforwarding"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3726
    const-string v37, "ACTION"

    const/16 v38, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 3727
    .local v17, extra_action:I
    packed-switch v17, :pswitch_data_0

    goto/16 :goto_1

    .line 3735
    :pswitch_0
    const-string v37, "ENABLE"

    const/16 v38, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 3737
    .local v18, extra_enable:Z
    const-string v37, "NUMBER"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3738
    .local v19, extra_number:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    #getter for: Lcom/android/phone/PhoneApp;->mCSCallForward:Lcom/android/phone/CSCallForward;
    invoke-static/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->access$4800(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CSCallForward;

    move-result-object v37

    if-nez v37, :cond_3b

    .line 3739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    new-instance v38, Lcom/android/phone/CSCallForward;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v19

    move/from16 v3, v18

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CSCallForward;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    #setter for: Lcom/android/phone/PhoneApp;->mCSCallForward:Lcom/android/phone/CSCallForward;
    invoke-static/range {v37 .. v38}, Lcom/android/phone/PhoneApp;->access$4802(Lcom/android/phone/PhoneApp;Lcom/android/phone/CSCallForward;)Lcom/android/phone/CSCallForward;

    .line 3745
    .end local v18           #extra_enable:Z
    .end local v19           #extra_number:Ljava/lang/String;
    :goto_a
    :pswitch_1
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    const-class v38, Lcom/android/phone/CSCallForwardProgress;

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3746
    .local v21, intentPorgress:Landroid/content/Intent;
    const-string v37, "close"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3747
    const/high16 v37, 0x3000

    move-object/from16 v0, v21

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 3751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    #getter for: Lcom/android/phone/PhoneApp;->mStatusBarCallForward:Lcom/android/phone/CSCallForward;
    invoke-static/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->access$4900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CSCallForward;

    move-result-object v37

    if-eqz v37, :cond_39

    .line 3752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    #getter for: Lcom/android/phone/PhoneApp;->mStatusBarCallForward:Lcom/android/phone/CSCallForward;
    invoke-static/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->access$4900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CSCallForward;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/android/phone/CSCallForward;->finish()V

    .line 3753
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mStatusBarCallForward:Lcom/android/phone/CSCallForward;
    invoke-static/range {v37 .. v38}, Lcom/android/phone/PhoneApp;->access$4902(Lcom/android/phone/PhoneApp;Lcom/android/phone/CSCallForward;)Lcom/android/phone/CSCallForward;

    goto/16 :goto_1

    .line 3729
    .end local v21           #intentPorgress:Landroid/content/Intent;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    #getter for: Lcom/android/phone/PhoneApp;->mCSCallForward:Lcom/android/phone/CSCallForward;
    invoke-static/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->access$4800(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CSCallForward;

    move-result-object v37

    if-eqz v37, :cond_3a

    .line 3730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    #getter for: Lcom/android/phone/PhoneApp;->mCSCallForward:Lcom/android/phone/CSCallForward;
    invoke-static/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->access$4800(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CSCallForward;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/android/phone/CSCallForward;->finish()V

    .line 3731
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mCSCallForward:Lcom/android/phone/CSCallForward;
    invoke-static/range {v37 .. v38}, Lcom/android/phone/PhoneApp;->access$4802(Lcom/android/phone/PhoneApp;Lcom/android/phone/CSCallForward;)Lcom/android/phone/CSCallForward;

    goto/16 :goto_1

    .line 3742
    .restart local v18       #extra_enable:Z
    .restart local v19       #extra_number:Ljava/lang/String;
    :cond_3b
    const-string v37, "PhoneApp"

    const-string v38, "mCSCallForward not null"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 3757
    .end local v18           #extra_enable:Z
    .end local v19           #extra_number:Ljava/lang/String;
    :pswitch_3
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    const-class v38, Lcom/android/phone/CSCallForwardProgress;

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3758
    .restart local v21       #intentPorgress:Landroid/content/Intent;
    const-string v37, "update"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3759
    const/high16 v37, 0x3000

    move-object/from16 v0, v21

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 3763
    const-string v37, "ENABLE"

    const/16 v38, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 3765
    .restart local v18       #extra_enable:Z
    const-string v37, "NUMBER"

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3766
    .restart local v19       #extra_number:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    #getter for: Lcom/android/phone/PhoneApp;->mStatusBarCallForward:Lcom/android/phone/CSCallForward;
    invoke-static/range {v37 .. v37}, Lcom/android/phone/PhoneApp;->access$4900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CSCallForward;

    move-result-object v37

    if-nez v37, :cond_3c

    .line 3767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    new-instance v38, Lcom/android/phone/CSCallForward;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v19

    move/from16 v3, v18

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CSCallForward;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    #setter for: Lcom/android/phone/PhoneApp;->mStatusBarCallForward:Lcom/android/phone/CSCallForward;
    invoke-static/range {v37 .. v38}, Lcom/android/phone/PhoneApp;->access$4902(Lcom/android/phone/PhoneApp;Lcom/android/phone/CSCallForward;)Lcom/android/phone/CSCallForward;

    goto/16 :goto_1

    .line 3770
    :cond_3c
    const-string v37, "PhoneApp"

    const-string v38, "mStatusBarCallForward not null"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3776
    .end local v17           #extra_action:I
    .end local v18           #extra_enable:Z
    .end local v19           #extra_number:Ljava/lang/String;
    .end local v21           #intentPorgress:Landroid/content/Intent;
    :cond_3d
    const-string v37, "com.htc.phone.missedcall.update"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_3e

    .line 3777
    invoke-static/range {p2 .. p2}, Lcom/android/phone/CSMissedCallNotification;->onIntent(Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 3782
    :cond_3e
    const-string v37, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_3f

    const-string v37, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_3f

    const-string v37, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_3f

    const-string v37, "android.intent.action.PACKAGE_RESTARTED"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_3f

    const-string v37, "android.intent.action.PACKAGE_DATA_CLEARED"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_40

    .line 3787
    :cond_3f
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$5000()Landroid/os/Handler;

    move-result-object v37

    const/16 v38, 0x323

    invoke-virtual/range {v37 .. v38}, Landroid/os/Handler;->removeMessages(I)V

    .line 3788
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$5000()Landroid/os/Handler;

    move-result-object v37

    const/16 v38, 0x323

    const-wide/16 v39, 0x7d0

    invoke-virtual/range {v37 .. v40}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 3791
    :cond_40
    const-string v37, "android.intent.action.ACTION_SIM_SWAP_STATUS"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_42

    .line 3793
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mSimErrorDialog:Lcom/android/phone/SimErrorDialog;

    move-object/from16 v37, v0

    if-nez v37, :cond_41

    .line 3794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    new-instance v38, Lcom/android/phone/SimErrorDialog;

    invoke-static {}, Lcom/android/phone/PhoneApp;->access$5100()Lcom/android/phone/PhoneApp;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Lcom/android/phone/SimErrorDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mSimErrorDialog:Lcom/android/phone/SimErrorDialog;

    .line 3797
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mSimErrorDialog:Lcom/android/phone/SimErrorDialog;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/phone/SimErrorDialog;->showDialog()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 3799
    :catch_0
    move-exception v14

    .line 3800
    .local v14, e:Ljava/lang/Exception;
    const-string v37, "PhoneApp"

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-static {v0, v1, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 3804
    .end local v14           #e:Ljava/lang/Exception;
    :cond_42
    const-string v37, "com.htc.laputa.HtcNavi.action.LOCATIONS_NAVI_ON"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_44

    .line 3805
    const-string v37, "isNaviOn"

    const/16 v38, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    .line 3806
    .local v22, isNaviOn:Z
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isNaviOn()Z

    move-result v37

    move/from16 v0, v37

    move/from16 v1, v22

    if-eq v0, v1, :cond_43

    .line 3807
    invoke-static/range {v22 .. v22}, Lcom/android/phone/util/ConfigUtils;->setNaviState(Z)V

    .line 3808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v37, v0

    if-eqz v37, :cond_43

    .line 3809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/phone/InCallScreen;->finishForNaviModeChange()V

    .line 3812
    :cond_43
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v37

    if-eqz v37, :cond_2

    .line 3813
    const-string v37, "PhoneApp"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "onReceive() isNaviOn = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3816
    .end local v22           #isNaviOn:Z
    :cond_44
    const-string v37, "com.htc.intent.action.CHANGE_WIFI_MODE"

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_2

    .line 3817
    const-string v37, "comeIn"

    const/16 v38, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .line 3818
    .local v20, in:Z
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->notifyWifiFullMode(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 3830
    .end local v20           #in:Z
    .restart local v34       #stateExtra:Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 3831
    .restart local v14       #e:Ljava/lang/Exception;
    const-string v37, "PhoneApp"

    const-string v38, "Failed to set Settings.Secure.DEVICE_PROVISIONED"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3857
    .end local v14           #e:Ljava/lang/Exception;
    .end local v34           #stateExtra:Ljava/lang/String;
    :cond_45
    const-string v37, "android.intent.action.MOBILEDATA_MODE"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_4a

    .line 3859
    const-string v37, "state"

    const/16 v38, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 3860
    .local v10, bMobileNetworkChecked:Z
    const-string v37, "PhoneApp"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Mobile network checkbox:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->localGetGlobalRoamingOption(Lcom/android/internal/telephony/Phone;)I

    move-result v23

    .line 3862
    .local v23, nGlobalOption:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v25

    .line 3864
    .local v25, phoneType:I
    const/16 v37, 0x1

    move/from16 v0, v25

    move/from16 v1, v37

    if-ne v0, v1, :cond_46

    sget v37, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->nNetworkState:I

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_47

    :cond_46
    const/16 v37, 0x2

    move/from16 v0, v25

    move/from16 v1, v37

    if-ne v0, v1, :cond_7

    sget v37, Lcom/android/phone/HtcCdmaPhoneApp;->nHomeRoaming:I

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_7

    :cond_47
    if-eqz v10, :cond_7

    .line 3871
    if-nez v23, :cond_48

    invoke-static {}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->getNeedShowRoamingOption()Z

    move-result v37

    if-eqz v37, :cond_48

    .line 3875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v37

    const/16 v38, 0x1

    invoke-static/range {v37 .. v38}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->triggerRoamingDialog(Landroid/content/Context;Z)V

    .line 3876
    :cond_48
    const/16 v37, 0x1

    move/from16 v0, v23

    move/from16 v1, v37

    if-eq v0, v1, :cond_49

    const/16 v37, 0x2

    move/from16 v0, v23

    move/from16 v1, v37

    if-ne v0, v1, :cond_7

    .line 3880
    :cond_49
    const-string v37, "PhoneApp"

    const-string v38, "triggerAllowDialog(true): from mobile network"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v37

    const/16 v38, 0x1

    invoke-static/range {v37 .. v38}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->triggerAllowDialog(Landroid/content/Context;Z)V

    goto/16 :goto_3

    .line 3885
    .end local v10           #bMobileNetworkChecked:Z
    .end local v23           #nGlobalOption:I
    .end local v25           #phoneType:I
    :cond_4a
    const-string v37, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_4b

    .line 3889
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v37

    const-string v38, "background_data"

    invoke-static/range {v37 .. v38}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v11

    .line 3891
    .local v11, backgroundDataEnable:I
    const-string v37, "PhoneApp"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "backgroundDataEnable:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 3892
    .end local v11           #backgroundDataEnable:I
    :catch_2
    move-exception v37

    goto/16 :goto_3

    .line 3897
    :cond_4b
    const-string v37, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_4c

    .line 3898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v38, v0

    const/16 v39, 0x259

    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 3902
    :cond_4c
    sget-boolean v37, Lcom/android/phone/HtcFeatureList;->FEATURE_ATT_ENTITLEMENT_CHECKING_SUPPORT:Z

    if-eqz v37, :cond_7

    sget-object v37, Lcom/android/phone/PhoneApp;->INTENT_ENTITLEMENT_CHECK_FAIL:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_7

    .line 3904
    const-string v37, "entitlement_check_fail_reason"

    const/16 v38, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 3905
    .local v16, errorType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v38, v0

    const/16 v39, 0x28

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v16

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 3727
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
