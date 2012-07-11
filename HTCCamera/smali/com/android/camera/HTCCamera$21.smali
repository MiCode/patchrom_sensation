.class Lcom/android/camera/HTCCamera$21;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->doOnCreate_after_preview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;

.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;Landroid/graphics/Rect;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4025
    iput-object p1, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    iput-object p2, p0, Lcom/android/camera/HTCCamera$21;->val$rect:Landroid/graphics/Rect;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapture(Landroid/view/MotionEvent;II)Z
    .locals 7
    .parameter "event"
    .parameter "X"
    .parameter "Y"

    .prologue
    const-wide/16 v5, 0x3e8

    const/4 v0, 0x0

    const/16 v4, 0x42

    const/4 v1, 0x1

    .line 4030
    iget-object v2, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isPanelReady()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v2}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4117
    :goto_0
    return v0

    .line 4033
    :cond_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    iget v2, v2, Lcom/android/camera/HTCCamera;->mFocusingState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 4034
    goto :goto_0

    .line 4036
    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 4037
    goto :goto_0

    .line 4040
    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v2, v1, :cond_8

    .line 4041
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$1200()Z

    move-result v2

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    iget v2, v2, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v2, v1, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v2

    if-ne v2, v1, :cond_8

    .line 4043
    :cond_4
    iget-object v2, p0, Lcom/android/camera/HTCCamera$21;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4044
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_6

    .line 4045
    iget-object v2, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #setter for: Lcom/android/camera/HTCCamera;->mStartTapCapture:Z
    invoke-static {v2, v0}, Lcom/android/camera/HTCCamera;->access$9202(Lcom/android/camera/HTCCamera;Z)Z

    .line 4046
    iget-object v0, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$600(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->mCapture_press:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4047
    iget-object v0, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4048
    iget-object v0, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v4, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_5
    :goto_1
    move v0, v1

    .line 4060
    goto :goto_0

    .line 4049
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 4050
    iget-object v0, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mStartTapCapture:Z
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$9200(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4051
    iget-object v0, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$600(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    iget v2, v2, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4052
    iget-object v0, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4053
    iget-object v0, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onTouchCapture_Camcorder()V
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$9300(Lcom/android/camera/HTCCamera;)V

    goto :goto_1

    .line 4057
    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$600(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    iget v2, v2, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4058
    iget-object v0, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    goto :goto_1

    .line 4065
    :cond_8
    iget-object v2, p0, Lcom/android/camera/HTCCamera$21;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_9

    .line 4067
    iget-object v0, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$600(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    iget v2, v2, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4068
    iget-object v0, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move v0, v1

    .line 4072
    goto/16 :goto_0

    .line 4075
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_a
    :goto_2
    move v0, v1

    .line 4117
    goto/16 :goto_0

    .line 4077
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$600(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCapture_press:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4078
    iget-object v2, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #setter for: Lcom/android/camera/HTCCamera;->mTouchDown_X:I
    invoke-static {v2, p2}, Lcom/android/camera/HTCCamera;->access$11902(Lcom/android/camera/HTCCamera;I)I

    .line 4079
    iget-object v2, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #setter for: Lcom/android/camera/HTCCamera;->mTouchDown_Y:I
    invoke-static {v2, p3}, Lcom/android/camera/HTCCamera;->access$12002(Lcom/android/camera/HTCCamera;I)I

    .line 4080
    iget-object v2, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #setter for: Lcom/android/camera/HTCCamera;->mStartTapCapture:Z
    invoke-static {v2, v0}, Lcom/android/camera/HTCCamera;->access$9202(Lcom/android/camera/HTCCamera;Z)Z

    .line 4081
    iget-object v0, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4082
    iget-object v0, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v4, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto :goto_2

    .line 4086
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mStartTapCapture:Z
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$9200(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    .line 4106
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mStartTapCapture:Z
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$9200(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 4109
    iget-object v0, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4110
    iget-object v0, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$600(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    iget v2, v2, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4111
    iget-object v0, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_b

    .line 4112
    iget-object v0, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onTouchCapture_Camera()V
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$6700(Lcom/android/camera/HTCCamera;)V

    goto :goto_2

    .line 4114
    :cond_b
    iget-object v0, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onTouchCapture_Camcorder()V
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$9300(Lcom/android/camera/HTCCamera;)V

    goto :goto_2

    .line 4075
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
