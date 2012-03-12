.class Lcom/android/camera/SnapboothThread$MainHandler;
.super Landroid/os/Handler;
.source "SnapboothThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SnapboothThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SnapboothThread;


# direct methods
.method private constructor <init>(Lcom/android/camera/SnapboothThread;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/SnapboothThread;Lcom/android/camera/SnapboothThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/android/camera/SnapboothThread$MainHandler;-><init>(Lcom/android/camera/SnapboothThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 36
    .parameter "msg"

    .prologue
    .line 229
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 233
    :sswitch_0
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - START_PREVIEW"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 236
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 237
    .local v5, status:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Ljava/lang/Boolean;

    .line 238
    .local v27, isCapturing:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #calls: Lcom/android/camera/SnapboothThread;->isLastCameraClosed()Z
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$900(Lcom/android/camera/SnapboothThread;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x64

    invoke-static/range {v3 .. v9}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto :goto_0

    .line 245
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    if-nez v27, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4, v5, v3}, Lcom/android/camera/SnapboothThread;->startPreview(IZ)V

    .line 247
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - START_PREVIEW end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_1

    .line 253
    .end local v5           #status:I
    .end local v27           #isCapturing:Ljava/lang/Boolean;
    :sswitch_1
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - STOP_PREVIEW start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #calls: Lcom/android/camera/SnapboothThread;->stopPreview()V
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1000(Lcom/android/camera/SnapboothThread;)V

    .line 255
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - STOP_PREVIEW end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :sswitch_2
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - CLOSE_CAMERA"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCaptureState:I
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$600(Lcom/android/camera/SnapboothThread;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/SnapboothThread;->mCaptureState:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$602(Lcom/android/camera/SnapboothThread;I)I

    .line 280
    const-string v3, "SnapboothThread"

    const-string v4, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-virtual {v3}, Lcom/android/camera/SnapboothThread;->closeCamera()V

    .line 284
    :goto_2
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - CLOSE_CAMERA end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    :pswitch_0
    const-string v3, "SnapboothThread"

    const-string v4, "mCaptureState == CAPTURE_STATE_TAKING_PICTURE, not close camera, waiting ..."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    const/4 v4, 0x2

    #setter for: Lcom/android/camera/SnapboothThread;->mCaptureState:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$602(Lcom/android/camera/SnapboothThread;I)I

    .line 265
    const-string v3, "SnapboothThread"

    const-string v4, "mCaptureState = CAPTURE_STATE_WAITING_CLOSE_CAMERA"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 268
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/SnapboothThread;->mCaptureState:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$602(Lcom/android/camera/SnapboothThread;I)I

    .line 269
    const-string v3, "SnapboothThread"

    const-string v4, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-virtual {v3}, Lcom/android/camera/SnapboothThread;->closeCamera()V

    goto :goto_2

    .line 273
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/SnapboothThread;->mCaptureState:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$602(Lcom/android/camera/SnapboothThread;I)I

    .line 274
    const-string v3, "SnapboothThread"

    const-string v4, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_2

    .line 289
    :sswitch_3
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - CANCEL_CAPTURE start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mIsTakingPicture:Z
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$500(Lcom/android/camera/SnapboothThread;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 293
    const-string v3, "SnapboothThread"

    const-string v4, "Taking picture, send CANCEL_CAPTURE message again"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v3

    const/16 v4, 0xa

    const-wide/16 v7, 0x64

    invoke-virtual {v3, v4, v7, v8}, Lcom/android/camera/SnapboothThread$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 299
    :goto_3
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - CANCEL_CAPTURE end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 297
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #calls: Lcom/android/camera/SnapboothThread;->cancelCapture()V
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1100(Lcom/android/camera/SnapboothThread;)V

    goto :goto_3

    .line 305
    :sswitch_4
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - RECHECK_STORAGE_STATE start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #calls: Lcom/android/camera/SnapboothThread;->endCheckStorageState()I
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1200(Lcom/android/camera/SnapboothThread;)I

    .line 308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #calls: Lcom/android/camera/SnapboothThread;->beginCheckStorageState()V
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1300(Lcom/android/camera/SnapboothThread;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #calls: Lcom/android/camera/SnapboothThread;->endCheckStorageState()I
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1200(Lcom/android/camera/SnapboothThread;)I

    .line 310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #calls: Lcom/android/camera/SnapboothThread;->notifyStorageState()V
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1400(Lcom/android/camera/SnapboothThread;)V

    .line 312
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - RECHECK_STORAGE_STATE end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 318
    :sswitch_5
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - CREATE_MULTISHOT_BITMAP start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1500(Lcom/android/camera/SnapboothThread;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_4

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v4}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/HTCSnapbooth;->getFreezeOrientation()I

    move-result v4

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lcom/android/camera/rotate/OrientationConfig;->mapDrgreeToUIOrientationEx(IZ)I

    move-result v4

    #setter for: Lcom/android/camera/SnapboothThread;->mMultiBitmapOrientation:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$1602(Lcom/android/camera/SnapboothThread;I)I

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mMultiBitmapOrientation:I
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1600(Lcom/android/camera/SnapboothThread;)I

    move-result v3

    if-nez v3, :cond_5

    .line 325
    const-string v3, "SnapboothThread"

    const-string v4, "Allocate portrait image bitmap"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    sget v3, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sget v7, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v3, v7}, Lcom/android/camera/SnapboothNative;->AllocateBitmap(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    #setter for: Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4, v3}, Lcom/android/camera/SnapboothThread;->access$1502(Lcom/android/camera/SnapboothThread;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 337
    :cond_4
    :goto_4
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - CREATE_MULTISHOT_BITMAP end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 331
    :cond_5
    const-string v3, "SnapboothThread"

    const-string v4, "Allocate landscape image bitmap"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    sget v3, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    mul-int/lit8 v3, v3, 0x2

    sget v7, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v3, v7}, Lcom/android/camera/SnapboothNative;->AllocateBitmap(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    #setter for: Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4, v3}, Lcom/android/camera/SnapboothThread;->access$1502(Lcom/android/camera/SnapboothThread;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_4

    .line 343
    :sswitch_6
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - TAKE_PICTURE start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/android/camera/SnapboothThread$MainHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 347
    const-string v3, "SnapboothThread"

    const-string v4, "CANCEL_CAPTURE message detected, operation canceled !"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - TAKE_PICTURE end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 352
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCaptureState:I
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$600(Lcom/android/camera/SnapboothThread;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    .line 353
    const-string v3, "SnapboothThread"

    const-string v4, "mCaptureState = CAPTURE_STATE_ERROR, can\'t take picture"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 357
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    #setter for: Lcom/android/camera/SnapboothThread;->mIsMultiShutter:Z
    invoke-static {v4, v3}, Lcom/android/camera/SnapboothThread;->access$702(Lcom/android/camera/SnapboothThread;Z)Z

    .line 358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/SnapboothThread;->mCaptureState:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$602(Lcom/android/camera/SnapboothThread;I)I

    .line 359
    const-string v3, "SnapboothThread"

    const-string v4, "Really take picture - mCaptureState = CAPTURE_STATE_TAKING_PICTURE"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #calls: Lcom/android/camera/SnapboothThread;->capture()Z
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1700(Lcom/android/camera/SnapboothThread;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 363
    const-string v3, "SnapboothThread"

    const-string v4, "Storage card is not available, stop capturing"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$400(Lcom/android/camera/SnapboothThread;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x65

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 367
    :cond_8
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - TAKE_PICTURE end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 373
    :sswitch_7
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - STORE_JPEG start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/android/camera/SnapboothThread$MainHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 377
    const-string v3, "SnapboothThread"

    const-string v4, "CANCEL_CAPTURE message detected, operation canceled !"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - STORE_JPEG end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 382
    :cond_9
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    move-object/from16 v28, v3

    check-cast v28, [B

    .line 383
    .local v28, jpegdata:[B
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v34, v0

    .line 384
    .local v34, thisShutterNum:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #calls: Lcom/android/camera/SnapboothThread;->endCheckStorageState()I
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1200(Lcom/android/camera/SnapboothThread;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_10

    const/16 v21, 0x1

    .line 386
    .local v21, canStoreImage:Z
    :goto_5
    if-nez v28, :cond_11

    .line 387
    const-string v3, "SnapboothThread"

    const-string v4, "!!!!!!!! jpegdata == null !!!!!!!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mIsMultiShutter:Z
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$700(Lcom/android/camera/SnapboothThread;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 393
    new-instance v30, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 394
    .local v30, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    move-object/from16 v0, v28

    array-length v4, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 396
    .local v26, image:Landroid/graphics/Bitmap;
    new-instance v22, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1500(Lcom/android/camera/SnapboothThread;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 398
    .local v22, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCSnapbooth;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static/range {v34 .. v34}, Lcom/android/camera/SnapboothCustomize;->getSnapboothFrame(I)I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 401
    .local v6, originalFrame:Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 402
    .local v11, matrix:Landroid/graphics/Matrix;
    sget v3, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    int-to-float v3, v3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sget v4, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v4, v7

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 403
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mMultiBitmapOrientation:I
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1600(Lcom/android/camera/SnapboothThread;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 404
    const/high16 v3, 0x42b4

    invoke-virtual {v11, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 406
    :cond_a
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 407
    .local v23, frame:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move/from16 v0, v34

    #calls: Lcom/android/camera/SnapboothThread;->getMultiDrawLeft(I)F
    invoke-static {v3, v0}, Lcom/android/camera/SnapboothThread;->access$1800(Lcom/android/camera/SnapboothThread;I)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move/from16 v0, v34

    #calls: Lcom/android/camera/SnapboothThread;->getMultiDrawTop(I)F
    invoke-static {v4, v0}, Lcom/android/camera/SnapboothThread;->access$1900(Lcom/android/camera/SnapboothThread;I)F

    move-result v4

    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move/from16 v0, v34

    #calls: Lcom/android/camera/SnapboothThread;->getMultiDrawLeft(I)F
    invoke-static {v3, v0}, Lcom/android/camera/SnapboothThread;->access$1800(Lcom/android/camera/SnapboothThread;I)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move/from16 v0, v34

    #calls: Lcom/android/camera/SnapboothThread;->getMultiDrawTop(I)F
    invoke-static {v4, v0}, Lcom/android/camera/SnapboothThread;->access$1900(Lcom/android/camera/SnapboothThread;I)F

    move-result v4

    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 414
    const/4 v3, 0x4

    move/from16 v0, v34

    if-ne v0, v3, :cond_b

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$802(Lcom/android/camera/SnapboothThread;I)I

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/camera/SnapboothThread;->access$1500(Lcom/android/camera/SnapboothThread;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/SnapboothFileManager;->storeImage(Landroid/app/Activity;Ljava/lang/Object;)Z

    .line 418
    sget-object v3, Lcom/android/camera/TIME;->StoreJpegImage:Lcom/android/camera/TIME$Value;

    invoke-virtual {v3}, Lcom/android/camera/TIME$Value;->End()V

    .line 421
    :cond_b
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->recycle()V

    .line 422
    const/16 v23, 0x0

    .line 424
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->recycle()V

    .line 444
    .end local v6           #originalFrame:Landroid/graphics/Bitmap;
    .end local v11           #matrix:Landroid/graphics/Matrix;
    .end local v22           #canvas:Landroid/graphics/Canvas;
    .end local v23           #frame:Landroid/graphics/Bitmap;
    .end local v26           #image:Landroid/graphics/Bitmap;
    .end local v30           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_c
    sget-object v3, Lcom/android/camera/TIME;->StoreJpegImage:Lcom/android/camera/TIME$Value;

    invoke-virtual {v3}, Lcom/android/camera/TIME$Value;->End()V

    .line 446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCSnapbooth;->getFreezeOrientation()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/rotate/OrientationConfig;->mapDrgreeToUIOrientationEx(IZ)I

    move-result v24

    .line 447
    .local v24, freezeUIOrientation:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mIsMultiShutter:Z
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$700(Lcom/android/camera/SnapboothThread;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x4

    move/from16 v0, v34

    if-ne v0, v3, :cond_f

    .line 451
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mIsMultiShutter:Z
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$700(Lcom/android/camera/SnapboothThread;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCSnapbooth;->isRequestSquare()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 455
    const/16 v35, 0x0

    .line 456
    .local v35, width:I
    const/16 v25, 0x0

    .line 457
    .local v25, height:I
    if-eqz v24, :cond_e

    const/4 v3, 0x2

    move/from16 v0, v24

    if-ne v0, v3, :cond_16

    .line 460
    :cond_e
    sget v35, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    .line 461
    sget v25, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    .line 468
    :goto_7
    sget v3, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    move-object/from16 v0, v28

    move/from16 v1, v35

    move/from16 v2, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/Util;->cropSquareImg([BIII)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 480
    .end local v25           #height:I
    .end local v35           #width:I
    .local v12, photo:Landroid/graphics/Bitmap;
    :goto_8
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 481
    .restart local v11       #matrix:Landroid/graphics/Matrix;
    sget v3, Lcom/android/camera/SnapboothCustomize;->REVIEW_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3fc0

    mul-float/2addr v3, v4

    sget v4, Lcom/android/camera/SnapboothCustomize;->REVIEW_HEIGHT:I

    int-to-float v4, v4

    sget v7, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    invoke-virtual {v11, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 482
    mul-int/lit8 v3, v24, 0x5a

    int-to-float v3, v3

    invoke-virtual {v11, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 483
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v18, 0x1

    move-object/from16 v17, v11

    invoke-static/range {v12 .. v18}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v32

    .line 487
    .local v32, reviewImage:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v3

    if-nez v3, :cond_19

    .line 488
    sget v3, Lcom/android/camera/SnapboothCustomize;->THUMBNAIL_IMG_WIDTH:I

    sget v4, Lcom/android/camera/SnapboothCustomize;->THUMBNAIL_IMG_HEIGHT:I

    invoke-static {v12, v3, v4}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 493
    .local v13, thumbnail:Landroid/graphics/Bitmap;
    :goto_9
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$400(Lcom/android/camera/SnapboothThread;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xb

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    aput-object v32, v9, v10

    const/4 v10, 0x1

    aput-object v13, v9, v10

    invoke-static {v3, v4, v7, v8, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/SnapboothThread;->mIsCapturing:Z
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$2102(Lcom/android/camera/SnapboothThread;Z)Z

    .line 502
    .end local v11           #matrix:Landroid/graphics/Matrix;
    .end local v12           #photo:Landroid/graphics/Bitmap;
    .end local v13           #thumbnail:Landroid/graphics/Bitmap;
    .end local v32           #reviewImage:Landroid/graphics/Bitmap;
    :cond_f
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - STORE_JPEG end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 384
    .end local v21           #canStoreImage:Z
    .end local v24           #freezeUIOrientation:I
    :cond_10
    const/16 v21, 0x0

    goto/16 :goto_5

    .line 389
    .restart local v21       #canStoreImage:Z
    :cond_11
    const-string v3, "SnapboothThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jpegdata != null and jpegdata.length = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    array-length v7, v0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 430
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCSnapbooth;->isRequestSquare()Z

    move-result v3

    if-nez v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCSnapbooth;->getIntentManager()Lcom/android/camera/SnapboothIntentManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/SnapboothIntentManager;->getSaveUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 431
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move-object/from16 v0, v28

    #setter for: Lcom/android/camera/SnapboothThread;->mJpegData:[B
    invoke-static {v3, v0}, Lcom/android/camera/SnapboothThread;->access$2002(Lcom/android/camera/SnapboothThread;[B)[B

    .line 433
    :cond_14
    if-eqz v21, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-static {v3, v0}, Lcom/android/camera/SnapboothFileManager;->storeImage(Landroid/app/Activity;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v3

    if-nez v3, :cond_c

    .line 437
    sget-object v3, Lcom/android/camera/TIME;->StoreJpegImage:Lcom/android/camera/TIME$Value;

    invoke-virtual {v3}, Lcom/android/camera/TIME$Value;->End()V

    .line 438
    const-string v3, "SnapboothThread"

    const-string v4, "Storage card is not available, stop saving image"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$400(Lcom/android/camera/SnapboothThread;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x65

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 440
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - STORE_JPEG end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 465
    .restart local v24       #freezeUIOrientation:I
    .restart local v25       #height:I
    .restart local v35       #width:I
    :cond_16
    sget v35, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    .line 466
    sget v25, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    goto/16 :goto_7

    .line 471
    .end local v25           #height:I
    .end local v35           #width:I
    :cond_17
    const/4 v3, 0x0

    move-object/from16 v0, v28

    array-length v4, v0

    move-object/from16 v0, v28

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v12

    .restart local v12       #photo:Landroid/graphics/Bitmap;
    goto/16 :goto_8

    .line 475
    .end local v12           #photo:Landroid/graphics/Bitmap;
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$1500(Lcom/android/camera/SnapboothThread;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 476
    .restart local v12       #photo:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$1502(Lcom/android/camera/SnapboothThread;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto/16 :goto_8

    .line 490
    .restart local v11       #matrix:Landroid/graphics/Matrix;
    .restart local v32       #reviewImage:Landroid/graphics/Bitmap;
    :cond_19
    const/4 v13, 0x0

    .restart local v13       #thumbnail:Landroid/graphics/Bitmap;
    goto/16 :goto_9

    .line 508
    .end local v11           #matrix:Landroid/graphics/Matrix;
    .end local v12           #photo:Landroid/graphics/Bitmap;
    .end local v13           #thumbnail:Landroid/graphics/Bitmap;
    .end local v21           #canStoreImage:Z
    .end local v24           #freezeUIOrientation:I
    .end local v28           #jpegdata:[B
    .end local v32           #reviewImage:Landroid/graphics/Bitmap;
    .end local v34           #thisShutterNum:I
    :sswitch_8
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - CREATE_INIT_THUMBNAIL start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 512
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/SnapboothFileManager;->getLastThumbnailImage(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 514
    .restart local v13       #thumbnail:Landroid/graphics/Bitmap;
    if-eqz v13, :cond_1a

    .line 516
    const/4 v14, 0x0

    sget v15, Lcom/android/camera/SnapboothCustomize;->THUMBNAIL_IMG_DIFF:I

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget v4, Lcom/android/camera/SnapboothCustomize;->THUMBNAIL_IMG_DIFF:I

    sub-int v17, v3, v4

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v33

    .line 518
    .local v33, scaleBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 522
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$400(Lcom/android/camera/SnapboothThread;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v33

    invoke-static {v3, v4, v7, v8, v0}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 524
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - CREATE_INIT_THUMBNAIL end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 521
    .end local v33           #scaleBitmap:Landroid/graphics/Bitmap;
    :cond_1a
    const/16 v33, 0x0

    .restart local v33       #scaleBitmap:Landroid/graphics/Bitmap;
    goto :goto_a

    .line 530
    .end local v13           #thumbnail:Landroid/graphics/Bitmap;
    .end local v33           #scaleBitmap:Landroid/graphics/Bitmap;
    :sswitch_9
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - DELETE_CURRENT_IMAGE start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/SnapboothFileManager;->deleteCurrentImageFile(Landroid/app/Activity;)Z

    .line 534
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - DELETE_CURRENT_IMAGE end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 540
    :sswitch_a
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - QUIT_CAMERA_THREAD start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCaptureState:I
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$600(Lcom/android/camera/SnapboothThread;)I

    move-result v3

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCaptureState:I
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$600(Lcom/android/camera/SnapboothThread;)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1b

    .line 545
    const-string v3, "SnapboothThread"

    const-string v4, "mCaptureState != CAPTURE_STATE_IDLE, not quit camera thread, waiting ..."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    const/4 v4, 0x3

    #setter for: Lcom/android/camera/SnapboothThread;->mCaptureState:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$602(Lcom/android/camera/SnapboothThread;I)I

    .line 547
    const-string v3, "SnapboothThread"

    const-string v4, "mCaptureState = CAPTURE_STATE_WAITING_QUIT_THREAD"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 551
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/SnapboothThread;->mCaptureState:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$602(Lcom/android/camera/SnapboothThread;I)I

    .line 552
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    invoke-virtual {v3}, Lcom/android/camera/SnapboothThread;->closeCamera()V

    .line 553
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v29

    .line 554
    .local v29, myloop:Landroid/os/Looper;
    invoke-virtual/range {v29 .. v29}, Landroid/os/Looper;->quit()V

    .line 555
    const-string v3, "SnapboothThread"

    const-string v4, "SnapboothHandler Message - QUIT_CAMERA_THREAD end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 561
    .end local v29           #myloop:Landroid/os/Looper;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2200(Lcom/android/camera/SnapboothThread;)I

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    .line 563
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v3

    const/16 v4, 0x1f

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 564
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;

    move-result-object v3

    const/16 v4, 0x22

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 570
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 572
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    const-string v4, "0_bypass"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v14

    const-string v15, "GE-param0"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v20}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v14

    const-string v15, "GE-param1"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v20}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->injectGEParam()Z

    .line 576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    #setter for: Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$2202(Lcom/android/camera/SnapboothThread;I)I

    goto/16 :goto_0

    .line 581
    :sswitch_d
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_BULGE start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    const-string v4, "3_distortion"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v14

    const-string v15, "GE-param0"

    const/16 v16, 0x46

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v14 .. v20}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v14

    const-string v15, "GE-param1"

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v16, v3, 0x2

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v17, v3, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v14 .. v20}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 588
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->injectGEParam()Z

    .line 589
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    #setter for: Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$2202(Lcom/android/camera/SnapboothThread;I)I

    .line 591
    :cond_1c
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_BULGE end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 595
    :sswitch_e
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_PUCKER start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 598
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    const-string v4, "3_distortion"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v14

    const-string v15, "GE-param0"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v14 .. v20}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 600
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v14

    const-string v15, "GE-param1"

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v16, v3, 0x2

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v17, v3, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v14 .. v20}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 602
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->injectGEParam()Z

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    #setter for: Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$2202(Lcom/android/camera/SnapboothThread;I)I

    .line 605
    :cond_1d
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_PUCKER end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 609
    :sswitch_f
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_MIRROR start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 612
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v31

    .line 613
    .local v31, orientation:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    const-string v4, "8_mirror"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v14

    const-string v15, "GE-param0"

    if-nez v31, :cond_1f

    const/16 v16, 0x0

    :goto_b
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v14 .. v20}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 615
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v14

    const-string v15, "GE-param1"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v20}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->injectGEParam()Z

    .line 617
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    #setter for: Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$2202(Lcom/android/camera/SnapboothThread;I)I

    .line 619
    .end local v31           #orientation:I
    :cond_1e
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_MIRROR end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 614
    .restart local v31       #orientation:I
    :cond_1f
    const/16 v16, 0x1

    goto :goto_b

    .line 623
    .end local v31           #orientation:I
    :sswitch_10
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_CONTRAST start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    const-string v4, "6_contrast"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v14

    const-string v15, "GE-param0"

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v14 .. v20}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 628
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v14

    const-string v15, "GE-param1"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v20}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 629
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->injectGEParam()Z

    .line 630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    #setter for: Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$2202(Lcom/android/camera/SnapboothThread;I)I

    .line 632
    :cond_20
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_CONTRAST end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 637
    :sswitch_11
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_DISTORTION start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 640
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    const-string v4, "9_bloom"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v14

    const-string v15, "GE-param0"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v20}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 642
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v14

    const-string v15, "GE-param1"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v20}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 643
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->injectGEParam()Z

    .line 644
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    #setter for: Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$2202(Lcom/android/camera/SnapboothThread;I)I

    goto/16 :goto_0

    .line 649
    :sswitch_12
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_SEPIA start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    const-string v4, "1_lomo"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v14

    const-string v15, "GE-param0"

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v14 .. v20}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 654
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v14

    const-string v15, "GE-param1"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v20}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 655
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->injectGEParam()Z

    .line 656
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    #setter for: Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$2202(Lcom/android/camera/SnapboothThread;I)I

    .line 658
    :cond_21
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_SEPIA end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 662
    :sswitch_13
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_VINTAGE_GREEN start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 665
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    const-string v4, "1_lomo"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v14

    const-string v15, "GE-param0"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v14 .. v20}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v14

    const-string v15, "GE-param1"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v20}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 668
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->injectGEParam()Z

    .line 669
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    #setter for: Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$2202(Lcom/android/camera/SnapboothThread;I)I

    .line 671
    :cond_22
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_VINTAGE_GREEN end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 675
    :sswitch_14
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_DOTS start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    const-string v4, "5_dots"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v14

    const-string v15, "GE-param0"

    const/16 v16, 0x32

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v14 .. v20}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 680
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v14

    const-string v15, "GE-param1"

    const/16 v16, 0x190

    const/16 v17, 0xf0

    const/16 v18, 0x212

    const/16 v19, 0x172

    const/16 v20, 0x1

    invoke-virtual/range {v14 .. v20}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    #getter for: Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;
    invoke-static {v3}, Lcom/android/camera/SnapboothThread;->access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->injectGEParam()Z

    .line 682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SnapboothThread$MainHandler;->this$0:Lcom/android/camera/SnapboothThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    #setter for: Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I
    invoke-static {v3, v4}, Lcom/android/camera/SnapboothThread;->access$2202(Lcom/android/camera/SnapboothThread;I)I

    .line 684
    :cond_23
    const-string v3, "SnapboothThread"

    const-string v4, "CameraHandler Message - SET_GE_DOTS end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_a
        0x6 -> :sswitch_7
        0xa -> :sswitch_3
        0x1f -> :sswitch_c
        0x20 -> :sswitch_d
        0x21 -> :sswitch_e
        0x22 -> :sswitch_f
        0x23 -> :sswitch_10
        0x24 -> :sswitch_11
        0x25 -> :sswitch_12
        0x26 -> :sswitch_13
        0x27 -> :sswitch_14
        0x64 -> :sswitch_8
        0x65 -> :sswitch_9
        0x66 -> :sswitch_4
        0x67 -> :sswitch_b
    .end sparse-switch

    .line 261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
