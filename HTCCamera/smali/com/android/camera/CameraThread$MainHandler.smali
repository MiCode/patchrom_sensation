.class Lcom/android/camera/CameraThread$MainHandler;
.super Landroid/os/Handler;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 537
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread$MainHandler;-><init>(Lcom/android/camera/CameraThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 66
    .parameter "msg"

    .prologue
    .line 543
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2080
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 547
    :pswitch_1
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraHandler Message - SET_RESOLUTION start mMode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-nez v2, :cond_1

    .line 552
    const-string v2, "CameraThread"

    const-string v3, "UnBlock Capture UI - mCameraDevice is null in SET_RESOLUTION message"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    goto :goto_0

    .line 557
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v65, v0

    .line 558
    .local v65, width:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v36, v0

    .line 559
    .local v36, height:I
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set Resolution: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v65

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v2, :cond_5

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "pref_camera_image_ratio"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    .line 564
    .local v23, bWideScreen:Z
    if-eqz v23, :cond_4

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    sget v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    #setter for: Lcom/android/camera/CameraThread;->Camera_Preview_Width:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$302(Lcom/android/camera/CameraThread;I)I

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    sget v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    #setter for: Lcom/android/camera/CameraThread;->Camera_Preview_Height:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$402(Lcom/android/camera/CameraThread;I)I

    .line 571
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move/from16 v0, v65

    #setter for: Lcom/android/camera/CameraThread;->Camera_Mode_Width:I
    invoke-static {v2, v0}, Lcom/android/camera/CameraThread;->access$502(Lcom/android/camera/CameraThread;I)I

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move/from16 v0, v36

    #setter for: Lcom/android/camera/CameraThread;->Camera_Mode_Height:I
    invoke-static {v2, v0}, Lcom/android/camera/CameraThread;->access$602(Lcom/android/camera/CameraThread;I)I

    .line 578
    .end local v23           #bWideScreen:Z
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mPreviewing:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$900(Lcom/android/camera/CameraThread;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mPreviewing:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$902(Lcom/android/camera/CameraThread;Z)Z

    .line 592
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1002(Lcom/android/camera/CameraThread;Z)Z

    .line 594
    new-instance v45, Landroid/graphics/Matrix;

    invoke-direct/range {v45 .. v45}, Landroid/graphics/Matrix;-><init>()V

    .line 595
    .local v45, matrix:Landroid/graphics/Matrix;
    const/4 v2, 0x0

    const/16 v3, 0x5a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getPreviewHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getPreviewWidth()I

    move-result v7

    move-object/from16 v0, v45

    invoke-static {v0, v2, v3, v5, v7}, Lcom/android/camera/CameraThread;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1100(Lcom/android/camera/CameraThread;)Landroid/graphics/Matrix;

    move-result-object v2

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 602
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraHandler Message - SET_RESOLUTION end mode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    .end local v36           #height:I
    .end local v45           #matrix:Landroid/graphics/Matrix;
    .end local v65           #width:I
    :pswitch_2
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraHandler Message - START_PREVIEW start mode"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 617
    .local v4, status:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCanStartPreview:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1200(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x1f4

    invoke-static/range {v2 .. v8}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    .line 568
    .end local v4           #status:I
    .restart local v23       #bWideScreen:Z
    .restart local v36       #height:I
    .restart local v65       #width:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    #setter for: Lcom/android/camera/CameraThread;->Camera_Preview_Width:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$302(Lcom/android/camera/CameraThread;I)I

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    #setter for: Lcom/android/camera/CameraThread;->Camera_Preview_Height:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$402(Lcom/android/camera/CameraThread;I)I

    goto/16 :goto_1

    .line 573
    .end local v23           #bWideScreen:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move/from16 v0, v65

    #setter for: Lcom/android/camera/CameraThread;->Video_Mode_Width:I
    invoke-static {v2, v0}, Lcom/android/camera/CameraThread;->access$702(Lcom/android/camera/CameraThread;I)I

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move/from16 v0, v36

    #setter for: Lcom/android/camera/CameraThread;->Video_Mode_Height:I
    invoke-static {v2, v0}, Lcom/android/camera/CameraThread;->access$802(Lcom/android/camera/CameraThread;I)I

    goto/16 :goto_2

    .line 622
    .end local v36           #height:I
    .end local v65           #width:I
    .restart local v4       #status:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->isLastCameraClosed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x64

    invoke-static/range {v2 .. v8}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    .line 627
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraThread;->startPreview(I)V

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->setBlock3DSwitch(Z)V

    .line 631
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DHWSwitch()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x49

    const-wide/16 v9, 0x6a4

    invoke-static {v2, v3, v9, v10}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v5, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x48

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x12c

    invoke-static/range {v5 .. v11}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    .line 640
    :cond_8
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_PREVIEW end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 645
    .end local v4           #status:I
    :pswitch_3
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - WAIT_SELFTIMER start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->checkCanTakePicture()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1300(Lcom/android/camera/CameraThread;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mTaking_picture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1400(Lcom/android/camera/CameraThread;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 649
    const-string v2, "CameraThread"

    const-string v3, "mTaking_picture == true"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v2, "CameraThread"

    const-string v3, "UnBlock Capture UI - mTaking_picture == true"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x3f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x23

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 654
    const-string v2, "CameraThread"

    const-string v3, "mTaking_picture == true - mFocusingState = NO_FOCUSING"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->setFocusingState(I)V

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    goto/16 :goto_0

    .line 660
    :cond_9
    const-string v2, "CameraThread"

    const-string v3, "WAIT_SELFTIMER"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 662
    const-string v2, "CameraThread"

    const-string v3, "take picture, but mMode == VIDEO_MODE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string v2, "CameraThread"

    const-string v3, "UnBlock Capture UI - take picture, but mMode == VIDEO_MODE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x3f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x23

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 667
    const-string v2, "CameraThread"

    const-string v3, "mMode == VIDEO_MODE - mFocusingState = NO_FOCUSING"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->setFocusingState(I)V

    .line 669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    goto/16 :goto_0

    .line 674
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getFocusingState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 675
    const-string v2, "CameraThread"

    const-string v3, "Block Capture UI - focus and then take picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x22

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 694
    :goto_3
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - WAIT_SELFTIMER end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 681
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSelfTimerInterval()I

    move-result v59

    .line 682
    .local v59, timer:I
    if-lez v59, :cond_c

    .line 684
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start SelfTimer: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v59

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v0, v59

    invoke-static {v2, v3, v0, v5, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_3

    .line 688
    :cond_c
    const-string v2, "CameraThread"

    const-string v3, "Block Capture UI - no self timer, take picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x7

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_3

    .line 698
    .end local v59           #timer:I
    :pswitch_4
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TAKE_PREVIEW start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mOneShotPreviewCallback:Lcom/android/camera/CameraThread$OneShotPreviewCallback;
    invoke-static {v3}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraThread$OneShotPreviewCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 705
    :goto_4
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TAKE_PREVIEW exit"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 703
    :cond_d
    const-string v2, "CameraThread"

    const-string v3, "mCameraDevice is null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 709
    :pswitch_5
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TAKE_FOCUS start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 715
    .local v33, focus_X:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v34, v0

    .line 716
    .local v34, focus_Y:I
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TAKE FOCUS: X = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", Y = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    if-ltz v33, :cond_e

    if-gez v34, :cond_f

    .line 718
    :cond_e
    const-string v2, "CameraThread"

    const-string v3, "TAKE FOCUS: X < 0 or Y < 0 !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 722
    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->bShutterSound:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1700(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecording:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1800(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_17

    sget v2, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_10

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceFocusSound()Z

    move-result v2

    if-nez v2, :cond_10

    sget-boolean v2, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    if-eqz v2, :cond_17

    .line 726
    :cond_10
    const-string v2, "CameraThread"

    const-string v3, "Play Focusing Sound"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v5, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x15

    const v7, 0x7f060003

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0xc8

    invoke-static/range {v5 .. v11}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    .line 735
    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    if-eqz v2, :cond_12

    sget v2, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 736
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/camera/CameraThread;->bShowFocusIcon:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1902(Lcom/android/camera/CameraThread;Z)Z

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x18

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 753
    :cond_13
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move/from16 v0, v33

    move/from16 v1, v34

    #calls: Lcom/android/camera/CameraThread;->SetICSFocusParam(II)V
    invoke-static {v2, v0, v1}, Lcom/android/camera/CameraThread;->access$2000(Lcom/android/camera/CameraThread;II)V

    .line 755
    sget v2, Lcom/android/camera/HTCCamera;->mFocusMode:I

    if-eqz v2, :cond_14

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "touch-aec"

    const-string v5, "on"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/camera/CameraThread;->mEnableTouchAEC:Z

    .line 759
    const-string v2, "CameraThread"

    const-string v3, "Enable touch aec !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    sget v2, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 763
    const-string v2, "CameraThread"

    const-string v3, "Touch focus - disable continue AF !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "enable-caf"

    const-string v5, "off"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/camera/CameraThread;->mEnableCAF:Z

    .line 770
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 772
    sget-boolean v2, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    if-eqz v2, :cond_15

    .line 774
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :goto_7
    const-string v2, "CameraThread"

    const-string v3, "take focus again, so cancel auto focus, mTakeFocus = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    .line 782
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x5

    const-wide/16 v9, 0x12c

    invoke-static {v2, v3, v9, v10}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 783
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TOUCH_FOCUS end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :cond_16
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TAKE_FOCUS end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 729
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 730
    const-string v2, "CameraThread"

    const-string v3, "Play Focusing Sound"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v5, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x15

    const v7, 0x7f060003

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0xc8

    invoke-static/range {v5 .. v11}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_5

    .line 739
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->bShowFocusIcon:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1902(Lcom/android/camera/CameraThread;Z)Z

    goto/16 :goto_6

    .line 775
    :catch_0
    move-exception v30

    .line 776
    .local v30, ex:Ljava/lang/Exception;
    const-string v2, "CameraThread"

    const-string v3, "cancel focus failed"

    move-object/from16 v0, v30

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 791
    .end local v30           #ex:Ljava/lang/Exception;
    .end local v33           #focus_X:I
    .end local v34           #focus_Y:I
    :pswitch_6
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_FOCUS start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    sget-object v2, Lcom/android/camera/TIME;->AutoFocusCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v2}, Lcom/android/camera/TIME$Value;->Start()V

    .line 794
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mAutoFocusCallback:Lcom/android/camera/CameraThread$AutoFocusCallback;
    invoke-static {v3}, Lcom/android/camera/CameraThread;->access$2100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraThread$AutoFocusCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 795
    const-string v2, "CameraThread"

    const-string v3, "start focus, mTakeFocus = true"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    .line 798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecording:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1800(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x2d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x2d

    const-wide/16 v9, 0x1f4

    invoke-static {v2, v3, v9, v10}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 807
    :cond_19
    :goto_8
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_FOCUS end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 802
    :catch_1
    move-exception v30

    .line 803
    .restart local v30       #ex:Ljava/lang/Exception;
    const-string v2, "CameraThread"

    const-string v3, "auto focus failed"

    move-object/from16 v0, v30

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 804
    const-string v2, "CameraThread"

    const-string v3, "set focus false, continute taking picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #calls: Lcom/android/camera/CameraThread;->handleAutoFocus(Z)V
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$2200(Lcom/android/camera/CameraThread;Z)V

    goto :goto_8

    .line 811
    .end local v30           #ex:Ljava/lang/Exception;
    :pswitch_7
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CANCEL_FOCUS start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x2d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 817
    sget-boolean v2, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    if-eqz v2, :cond_1a

    .line 819
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 823
    :goto_9
    const-string v2, "CameraThread"

    const-string v3, "cancel auto focus, mTakeFocus = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    .line 826
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 828
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CANCEL_FOCUS end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 820
    :catch_2
    move-exception v30

    .line 821
    .restart local v30       #ex:Ljava/lang/Exception;
    const-string v2, "CameraThread"

    const-string v3, "cancel focus failed"

    move-object/from16 v0, v30

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 832
    .end local v30           #ex:Ljava/lang/Exception;
    :pswitch_8
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - RECORDING_FINISH_AUTO_FOCUS start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #calls: Lcom/android/camera/CameraThread;->handleAutoFocus(Z)V
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$2200(Lcom/android/camera/CameraThread;Z)V

    .line 845
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - RECORDING_FINISH_AUTO_FOCUS end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 853
    :pswitch_9
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TAKE_PICTURE start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1b

    .line 855
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_ERROR, can\'t take picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 859
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/camera/CameraThread;->mTaking_picture:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1402(Lcom/android/camera/CameraThread;Z)Z

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->stop_calculate_fps()V

    .line 862
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2300(Lcom/android/camera/CameraThread;)Ljava/lang/Thread;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2300(Lcom/android/camera/CameraThread;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 867
    :cond_1c
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$2302(Lcom/android/camera/CameraThread;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2400(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mTaking_picture:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1402(Lcom/android/camera/CameraThread;Z)Z

    .line 871
    const-string v2, "CameraThread"

    const-string v3, "UnBlock Capture UI - mbCanTakePicture = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x3f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x23

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 876
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 878
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->start_calculate_fps()V

    .line 897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    .line 898
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TAKE_PICTURE end, mbCanTakePicture = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 864
    :catch_3
    move-exception v30

    .line 865
    .local v30, ex:Ljava/lang/InterruptedException;
    const-string v2, "CameraThread"

    const-string v3, "Exception"

    move-object/from16 v0, v30

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 903
    .end local v30           #ex:Ljava/lang/InterruptedException;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    .line 904
    const-string v2, "CameraThread"

    const-string v3, "Really take picture - mCaptureState = CAPTURE_STATE_TAKING_PICTURE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->capture()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2500(Lcom/android/camera/CameraThread;)V

    .line 937
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - TAKE_PICTURE end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 941
    :pswitch_a
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraHandler Message - STOP_PREVIEW start  mMode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mPreviewing:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$900(Lcom/android/camera/CameraThread;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->stop_calculate_fps()V

    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mPreviewing:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$902(Lcom/android/camera/CameraThread;Z)Z

    .line 948
    const-string v2, "CameraThread"

    const-string v3, "stopPreview"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    :cond_1e
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - STOP_PREVIEW end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 954
    :pswitch_b
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CLOSE_CAMERA_DELAYED start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const-wide/16 v2, 0x7d0

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 960
    :goto_b
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CLOSE_CAMERA_DELAYED end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    :pswitch_c
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraHandler Message - CLOSE_CAMERA start mMode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    .line 983
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->close_camera()V

    .line 987
    :goto_c
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CLOSE_CAMERA end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 957
    :catch_4
    move-exception v30

    .line 958
    .local v30, ex:Ljava/lang/Exception;
    const-string v2, "CameraThread"

    const-string v3, "Exception"

    move-object/from16 v0, v30

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 966
    .end local v30           #ex:Ljava/lang/Exception;
    :pswitch_d
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState == CAPTURE_STATE_TAKING_PICTURE, not close camera, waiting ..."

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x2

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    .line 968
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_WAITING_CLOSE_CAMERA"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 971
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    .line 972
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->close_camera()V

    goto :goto_c

    .line 976
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    .line 977
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_c

    .line 991
    :pswitch_10
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - QUIT_CAMERA_THREAD start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x1f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 997
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)I

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1f

    .line 998
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState != CAPTURE_STATE_IDLE, not quit camera thread, waiting ..."

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x3

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    .line 1000
    const-string v2, "CameraThread"

    const-string v3, "mCaptureState = CAPTURE_STATE_WAITING_QUIT_THREAD"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1004
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->close_camera()V

    .line 1006
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v47

    .line 1007
    .local v47, myloop:Landroid/os/Looper;
    invoke-virtual/range {v47 .. v47}, Landroid/os/Looper;->quit()V

    .line 1008
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - QUIT_CAMERA_THREAD end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1013
    .end local v47           #myloop:Landroid/os/Looper;
    :pswitch_11
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_RECORDING start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->stop_calculate_fps()V

    .line 1016
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2300(Lcom/android/camera/CameraThread;)Ljava/lang/Thread;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 1017
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2300(Lcom/android/camera/CameraThread;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1021
    :cond_20
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$2302(Lcom/android/camera/CameraThread;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mbCanTakePicture:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2400(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 1024
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mRecording:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1802(Lcom/android/camera/CameraThread;Z)Z

    .line 1025
    const-string v2, "CameraThread"

    const-string v3, "UnBlock Capture UI - mbCanTakePicture = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1027
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x3f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x23

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1030
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x40

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->start_calculate_fps()V

    goto/16 :goto_0

    .line 1018
    :catch_5
    move-exception v30

    .line 1019
    .local v30, ex:Ljava/lang/InterruptedException;
    const-string v2, "CameraThread"

    const-string v3, "Exception"

    move-object/from16 v0, v30

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 1036
    .end local v30           #ex:Ljava/lang/InterruptedException;
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->bShutterSound:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1700(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2600(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1039
    const-string v2, "CameraThread"

    const-string v3, "Play start record sound"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const v3, 0x7f060004

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->PlaySound(I)V

    .line 1046
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x36

    const-wide/16 v9, 0x12c

    invoke-static {v2, v3, v9, v10}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    .line 1054
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraThread;->start_video_recording(I)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecording:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1800(Lcom/android/camera/CameraThread;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    .line 1058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/RecordLimitCheck;->getCheckSizeDuration()J

    move-result-wide v9

    invoke-static {v2, v3, v9, v10}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 1064
    :cond_24
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_RECORDING end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1068
    :pswitch_12
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_RECORDING_DELAY start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraThread;->start_video_recording(I)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecording:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1800(Lcom/android/camera/CameraThread;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    .line 1073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/RecordLimitCheck;->getCheckSizeDuration()J

    move-result-wide v9

    invoke-static {v2, v3, v9, v10}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 1079
    :cond_25
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - START_RECORDING_DELAY end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1083
    :pswitch_13
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - RECORDING_MESSAGE start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_26

    .line 1085
    const-string v2, "CameraThread"

    const-string v3, "record, but mMode != VIDEO_MODE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    const-string v2, "CameraThread"

    const-string v3, "UnBlock Capture UI - record, but mMode != VIDEO_MODE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    goto/16 :goto_0

    .line 1090
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecording:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1800(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 1092
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->checkCanTakeRecorder()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2700(Lcom/android/camera/CameraThread;)V

    .line 1093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x9

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1148
    :goto_e
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - RECORDING_MESSAGE end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1120
    :cond_27
    const-string v2, "CameraThread"

    const-string v3, "Recording Message - Stop Recording"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x2d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x16

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mRecording:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1802(Lcom/android/camera/CameraThread;Z)Z

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->stop_video_recording()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2800(Lcom/android/camera/CameraThread;)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mPreviewing:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$902(Lcom/android/camera/CameraThread;Z)Z

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->bShutterSound:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1700(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2600(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1137
    const-string v2, "CameraThread"

    const-string v3, "Play end record sound"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const v3, 0x7f060005

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->PlaySound(I)V

    .line 1144
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x41

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_e

    .line 1153
    :pswitch_14
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - ENTER_VIDEO_MODE start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 1160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x1

    iput v3, v2, Lcom/android/camera/CameraThread;->mMode:I

    .line 1163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1167
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportThumbnailAlbumButton()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    .line 1169
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1175
    :cond_29
    :goto_f
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - ENTER_VIDEO_MODE end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1172
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x39

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_f

    .line 1179
    :pswitch_15
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - EXIT_VIDEO_MODE start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecording:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1800(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1184
    const-string v2, "CameraThread"

    const-string v3, "Exit Video Mode - Stop Recording"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->stop_video_recording()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$2800(Lcom/android/camera/CameraThread;)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mRecording:Z
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$1802(Lcom/android/camera/CameraThread;Z)Z

    .line 1192
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/camera/CameraThread;->mMode:I

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1199
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportThumbnailAlbumButton()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2c

    .line 1201
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x1d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1208
    :cond_2c
    :goto_10
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - EXIT_VIDEO_MODE end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1204
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x39

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_10

    .line 1294
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1296
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v64, v0

    check-cast v64, Ljava/lang/String;

    .line 1298
    .local v64, wb:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move-object/from16 v0, v64

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setWhiteBalance(Ljava/lang/String;)V

    .line 1299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1302
    const-string v2, "incandescent"

    move-object/from16 v0, v64

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1304
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[choose_Incandescent]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1312
    .end local v64           #wb:Ljava/lang/String;
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1314
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    .line 1315
    .local v43, level:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "exposure-compensation"

    const/4 v5, 0x5

    move/from16 v0, v43

    invoke-virtual {v2, v3, v0, v5}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v60

    .line 1320
    .local v60, value:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move/from16 v0, v60

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setExposureCompensation(I)V

    .line 1321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1326
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[adjust_exposure]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1332
    .end local v43           #level:I
    .end local v60           #value:I
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1335
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    .line 1337
    .local v20, bIsPostProcessing:Z
    if-eqz v20, :cond_2e

    .line 1338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "postproc-enable-imboost"

    const-string v5, "on"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "postproc-enable-denoise"

    const-string v5, "on"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    .line 1342
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "postproc-enable-imboost"

    const-string v5, "off"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "postproc-enable-denoise"

    const-string v5, "off"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 1353
    .end local v20           #bIsPostProcessing:Z
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    #setter for: Lcom/android/camera/CameraThread;->bIsStereo:Z
    invoke-static {v3, v2}, Lcom/android/camera/CameraThread;->access$2902(Lcom/android/camera/CameraThread;Z)Z

    .line 1355
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[STEREO_RECORDING] Stereo = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->bIsStereo:Z
    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$2900(Lcom/android/camera/CameraThread;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1361
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1363
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/lang/String;

    .line 1364
    .local v41, iso:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "iso"

    move-object/from16 v0, v41

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    .line 1371
    .end local v41           #iso:Ljava/lang/String;
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/camera/CameraThread;->setColorEffect(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1377
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1379
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/String;

    .line 1380
    .local v42, key:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    .line 1381
    .restart local v43       #level:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const/4 v3, 0x5

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v60

    .line 1383
    .restart local v60       #value:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move-object/from16 v0, v42

    move/from16 v1, v60

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1388
    const-string v2, "contrast"

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1390
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[adjust_contract]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1391
    :cond_2f
    const-string v2, "saturation"

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1393
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[adjust_saturation]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1394
    :cond_30
    const-string v2, "sharpness"

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1396
    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[adjust_sharpness]complete"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1402
    .end local v42           #key:Ljava/lang/String;
    .end local v43           #level:I
    .end local v60           #value:I
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getFlashRestriction()Lcom/android/camera/FlashRestriction;

    move-result-object v53

    .line 1406
    .local v53, restriction:Lcom/android/camera/FlashRestriction;
    if-eqz v53, :cond_31

    invoke-virtual/range {v53 .. v53}, Lcom/android/camera/FlashRestriction;->isDisableFlash()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_31

    .line 1407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "off"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    .line 1410
    :cond_31
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, Ljava/lang/String;

    .line 1411
    .local v60, value:Ljava/lang/String;
    if-eqz v60, :cond_32

    .line 1412
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set flash mode: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v60

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move-object/from16 v0, v60

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    .line 1416
    :cond_32
    const-string v2, "CameraThread"

    const-string v3, "set flash mode - null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1426
    .end local v53           #restriction:Lcom/android/camera/FlashRestriction;
    .end local v60           #value:Ljava/lang/String;
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mRecording:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1800(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 1427
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CHECK_RECORD_SIZE_LIMIT end - mRecording = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1431
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v44

    .line 1432
    .local v44, limit:Lcom/android/camera/RecordLimitCheck;
    if-nez v44, :cond_34

    .line 1433
    const-string v2, "CameraThread"

    const-string v3, "mRecordLimitCheck = null !!! - CHECK_RECORD_SIZE_LIMIT end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1437
    :cond_34
    invoke-virtual/range {v44 .. v44}, Lcom/android/camera/RecordLimitCheck;->checkSizeLimit()V

    .line 1438
    invoke-virtual/range {v44 .. v44}, Lcom/android/camera/RecordLimitCheck;->getLimitState()I

    move-result v55

    .line 1439
    .local v55, state:I
    packed-switch v55, :pswitch_data_2

    .line 1473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x16

    invoke-virtual/range {v44 .. v44}, Lcom/android/camera/RecordLimitCheck;->getCheckSizeDuration()J

    move-result-wide v9

    invoke-static {v2, v3, v9, v10}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    .line 1441
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    const v5, 0x7f0a003f

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1443
    const-string v2, "CameraThread"

    const-string v3, "reach FATA32 file \'system file size limitation"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    :pswitch_20
    const-string v2, "CameraThread"

    const-string v3, "Block Capture UI - FILE_SIZE_LIMIT stop recorder"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    .line 1447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0xa

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1452
    :pswitch_21
    const-string v2, "CameraThread"

    const-string v3, "Block Capture UI - DISK_SPACE_LIMIT stop recorder"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    .line 1454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0xa

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1457
    const/4 v2, 0x3

    sput v2, Lcom/android/camera/CameraThread;->Storage_Status:I

    .line 1459
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x8a

    if-ne v2, v3, :cond_35

    .line 1460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    const v5, 0x7f0a0034

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1463
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    const v5, 0x7f0a0033

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1469
    :pswitch_22
    const-string v2, "CameraThread"

    const-string v3, "reach time out - not to check file size limit"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1481
    .end local v44           #limit:Lcom/android/camera/RecordLimitCheck;
    .end local v55           #state:I
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mIsStart_fps:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3000(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mFps:I
    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)I

    move-result v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    #setter for: Lcom/android/camera/CameraThread;->mFps:I
    invoke-static {v2, v3}, Lcom/android/camera/CameraThread;->access$3102(Lcom/android/camera/CameraThread;I)I

    .line 1487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x19

    const-wide/16 v9, 0x3e8

    invoke-static {v2, v3, v9, v10}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    .line 1491
    :pswitch_24
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - LOAD_SETTINGS start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->loadSettings()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)V

    .line 1493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x23

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x2d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1498
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - LOAD_SETTINGS end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1505
    :pswitch_25
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_THUMB start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    const/4 v6, 0x0

    .line 1507
    .local v6, img_uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 1509
    .local v8, video_uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v2

    if-nez v2, :cond_36

    .line 1510
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1511
    sget-object v8, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v63, v8

    .line 1519
    .end local v8           #video_uri:Landroid/net/Uri;
    .local v63, video_uri:Landroid/net/Uri;
    :goto_12
    if-eqz v6, :cond_0

    if-eqz v63, :cond_0

    .line 1522
    const-string v16, "IMAG%"

    .line 1523
    .local v16, IMAG:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v7, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v7, v2

    const/4 v2, 0x2

    const-string v3, "datetaken"

    aput-object v3, v7, v2

    const-string v8, "_display_name LIKE ?"

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v16, v9, v2

    const-string v10, "datetaken ASC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 1524
    .local v27, cursor_img:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v2, 0x3

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v9, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v9, v2

    const/4 v2, 0x2

    const-string v3, "datetaken"

    aput-object v3, v9, v2

    const-string v10, "bucket_display_name=\'100MEDIA\'"

    const/4 v11, 0x0

    const-string v12, "datetaken ASC"

    move-object/from16 v8, v63

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 1526
    .local v28, cursor_video:Landroid/database/Cursor;
    const/16 v56, 0x0

    .line 1528
    .local v56, thumb:Landroid/graphics/Bitmap;
    const/16 v38, 0x0

    .line 1529
    .local v38, img_path:Ljava/lang/String;
    const/16 v37, 0x0

    .line 1530
    .local v37, image_id:Ljava/lang/String;
    const/16 v39, 0x0

    .line 1533
    .local v39, img_taken_time:Ljava/lang/String;
    if-eqz v27, :cond_37

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_37

    .line 1536
    :try_start_6
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToLast()Z

    .line 1537
    const-string v2, "_data"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 1538
    const-string v2, "_id"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 1539
    const-string v2, "datetaken"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-result-object v39

    .line 1559
    :goto_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v52, v0

    .line 1560
    .local v52, path:Ljava/lang/Object;
    const/16 v61, 0x0

    .line 1561
    .local v61, video_path:Ljava/lang/String;
    const/16 v62, 0x0

    .line 1563
    .local v62, video_taken_time:Ljava/lang/String;
    if-eqz v28, :cond_38

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_38

    .line 1565
    :try_start_7
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToLast()Z

    .line 1566
    const-string v2, "_data"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v61

    .line 1567
    const-string v2, "datetaken"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    move-result-object v62

    .line 1586
    :goto_14
    const/16 v57, 0x0

    .line 1587
    .local v57, thumb_path:Ljava/lang/String;
    const/16 v17, 0x0

    .line 1588
    .local v17, MODE:I
    const/16 v18, 0x0

    .line 1590
    .local v18, ThumbType:I
    if-nez v27, :cond_39

    if-nez v28, :cond_39

    .line 1591
    const/16 v18, 0x0

    .line 1624
    :goto_15
    if-nez v18, :cond_42

    .line 1625
    const-string v2, "CameraThread"

    const-string v3, "Both Image/Video cursor are null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1513
    .end local v16           #IMAG:Ljava/lang/String;
    .end local v17           #MODE:I
    .end local v18           #ThumbType:I
    .end local v27           #cursor_img:Landroid/database/Cursor;
    .end local v28           #cursor_video:Landroid/database/Cursor;
    .end local v37           #image_id:Ljava/lang/String;
    .end local v38           #img_path:Ljava/lang/String;
    .end local v39           #img_taken_time:Ljava/lang/String;
    .end local v52           #path:Ljava/lang/Object;
    .end local v56           #thumb:Landroid/graphics/Bitmap;
    .end local v57           #thumb_path:Ljava/lang/String;
    .end local v61           #video_path:Ljava/lang/String;
    .end local v62           #video_taken_time:Ljava/lang/String;
    .end local v63           #video_uri:Landroid/net/Uri;
    .restart local v8       #video_uri:Landroid/net/Uri;
    :cond_36
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_69

    .line 1515
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1516
    sget-object v8, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v63, v8

    .end local v8           #video_uri:Landroid/net/Uri;
    .restart local v63       #video_uri:Landroid/net/Uri;
    goto/16 :goto_12

    .line 1540
    .restart local v16       #IMAG:Ljava/lang/String;
    .restart local v27       #cursor_img:Landroid/database/Cursor;
    .restart local v28       #cursor_video:Landroid/database/Cursor;
    .restart local v37       #image_id:Ljava/lang/String;
    .restart local v38       #img_path:Ljava/lang/String;
    .restart local v39       #img_taken_time:Ljava/lang/String;
    .restart local v56       #thumb:Landroid/graphics/Bitmap;
    :catch_6
    move-exception v32

    .line 1541
    .local v32, exSqlIO:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v2, "CameraThread"

    invoke-virtual/range {v32 .. v32}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1542
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1543
    const/16 v27, 0x0

    .line 1544
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_THUMB end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1546
    .end local v32           #exSqlIO:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_7
    move-exception v31

    .line 1547
    .local v31, exCursor:Ljava/lang/Exception;
    const-string v2, "CameraThread"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1548
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1549
    const/16 v27, 0x0

    .line 1550
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_THUMB end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1555
    .end local v31           #exCursor:Ljava/lang/Exception;
    :cond_37
    const-string v2, "CameraThread"

    const-string v3, "thumbnail Image Cursor == null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1568
    .restart local v52       #path:Ljava/lang/Object;
    .restart local v61       #video_path:Ljava/lang/String;
    .restart local v62       #video_taken_time:Ljava/lang/String;
    :catch_8
    move-exception v32

    .line 1569
    .restart local v32       #exSqlIO:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v2, "CameraThread"

    invoke-virtual/range {v32 .. v32}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1570
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 1571
    const/16 v28, 0x0

    .line 1572
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_THUMB end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1574
    .end local v32           #exSqlIO:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_9
    move-exception v31

    .line 1575
    .restart local v31       #exCursor:Ljava/lang/Exception;
    const-string v2, "CameraThread"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1576
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 1577
    const/16 v28, 0x0

    .line 1578
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_THUMB end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1582
    .end local v31           #exCursor:Ljava/lang/Exception;
    :cond_38
    const-string v2, "CameraThread"

    const-string v3, "thumbnail Video Cursor == null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 1593
    .restart local v17       #MODE:I
    .restart local v18       #ThumbType:I
    .restart local v57       #thumb_path:Ljava/lang/String;
    :cond_39
    if-nez v27, :cond_3b

    .line 1594
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3a

    .line 1595
    const/16 v18, 0x0

    goto/16 :goto_15

    .line 1597
    :cond_3a
    const/16 v18, 0x2

    goto/16 :goto_15

    .line 1599
    :cond_3b
    if-nez v28, :cond_3d

    .line 1600
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3c

    .line 1601
    const/16 v18, 0x0

    goto/16 :goto_15

    .line 1603
    :cond_3c
    const/16 v18, 0x1

    goto/16 :goto_15

    .line 1606
    :cond_3d
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3e

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3e

    .line 1607
    const/16 v18, 0x0

    goto/16 :goto_15

    .line 1608
    :cond_3e
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3f

    .line 1609
    const/16 v18, 0x1

    goto/16 :goto_15

    .line 1610
    :cond_3f
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_40

    .line 1611
    const/16 v18, 0x2

    goto/16 :goto_15

    .line 1613
    :cond_40
    const/16 v25, 0x0

    .line 1614
    .local v25, comp:I
    move-object/from16 v0, v39

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v25

    .line 1615
    if-lez v25, :cond_41

    .line 1616
    const/16 v18, 0x1

    goto/16 :goto_15

    .line 1618
    :cond_41
    const/16 v18, 0x2

    goto/16 :goto_15

    .line 1628
    .end local v25           #comp:I
    :cond_42
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_46

    .line 1631
    :try_start_8
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create image thumbnail - path: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    const/4 v2, 0x3

    move-object/from16 v0, v38

    invoke-static {v0, v2}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_b

    move-result-object v56

    .line 1633
    move-object/from16 v57, v38

    .line 1634
    const/16 v17, 0x0

    .line 1656
    :cond_43
    :goto_16
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 1657
    .local v24, bundle:Landroid/os/Bundle;
    const-string v2, "thumb_file_path"

    move-object/from16 v0, v24

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v46

    .line 1659
    .local v46, msgg:Landroid/os/Message;
    const/16 v2, 0x32

    move-object/from16 v0, v46

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1660
    move/from16 v0, v17

    move-object/from16 v1, v46

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1661
    move-object/from16 v0, v46

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1662
    move-object/from16 v0, v56

    move-object/from16 v1, v46

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v0, v46

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1666
    if-eqz v27, :cond_44

    .line 1667
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1668
    const/16 v27, 0x0

    .line 1670
    :cond_44
    if-eqz v28, :cond_45

    .line 1671
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 1672
    const/16 v28, 0x0

    .line 1675
    :cond_45
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_THUMB end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1635
    .end local v24           #bundle:Landroid/os/Bundle;
    .end local v46           #msgg:Landroid/os/Message;
    :catch_a
    move-exception v29

    .line 1636
    .local v29, e:Ljava/lang/Exception;
    const-string v2, "CameraThread"

    const-string v3, "ThumbnailUtil.createImageThumbnail() throws exception"

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    .line 1637
    .end local v29           #e:Ljava/lang/Exception;
    :catch_b
    move-exception v48

    .line 1638
    .local v48, oe:Ljava/lang/OutOfMemoryError;
    const-string v2, "CameraThread"

    const-string v3, "ThumbnailUtil.createImageThumbnail() throws java.lang.OutOfMemoryError"

    move-object/from16 v0, v48

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    .line 1641
    .end local v48           #oe:Ljava/lang/OutOfMemoryError;
    :cond_46
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_43

    .line 1644
    :try_start_9
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create video thumbnail - path: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v61

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    const/4 v2, 0x3

    move-object/from16 v0, v61

    invoke-static {v0, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_d

    move-result-object v56

    .line 1646
    move-object/from16 v57, v61

    .line 1647
    const/16 v17, 0x1

    goto/16 :goto_16

    .line 1648
    :catch_c
    move-exception v29

    .line 1649
    .restart local v29       #e:Ljava/lang/Exception;
    const-string v2, "CameraThread"

    const-string v3, "ThumbnailUtil.createVideoThumbnail() throws exception"

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 1650
    .end local v29           #e:Ljava/lang/Exception;
    :catch_d
    move-exception v48

    .line 1651
    .restart local v48       #oe:Ljava/lang/OutOfMemoryError;
    const-string v2, "CameraThread"

    const-string v3, "ThumbnailUtil.createVideoThumbnail() throws java.lang.OutOfMemoryError"

    move-object/from16 v0, v48

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 1680
    .end local v6           #img_uri:Landroid/net/Uri;
    .end local v16           #IMAG:Ljava/lang/String;
    .end local v17           #MODE:I
    .end local v18           #ThumbType:I
    .end local v27           #cursor_img:Landroid/database/Cursor;
    .end local v28           #cursor_video:Landroid/database/Cursor;
    .end local v37           #image_id:Ljava/lang/String;
    .end local v38           #img_path:Ljava/lang/String;
    .end local v39           #img_taken_time:Ljava/lang/String;
    .end local v48           #oe:Ljava/lang/OutOfMemoryError;
    .end local v52           #path:Ljava/lang/Object;
    .end local v56           #thumb:Landroid/graphics/Bitmap;
    .end local v57           #thumb_path:Ljava/lang/String;
    .end local v61           #video_path:Ljava/lang/String;
    .end local v62           #video_taken_time:Ljava/lang/String;
    .end local v63           #video_uri:Landroid/net/Uri;
    :pswitch_26
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_IMAGE_THUMB start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    const/4 v6, 0x0

    .line 1682
    .restart local v6       #img_uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v2

    if-nez v2, :cond_49

    .line 1683
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1692
    :cond_47
    :goto_17
    if-eqz v6, :cond_0

    .line 1696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v7, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v7, v2

    const-string v8, "bucket_display_name=\'100MEDIA\'"

    const/4 v9, 0x0

    const-string v10, "datetaken ASC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 1700
    .local v26, cursor:Landroid/database/Cursor;
    const/16 v56, 0x0

    .line 1701
    .restart local v56       #thumb:Landroid/graphics/Bitmap;
    const/16 v58, 0x0

    .line 1702
    .local v58, thumbpath:Ljava/lang/String;
    const/16 v37, 0x0

    .line 1704
    .restart local v37       #image_id:Ljava/lang/String;
    if-eqz v26, :cond_4a

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4a

    .line 1707
    :try_start_a
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToLast()Z

    .line 1708
    const-string v2, "_data"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 1709
    const-string v2, "_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f

    move-result-object v37

    .line 1725
    :try_start_b
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create image thumbnail - path: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    const/4 v2, 0x3

    move-object/from16 v0, v58

    invoke-static {v0, v2}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_11

    move-result-object v56

    .line 1745
    :goto_18
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 1746
    .restart local v24       #bundle:Landroid/os/Bundle;
    const-string v2, "thumb_file_path"

    move-object/from16 v0, v24

    move-object/from16 v1, v58

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v46

    .line 1748
    .restart local v46       #msgg:Landroid/os/Message;
    const/16 v2, 0x32

    move-object/from16 v0, v46

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1749
    const/4 v2, 0x0

    move-object/from16 v0, v46

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1750
    move-object/from16 v0, v46

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1751
    move-object/from16 v0, v56

    move-object/from16 v1, v46

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v0, v46

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1754
    if-eqz v26, :cond_48

    .line 1755
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 1756
    const/16 v26, 0x0

    .line 1759
    :cond_48
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_IMAGE_THUMB end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1685
    .end local v24           #bundle:Landroid/os/Bundle;
    .end local v26           #cursor:Landroid/database/Cursor;
    .end local v37           #image_id:Ljava/lang/String;
    .end local v46           #msgg:Landroid/os/Message;
    .end local v56           #thumb:Landroid/graphics/Bitmap;
    .end local v58           #thumbpath:Ljava/lang/String;
    :cond_49
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_47

    .line 1687
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_17

    .line 1710
    .restart local v26       #cursor:Landroid/database/Cursor;
    .restart local v37       #image_id:Ljava/lang/String;
    .restart local v56       #thumb:Landroid/graphics/Bitmap;
    .restart local v58       #thumbpath:Ljava/lang/String;
    :catch_e
    move-exception v32

    .line 1711
    .restart local v32       #exSqlIO:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v2, "CameraThread"

    invoke-virtual/range {v32 .. v32}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1712
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 1713
    const/16 v26, 0x0

    .line 1714
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_IMAGE_THUMB end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1716
    .end local v32           #exSqlIO:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_f
    move-exception v31

    .line 1717
    .restart local v31       #exCursor:Ljava/lang/Exception;
    const-string v2, "CameraThread"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1718
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 1719
    const/16 v26, 0x0

    .line 1720
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_IMAGE_THUMB end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1735
    .end local v31           #exCursor:Ljava/lang/Exception;
    :catch_10
    move-exception v29

    .line 1736
    .restart local v29       #e:Ljava/lang/Exception;
    const-string v2, "CameraThread"

    const-string v3, "ThumbnailUtil.createImageThumbnail() throws exception"

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 1737
    .end local v29           #e:Ljava/lang/Exception;
    :catch_11
    move-exception v48

    .line 1738
    .restart local v48       #oe:Ljava/lang/OutOfMemoryError;
    const-string v2, "CameraThread"

    const-string v3, "ThumbnailUtil.createImageThumbnail() throws java.lang.OutOfMemoryError"

    move-object/from16 v0, v48

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 1742
    .end local v48           #oe:Ljava/lang/OutOfMemoryError;
    :cond_4a
    const-string v2, "CameraThread"

    const-string v3, "thumbnail Image Cursor == null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 1763
    .end local v6           #img_uri:Landroid/net/Uri;
    .end local v26           #cursor:Landroid/database/Cursor;
    .end local v37           #image_id:Ljava/lang/String;
    .end local v56           #thumb:Landroid/graphics/Bitmap;
    .end local v58           #thumbpath:Ljava/lang/String;
    :pswitch_27
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_VIDEO_THUMB start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v52, v0

    .line 1765
    .restart local v52       #path:Ljava/lang/Object;
    const/16 v61, 0x0

    .line 1766
    .restart local v61       #video_path:Ljava/lang/String;
    if-nez v52, :cond_4e

    .line 1768
    const/4 v8, 0x0

    .line 1769
    .restart local v8       #video_uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v2

    if-nez v2, :cond_4d

    .line 1770
    sget-object v8, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1779
    :cond_4b
    :goto_19
    if-eqz v8, :cond_0

    .line 1784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v9, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v9, v2

    const-string v10, "bucket_display_name=\'100MEDIA\'"

    const/4 v11, 0x0

    const-string v12, "datetaken ASC"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 1788
    .restart local v26       #cursor:Landroid/database/Cursor;
    if-eqz v26, :cond_4c

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4c

    .line 1789
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToLast()Z

    .line 1790
    const-string v2, "_data"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v61

    .line 1792
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 1800
    .end local v8           #video_uri:Landroid/net/Uri;
    .end local v26           #cursor:Landroid/database/Cursor;
    :cond_4c
    :goto_1a
    if-nez v61, :cond_4f

    .line 1801
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_VIDEO_THUMB end - video_path = null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1772
    .restart local v8       #video_uri:Landroid/net/Uri;
    :cond_4d
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4b

    .line 1774
    sget-object v8, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_19

    .line 1797
    .end local v8           #video_uri:Landroid/net/Uri;
    :cond_4e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v61, v0

    .end local v61           #video_path:Ljava/lang/String;
    check-cast v61, Ljava/lang/String;

    .restart local v61       #video_path:Ljava/lang/String;
    goto :goto_1a

    .line 1804
    :cond_4f
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create video thumbnail - path: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v61

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    const/16 v35, 0x0

    .line 1809
    .local v35, fullBmp:Landroid/graphics/Bitmap;
    const/4 v2, 0x3

    :try_start_c
    move-object/from16 v0, v61

    invoke-static {v0, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_12

    move-result-object v35

    .line 1813
    :goto_1b
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 1814
    .restart local v24       #bundle:Landroid/os/Bundle;
    const-string v2, "thumb_file_path"

    move-object/from16 v0, v24

    move-object/from16 v1, v61

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v46

    .line 1816
    .restart local v46       #msgg:Landroid/os/Message;
    const/16 v2, 0x32

    move-object/from16 v0, v46

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1817
    const/4 v2, 0x1

    move-object/from16 v0, v46

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1818
    move-object/from16 v0, v46

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1819
    move-object/from16 v0, v35

    move-object/from16 v1, v46

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v0, v46

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1821
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CREATE_VIDEO_THUMB end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1810
    .end local v24           #bundle:Landroid/os/Bundle;
    .end local v46           #msgg:Landroid/os/Message;
    :catch_12
    move-exception v29

    .line 1811
    .restart local v29       #e:Ljava/lang/Exception;
    const-string v2, "CameraThread"

    const-string v3, "ThumbnailUtil.createVideoThumbnail() throws exception"

    move-object/from16 v0, v29

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 1827
    .end local v29           #e:Ljava/lang/Exception;
    .end local v35           #fullBmp:Landroid/graphics/Bitmap;
    .end local v52           #path:Ljava/lang/Object;
    .end local v61           #video_path:Ljava/lang/String;
    :pswitch_28
    sget-boolean v2, Lcom/android/camera/CameraThread;->mEnableTouchAEC:Z

    if-eqz v2, :cond_0

    .line 1832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    if-eqz v2, :cond_50

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isBlockCaptureUI()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_50

    .line 1833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x1f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x1f

    const-wide/16 v9, 0x64

    invoke-static {v2, v3, v9, v10}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 1835
    const-string v2, "CameraThread"

    const-string v3, "Can\'t disable touch aec, send message again"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1839
    :cond_50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 1846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "touch-aec"

    const-string v5, "off"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1849
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/camera/CameraThread;->mEnableTouchAEC:Z

    .line 1850
    const-string v2, "CameraThread"

    const-string v3, "Disable touch aec !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1852
    :cond_51
    const-string v2, "CameraThread"

    const-string v3, "Can\'t disable touch aec, mCamController == null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1860
    :pswitch_29
    sget-boolean v2, Lcom/android/camera/CameraThread;->mEnableCAF:Z

    if-nez v2, :cond_0

    .line 1863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    if-eqz v2, :cond_0

    .line 1866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    if-eqz v2, :cond_52

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isBlockCaptureUI()Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 1869
    :cond_52
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1871
    const-string v2, "CameraThread"

    const-string v3, "ENABLE_CAF - enable continue AF !!!"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "enable-caf"

    const-string v5, "on"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1875
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/camera/CameraThread;->mEnableCAF:Z

    goto/16 :goto_0

    .line 1880
    :pswitch_2a
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_FACE_OPTIONS start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/lang/String;

    .line 1883
    .local v49, options:Ljava/lang/String;
    const-string v2, "On"

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1884
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - setFaceDetectionListener start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v3}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 1886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 1887
    const-string v2, "%01d%04d%04d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    const/4 v5, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v51

    .line 1891
    .local v51, paramOptions:Ljava/lang/String;
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ICS: start face detect, option = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 1893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-options"

    move-object/from16 v0, v51

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1918
    .end local v51           #paramOptions:Ljava/lang/String;
    :cond_53
    :goto_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_54

    .line 1922
    :cond_54
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_FACE_OPTIONS end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1897
    :cond_55
    const-string v2, "Off"

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1898
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - setFaceDetectionListener stop"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 1900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 1901
    const-string v2, "%01d%04d%04d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    const/4 v5, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v51

    .line 1905
    .restart local v51       #paramOptions:Ljava/lang/String;
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ICS: start face detect, option = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 1907
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-options"

    move-object/from16 v0, v51

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_1c

    .line 1912
    .end local v51           #paramOptions:Ljava/lang/String;
    :cond_56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 1913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-options"

    move-object/from16 v0, v49

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_1c

    .line 1926
    .end local v49           #options:Ljava/lang/String;
    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1928
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/String;

    .line 1929
    .restart local v42       #key:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v60, v0

    .line 1931
    .local v60, value:I
    const-string v2, "contrast"

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string v2, "saturation"

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string v2, "sharpness"

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1934
    :cond_57
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move-object/from16 v0, v42

    move/from16 v1, v60

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 1939
    :cond_58
    :goto_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    .line 1936
    :cond_59
    const-string v2, "exposure-compensation"

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move/from16 v0, v60

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setExposureCompensation(I)V

    goto :goto_1d

    .line 1944
    .end local v42           #key:Ljava/lang/String;
    .end local v60           #value:I
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isBlockCaptureUI()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 1948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x2b

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x2b

    const-wide/16 v9, 0x64

    invoke-static {v2, v3, v9, v10}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    .line 1953
    :cond_5a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isUIFreeze()Z

    move-result v2

    if-eqz v2, :cond_5b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getFreezeOrientation()I

    move-result v50

    .line 1955
    .local v50, orientation:I
    :goto_1e
    const/4 v2, -0x1

    move/from16 v0, v50

    if-ne v0, v2, :cond_5c

    .line 1956
    const-string v2, "CameraThread"

    const-string v3, "orientation = OrientationEventListener.ORIENTATION_UNKNOWN"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    const/16 v50, 0x0

    .line 1961
    :goto_1f
    invoke-static/range {v50 .. v50}, Lcom/android/camera/ImageManager;->roundOrientation(I)I

    move-result v60

    .line 1962
    .restart local v60       #value:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola_orientation"

    move/from16 v0, v60

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 1963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    .line 1953
    .end local v50           #orientation:I
    .end local v60           #value:I
    :cond_5b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getLastOrientation()I

    move-result v50

    goto :goto_1e

    .line 1959
    .restart local v50       #orientation:I
    :cond_5c
    add-int/lit8 v50, v50, 0x5a

    goto :goto_1f

    .line 1967
    .end local v50           #orientation:I
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->stop_video_recording_delay()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3300(Lcom/android/camera/CameraThread;)V

    goto/16 :goto_0

    .line 1971
    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1974
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "taking-picture-zoom"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v40

    .line 1975
    .local v40, info:Lcom/android/camera/CameraController$SettingInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->bSwitchCamera:Z
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3400(Lcom/android/camera/CameraThread;)Z

    move-result v2

    if-nez v2, :cond_5d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v2

    if-nez v2, :cond_5d

    .line 1976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "taking-picture-zoom"

    sget v5, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 1980
    :goto_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    .line 1978
    :cond_5d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "taking-picture-zoom"

    invoke-virtual/range {v40 .. v40}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto :goto_20

    .line 1984
    .end local v40           #info:Lcom/android/camera/CameraController$SettingInfo;
    :pswitch_2f
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CHECK_INTERNAL_STORAGE start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->checkInternalStorage()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 1986
    const-string v2, "CameraThread"

    const-string v3, "low internal storage ..."

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1988
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    const v5, 0x104039d

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v5, v7, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1991
    :cond_5e
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CHECK_INTERNAL_STORAGE end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1995
    :pswitch_30
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CHECK_STORAGE_STATUS start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->checkStorageStatus()V
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3500(Lcom/android/camera/CameraThread;)V

    .line 1997
    sget v2, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-nez v2, :cond_60

    .line 1998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v5, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v7, 0x1e

    invoke-static {}, Lcom/android/camera/DisplayDevice;->showFocusWithoutDelay()Z

    move-result v2

    if-eqz v2, :cond_5f

    const-wide/16 v2, 0x0

    :goto_21
    invoke-static {v5, v7, v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 2002
    :goto_22
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - CHECK_STORAGE_STATUS end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1998
    :cond_5f
    const-wide/16 v2, 0x1f4

    goto :goto_21

    .line 2000
    :cond_60
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    iget-object v5, v2, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v7, 0x1e

    invoke-static {}, Lcom/android/camera/DisplayDevice;->showFocusWithoutDelay()Z

    move-result v2

    if-eqz v2, :cond_61

    const-wide/16 v2, 0x0

    :goto_23
    invoke-static {v5, v7, v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto :goto_22

    :cond_61
    const-wide/16 v2, 0x1f4

    goto :goto_23

    .line 2006
    :pswitch_31
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_SCENE_MODE start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_62

    .line 2008
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v54, v0

    check-cast v54, Ljava/lang/String;

    .line 2009
    .local v54, scene_mode:Ljava/lang/String;
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SET_SCENE_MODE - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    move-object/from16 v0, v54

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 2011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 2013
    .end local v54           #scene_mode:Ljava/lang/String;
    :cond_62
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_SCENE_MODE end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2018
    :pswitch_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "pref_blink detection"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    .line 2020
    .local v22, bValue:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2021
    if-eqz v22, :cond_63

    .line 2022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-sbd-options"

    const-string v5, "03"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2025
    :cond_63
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "pref_smile_capture"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    .line 2027
    .local v21, bSmile:Z
    if-eqz v21, :cond_64

    .line 2028
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-sbd-options"

    const-string v5, "10"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2030
    :cond_64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-sbd-options"

    const-string v5, "00"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2037
    .end local v21           #bSmile:Z
    .end local v22           #bValue:Z
    :pswitch_33
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_SMILE_CAPTURE start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "pref_smile_capture"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    .line 2040
    .restart local v22       #bValue:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 2041
    if-eqz v22, :cond_66

    .line 2042
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-sbd-options"

    const-string v5, "10"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    :cond_65
    :goto_24
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_SMILE_CAPTURE end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2045
    :cond_66
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "pref_blink detection"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    .line 2047
    .local v19, bBlink:Z
    if-eqz v19, :cond_67

    .line 2048
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-sbd-options"

    const-string v5, "03"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 2050
    :cond_67
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "ola-sbd-options"

    const-string v5, "00"

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 2057
    .end local v19           #bBlink:Z
    .end local v22           #bValue:Z
    :pswitch_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3600(Lcom/android/camera/CameraThread;)Lcom/android/camera/EventManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$3600(Lcom/android/camera/CameraThread;)Lcom/android/camera/EventManager;

    move-result-object v2

    const-string v3, "PowerWarning.Received"

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2063
    :pswitch_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraThread;->changeZoom(I)V

    goto/16 :goto_0

    .line 2068
    :pswitch_36
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_GE_ WHITEBOARD start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_68

    .line 2071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    const-string v3, "B_whiteboard"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 2072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v9

    const-string v10, "GE-param0"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual/range {v9 .. v15}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 2073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v9

    const-string v10, "GE-param1"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 2074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->injectGEParam()Z

    .line 2076
    :cond_68
    const-string v2, "CameraThread"

    const-string v3, "CameraHandler Message - SET_GE_ WHITEBOARD end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v6       #img_uri:Landroid/net/Uri;
    .restart local v8       #video_uri:Landroid/net/Uri;
    :cond_69
    move-object/from16 v63, v8

    .end local v8           #video_uri:Landroid/net/Uri;
    .restart local v63       #video_uri:Landroid/net/Uri;
    goto/16 :goto_12

    .line 543
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_a
        :pswitch_c
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_16
        :pswitch_17
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_0
        :pswitch_b
        :pswitch_23
        :pswitch_4
        :pswitch_0
        :pswitch_24
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_2a
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
        :pswitch_2c
        :pswitch_2b
        :pswitch_8
        :pswitch_29
        :pswitch_2d
        :pswitch_2e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2f
        :pswitch_30
        :pswitch_12
        :pswitch_18
        :pswitch_19
        :pswitch_25
        :pswitch_31
        :pswitch_34
        :pswitch_32
        :pswitch_33
        :pswitch_36
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_35
    .end packed-switch

    .line 964
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 1439
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_22
        :pswitch_1f
    .end packed-switch
.end method
