.class Lcom/android/phone/PhoneApp$3;
.super Landroid/os/Handler;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 807
    iput-object p1, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 37
    .parameter "msg"

    .prologue
    .line 811
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1564
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 855
    :sswitch_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 856
    const-string v1, "PhoneApp"

    const-string v2, "- updating in-call notification from handler..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_1
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto :goto_0

    .line 861
    :sswitch_2
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    goto :goto_0

    .line 877
    :sswitch_3
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    goto :goto_0

    .line 882
    :sswitch_4
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    .line 883
    new-instance v26, Landroid/content/Intent;

    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    .line 884
    .local v26, roamingConfirm:Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const-class v2, Lcom/android/phone/DataRoamingConfirm;

    move-object/from16 v0, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 885
    const/high16 v1, 0x1000

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 886
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 891
    .end local v26           #roamingConfirm:Landroid/content/Intent;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/PhoneApp;->onMMIComplete(Landroid/os/AsyncResult;)V
    invoke-static {v2, v1}, Lcom/android/phone/PhoneApp;->access$800(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 895
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_0

    .line 900
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/PhoneApp;->onMMIInitiate(Landroid/os/AsyncResult;)V
    invoke-static {v2, v1}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 910
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->setUmtsTTYStatus()V
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$1000(Lcom/android/phone/PhoneApp;)V

    .line 912
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v22

    .line 914
    .local v22, phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v22

    if-ne v0, v1, :cond_3

    .line 915
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v1, :cond_2

    .line 916
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v1

    if-nez v1, :cond_4

    .line 917
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 922
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 926
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 930
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 933
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mTtyEnabled:Z
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$1100(Lcom/android/phone/PhoneApp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 934
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp$3;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp$3;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 919
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    goto :goto_1

    .line 942
    .end local v22           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v2, "READY"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$1200(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 947
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$1200(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 948
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v1, v2}, Lcom/android/phone/PhoneApp;->access$1202(Lcom/android/phone/PhoneApp;Landroid/app/Activity;)Landroid/app/Activity;

    .line 950
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$1300(Lcom/android/phone/PhoneApp;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 951
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$1300(Lcom/android/phone/PhoneApp;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 952
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1, v2}, Lcom/android/phone/PhoneApp;->access$1302(Lcom/android/phone/PhoneApp;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    goto/16 :goto_0

    .line 965
    :sswitch_a
    const/4 v11, 0x0

    .line 966
    .local v11, inDockMode:Z
    sget v1, Lcom/android/phone/PhoneApp;->mDockState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    sget v1, Lcom/android/phone/PhoneApp;->mDockState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 968
    :cond_6
    const/4 v11, 0x1

    .line 974
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v22

    .line 975
    .restart local v22       #phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v22

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isBTAudioOn()Z

    move-result v1

    if-nez v1, :cond_8

    .line 981
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v11, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 983
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_8

    .line 984
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->requestUpdateTouchUi()V

    .line 998
    .end local v11           #inDockMode:Z
    .end local v22           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :cond_8
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_9

    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1005
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static {v1, v2}, Lcom/android/phone/PhoneApp;->access$1402(Lcom/android/phone/PhoneApp;I)I

    .line 1009
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OoO tty mPreferredTtyMode ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$1400(Lcom/android/phone/PhoneApp;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$1400(Lcom/android/phone/PhoneApp;)I

    move-result v34

    .line 1016
    .local v34, ttyMode:I
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OoO will use mPreferredTtyMode ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$1400(Lcom/android/phone/PhoneApp;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    move/from16 v0, v34

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1023
    .end local v34           #ttyMode:I
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    #calls: Lcom/android/phone/PhoneApp;->handleQueryTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/android/phone/PhoneApp;->access$1500(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1027
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    #calls: Lcom/android/phone/PhoneApp;->handleSetTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/android/phone/PhoneApp;->access$1600(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1032
    :sswitch_e
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$1702(Z)Z

    .line 1033
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1034
    const-string v1, "PhoneApp"

    const-string v2, "EVENT_HEADSET_LONGPRESS_TIMEOUT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_a
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSkypeCallState()I

    move-result v14

    .line 1037
    .local v14, mSkypeCallState:I
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleHeadsetHook  CS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_b

    if-eqz v14, :cond_15

    .line 1053
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1054
    if-nez v14, :cond_d

    .line 1055
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_c

    .line 1056
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 1057
    const-string v1, "PhoneApp"

    const-string v2, "handleHeadsetHook  (CS: non Idle, PS:Idle)==> hangup CS call!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_c
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mHeadsetPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$1800(Lcom/android/phone/PhoneApp;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mHeadsetPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$1800(Lcom/android/phone/PhoneApp;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 1061
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_e

    if-eqz v14, :cond_e

    .line 1065
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->sendHeadsetPressedBroadcast(Lcom/android/internal/telephony/Phone;Z)V

    .line 1066
    const-string v1, "PhoneApp"

    const-string v2, "handleHeadsetHook  (CS:Idle, PS:non Idle)==> hangup PS call!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1068
    :cond_e
    const/4 v1, 0x1

    if-ne v14, v1, :cond_11

    .line 1069
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_10

    .line 1070
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v21, v0

    .line 1071
    .local v21, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1077
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->sendHeadsetPressedBroadcast(Lcom/android/internal/telephony/Phone;Z)V

    .line 1078
    const-string v1, "PhoneApp"

    const-string v2, "handleHeadsetHook  (b->CS:Ringing, f->PS:Ringing)==> hangup PS call!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1083
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 1084
    const-string v1, "PhoneApp"

    const-string v2, "handleHeadsetHook  (f->CS:Ringing, b->PS:Ringing)==> hangup CS call!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1088
    .end local v21           #notifier:Lcom/android/phone/CallNotifier;
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_c

    .line 1099
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->sendHeadsetPressedBroadcast(Lcom/android/internal/telephony/Phone;Z)V

    .line 1100
    const-string v1, "PhoneApp"

    const-string v2, "handleHeadsetHook  (CS:Offhook, PS:Ringing)==> hangup PS call!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1104
    :cond_11
    const/4 v1, 0x2

    if-ne v14, v1, :cond_c

    .line 1105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_12

    .line 1113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 1114
    const-string v1, "PhoneApp"

    const-string v2, "handleHeadsetHook  (CS:Ringing, PS:Offhook)==> hangup CS call!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1117
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_c

    .line 1118
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMuteTxRx()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->sendHeadsetPressedBroadcast(Lcom/android/internal/telephony/Phone;Z)V

    .line 1125
    const-string v1, "PhoneApp"

    const-string v2, "handleHeadsetHook  (b->CS:Offhook, f->PS:Offhook)==> hangup PS call!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1131
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 1132
    const-string v1, "PhoneApp"

    const-string v2, "handleHeadsetHook  (f->CS:Offhook, b->PS:Offhook)==> hangup CS call!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1140
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto/16 :goto_2

    .line 1144
    :cond_15
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1145
    .local v12, intent:Landroid/content/Intent;
    const-string v1, "com.android.voicedialer"

    const-string v2, "com.android.voicedialer.VoiceDialerActivity"

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1147
    const/high16 v1, 0x1000

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1149
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1150
    :catch_0
    move-exception v1

    goto/16 :goto_2

    .line 1165
    .end local v12           #intent:Landroid/content/Intent;
    .end local v14           #mSkypeCallState:I
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->isFromTimer:Z
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$1900(Lcom/android/phone/PhoneApp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/phone/PhoneApp;->networksListLoaded(Ljava/util/List;I)V
    invoke-static {v2, v1, v3}, Lcom/android/phone/PhoneApp;->access$2000(Lcom/android/phone/PhoneApp;Ljava/util/List;I)V

    goto/16 :goto_0

    .line 1172
    :sswitch_10
    const/16 v25, -0x1

    .line 1173
    .local v25, regState:I
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1175
    .local v13, mAR:Landroid/os/AsyncResult;
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1176
    const-string v1, "PhoneApp"

    const-string v2, "EVENT_NETWORK_REGISTRATION_STATE:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_16
    iget-object v1, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_17

    .line 1180
    const-string v1, "PhoneApp"

    const-string v2, "EVENT_NETWORK_REGISTRATION_STATE: cancel timer if upper layer get exception from RIL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->cancelTimer()V

    goto/16 :goto_0

    .line 1187
    :cond_17
    if-eqz v13, :cond_0

    .line 1188
    iget-object v1, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    move-object/from16 v30, v1

    check-cast v30, [Ljava/lang/String;

    .line 1189
    .local v30, states:[Ljava/lang/String;
    if-eqz v30, :cond_0

    move-object/from16 v0, v30

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1191
    const/4 v1, 0x0

    :try_start_1
    aget-object v1, v30, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 1192
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1193
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegistrationState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_18
    const/4 v1, 0x1

    move/from16 v0, v25

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x5

    move/from16 v0, v25

    if-eq v0, v1, :cond_1b

    .line 1205
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1206
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkManualModeEnabled() (EVENT_NETWORK_REGISTRATION_STATE)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getNetworkManualModeEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    .line 1215
    .local v28, settingsNetworkMode:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1216
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settingsNetworkMode (EVENT_NETWORK_REGISTRATION_STATE)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->isNetworkListAvailable()Z
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$2100(Lcom/android/phone/PhoneApp;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getNetworkManualModeEnabled()Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x7

    move/from16 v0, v28

    if-eq v0, v1, :cond_0

    .line 1227
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mNetworkListQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$500(Lcom/android/phone/PhoneApp;)Lcom/android/phone/INetworkQueryService;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mNetworkListCallback:Lcom/android/phone/INetworkQueryServiceCallback;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$2200(Lcom/android/phone/PhoneApp;)Lcom/android/phone/INetworkQueryServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v2, 0x1

    #setter for: Lcom/android/phone/PhoneApp;->isFromTimer:Z
    invoke-static {v1, v2}, Lcom/android/phone/PhoneApp;->access$1902(Lcom/android/phone/PhoneApp;Z)Z

    .line 1230
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1231
    const-string v1, "PhoneApp"

    const-string v2, "start query network list (EVENT_NETWORK_REGISTRATION_STATE) "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1234
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 1238
    .end local v28           #settingsNetworkMode:I
    :cond_1b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->cancelTimer()V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 1240
    :catch_2
    move-exception v10

    .line 1241
    .local v10, ex:Ljava/lang/NumberFormatException;
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parsing RegistrationState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1253
    .end local v10           #ex:Ljava/lang/NumberFormatException;
    .end local v13           #mAR:Landroid/os/AsyncResult;
    .end local v25           #regState:I
    .end local v30           #states:[Ljava/lang/String;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    sget-object v2, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    goto/16 :goto_0

    .line 1258
    :sswitch_12
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/NotificationMgr;->updateMwi(I)V

    goto/16 :goto_0

    .line 1263
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/PhoneApp;->onMMLoctaionUpdateError(Landroid/os/AsyncResult;)V
    invoke-static {v2, v1}, Lcom/android/phone/PhoneApp;->access$2300(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1276
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/phone/PhoneApp;->mAcceptNextRedial:Z

    goto/16 :goto_0

    .line 1281
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->initSpecificDialNumbers()V

    goto/16 :goto_0

    .line 1287
    :sswitch_16
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive ENTITLEMENT_CHECK_FAIL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/HtcFeatureList;->FEATURE_ATT_ENTITLEMENT_CHECKING_SUPPORT:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_ATT_ENTITLEMENT_CHECKING_SUPPORT:Z

    if-eqz v1, :cond_0

    .line 1290
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1291
    .local v9, entitlement:Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const-class v2, Lcom/android/phone/EntitlementCheckFailDialog;

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1292
    const/high16 v1, 0x7080

    invoke-virtual {v9, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1296
    const-string v1, "errType"

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1, v9}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1307
    .end local v9           #entitlement:Landroid/content/Intent;
    :sswitch_17
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getNetworkManualModeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    #calls: Lcom/android/phone/PhoneApp;->onQuerySDRComplete(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/android/phone/PhoneApp;->access$2400(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1315
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getNetworkManualModeEnabled()Z

    move-result v16

    .line 1316
    .local v16, mode:Z
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recieved EVENT_SMART_DATA_ROAMING_REQUEST flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRadioSwitch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mRadioSwitch:Z
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$2500(Lcom/android/phone/PhoneApp;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 1321
    .local v7, ar:Landroid/os/AsyncResult;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v33

    .line 1322
    .local v33, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v33 .. v33}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v19

    .line 1323
    .local v19, netRoaming:Z
    const/16 v31, -0x1

    .line 1324
    .local v31, statusSmartDataRoamingMode:I
    const/16 v24, -0x1

    .line 1325
    .local v24, psIndication:I
    iget-object v1, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1f

    .line 1326
    iget-object v1, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v2, 0x0

    aget v31, v1, v2

    .line 1331
    iget-object v1, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v2, 0x1

    aget v24, v1, v2

    .line 1336
    :goto_3
    if-nez v16, :cond_1c

    const/4 v1, 0x1

    move/from16 v0, v31

    if-ne v0, v1, :cond_1d

    const/16 v1, 0x14

    move/from16 v0, v24

    if-ne v0, v1, :cond_1d

    .line 1339
    :cond_1c
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->hideSmartDataRoamingConnected()V

    .line 1340
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->hideSmartDataRoamingNoNetwork()V

    .line 1342
    :cond_1d
    const/16 v1, 0xe

    move/from16 v0, v24

    if-ne v0, v1, :cond_20

    .line 1343
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/phone/PhoneApp;->mManualMode:Z

    .line 1344
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v2, 0x2

    #setter for: Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I
    invoke-static {v1, v2}, Lcom/android/phone/PhoneApp;->access$2602(Lcom/android/phone/PhoneApp;I)I

    .line 1345
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->hideSmartDataRoamingConnected()V

    .line 1346
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->hideSmartDataRoamingNoNetwork()V

    .line 1353
    :cond_1e
    :goto_4
    sget-boolean v1, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/phone/PhoneApp;->mManualMode:Z

    if-nez v1, :cond_0

    .line 1359
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "statusSmartDataRoamingMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", psIndication = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/PhoneApp;->mManualMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    const/4 v1, 0x1

    move/from16 v0, v31

    if-ne v0, v1, :cond_21

    if-nez v24, :cond_21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mRadioSwitch:Z
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$2500(Lcom/android/phone/PhoneApp;)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-boolean v1, Lcom/android/phone/PhoneApp;->mManualMode:Z

    if-nez v1, :cond_21

    .line 1365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v2, 0x1

    #setter for: Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I
    invoke-static {v1, v2}, Lcom/android/phone/PhoneApp;->access$2602(Lcom/android/phone/PhoneApp;I)I

    .line 1366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mRadioSwitch:Z
    invoke-static {v1, v2}, Lcom/android/phone/PhoneApp;->access$2502(Lcom/android/phone/PhoneApp;Z)Z

    .line 1368
    new-instance v29, Landroid/content/Intent;

    invoke-direct/range {v29 .. v29}, Landroid/content/Intent;-><init>()V

    .line 1369
    .local v29, smartDataRoaming:Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const-class v2, Lcom/android/phone/SmartDataRoamingConfirm;

    move-object/from16 v0, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1371
    const/high16 v1, 0x1000

    move-object/from16 v0, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, v29

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1334
    .end local v29           #smartDataRoaming:Landroid/content/Intent;
    :cond_1f
    const-string v1, "PhoneApp"

    const-string v2, "result exception for data roaming"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1347
    :cond_20
    const/16 v1, 0xf

    move/from16 v0, v24

    if-ne v0, v1, :cond_1e

    .line 1348
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/PhoneApp;->mManualMode:Z

    .line 1349
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v2, 0x2

    #setter for: Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I
    invoke-static {v1, v2}, Lcom/android/phone/PhoneApp;->access$2602(Lcom/android/phone/PhoneApp;I)I

    goto/16 :goto_4

    .line 1373
    :cond_21
    const/4 v1, 0x1

    move/from16 v0, v31

    if-eq v0, v1, :cond_22

    const/4 v1, 0x2

    move/from16 v0, v31

    if-ne v0, v1, :cond_23

    :cond_22
    const/16 v1, 0xd

    move/from16 v0, v24

    if-ne v0, v1, :cond_23

    .line 1376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v2, 0x5

    #setter for: Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I
    invoke-static {v1, v2}, Lcom/android/phone/PhoneApp;->access$2602(Lcom/android/phone/PhoneApp;I)I

    .line 1377
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 1378
    .local v18, netBusy:Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const-class v2, Lcom/android/phone/NetworkBusyDialog;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1379
    const/high16 v1, 0x1000

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1381
    .end local v18           #netBusy:Landroid/content/Intent;
    :cond_23
    const/4 v1, 0x2

    move/from16 v0, v31

    if-ne v0, v1, :cond_24

    const/4 v1, 0x2

    move/from16 v0, v24

    if-ne v0, v1, :cond_24

    .line 1382
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->hideSmartDataRoamingConnected()V

    .line 1383
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->showSmartDataRoamingNoNetwork()V

    .line 1384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v2, 0x6

    #setter for: Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I
    invoke-static {v1, v2}, Lcom/android/phone/PhoneApp;->access$2602(Lcom/android/phone/PhoneApp;I)I

    goto/16 :goto_0

    .line 1385
    :cond_24
    const/4 v1, 0x2

    move/from16 v0, v31

    if-ne v0, v1, :cond_25

    const/16 v1, 0x14

    move/from16 v0, v24

    if-ne v0, v1, :cond_25

    .line 1386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v2, 0x6

    #setter for: Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I
    invoke-static {v1, v2}, Lcom/android/phone/PhoneApp;->access$2602(Lcom/android/phone/PhoneApp;I)I

    .line 1387
    new-instance v35, Landroid/content/Intent;

    invoke-direct/range {v35 .. v35}, Landroid/content/Intent;-><init>()V

    .line 1388
    .local v35, unavailable:Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const-class v2, Lcom/android/phone/DataUnavailableDialog;

    move-object/from16 v0, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1389
    const/high16 v1, 0x1000

    move-object/from16 v0, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, v35

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1392
    .end local v35           #unavailable:Landroid/content/Intent;
    :cond_25
    const/4 v1, 0x2

    move/from16 v0, v31

    if-ne v0, v1, :cond_26

    const/4 v1, 0x1

    move/from16 v0, v24

    if-ne v0, v1, :cond_26

    .line 1393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v2, 0x4

    #setter for: Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I
    invoke-static {v1, v2}, Lcom/android/phone/PhoneApp;->access$2602(Lcom/android/phone/PhoneApp;I)I

    .line 1395
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->hideSmartDataRoamingNoNetwork()V

    .line 1396
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->showSmartDataRoamingConnected()V

    goto/16 :goto_0

    .line 1397
    :cond_26
    const/4 v1, 0x1

    move/from16 v0, v31

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    move/from16 v0, v24

    if-ne v0, v1, :cond_0

    .line 1398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v2, 0x2

    #setter for: Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I
    invoke-static {v1, v2}, Lcom/android/phone/PhoneApp;->access$2602(Lcom/android/phone/PhoneApp;I)I

    goto/16 :goto_0

    .line 1405
    .end local v7           #ar:Landroid/os/AsyncResult;
    .end local v16           #mode:Z
    .end local v19           #netRoaming:Z
    .end local v24           #psIndication:I
    .end local v31           #statusSmartDataRoamingMode:I
    .end local v33           #tm:Landroid/telephony/TelephonyManager;
    :sswitch_19
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/util/PhoneStatus;->setSuppServiceRequesting(Z)V

    goto/16 :goto_0

    .line 1409
    :sswitch_1a
    const-string v1, "PhoneApp"

    const-string v2, "RESET_MUTE_STATE_EVENT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 1412
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto/16 :goto_0

    .line 1419
    :sswitch_1b
    const-string v1, "PhoneApp"

    const-string v2, "EVENT_MOBILE_DATA_CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-boolean v1, v1, Lcom/android/phone/PhoneApp;->mIsCwConnected:Z

    if-nez v1, :cond_29

    .line 1421
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    .line 1422
    .local v17, name:Ljava/lang/String;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd8

    if-ne v1, v2, :cond_28

    .line 1423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apn = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND current IS NOT NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1424
    .local v4, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$2700(Lcom/android/phone/PhoneApp;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "name"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const-string v6, "name ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1426
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_28

    .line 1427
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1428
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1430
    :cond_27
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1433
    .end local v4           #where:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_28
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/android/phone/NotificationMgr;->showMobileDataConnected(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1435
    .end local v17           #name:Ljava/lang/String;
    :cond_29
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->showCWDataConnected()V

    goto/16 :goto_0

    .line 1441
    :sswitch_1c
    const-string v1, "PhoneApp"

    const-string v2, "EVENT_MOBILE_DATA_DISCONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->hideMobileDataConnected()V

    goto/16 :goto_0

    .line 1448
    :sswitch_1d
    const-string v1, "PhoneApp"

    const-string v2, "EVENT_PHONE_MODE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mWorldPhoneUtils:Lcom/android/phone/HtcWorldPhoneUtils;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$2800(Lcom/android/phone/PhoneApp;)Lcom/android/phone/HtcWorldPhoneUtils;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1450
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mWorldPhoneUtils:Lcom/android/phone/HtcWorldPhoneUtils;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$2800(Lcom/android/phone/PhoneApp;)Lcom/android/phone/HtcWorldPhoneUtils;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v2, v1}, Lcom/android/phone/HtcWorldPhoneUtils;->handleRadioTechChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1454
    :sswitch_1e
    sget-boolean v1, Lcom/android/phone/PhoneApp;->mPhoneChanging:Z

    if-eqz v1, :cond_2a

    .line 1455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1f7

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    const/16 v36, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v2, v3, v5, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1458
    :cond_2a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1f5

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    const/16 v36, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v2, v3, v5, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1463
    :sswitch_1f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 1464
    .local v27, scanPhone:I
    if-nez v27, :cond_2b

    .line 1465
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mWorldPhoneUtils:Lcom/android/phone/HtcWorldPhoneUtils;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$2800(Lcom/android/phone/PhoneApp;)Lcom/android/phone/HtcWorldPhoneUtils;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1466
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mWorldPhoneUtils:Lcom/android/phone/HtcWorldPhoneUtils;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$2800(Lcom/android/phone/PhoneApp;)Lcom/android/phone/HtcWorldPhoneUtils;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/HtcWorldPhoneUtils;->swithPhone(I)V

    goto/16 :goto_0

    .line 1468
    :cond_2b
    const/4 v1, 0x1

    move/from16 v0, v27

    if-ne v0, v1, :cond_2c

    .line 1469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mWorldPhoneUtils:Lcom/android/phone/HtcWorldPhoneUtils;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$2800(Lcom/android/phone/PhoneApp;)Lcom/android/phone/HtcWorldPhoneUtils;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mWorldPhoneUtils:Lcom/android/phone/HtcWorldPhoneUtils;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$2800(Lcom/android/phone/PhoneApp;)Lcom/android/phone/HtcWorldPhoneUtils;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/phone/HtcWorldPhoneUtils;->swithPhone(I)V

    goto/16 :goto_0

    .line 1473
    :cond_2c
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such Phone Type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1477
    .end local v27           #scanPhone:I
    :sswitch_20
    const-string v1, "PhoneApp"

    const-string v2, " set phone type done "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->initForNewRadioTechnology()V
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$2900(Lcom/android/phone/PhoneApp;)V

    .line 1480
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1481
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->registerCallManagerPhone()V

    .line 1485
    :cond_2d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_2e

    .line 1486
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 1488
    :cond_2e
    sget-boolean v1, Lcom/android/phone/PhoneApp;->mResumeE911:Z

    if-eqz v1, :cond_31

    .line 1489
    const-string v1, "PhoneApp"

    const-string v2, "place call Resume 911"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/PhoneApp;->mResumeE911:Z

    .line 1501
    :cond_2f
    :goto_5
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/PhoneApp;->mPhoneChanging:Z

    .line 1504
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_30

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x61

    if-eq v1, v2, :cond_30

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xad

    if-ne v1, v2, :cond_32

    .line 1508
    :cond_30
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x33

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v5}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1509
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1518
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->updatePhoneUtilsafterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V

    .line 1519
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mNBPCDUtil:Lcom/android/phone/HtcNBPCDUtil;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$3000(Lcom/android/phone/PhoneApp;)Lcom/android/phone/HtcNBPCDUtil;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1520
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mNBPCDUtil:Lcom/android/phone/HtcNBPCDUtil;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$3000(Lcom/android/phone/PhoneApp;)Lcom/android/phone/HtcNBPCDUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/HtcNBPCDUtil;->updateHtcNBPCDUtilafterRadioTechnologyChange()V

    goto/16 :goto_0

    .line 1495
    :cond_31
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1496
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->finish()V

    goto :goto_5

    .line 1513
    :cond_32
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 1514
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    goto :goto_6

    .line 1525
    :sswitch_21
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .line 1526
    .local v32, targetPhone:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 1527
    .local v15, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move/from16 v0, v32

    invoke-interface {v1, v0, v15}, Lcom/android/internal/telephony/Phone;->requesetSetPhoneType(ILandroid/os/Message;)V

    .line 1528
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hang up call , set phone type to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1534
    .end local v15           #message:Landroid/os/Message;
    .end local v32           #targetPhone:I
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreviousMobileData:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$3100(Lcom/android/phone/PhoneApp;)Ljava/lang/Boolean;

    move-result-object v23

    .line 1535
    .local v23, previousConnected:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mPreviousMobileData:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/android/phone/PhoneApp;->access$3102(Lcom/android/phone/PhoneApp;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1537
    const/16 v20, 0x0

    .line 1539
    .local v20, ni:Landroid/net/NetworkInfo;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v20

    .line 1541
    :goto_7
    if-eqz v20, :cond_33

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-static {v1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1543
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/android/phone/PhoneApp;->mPreviousMobileData:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/android/phone/PhoneApp;->access$3102(Lcom/android/phone/PhoneApp;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1548
    :cond_33
    :goto_8
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1549
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data changing from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreviousMobileData:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$3100(Lcom/android/phone/PhoneApp;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :cond_34
    if-nez v23, :cond_35

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreviousMobileData:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$3100(Lcom/android/phone/PhoneApp;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1552
    :cond_35
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd2

    if-ne v1, v2, :cond_0

    .line 1553
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreviousMobileData:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$3100(Lcom/android/phone/PhoneApp;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreviousMobileData:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$3100(Lcom/android/phone/PhoneApp;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v23, :cond_36

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1555
    :cond_36
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1544
    :catch_3
    move-exception v10

    .line 1545
    .local v10, ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #setter for: Lcom/android/phone/PhoneApp;->mPreviousMobileData:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/android/phone/PhoneApp;->access$3102(Lcom/android/phone/PhoneApp;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_8

    .line 1540
    .end local v10           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v1

    goto/16 :goto_7

    .line 811
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_0
        0xd -> :sswitch_a
        0xe -> :sswitch_b
        0xf -> :sswitch_c
        0x10 -> :sswitch_d
        0x11 -> :sswitch_1b
        0x12 -> :sswitch_1c
        0x28 -> :sswitch_16
        0x33 -> :sswitch_7
        0x34 -> :sswitch_5
        0x35 -> :sswitch_6
        0x37 -> :sswitch_18
        0x38 -> :sswitch_17
        0x64 -> :sswitch_e
        0xc8 -> :sswitch_f
        0xc9 -> :sswitch_10
        0xca -> :sswitch_15
        0xcb -> :sswitch_11
        0xcc -> :sswitch_0
        0xcd -> :sswitch_0
        0x12d -> :sswitch_12
        0x190 -> :sswitch_13
        0x1f4 -> :sswitch_1d
        0x1f5 -> :sswitch_1f
        0x1f6 -> :sswitch_20
        0x1f7 -> :sswitch_1e
        0x1f8 -> :sswitch_21
        0x259 -> :sswitch_22
        0x2bc -> :sswitch_1a
        0x320 -> :sswitch_14
        0x321 -> :sswitch_4
        0x322 -> :sswitch_19
    .end sparse-switch
.end method
