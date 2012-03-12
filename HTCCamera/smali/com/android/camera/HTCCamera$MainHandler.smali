.class Lcom/android/camera/HTCCamera$MainHandler;
.super Landroid/os/Handler;
.source "HTCCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HTCCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/HTCCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1070
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera$MainHandler;-><init>(Lcom/android/camera/HTCCamera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 54
    .parameter "msg"

    .prologue
    .line 1073
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 2613
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1075
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1076
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SHOW_RECORDING_INDICATOR end - mIsUIReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1081
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecording_Shining:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$500(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1082
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1083
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$600(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget v4, v4, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1089
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mRecording_Shining:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$502(Lcom/android/camera/HTCCamera;Z)Z

    .line 1100
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    const-wide/16 v6, 0x3e8

    invoke-static {v3, v4, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto :goto_0

    .line 1087
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v3

    const v4, 0x7f0201ab

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 1091
    :cond_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1092
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$600(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCapture_press:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1098
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/HTCCamera;->mRecording_Shining:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$502(Lcom/android/camera/HTCCamera;Z)Z

    goto :goto_2

    .line 1096
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v3

    const v4, 0x7f0201aa

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_3

    .line 1106
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1107
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - START_RECORDING_INDICATOR end - mIsUIReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1111
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1112
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - START_RECORDING_INDICATOR end - mRecording = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1116
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecord_sec:J
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$800(Lcom/android/camera/HTCCamera;)J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-gez v3, :cond_c

    .line 1117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    #setter for: Lcom/android/camera/HTCCamera;->mStartCountTime:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$902(Lcom/android/camera/HTCCamera;J)J

    .line 1118
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-wide/16 v6, 0x3e8

    #setter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$1002(Lcom/android/camera/HTCCamera;J)J

    .line 1119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-wide/16 v6, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mRecord_sec:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$802(Lcom/android/camera/HTCCamera;J)J

    .line 1120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    const-wide/16 v6, 0x3e8

    invoke-static {v3, v4, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 1123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    const-string v4, "Recording.Started"

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 1139
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecord_sec:J
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$800(Lcom/android/camera/HTCCamera;)J

    move-result-wide v3

    const-wide/16 v6, 0x1

    cmp-long v3, v3, v6

    if-nez v3, :cond_a

    .line 1140
    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UnBlock Capture UI - start recorder, unblock time = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecord_sec:J
    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$800(Lcom/android/camera/HTCCamera;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    .line 1144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    const-string v4, "CaptureUI.Unblock"

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 1147
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1150
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 1154
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #calls: Lcom/android/camera/HTCCamera;->openSecondLayout(Z)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$1400(Lcom/android/camera/HTCCamera;Z)V

    .line 1158
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    new-instance v4, Lcom/android/camera/OneValueEvent;

    const-string v6, "Recording.TimeChanged"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecord_sec:J
    invoke-static {v7}, Lcom/android/camera/HTCCamera;->access$800(Lcom/android/camera/HTCCamera;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x24

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1163
    const-wide/16 v43, 0x0

    .line 1164
    .local v43, remain_time:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_e

    .line 1165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/RecordLimitCheck;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getRecordingTime()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/android/camera/RecordLimitCheck;->checkTimeOut_UI(J)J

    move-result-wide v43

    .line 1172
    :goto_5
    const-wide/16 v3, 0x0

    cmp-long v3, v43, v3

    if-gtz v3, :cond_f

    const/16 v51, 0x1

    .line 1173
    .local v51, timeout:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecord_sec:J
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$800(Lcom/android/camera/HTCCamera;)J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-eqz v3, :cond_b

    if-nez v51, :cond_10

    .line 1174
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    .line 1126
    .end local v43           #remain_time:J
    .end local v51           #timeout:Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$808(Lcom/android/camera/HTCCamera;)J

    .line 1127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mStartCountTime:J
    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$900(Lcom/android/camera/HTCCamera;)J

    move-result-wide v6

    sub-long v36, v3, v6

    .line 1128
    .local v36, mCurrentRecordTime_System:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-wide/16 v6, 0x3e8

    #setter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$1002(Lcom/android/camera/HTCCamera;J)J

    .line 1129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecord_sec:J
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$800(Lcom/android/camera/HTCCamera;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    sub-long v6, v36, v6

    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$1022(Lcom/android/camera/HTCCamera;J)J

    .line 1130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)J

    move-result-wide v3

    const-wide/16 v6, 0x320

    cmp-long v3, v3, v6

    if-gez v3, :cond_d

    .line 1131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-wide/16 v6, 0x320

    #setter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$1002(Lcom/android/camera/HTCCamera;J)J

    goto/16 :goto_4

    .line 1132
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)J

    move-result-wide v3

    const-wide/16 v6, 0x3e8

    cmp-long v3, v3, v6

    if-lez v3, :cond_7

    .line 1133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-wide/16 v6, 0x3e8

    #setter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$1002(Lcom/android/camera/HTCCamera;J)J

    goto/16 :goto_4

    .line 1167
    .end local v36           #mCurrentRecordTime_System:J
    .restart local v43       #remain_time:J
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/RecordLimitCheck;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecord_sec:J
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$800(Lcom/android/camera/HTCCamera;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/android/camera/RecordLimitCheck;->checkTimeOut_UI(J)J

    move-result-wide v43

    goto/16 :goto_5

    .line 1172
    :cond_f
    const/16 v51, 0x0

    goto/16 :goto_6

    .line 1178
    .restart local v51       #timeout:Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/RecordLimitCheck;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/RecordLimitCheck;->getLimitState()I

    move-result v46

    .line 1179
    .local v46, state:I
    packed-switch v46, :pswitch_data_1

    .line 1199
    const-string v3, "HTCCamera"

    const-string v4, "should not enter this state !!!!!!!!!!!!!!!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    .line 1182
    :pswitch_3
    const-string v3, "HTCCamera"

    const-string v4, "reach file size limit - stop to update recording indicator"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1185
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v4, 0x16

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/RecordLimitCheck;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/RecordLimitCheck;->getUseTimeOut_API()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_11

    .line 1187
    const-string v3, "HTCCamera"

    const-string v4, "ui reach time limit - wait api reach time limit"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1190
    :cond_11
    const-string v3, "HTCCamera"

    const-string v4, "ui reach time limit - and not use api"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    :pswitch_5
    const-string v3, "HTCCamera"

    const-string v4, "reach time limit to stop recorder"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->triggerRecord()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1600(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    .line 1210
    .end local v43           #remain_time:J
    .end local v46           #state:I
    .end local v51           #timeout:Z
    :pswitch_6
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - TRIGGER_STOP_RECORD start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    const-string v3, "HTCCamera"

    const-string v4, "Block Capture UI - Stop Recorder"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    .line 1215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->setPowerWarning(Z)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v4, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->stopRecordingIndicator()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1700(Lcom/android/camera/HTCCamera;)V

    .line 1223
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1802(Z)Z

    .line 1225
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - TRIGGER_STOP_RECORD end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1229
    :pswitch_7
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - STOP_RECORDING_INDICATOR start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1232
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - STOP_RECORDING_INDICATOR end - mIsUIReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1237
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    const-string v4, "Recording.Stopping"

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 1239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->stopRecordingIndicator()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1700(Lcom/android/camera/HTCCamera;)V

    .line 1241
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - STOP_RECORDING_INDICATOR end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1245
    :pswitch_8
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - STOP_RECORDING_FINISH start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1249
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - STOP_RECORDING_FINISH end - mIsUIReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1254
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    const-string v4, "Recording.Stopped"

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 1256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 1261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    .line 1263
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1900(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$2000(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$2100(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$2200(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$2300(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    .line 1267
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$2400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/ImageTextView;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 1268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Lcom/android/camera/widget/ImageTextView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$2400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/ImageTextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$2500(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$2600(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/android/camera/ViewUtil;->enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 1270
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mEffect_icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$2700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$2800(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSettings_icon:Lcom/android/camera/widget/ImageTextView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$2900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/ImageTextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$3000(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ViewUtil;->enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m3DButtonStatus:I
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3100(Lcom/android/camera/HTCCamera;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getCameraType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_18

    .line 1274
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/ImageTextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$3300(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ViewUtil;->enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    .line 1276
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->closeCaptureUI()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3400(Lcom/android/camera/HTCCamera;)V

    .line 1279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3500(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 1280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3500(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1283
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->showActionScreen()V

    .line 1285
    :cond_1a
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - STOP_RECORDING_FINISH end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1290
    :pswitch_9
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SUSPEND_ON_RECORDING start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    .line 1294
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1900(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$2000(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$2100(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 1295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$2200(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$2300(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    .line 1297
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mEffect_icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$2700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$2800(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    .line 1299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSettings_icon:Lcom/android/camera/widget/ImageTextView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$2900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/ImageTextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSettings_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$3000(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ViewUtil;->enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSceneQuality_icon:Lcom/android/camera/widget/ImageTextView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/ImageTextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSceneQuality_btn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$3300(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/ViewUtil;->enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V

    .line 1302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 1303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 1304
    :cond_1d
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SUSPEND_ON_RECORDING end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1311
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1312
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - COUNT_DOWN_SELFTIMER end - mIsUIReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1316
    :cond_1e
    sget v3, Lcom/android/camera/CameraThread;->Storage_Status:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1f

    sget v3, Lcom/android/camera/CameraThread;->Storage_Status:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    .line 1317
    :cond_1f
    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v3

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 1319
    :cond_20
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - COUNT_DOWN_SELFTIMER end - storage error"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1324
    :cond_21
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    .line 1326
    .local v23, current_time:I
    if-lez v23, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isMenuClosed()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->canTakePicture()Z

    move-result v3

    if-nez v3, :cond_22

    .line 1329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->closeSelfTimer()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3600(Lcom/android/camera/HTCCamera;)V

    .line 1330
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - COUNT_DOWN_SELFTIMER end - canTakePicture() = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1335
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSelfTimerInterval()I

    move-result v52

    .line 1336
    .local v52, timer:I
    move/from16 v0, v52

    move/from16 v1, v23

    if-ne v0, v1, :cond_26

    .line 1337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    #setter for: Lcom/android/camera/HTCCamera;->mStartCountTime:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$902(Lcom/android/camera/HTCCamera;J)J

    .line 1338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-wide/16 v6, 0x3e8

    #setter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$1002(Lcom/android/camera/HTCCamera;J)J

    .line 1341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$3702(Lcom/android/camera/HTCCamera;Z)Z

    .line 1342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    const-string v4, "SelfTimer.Started"

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 1357
    :cond_23
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    new-instance v4, Lcom/android/camera/OneValueEvent;

    const-string v6, "SelfTimer.CountDown"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 1359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    add-int/lit8 v5, v23, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v8}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)J

    move-result-wide v8

    invoke-static/range {v3 .. v9}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    .line 1367
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3802(Z)Z

    .line 1368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->hasShutterSound()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1369
    const-string v3, "HTCCamera"

    const-string v4, "Play Countdown Sound"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const v4, 0x7f060004

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->PlaySound(I)V

    .line 1374
    :cond_24
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 1376
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1379
    :cond_25
    const-string v3, "HTCCamera"

    const-string v4, "UnBlock Capture UI - self timer countdown"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    goto/16 :goto_0

    .line 1345
    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mStartCountTime:J
    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$900(Lcom/android/camera/HTCCamera;)J

    move-result-wide v6

    sub-long v34, v3, v6

    .line 1346
    .local v34, mCurrentCountTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-wide/16 v6, 0x3e8

    #setter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$1002(Lcom/android/camera/HTCCamera;J)J

    .line 1347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    sub-int v4, v52, v23

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v6, v4

    sub-long v6, v34, v6

    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$1022(Lcom/android/camera/HTCCamera;J)J

    .line 1348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)J

    move-result-wide v3

    const-wide/16 v6, 0x320

    cmp-long v3, v3, v6

    if-gez v3, :cond_27

    .line 1349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-wide/16 v6, 0x320

    #setter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$1002(Lcom/android/camera/HTCCamera;J)J

    goto/16 :goto_7

    .line 1350
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)J

    move-result-wide v3

    const-wide/16 v6, 0x3e8

    cmp-long v3, v3, v6

    if-lez v3, :cond_23

    .line 1351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-wide/16 v6, 0x3e8

    #setter for: Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$1002(Lcom/android/camera/HTCCamera;J)J

    goto/16 :goto_7

    .line 1382
    .end local v34           #mCurrentCountTime:J
    .end local v52           #timer:I
    :cond_28
    const-string v3, "HTCCamera"

    const-string v4, "StartSelfTimer: Time Out"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    const-string v3, "HTCCamera"

    const-string v4, "Block Capture UI - self timer timeout, take picture"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    .line 1387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$3702(Lcom/android/camera/HTCCamera;Z)Z

    .line 1388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    const-string v4, "SelfTimer.Stopped"

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 1390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3900(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 1391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    #calls: Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$4000(Lcom/android/camera/HTCCamera;Z)V

    .line 1392
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3900(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1396
    :cond_29
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3500(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 1398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3500(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1401
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #calls: Lcom/android/camera/HTCCamera;->enableMainBarItems(Z)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$4100(Lcom/android/camera/HTCCamera;Z)V

    .line 1402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/android/camera/HTCCamera;->showMainBarItems(ZZ)V

    .line 1405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x23

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 1407
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    .line 1408
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    .line 1409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$4302(Lcom/android/camera/HTCCamera;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;

    .line 1412
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3f

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1413
    const-string v3, "HTCCamera"

    const-string v4, "Freeze UI - self timer timeout, take picture"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->lockOrientation()V

    .line 1416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$4402(Lcom/android/camera/HTCCamera;Z)Z

    .line 1417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v4, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1429
    .end local v23           #current_time:I
    :pswitch_b
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - RESET_SURFACEVIEW_LAYOUT start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v53, v0

    .line 1432
    .local v53, width:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    .line 1434
    .local v28, height:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move/from16 v0, v53

    move/from16 v1, v28

    #calls: Lcom/android/camera/HTCCamera;->reset_surface_view(II)V
    invoke-static {v3, v0, v1}, Lcom/android/camera/HTCCamera;->access$4500(Lcom/android/camera/HTCCamera;II)V

    .line 1435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSurfaceWidth:I
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSurfaceHeight:I
    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$4700(Lcom/android/camera/HTCCamera;)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Lcom/android/camera/HTCCamera;->reset_layout_from_surface(II)V

    .line 1437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1439
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - RESET_SURFACEVIEW_LAYOUT end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1445
    .end local v28           #height:I
    .end local v53           #width:I
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->resetGridView()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4800(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    .line 1453
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_0

    .line 1456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, v4, Lcom/android/camera/CameraThread;->mMode:I

    #calls: Lcom/android/camera/HTCCamera;->updateModeIcon(I)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$4900(Lcom/android/camera/HTCCamera;I)V

    .line 1457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, v4, Lcom/android/camera/CameraThread;->mMode:I

    #calls: Lcom/android/camera/HTCCamera;->updateCaptureIcon(I)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$5000(Lcom/android/camera/HTCCamera;I)V

    .line 1458
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, v4, Lcom/android/camera/CameraThread;->mMode:I

    #calls: Lcom/android/camera/HTCCamera;->updateSwitchIcon(I)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$5100(Lcom/android/camera/HTCCamera;I)V

    .line 1459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, v4, Lcom/android/camera/CameraThread;->mMode:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->getCameraType()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m3DButtonStatus:I
    invoke-static {v7}, Lcom/android/camera/HTCCamera;->access$3100(Lcom/android/camera/HTCCamera;)I

    move-result v7

    #calls: Lcom/android/camera/HTCCamera;->updateSceneQualityIcon(III)V
    invoke-static {v3, v4, v6, v7}, Lcom/android/camera/HTCCamera;->access$5200(Lcom/android/camera/HTCCamera;III)V

    .line 1462
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1463
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, v4, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v6, 0x0

    #calls: Lcom/android/camera/HTCCamera;->enableSceneIcon(IZ)V
    invoke-static {v3, v4, v6}, Lcom/android/camera/HTCCamera;->access$5300(Lcom/android/camera/HTCCamera;IZ)V

    goto/16 :goto_0

    .line 1468
    :pswitch_e
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PROGRESS_STATUS start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v47, v0

    .line 1470
    .local v47, status:I
    const/4 v3, 0x1

    move/from16 v0, v47

    if-ne v0, v3, :cond_2d

    .line 1471
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    new-instance v4, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct {v4, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$5402(Lcom/android/camera/HTCCamera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5400(Lcom/android/camera/HTCCamera;)Landroid/app/ProgressDialog;

    move-result-object v3

    const-string v4, "Please Wait"

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5400(Lcom/android/camera/HTCCamera;)Landroid/app/ProgressDialog;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5400(Lcom/android/camera/HTCCamera;)Landroid/app/ProgressDialog;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5400(Lcom/android/camera/HTCCamera;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 1496
    :cond_2c
    :goto_8
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PROGRESS_STATUS end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1490
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5400(Lcom/android/camera/HTCCamera;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1491
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5400(Lcom/android/camera/HTCCamera;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1492
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$5402(Lcom/android/camera/HTCCamera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_8

    .line 1501
    .end local v47           #status:I
    :pswitch_f
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - OPEN_CAPTURE_UI start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    .line 1505
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - OPEN_CAPTURE_UI end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1510
    :pswitch_10
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - CLOSE_CAPTURE_UI start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->closeCaptureUI()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3400(Lcom/android/camera/HTCCamera;)V

    .line 1514
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - CLOSE_CAPTURE_UI end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1519
    :pswitch_11
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - START_ALBUM_CAMERAstart"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2e

    .line 1521
    const-string v3, "HTCCamera"

    const-string v4, "End - Return to album after taking picture"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    new-instance v31, Landroid/content/Intent;

    const-string v3, "FROM_CAMERA"

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1523
    .local v31, intent:Landroid/content/Intent;
    const-string v3, "preview_mode"

    const-string v4, "capture"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1524
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, -0x1

    move-object/from16 v0, v31

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    .line 1525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->finish()V

    .line 1550
    :goto_9
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - START_ALBUM_CAMERA end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1527
    .end local v31           #intent:Landroid/content/Intent;
    :cond_2e
    const-string v3, "HTCCamera"

    const-string v4, "Start - Go to album after taking picture"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    new-instance v31, Landroid/content/Intent;

    const-string v3, "FROM_CAMERA"

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1529
    .restart local v31       #intent:Landroid/content/Intent;
    const-string v3, "com.htc.album"

    const-string v4, "com.htc.album.MainActivity"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1530
    const-string v3, "preview_mode"

    const-string v4, "capture"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1531
    const-string v3, "review_duration"

    const/4 v4, -0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1548
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 1555
    .end local v31           #intent:Landroid/content/Intent;
    :pswitch_12
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - Play video after recording video start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    new-instance v31, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1558
    .restart local v31       #intent:Landroid/content/Intent;
    const/16 v22, 0x1

    .line 1561
    .local v22, canPlay:Z
    :try_start_0
    const-string v3, "com.htc.video"

    const-string v4, "com.htc.video.ViewVideo"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1562
    const-string v3, "landscape"

    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1563
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1571
    :goto_a
    if-nez v22, :cond_2f

    .line 1576
    :try_start_1
    const-string v3, "com.htc.album"

    const-string v4, "com.htc.album.TabPluginDevice.ViewVideo"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1577
    const-string v3, "landscape"

    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1578
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1586
    :cond_2f
    :goto_b
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - Play video after recording video end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1565
    :catch_0
    move-exception v25

    .line 1567
    .local v25, e:Ljava/lang/Exception;
    const/16 v22, 0x0

    .line 1568
    const-string v3, "HTCCamera"

    const-string v4, "com.htc.video - play video fail"

    move-object/from16 v0, v25

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 1580
    .end local v25           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v25

    .line 1582
    .restart local v25       #e:Ljava/lang/Exception;
    const-string v3, "HTCCamera"

    const-string v4, "com.htc.album - play video fail"

    move-object/from16 v0, v25

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 1592
    .end local v22           #canPlay:Z
    .end local v25           #e:Ljava/lang/Exception;
    .end local v31           #intent:Landroid/content/Intent;
    :pswitch_13
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 1593
    .local v30, id:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/android/camera/HTCCamera;->PlaySound(I)V

    goto/16 :goto_0

    .line 1599
    .end local v30           #id:I
    :pswitch_14
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PANEL_FADEOUT start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    const-string v4, "Menu.TimeOut"

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 1606
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PANEL_FADEOUT end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1611
    :pswitch_15
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PLAY_FOCUS_SOUND start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCanShowFocusView:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5500(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->bCancelFocus:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5600(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1616
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 1617
    .restart local v30       #id:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/android/camera/HTCCamera;->PlaySound(I)V

    .line 1618
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PLAY_FOCUS_SOUND end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1624
    .end local v30           #id:I
    :pswitch_16
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SHOW_FOCUSING start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCanShowFocusView:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5500(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1627
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->bCancelFocus:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5600(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1629
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget v3, v3, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v3, :cond_0

    .line 1632
    sget v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_30

    .line 1634
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_31

    .line 1635
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1642
    :cond_30
    :goto_c
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SHOW_FOCUSING end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1638
    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/widget/CameraFocusWidget;

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/camera/HTCCamera;->access$5800()I

    move-result v6

    int-to-float v6, v6

    invoke-static {}, Lcom/android/camera/HTCCamera;->access$5900()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/camera/widget/CameraFocusWidget;->setStatus(IFF)V

    goto :goto_c

    .line 1646
    :pswitch_17
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SHOW_FOCUS_SUCCESS start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCanShowFocusView:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5500(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1649
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->bCancelFocus:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5600(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1651
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget v3, v3, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v3, :cond_0

    .line 1654
    sget v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_34

    .line 1656
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_33

    .line 1658
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6100(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f020193

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1660
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6100(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1671
    :cond_32
    :goto_d
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SHOW_FOCUS_SUCCESS end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1663
    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/widget/CameraFocusWidget;

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/camera/widget/CameraFocusWidget;->setStatus(IFF)V

    goto :goto_d

    .line 1666
    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    if-eqz v3, :cond_32

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isPanelReady()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_32

    .line 1667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x36

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1668
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->setFocusFace()V

    goto :goto_d

    .line 1675
    :pswitch_18
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SHOW_FOCUS_FAIL start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCanShowFocusView:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5500(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->bCancelFocus:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5600(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1680
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget v3, v3, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v3, :cond_0

    .line 1683
    sget v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_37

    .line 1685
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_36

    .line 1686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1687
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6100(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f020194

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1688
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6100(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1699
    :cond_35
    :goto_e
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SHOW_FOCUS_FAIL end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1691
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/widget/CameraFocusWidget;

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/camera/widget/CameraFocusWidget;->setStatus(IFF)V

    goto :goto_e

    .line 1694
    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    if-eqz v3, :cond_35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isPanelReady()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_35

    .line 1695
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x36

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1696
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->setFocusFace()V

    goto :goto_e

    .line 1703
    :pswitch_19
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SHOW_FOCUS_END start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    sget v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_38

    .line 1706
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_38

    .line 1707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6100(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1710
    :cond_38
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SHOW_FOCUS_END end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1714
    :pswitch_1a
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - FINISH_FOCUS start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 1717
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - FINISH_FOCUS end - mIsUIReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1721
    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->bCancelFocus:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5600(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3a

    .line 1722
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - FINISH_FOCUS end - bCancelFocus = true"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1726
    :cond_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget v3, v3, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-nez v3, :cond_3b

    .line 1727
    const-string v3, "HTCCamera"

    const-string v4, "Enter this state only when interrupt focus !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - FINISH_FOCUS end - mFocusingState = NO_FOCUSING"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1732
    :cond_3b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 1733
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/SensorHandler;->setifWaitFocus(Z)V

    .line 1735
    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x21

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1736
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x1f

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1737
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v4, 0x1f

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1739
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 1740
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->setStateWithFocus()V

    .line 1742
    :cond_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget v3, v3, Lcom/android/camera/HTCCamera;->mFocusingState:I

    packed-switch v3, :pswitch_data_2

    .line 1795
    const-string v3, "HTCCamera"

    const-string v4, "unknown focus state !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    :cond_3e
    :goto_f
    const-string v3, "HTCCamera"

    const-string v4, "Finish Focus - mFocusingState = NO_FOCUSING"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/camera/HTCCamera;->mFocusingState:I

    .line 1802
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    .line 1805
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    const-string v4, "Focus.Finished"

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 1807
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - FINISH_FOCUS end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1746
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->checkFaceDetection()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6300(Lcom/android/camera/HTCCamera;)V

    .line 1748
    const-string v3, "HTCCamera"

    const-string v4, "UnBlock Capture UI - take focus end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    goto :goto_f

    .line 1752
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_3e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_3e

    .line 1753
    const-string v3, "HTCCamera"

    const-string v4, "take focus end, and then take picture"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3f

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1755
    const-string v3, "HTCCamera"

    const-string v4, "Freeze UI - take focus end, and then take picture"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->lockOrientation()V

    .line 1757
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$4402(Lcom/android/camera/HTCCamera;Z)Z

    .line 1758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v4, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_f

    .line 1762
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_40

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_40

    .line 1763
    const-string v3, "HTCCamera"

    const-string v4, "UnBlock Capture UI - switch to video mode after focusing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    .line 1766
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1767
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 1768
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/widget/CameraFocusWidget;

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/camera/widget/CameraFocusWidget;->setStatus(IFF)V

    .line 1770
    :cond_3f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    .line 1771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->switchMode(I)Z

    goto/16 :goto_f

    .line 1773
    :cond_40
    const-string v3, "HTCCamera"

    const-string v4, "UnBlock Capture UI - record after focusing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    .line 1775
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->triggerRecord()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1600(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_f

    .line 1779
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_42

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_42

    .line 1780
    const-string v3, "HTCCamera"

    const-string v4, "UnBlock Capture UI - take picture after focusing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    .line 1783
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 1784
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 1785
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/widget/CameraFocusWidget;

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/camera/widget/CameraFocusWidget;->setStatus(IFF)V

    .line 1787
    :cond_41
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->triggerTakePicture()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6400(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_f

    .line 1789
    :cond_42
    const-string v3, "HTCCamera"

    const-string v4, "UnBlock Capture UI - record after focusing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    .line 1791
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->triggerRecord()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1600(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_f

    .line 1811
    :pswitch_1f
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - CANCEL_FOCUS_END start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 1814
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - CANCEL_FOCUS_END end - mIsUIReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1818
    :cond_43
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->bCancelFocus:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$5602(Lcom/android/camera/HTCCamera;Z)Z

    .line 1821
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_45

    .line 1822
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_44

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6100(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 1823
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$5700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1824
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6100(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1833
    :cond_44
    :goto_10
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - CANCEL_FOCUS_END end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1828
    :cond_45
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_44

    goto :goto_10

    .line 1837
    :pswitch_20
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - ENABLE_SENSOR_FOCUS start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$6502(Lcom/android/camera/HTCCamera;Z)Z

    .line 1841
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - ENABLE_SENSOR_FOCUS end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1847
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1848
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/SensorHandler;->restartCheckSensorFocus()V

    goto/16 :goto_0

    .line 1863
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1864
    const-string v3, "HTCCamera"

    const-string v4, ">>>>>>>>>>>>>>>>>>>>> sensor stable, check scene file !!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/SensorHandler;->enterSceneChangeState()V

    .line 1866
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/SensorHandler;->checkSceneChange()V

    goto/16 :goto_0

    .line 1873
    :pswitch_23
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - START_SENSOR_FOCUS start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_0

    .line 1879
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->canSensorFocus()Z

    move-result v3

    if-nez v3, :cond_46

    .line 1880
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1881
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/SensorHandler;->restartCheckSensorFocus()V

    goto/16 :goto_0

    .line 1885
    :cond_46
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1887
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v4, 0x2e

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1888
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v4, 0x2e

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 1892
    :cond_47
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    if-eqz v3, :cond_4a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->isStartDetection()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 1894
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->isCheckLoop()Z

    move-result v3

    if-nez v3, :cond_48

    .line 1896
    const/4 v3, 0x3

    sput v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    .line 1897
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->startCheckLoop()V

    goto/16 :goto_0

    .line 1905
    :cond_48
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v3

    if-lez v3, :cond_49

    .line 1908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->getFaceState()Lcom/android/camera/FaceDetection$STATE;

    move-result-object v3

    sget-object v4, Lcom/android/camera/FaceDetection$STATE;->STABLE_NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    if-eq v3, v4, :cond_4a

    .line 1910
    const/4 v3, 0x3

    sput v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    goto/16 :goto_0

    .line 1916
    :cond_49
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->getFaceState()Lcom/android/camera/FaceDetection$STATE;

    move-result-object v3

    sget-object v4, Lcom/android/camera/FaceDetection$STATE;->NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    if-eq v3, v4, :cond_4a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->getFaceState()Lcom/android/camera/FaceDetection$STATE;

    move-result-object v3

    sget-object v4, Lcom/android/camera/FaceDetection$STATE;->STABLE_NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    if-eq v3, v4, :cond_4a

    .line 1919
    const/4 v3, 0x3

    sput v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    goto/16 :goto_0

    .line 1927
    :cond_4a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->handleSensorFocus()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6600(Lcom/android/camera/HTCCamera;)V

    .line 1929
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - START_SENSOR_FOCUS end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1933
    :pswitch_24
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - START_FACE_FOCUS start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_0

    .line 1939
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1943
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v3

    if-eqz v3, :cond_4f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1946
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_4e

    .line 1948
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v3

    if-gtz v3, :cond_4b

    .line 1949
    const-string v3, "HTCCamera"

    const-string v4, "enter this state - must enable auto-capture !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    :cond_4b
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$1200()Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3700(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_4c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v3, :cond_4d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v3}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v3}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v3}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4d

    .line 1955
    :cond_4c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->startCheckLoop()V

    goto/16 :goto_0

    .line 1958
    :cond_4d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->setStateWithFocus()V

    .line 1959
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onTouchCapture_Camera()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6700(Lcom/android/camera/HTCCamera;)V

    .line 1990
    :cond_4e
    :goto_11
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - START_FACE_FOCUS end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1964
    :cond_4f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->canSensorFocus()Z

    move-result v3

    if-nez v3, :cond_50

    .line 1965
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->startCheckLoop()V

    goto/16 :goto_0

    .line 1969
    :cond_50
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v5

    .line 1971
    .local v5, number:I
    if-lez v5, :cond_51

    .line 1972
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x45

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1973
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6802(Z)Z

    .line 1982
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->stopSoundPool()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6900(Lcom/android/camera/HTCCamera;)V

    .line 1983
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/camera/FaceDetection$Face;

    invoke-virtual {v4, v3}, Lcom/android/camera/HTCCamera;->handleFaceFocus(Lcom/android/camera/FaceDetection$Face;)V

    .line 1984
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onTouchCapture_Camera()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6700(Lcom/android/camera/HTCCamera;)V

    goto :goto_11

    .line 1986
    :cond_51
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/camera/FaceDetection$Face;

    invoke-virtual {v4, v3}, Lcom/android/camera/HTCCamera;->handleFaceFocus(Lcom/android/camera/FaceDetection$Face;)V

    goto :goto_11

    .line 1994
    .end local v5           #number:I
    :pswitch_25
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - START_SELF_PORTRAIT start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 1997
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - START_SELF_PORTRAIT end - mIsUIReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2001
    :cond_52
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6802(Z)Z

    .line 2003
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->stopSoundPool()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6900(Lcom/android/camera/HTCCamera;)V

    .line 2004
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/camera/FaceDetection$Face;

    invoke-virtual {v4, v3}, Lcom/android/camera/HTCCamera;->handleFaceFocus(Lcom/android/camera/FaceDetection$Face;)V

    .line 2005
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onTouchCapture_Camera()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6700(Lcom/android/camera/HTCCamera;)V

    .line 2007
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - START_SELF_PORTRAIT end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2013
    :pswitch_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_0

    .line 2017
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2021
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$1200()Z

    move-result v3

    if-nez v3, :cond_53

    .line 2022
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->clearFocusFace()V

    goto/16 :goto_0

    .line 2024
    :cond_53
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x36

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2025
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x36

    const-wide/16 v6, 0x64

    invoke-static {v3, v4, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    .line 2032
    :pswitch_27
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PREPARE_FOCUS_BEFORE_CAPTURE start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 2035
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PREPARE_FOCUS_BEFORE_CAPTURE end - mIsUIReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2039
    :cond_54
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget v3, v3, Lcom/android/camera/HTCCamera;->mFocusingState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_55

    .line 2040
    const-string v3, "HTCCamera"

    const-string v4, "REPARE_FOCUS_BEFORE_CAPTURE - mFocusingState != FOCUSING_TAP_CAPTURE"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    :cond_55
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFocusPos_X:I
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$7000(Lcom/android/camera/HTCCamera;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFocusPos_Y:I
    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$7100(Lcom/android/camera/HTCCamera;)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Lcom/android/camera/HTCCamera;->handleTouchFocus(II)Z

    .line 2045
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PREPARE_FOCUS_BEFORE_CAPTURE end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2049
    :pswitch_28
    const-string v3, "HTCCamera"

    const-string v4, "CameraHandler Message - CHECK_FACE_DETECTION start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->checkFaceDetection()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6300(Lcom/android/camera/HTCCamera;)V

    .line 2053
    const-string v3, "HTCCamera"

    const-string v4, "CameraHandler Message - CHECK_FACE_DETECTION end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2057
    :pswitch_29
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SCREEN_SAVE start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->deactivate()V

    .line 2059
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - SCREEN_SAVE end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2063
    :pswitch_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 2064
    .local v39, noStorageText:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    .line 2065
    .local v40, optional:Ljava/lang/String;
    if-eqz v40, :cond_56

    .line 2066
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v40, v3, v4

    move-object/from16 v0, v39

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    .line 2068
    :cond_56
    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SHOW_TOAST - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v3

    if-nez v3, :cond_57

    .line 2070
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const-string v6, ""

    const v7, 0x186a0

    invoke-static {v4, v6, v7}, Lcom/android/camera/rotate/RotateToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/camera/rotate/RotateToast;

    move-result-object v4

    #setter for: Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$7202(Lcom/android/camera/HTCCamera;Lcom/android/camera/rotate/RotateToast;)Lcom/android/camera/rotate/RotateToast;

    .line 2071
    :cond_57
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Lcom/android/camera/HTCCamera;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2075
    .end local v39           #noStorageText:Ljava/lang/String;
    .end local v40           #optional:Ljava/lang/String;
    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2077
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 2078
    .local v29, hintText:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v41, v0

    .line 2079
    .local v41, orientation:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    .line 2080
    .restart local v40       #optional:Ljava/lang/String;
    if-eqz v40, :cond_58

    .line 2081
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v40, v3, v4

    move-object/from16 v0, v29

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    .line 2083
    :cond_58
    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SHOW_3D_HINT - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2086
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    .line 2087
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v3

    move/from16 v0, v41

    invoke-virtual {v3, v0}, Lcom/android/camera/rotate/RotateToast;->updateOrientation(I)V

    .line 2088
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/android/camera/rotate/RotateToast;->setText(Ljava/lang/CharSequence;)V

    .line 2089
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/rotate/RotateToast;->show()V

    goto/16 :goto_0

    .line 2094
    .end local v29           #hintText:Ljava/lang/String;
    .end local v40           #optional:Ljava/lang/String;
    .end local v41           #orientation:I
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7300(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2095
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 2096
    .local v27, fps:I
    const-string v3, "%d fps"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    .line 2097
    .local v48, str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7300(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2102
    .end local v27           #fps:I
    .end local v48           #str:Ljava/lang/String;
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mGpsIndicator:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7400(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2103
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 2105
    .restart local v5       #number:I
    invoke-static {}, Lcom/android/camera/LocationHandler;->getLocation()Landroid/location/Location;

    move-result-object v33

    .line 2106
    .local v33, loc:Landroid/location/Location;
    if-eqz v33, :cond_59

    .line 2107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mGpsIndicator:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7400(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto/16 :goto_0

    .line 2111
    :cond_59
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mGpsIndicator:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7400(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2112
    add-int/lit8 v5, v5, 0x1

    .line 2113
    const/4 v3, 0x4

    if-le v5, v3, :cond_5a

    .line 2114
    const/4 v5, 0x0

    .line 2116
    :cond_5a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x29

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x1f4

    invoke-static/range {v3 .. v9}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    .line 2122
    .end local v5           #number:I
    .end local v33           #loc:Landroid/location/Location;
    :pswitch_2e
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PREVIEW_DUPLICATE_START start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v3, :cond_5b

    .line 2124
    const-string v3, "HTCCamera"

    const-string v4, "mCameraThread == null"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2128
    :cond_5b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    if-nez v3, :cond_5c

    .line 2129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const v4, 0x7f080040

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/view/ViewStub;

    .line 2130
    .local v49, stub:Landroid/view/ViewStub;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual/range {v49 .. v49}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    const v6, 0x7f08015a

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    #setter for: Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;
    invoke-static {v4, v3}, Lcom/android/camera/HTCCamera;->access$7502(Lcom/android/camera/HTCCamera;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 2132
    .end local v49           #stub:Landroid/view/ViewStub;
    :cond_5c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, v3, Lcom/android/camera/CameraThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v4

    .line 2133
    :goto_12
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v3, v3, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_5d

    .line 2135
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v3, v3, Lcom/android/camera/CameraThread;->mSyncObject:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 2136
    const-string v3, "HTCCamera"

    const-string v6, "mOneShotBitmap = null - wait()"

    invoke-static {v3, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_12

    .line 2137
    :catch_2
    move-exception v26

    .line 2138
    .local v26, ex:Ljava/lang/Exception;
    :try_start_4
    const-string v3, "HTCCamera"

    const-string v6, "Exception"

    move-object/from16 v0, v26

    invoke-static {v3, v6, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 2141
    .end local v26           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    :cond_5d
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2144
    new-instance v45, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2145
    .local v45, set:Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget v3, v3, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    if-nez v3, :cond_5e

    .line 2146
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 2147
    .local v11, m:Landroid/graphics/Matrix;
    const/high16 v3, 0x42b4

    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v6, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v11, v3, v4, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 2148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v6, v4, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, v4, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, v4, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    .line 2157
    .end local v11           #m:Landroid/graphics/Matrix;
    :cond_5e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, v4, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2158
    new-instance v12, Landroid/view/animation/ScaleAnimation;

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/high16 v18, 0x3f00

    const/16 v19, 0x1

    const/high16 v20, 0x3f00

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 2160
    .local v12, anim1:Landroid/view/animation/ScaleAnimation;
    move-object/from16 v0, v45

    invoke-virtual {v0, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget v3, v3, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    if-nez v3, :cond_5f

    .line 2164
    new-instance v21, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v6, 0x0

    sget v7, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    int-to-float v7, v7

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2165
    .local v21, anim2:Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2171
    :goto_13
    const/16 v24, 0x3e8

    .line 2172
    .local v24, duration:I
    move/from16 v0, v24

    int-to-long v3, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 2174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x2b

    move/from16 v0, v24

    int-to-long v6, v0

    invoke-static {v3, v4, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 2178
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PREVIEW_DUPLICATE_START end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2167
    .end local v21           #anim2:Landroid/view/animation/TranslateAnimation;
    .end local v24           #duration:I
    :cond_5f
    new-instance v21, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    mul-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v6, 0x0

    sget v7, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2168
    .restart local v21       #anim2:Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_13

    .line 2182
    .end local v12           #anim1:Landroid/view/animation/ScaleAnimation;
    .end local v21           #anim2:Landroid/view/animation/TranslateAnimation;
    .end local v45           #set:Landroid/view/animation/AnimationSet;
    :pswitch_2f
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PREVIEW_DUPLICATE_END start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 2184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2189
    :cond_60
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_61

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v3, v3, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_61

    .line 2190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v3, v3, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 2191
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    .line 2194
    :cond_61
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - PREVIEW_DUPLICATE_END end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2198
    :pswitch_30
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - UPDATE_FLASH_FROM_RESTRICTION start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 2200
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - UPDATE_FLASH_FROM_RESTRICTION end - mIsUIReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2204
    :cond_62
    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FlashRestriction;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2213
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$1200()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_63

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget v3, v3, Lcom/android/camera/HTCCamera;->mFocusingState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_63

    .line 2214
    const-string v3, "HTCCamera"

    const-string v4, "UI Block - wait UI unBlock to update flash from restriction"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x2c

    const-wide/16 v6, 0x64

    invoke-static {v3, v4, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    .line 2220
    :cond_63
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FlashRestriction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FlashRestriction;->isDisableFlash()Z

    move-result v3

    if-eqz v3, :cond_64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFlashDisableCounter:I
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7700(Lcom/android/camera/HTCCamera;)I

    move-result v3

    if-gtz v3, :cond_64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsFlashlightOffByScene:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7800(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_64

    .line 2222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x25

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FlashRestriction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FlashRestriction;->getRestrictionHint()I

    move-result v3

    if-eqz v3, :cond_64

    .line 2224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x25

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;
    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$7600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FlashRestriction;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/FlashRestriction;->getRestrictionHint()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v4, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2229
    :cond_64
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->updateFlashMode()V

    .line 2231
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - UPDATE_FLASH_FROM_RESTRICTION end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2235
    :pswitch_31
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - DO_CREATE_RESUME_AFTER_PREVIEW start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mActivityOnPause:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7900(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_65

    .line 2238
    const-string v3, "HTCCamera"

    const-string v4, "mActivityOnPause == true, UIHandler Message - DO_CREATE_RESUME_AFTER_PREVIEW end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2242
    :cond_65
    invoke-static {}, Lcom/android/camera/HTCCamera;->isKeyguardShow()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_66

    .line 2243
    const-string v3, "HTCCamera"

    const-string v4, "mIsKeyguardShow = true, waiting for unlock screen"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->setWaitKeyguardBeforePreview(Z)V

    goto/16 :goto_0

    .line 2248
    :cond_66
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->initOnCreate_after_preview()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$8000(Lcom/android/camera/HTCCamera;)V

    .line 2249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 2251
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - DO_CREATE_RESUME_AFTER_PREVIEW end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2255
    :pswitch_32
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - DO_CREATE_AFTER_PREVIEW start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mActivityOnPause:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7900(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_67

    .line 2258
    const-string v3, "HTCCamera"

    const-string v4, "mActivityOnPause == true, UIHandler Message - DO_CREATE_AFTER_PREVIEW end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2262
    :cond_67
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->doOnCreate_after_preview()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$8100(Lcom/android/camera/HTCCamera;)V

    .line 2264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3f

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendUniqueEmptyMessage(Landroid/os/Handler;I)V

    .line 2266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #calls: Lcom/android/camera/HTCCamera;->openSecondLayout(Z)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$1400(Lcom/android/camera/HTCCamera;Z)V

    .line 2268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 2270
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - DO_CREATE_AFTER_PREVIEW end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2274
    :pswitch_33
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - DO_RESUME_AFTER_PREVIEW start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mActivityOnPause:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$7900(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_68

    .line 2277
    const-string v3, "HTCCamera"

    const-string v4, "mActivityOnPause == true, UIHandler Message - DO_RESUME_AFTER_PREVIEW end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2281
    :cond_68
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->doOnResume_after_preview()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$8200(Lcom/android/camera/HTCCamera;)V

    .line 2283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$4402(Lcom/android/camera/HTCCamera;Z)Z

    .line 2285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$8300(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_69

    .line 2286
    const-string v3, "HTCCamera"

    const-string v4, "mWaitResetSettings = true, reset panel and set mWaitResetSettings to false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #calls: Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$4000(Lcom/android/camera/HTCCamera;Z)V

    .line 2288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$8302(Lcom/android/camera/HTCCamera;Z)Z

    .line 2289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;

    move-result-object v3

    if-eqz v3, :cond_69

    .line 2290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/MenuHandler;->exitMenuHandler()V

    .line 2291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/MenuHandler;->resetMenuHandler()V

    .line 2315
    :cond_69
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    .line 2317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v4

    #calls: Lcom/android/camera/HTCCamera;->updateSelfPortraitHint(I)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$8500(Lcom/android/camera/HTCCamera;I)V

    .line 2319
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    .line 2321
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    .line 2322
    const-string v3, "HTCCamera"

    const-string v4, "UnBlock Capture UI - after start preview"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$402(Lcom/android/camera/HTCCamera;Z)Z

    .line 2326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    const-string v4, "CameraActivity.PreviewStarted"

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 2329
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCamcorderHWButton()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 2330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->checkCamcorderButtonRecord()V

    .line 2332
    :cond_6a
    const-string v3, "HTCCamera"

    const-string v4, "DO_RESUME_AFTER_PREVIEW end - mIsUIReady = true"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6b

    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3, v4}, Lcom/android/camera/MovieModeHandler;->IsLockMMSVideoInLandscape(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 2346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x67

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 2348
    :cond_6b
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - DO_RESUME_AFTER_PREVIEW end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2352
    :pswitch_34
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - UPDATE_THUMBNAIL_BUTTON start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2354
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Landroid/graphics/Bitmap;

    .line 2356
    .local v50, thumb:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$8600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/ThumbnailController;

    move-result-object v3

    if-nez v3, :cond_6c

    .line 2357
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - UPDATE_THUMBNAIL_BUTTON end, mThumbController == null"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    if-eqz v50, :cond_0

    .line 2359
    invoke-virtual/range {v50 .. v50}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 2363
    :cond_6c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "thumb_file_path"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 2364
    .local v42, path:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v38, v0

    .line 2365
    .local v38, mode:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, v50

    move-object/from16 v1, v42

    move/from16 v2, v38

    #calls: Lcom/android/camera/HTCCamera;->updateThumbnailButton(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    invoke-static {v3, v0, v1, v2}, Lcom/android/camera/HTCCamera;->access$8700(Lcom/android/camera/HTCCamera;Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    .line 2366
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - UPDATE_THUMBNAIL_BUTTON end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2370
    .end local v38           #mode:I
    .end local v42           #path:Ljava/lang/String;
    .end local v50           #thumb:Landroid/graphics/Bitmap;
    :pswitch_35
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - LOAD_LATEST_THUMBNAIL start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$8600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/ThumbnailController;

    move-result-object v3

    if-eqz v3, :cond_6d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_6d

    .line 2373
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$8600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/ThumbnailController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ThumbnailController;->clearButtonImage()V

    .line 2374
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_6d

    .line 2375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_6e

    const/16 v3, 0x1d

    :goto_14
    invoke-static {v4, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 2381
    :cond_6d
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - LOAD_LATEST_THUMBNAIL end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2375
    :cond_6e
    const/16 v3, 0x1e

    goto :goto_14

    .line 2385
    :pswitch_36
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - UNBLOCK_CAPTURE_UI start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    .line 2390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v3

    const-string v4, "CaptureUI.Unblock"

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    .line 2392
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - UNBLOCK_CAPTURE_UI end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2397
    :pswitch_37
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - ENABLE_GARBAGE_COLLECTION start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - ENABLE_GARBAGE_COLLECTION end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2408
    :pswitch_38
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFreezeUI:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$8800(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2412
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportIconRotate()Z

    move-result v3

    if-eqz v3, :cond_71

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isOrientationLockNeeded()Z

    move-result v3

    if-nez v3, :cond_71

    .line 2413
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCamcorderRotate()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 2414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mLastOrientation:I
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$8900(Lcom/android/camera/HTCCamera;)I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v4

    #calls: Lcom/android/camera/HTCCamera;->onRotateChanged(I)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$9000(Lcom/android/camera/HTCCamera;I)V

    .line 2415
    const-string v3, "HTCCamera"

    const-string v4, "Unfreeze UI !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mFreezeUI:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$8802(Lcom/android/camera/HTCCamera;Z)Z

    .line 2428
    :goto_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v4, 0x2b

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v4, 0x2b

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 2417
    :cond_6f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_70

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_70

    .line 2418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mLastOrientation:I
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$8900(Lcom/android/camera/HTCCamera;)I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v4

    #calls: Lcom/android/camera/HTCCamera;->onRotateChanged(I)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$9000(Lcom/android/camera/HTCCamera;I)V

    .line 2419
    const-string v3, "HTCCamera"

    const-string v4, "Unfreeze UI !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mFreezeUI:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$8802(Lcom/android/camera/HTCCamera;Z)Z

    goto :goto_15

    .line 2422
    :cond_70
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    goto :goto_15

    .line 2424
    :cond_71
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    goto :goto_15

    .line 2435
    :pswitch_39
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - LONG_PRESS_SW_CAPTURE start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 2438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->startFocusFromLongPressKey()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$9100(Lcom/android/camera/HTCCamera;)V

    .line 2440
    :cond_72
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/HTCCamera;->mStartTapCapture:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$9202(Lcom/android/camera/HTCCamera;Z)Z

    .line 2443
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_73

    .line 2444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$600(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget v4, v4, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2448
    :goto_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_74

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_74

    .line 2449
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onTouchCapture_Camera()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6700(Lcom/android/camera/HTCCamera;)V

    .line 2453
    :goto_17
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - LONG_PRESS_SW_CAPTURE end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2446
    :cond_73
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v6, v6, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v3, v4, v6}, Lcom/android/camera/HTCCamera;->updateDOTCaptureIcon(ZI)V

    goto :goto_16

    .line 2451
    :cond_74
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onTouchCapture_Camcorder()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$9300(Lcom/android/camera/HTCCamera;)V

    goto :goto_17

    .line 2458
    :pswitch_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v3

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection;->getSelfPortraitState()I

    move-result v46

    .line 2460
    .restart local v46       #state:I
    const/4 v3, -0x1

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$9402(I)I

    .line 2461
    packed-switch v46, :pswitch_data_3

    .line 2470
    :goto_18
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$9400()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_75

    .line 2471
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$9508()I

    .line 2475
    :goto_19
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$9400()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2476
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    #setter for: Lcom/android/camera/HTCCamera;->mPlayBeepTime:J
    invoke-static {v3, v6, v7}, Lcom/android/camera/HTCCamera;->access$9602(Lcom/android/camera/HTCCamera;J)J

    .line 2477
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/camera/HTCCamera;->playSoundPool(I)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$9700(Lcom/android/camera/HTCCamera;I)V

    .line 2478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x45

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {}, Lcom/android/camera/HTCCamera;->access$9400()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v18, v0

    invoke-static/range {v13 .. v19}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    .line 2463
    :pswitch_3b
    const/16 v3, 0xc8

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$9402(I)I

    goto :goto_18

    .line 2466
    :pswitch_3c
    const/4 v3, -0x1

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$9402(I)I

    goto :goto_18

    .line 2473
    :cond_75
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$9502(I)I

    goto :goto_19

    .line 2484
    .end local v46           #state:I
    :pswitch_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3700(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->closeSelfTimer()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$3600(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    .line 2492
    :pswitch_3e
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_76

    .line 2493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$9802(Lcom/android/camera/HTCCamera;Z)Z

    .line 2494
    :cond_76
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$9800(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 2496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x48

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2497
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$1800()Z

    move-result v3

    if-eqz v3, :cond_77

    .line 2499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x48

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x7d0

    invoke-static/range {v13 .. v19}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    .line 2503
    :cond_77
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m3DButtonStatus:I
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$3100(Lcom/android/camera/HTCCamera;)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 2505
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m3DButtonStatus:I
    invoke-static {v4}, Lcom/android/camera/HTCCamera;->access$3100(Lcom/android/camera/HTCCamera;)I

    move-result v4

    iput v4, v3, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    .line 2506
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2510
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->switch3DMode()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$9900(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    .line 2515
    :cond_78
    const-string v3, "HTCCamera"

    const-string v4, "mIsPreviewReady = false"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2520
    :pswitch_3f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$9802(Lcom/android/camera/HTCCamera;Z)Z

    goto/16 :goto_0

    .line 2523
    :pswitch_40
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_0

    .line 2526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2531
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    .line 2533
    .local v32, is3DCamera:Z
    if-eqz v32, :cond_79

    .line 2534
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    .line 2538
    :goto_1a
    const-string v3, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MENU_3D_CAMERA_SWITCH] m3DButtonStatus = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v6, v6, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->switch3DMode()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$9900(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    .line 2536
    :cond_79
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    goto :goto_1a

    .line 2546
    .end local v32           #is3DCamera:Z
    :pswitch_41
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #calls: Lcom/android/camera/HTCCamera;->hideSunNightSceneGuide(Z)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$10000(Lcom/android/camera/HTCCamera;Z)V

    goto/16 :goto_0

    .line 2549
    :pswitch_42
    const-string v3, "HTCCamera"

    const-string v4, "FADEOUT_SCENE_LANDSCAPE"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2553
    :pswitch_43
    const-string v3, "HTCCamera"

    const-string v4, "~~~~~~~SHOW_STABLE_ICON~~~~~~~"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x4d

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2556
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mbackIcon_land:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$10100(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f020003

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2557
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mfrontIcon_land:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$10200(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSceneLandscapeTipText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$10300(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0a0194

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2559
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$10400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 2560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSceneLandscapeTipLayout:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$10500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 2561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x4c

    const-wide/16 v6, 0xbb8

    invoke-static {v3, v4, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    .line 2565
    :pswitch_44
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x4e

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mbackIcon_port:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$10600(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f020004

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2568
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mfrontIcon_port:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$10700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2569
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSceneLandscapeTipText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$10300(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0a0194

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2570
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$10800(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 2571
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSceneLandscapeTipLayout:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$10500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 2572
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x4c

    const-wide/16 v6, 0xbb8

    invoke-static {v3, v4, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    .line 2576
    :pswitch_45
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Mesage - AUTO_SMILE_CAPTURE start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2577
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x53

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2578
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_7a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_7a

    .line 2581
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->triggerTakePicture()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$6400(Lcom/android/camera/HTCCamera;)V

    .line 2586
    :goto_1b
    const-string v3, "HTCCamera"

    const-string v4, "UIHandler Message - AUTO_SMILE_CAPTURE end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2584
    :cond_7a
    const-string v3, "HTCCamera"

    const-string v4, "Unable to do auto smile capture in this mode"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 2591
    :pswitch_46
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onCameraThreadRunning()V
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$10900(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    .line 2595
    :pswitch_47
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v6

    #calls: Lcom/android/camera/HTCCamera;->enableSceneIcon(IZ)V
    invoke-static {v3, v4, v6}, Lcom/android/camera/HTCCamera;->access$5300(Lcom/android/camera/HTCCamera;IZ)V

    goto/16 :goto_0

    .line 2600
    :pswitch_48
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x67

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2601
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsUIReady:Z
    invoke-static {v3}, Lcom/android/camera/HTCCamera;->access$400(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #calls: Lcom/android/camera/HTCCamera;->onRotateChanged(I)V
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$9000(Lcom/android/camera/HTCCamera;I)V

    .line 2606
    const-string v3, "HTCCamera"

    const-string v4, "changetoVideoMode, set UI landscape, Freeze UI !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/HTCCamera;->mFreezeUI:Z
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$8802(Lcom/android/camera/HTCCamera;Z)Z

    .line 2608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/camera/rotate/OrientationConfig;->mapUIOrientationToDegree(I)I

    move-result v4

    #setter for: Lcom/android/camera/HTCCamera;->mFreezeOrientation:I
    invoke-static {v3, v4}, Lcom/android/camera/HTCCamera;->access$11002(Lcom/android/camera/HTCCamera;I)I

    goto/16 :goto_0

    .line 1073
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_0
        :pswitch_0
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_0
        :pswitch_0
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_24
        :pswitch_26
        :pswitch_0
        :pswitch_37
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_38
        :pswitch_9
        :pswitch_8
        :pswitch_39
        :pswitch_0
        :pswitch_25
        :pswitch_3a
        :pswitch_3d
        :pswitch_0
        :pswitch_3e
        :pswitch_3f
        :pswitch_0
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_40
        :pswitch_2b
        :pswitch_0
        :pswitch_6
        :pswitch_45
        :pswitch_47
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_46
        :pswitch_48
    .end packed-switch

    .line 1179
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1742
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1c
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    .line 2461
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_3c
    .end packed-switch
.end method
