.class final Lcom/android/camera/CameraThread$InfoListener;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InfoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter

    .prologue
    .line 4439
    iput-object p1, p0, Lcom/android/camera/CameraThread$InfoListener;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4439
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread$InfoListener;-><init>(Lcom/android/camera/CameraThread;)V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 10
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/16 v9, 0x16

    const/16 v8, 0xa

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4442
    const/16 v2, 0x320

    if-ne p2, v2, :cond_3

    .line 4443
    const-string v2, "CameraThread"

    const-string v3, "*********** MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4444
    iget-object v2, p0, Lcom/android/camera/CameraThread$InfoListener;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecording:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1800(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4445
    const-string v2, "CameraThread"

    const-string v3, "mRecording = false, do nothing"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4535
    :cond_0
    :goto_0
    return-void

    .line 4449
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraThread$InfoListener;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v0

    .line 4450
    .local v0, limit:Lcom/android/camera/RecordLimitCheck;
    if-nez v0, :cond_2

    .line 4451
    const-string v2, "CameraThread"

    const-string v3, "mRecordLimitCheck = null, do nothing"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4455
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/RecordLimitCheck;->setTimeOut_API()V

    .line 4456
    invoke-virtual {v0}, Lcom/android/camera/RecordLimitCheck;->getLimitState()I

    move-result v1

    .line 4457
    .local v1, state:I
    packed-switch v1, :pswitch_data_0

    .line 4474
    const-string v2, "CameraThread"

    const-string v3, "InfoListener, should not enter this state !!!!!!!!!!!!!!!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4460
    :pswitch_0
    const-string v2, "CameraThread"

    const-string v3, "InfoListener, reach file size limit - do nothing"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4463
    :pswitch_1
    const-string v2, "CameraThread"

    const-string v3, "Block Capture UI - InfoListener, reach time limit to stop recorder"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4464
    iget-object v2, p0, Lcom/android/camera/CameraThread$InfoListener;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    .line 4465
    iget-object v2, p0, Lcom/android/camera/CameraThread$InfoListener;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 4466
    iget-object v2, p0, Lcom/android/camera/CameraThread$InfoListener;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-static {v2, v8, v5, v5, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    .line 4469
    :pswitch_2
    const-string v2, "CameraThread"

    const-string v3, "InfoListener, api reach time limit - wait ui reach time limit"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4470
    iget-object v2, p0, Lcom/android/camera/CameraThread$InfoListener;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-static {v2, v9}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    goto :goto_0

    .line 4478
    .end local v0           #limit:Lcom/android/camera/RecordLimitCheck;
    .end local v1           #state:I
    :cond_3
    const/16 v2, 0x321

    if-ne p2, v2, :cond_0

    .line 4480
    const-string v2, "CameraThread"

    const-string v3, "*********** MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4481
    iget-object v2, p0, Lcom/android/camera/CameraThread$InfoListener;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecording:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1800(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4482
    const-string v2, "CameraThread"

    const-string v3, "mRecording = false, do nothing"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4486
    :cond_4
    iget-object v2, p0, Lcom/android/camera/CameraThread$InfoListener;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v0

    .line 4487
    .restart local v0       #limit:Lcom/android/camera/RecordLimitCheck;
    if-nez v0, :cond_5

    .line 4488
    const-string v2, "CameraThread"

    const-string v3, "mRecordLimitCheck = null, do nothing"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4492
    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/RecordLimitCheck;->getLimitState()I

    move-result v1

    .line 4493
    .restart local v1       #state:I
    if-eq v1, v6, :cond_6

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 4494
    :cond_6
    const-string v2, "CameraThread"

    const-string v3, "InfoListener, reach file size limit - do nothing"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4498
    :cond_7
    invoke-virtual {v0, v5}, Lcom/android/camera/RecordLimitCheck;->setFileSizelimit_API(Z)V

    .line 4499
    invoke-virtual {v0}, Lcom/android/camera/RecordLimitCheck;->getLimitState()I

    move-result v1

    .line 4500
    packed-switch v1, :pswitch_data_1

    .line 4531
    :pswitch_3
    const-string v2, "CameraThread"

    const-string v3, "InfoListener, should not enter this state !!!!!!!!!!!!!!!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4502
    :pswitch_4
    iget-object v2, p0, Lcom/android/camera/CameraThread$InfoListener;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    const v4, 0x7f0a003f

    invoke-static {v2, v3, v4, v5, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 4504
    const-string v2, "CameraThread"

    const-string v3, "InfoListener, reach FATA32 file \'system file size limitation"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4506
    :pswitch_5
    const-string v2, "CameraThread"

    const-string v3, "Block Capture UI - InfoListener, reach max file size to stop recorder"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4507
    iget-object v2, p0, Lcom/android/camera/CameraThread$InfoListener;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    .line 4508
    iget-object v2, p0, Lcom/android/camera/CameraThread$InfoListener;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 4509
    iget-object v2, p0, Lcom/android/camera/CameraThread$InfoListener;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-static {v2, v9}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4510
    iget-object v2, p0, Lcom/android/camera/CameraThread$InfoListener;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-static {v2, v8, v5, v5, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 4513
    :pswitch_6
    invoke-virtual {v0}, Lcom/android/camera/RecordLimitCheck;->getUseTimeOut_API()Z

    move-result v2

    if-nez v2, :cond_8

    .line 4514
    const-string v2, "CameraThread"

    const-string v3, "InfoListener, ui reach time limit, no api - do nothing"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4517
    :cond_8
    invoke-virtual {v0, v6}, Lcom/android/camera/RecordLimitCheck;->setFileSizelimit_API(Z)V

    .line 4518
    const-string v2, "CameraThread"

    const-string v3, "Block Capture UI - InfoListener, reach max file size to stop recorder"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4519
    iget-object v2, p0, Lcom/android/camera/CameraThread$InfoListener;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    .line 4520
    iget-object v2, p0, Lcom/android/camera/CameraThread$InfoListener;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4521
    iget-object v2, p0, Lcom/android/camera/CameraThread$InfoListener;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-static {v2, v9}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4522
    iget-object v2, p0, Lcom/android/camera/CameraThread$InfoListener;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-static {v2, v8, v5, v5, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 4526
    :pswitch_7
    const-string v2, "CameraThread"

    const-string v3, "InfoListener, api reach time limit, do nothing"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4457
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 4500
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method
