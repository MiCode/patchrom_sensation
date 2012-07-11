.class public Lcom/android/camera/FaceDetection;
.super Ljava/lang/Object;
.source "FaceDetection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FaceDetection$5;,
        Lcom/android/camera/FaceDetection$Face;,
        Lcom/android/camera/FaceDetection$STATE;
    }
.end annotation


# static fields
.field private static final AREA_THRESHOLD:F = 0.5f

.field private static final AREA_THRESHOLD_SELF_PORTRAIT:F = 0.7f

.field private static final CHECK_DURATION:I = 0x64

.field private static final DISTANCE_THRESHOLD:I = 0x64

.field private static final DRAW_BY_APP:Z = false

.field private static final MAX_FACE_NUM:I = 0xa

.field private static final MIN_FACE_SIZE:I = 0x16

.field public static final PARAMETER_FACE_GET:Ljava/lang/String; = "ola-fd-rect"

.field public static final PARAMETER_FACE_OPTIONS:Ljava/lang/String; = "ola-options"

.field public static final SELF_PORTRAIT_CENTER:I = 0x1

.field public static final SELF_PORTRAIT_NO:I = 0x2

.field private static final STABLE_DURATION:I = 0x1f4

.field private static final STABLE_DURATION_SELF_PORTRAIT:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "FaceDetection"

.field private static final UNSTABLE_DURATION:I = 0x1f4

.field private static final UPDATE_DRAW_DURATION:I = 0x64


# instance fields
.field private bCheckLoop:Z

.field private bStartDetection:Z

.field private mCamController:Lcom/android/camera/CameraController;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraThread:Lcom/android/camera/CameraThread;

.field private mCentralArea:Landroid/graphics/Rect;

.field private mCurrentState:Lcom/android/camera/FaceDetection$STATE;

.field private mDrawFace:Lcom/android/camera/widget/DrawFace;

.field private mFace:[Lcom/android/camera/FaceDetection$Face;

.field private mFaceNum:S

.field private mFaceNum_NEW:S

.field private mFace_NEW:[Lcom/android/camera/FaceDetection$Face;

.field private mFocusIndex:S

.field private mFocusIndex_NEW:S

.field private mHTCCamera:Lcom/android/camera/HTCCamera;

.field private mPortraitThreshold:I

.field private mRect:[Landroid/graphics/Rect;

.field private mRunnable:Ljava/lang/Runnable;

.field private mRunnable_Check:Ljava/lang/Runnable;

.field private mRunnable_Stable:Ljava/lang/Runnable;

.field private mRunnable_UnStable:Ljava/lang/Runnable;

.field private mSelfPortraitState:I

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 16
    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    .line 17
    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 18
    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mCameraHandler:Landroid/os/Handler;

    .line 19
    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mCamController:Lcom/android/camera/CameraController;

    .line 20
    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable:Ljava/lang/Runnable;

    .line 21
    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mDrawFace:Lcom/android/camera/widget/DrawFace;

    .line 22
    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    .line 23
    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mRect:[Landroid/graphics/Rect;

    .line 24
    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mCentralArea:Landroid/graphics/Rect;

    .line 25
    iput-short v2, p0, Lcom/android/camera/FaceDetection;->mFaceNum:S

    .line 26
    iput-boolean v3, p0, Lcom/android/camera/FaceDetection;->bStartDetection:Z

    .line 34
    iput-short v2, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    .line 54
    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable_Check:Ljava/lang/Runnable;

    .line 55
    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable_Stable:Ljava/lang/Runnable;

    .line 56
    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable_UnStable:Ljava/lang/Runnable;

    .line 57
    sget-object v0, Lcom/android/camera/FaceDetection$STATE;->NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    iput-object v0, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    .line 58
    iput-boolean v3, p0, Lcom/android/camera/FaceDetection;->bCheckLoop:Z

    .line 59
    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mFace_NEW:[Lcom/android/camera/FaceDetection$Face;

    .line 60
    iput-short v2, p0, Lcom/android/camera/FaceDetection;->mFaceNum_NEW:S

    .line 61
    iput-short v2, p0, Lcom/android/camera/FaceDetection;->mFocusIndex_NEW:S

    .line 65
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/FaceDetection;->mSelfPortraitState:I

    .line 68
    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/camera/FaceDetection;->mPortraitThreshold:I

    .line 745
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/FaceDetection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/camera/FaceDetection;->updateDrawFace()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/FaceDetection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/camera/FaceDetection;->checkFaceState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/FaceDetection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/camera/FaceDetection;->enterStableState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/FaceDetection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/camera/FaceDetection;->enterUnStableState()V

    return-void
.end method

.method private assignNewFace()V
    .locals 3

    .prologue
    .line 730
    iget-short v1, p0, Lcom/android/camera/FaceDetection;->mFaceNum_NEW:S

    iput-short v1, p0, Lcom/android/camera/FaceDetection;->mFaceNum:S

    .line 731
    iget-short v1, p0, Lcom/android/camera/FaceDetection;->mFocusIndex_NEW:S

    iput-short v1, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    .line 733
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-short v1, p0, Lcom/android/camera/FaceDetection;->mFaceNum:S

    if-ge v0, v1, :cond_0

    .line 734
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mFace_NEW:[Lcom/android/camera/FaceDetection$Face;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 735
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mFace_NEW:[Lcom/android/camera/FaceDetection$Face;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 736
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mFace_NEW:[Lcom/android/camera/FaceDetection$Face;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 737
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mFace_NEW:[Lcom/android/camera/FaceDetection$Face;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 739
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mFace_NEW:[Lcom/android/camera/FaceDetection$Face;

    aget-object v2, v2, v0

    iget-short v2, v2, Lcom/android/camera/FaceDetection$Face;->focus_X:S

    iput-short v2, v1, Lcom/android/camera/FaceDetection$Face;->focus_X:S

    .line 740
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mFace_NEW:[Lcom/android/camera/FaceDetection$Face;

    aget-object v2, v2, v0

    iget-short v2, v2, Lcom/android/camera/FaceDetection$Face;->focus_Y:S

    iput-short v2, v1, Lcom/android/camera/FaceDetection$Face;->focus_Y:S

    .line 733
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 742
    :cond_0
    return-void
.end method

.method private calculateFocusFace([Lcom/android/camera/FaceDetection$Face;S)S
    .locals 18
    .parameter "faces"
    .parameter "num"

    .prologue
    .line 789
    const/4 v8, 0x0

    .line 790
    .local v8, weight:I
    const/4 v9, 0x0

    .line 791
    .local v9, weight_sum:I
    const/4 v10, 0x0

    .line 792
    .local v10, weight_x:I
    const/4 v11, 0x0

    .line 794
    .local v11, weight_y:I
    const/4 v6, 0x0

    .local v6, index:S
    :goto_0
    move/from16 v0, p2

    if-ge v6, v0, :cond_0

    .line 795
    aget-object v12, p1, v6

    iget-object v7, v12, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    .line 796
    .local v7, range:Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v13

    mul-int v8, v12, v13

    .line 797
    add-int/2addr v9, v8

    .line 798
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    mul-int/2addr v12, v8

    add-int/2addr v10, v12

    .line 799
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    mul-int/2addr v12, v8

    add-int/2addr v11, v12

    .line 794
    add-int/lit8 v12, v6, 0x1

    int-to-short v6, v12

    goto :goto_0

    .line 802
    .end local v7           #range:Landroid/graphics/Rect;
    :cond_0
    div-int/2addr v10, v9

    .line 803
    div-int/2addr v11, v9

    .line 805
    const/4 v5, 0x0

    .line 806
    .local v5, focus:S
    const-wide/16 v1, 0x0

    .line 807
    .local v1, dist:D
    const-wide/16 v3, 0x0

    .line 808
    .local v3, dist_min:D
    const/4 v6, 0x0

    :goto_1
    move/from16 v0, p2

    if-ge v6, v0, :cond_3

    .line 809
    aget-object v12, p1, v6

    iget-object v7, v12, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    .line 810
    .restart local v7       #range:Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    sub-int/2addr v12, v10

    int-to-double v12, v12

    const-wide/high16 v14, 0x4000

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v14

    sub-int/2addr v14, v11

    int-to-double v14, v14

    const-wide/high16 v16, 0x4000

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double v1, v12, v14

    .line 813
    if-eqz v6, :cond_1

    cmpg-double v12, v1, v3

    if-gez v12, :cond_2

    .line 814
    :cond_1
    move v5, v6

    .line 815
    move-wide v3, v1

    .line 808
    :cond_2
    add-int/lit8 v12, v6, 0x1

    int-to-short v6, v12

    goto :goto_1

    .line 819
    .end local v7           #range:Landroid/graphics/Rect;
    :cond_3
    return v5
.end method

.method private checkFaceState()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const-wide/16 v7, 0x1f4

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 335
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-nez v3, :cond_0

    .line 336
    const-string v3, "FaceDetection"

    const-string v4, "checkFaceState() - mHTCCamera == null"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :goto_0
    return-void

    .line 340
    :cond_0
    const/4 v0, 0x0

    .line 341
    .local v0, change:Z
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v3

    if-lez v3, :cond_2

    const/16 v2, 0x7d0

    .line 342
    .local v2, stable_duration:I
    :goto_1
    sget-object v3, Lcom/android/camera/FaceDetection$5;->$SwitchMap$com$android$camera$FaceDetection$STATE:[I

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    invoke-virtual {v4}, Lcom/android/camera/FaceDetection$STATE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 425
    :cond_1
    :goto_2
    :pswitch_0
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mRunnable_Check:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 426
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mRunnable_Check:Ljava/lang/Runnable;

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 341
    .end local v2           #stable_duration:I
    :cond_2
    const/16 v2, 0x1f4

    goto :goto_1

    .line 344
    .restart local v2       #stable_duration:I
    :pswitch_1
    iput v9, p0, Lcom/android/camera/FaceDetection;->mSelfPortraitState:I

    .line 345
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->resetBeepCount()V

    .line 346
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mRunnable_Stable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 347
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    invoke-direct {p0, v3}, Lcom/android/camera/FaceDetection;->getFaces([Lcom/android/camera/FaceDetection$Face;)S

    move-result v3

    iput-short v3, p0, Lcom/android/camera/FaceDetection;->mFaceNum:S

    .line 348
    iget-short v3, p0, Lcom/android/camera/FaceDetection;->mFaceNum:S

    if-ge v3, v5, :cond_3

    .line 349
    sget-object v3, Lcom/android/camera/FaceDetection$STATE;->NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    iput-object v3, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    .line 350
    sget v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    if-ne v3, v6, :cond_1

    .line 351
    sget-object v3, Lcom/android/camera/FaceDetection$STATE;->UNSTABLE_NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    iput-object v3, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    .line 352
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mRunnable_Stable:Ljava/lang/Runnable;

    int-to-long v5, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 355
    :cond_3
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    iget-short v4, p0, Lcom/android/camera/FaceDetection;->mFaceNum:S

    invoke-direct {p0, v3, v4}, Lcom/android/camera/FaceDetection;->calculateFocusFace([Lcom/android/camera/FaceDetection$Face;S)S

    move-result v3

    iput-short v3, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    .line 356
    sget-object v3, Lcom/android/camera/FaceDetection$STATE;->UNSTABLE_WITH_FACE:Lcom/android/camera/FaceDetection$STATE;

    iput-object v3, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    .line 357
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mRunnable_Stable:Ljava/lang/Runnable;

    int-to-long v5, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 361
    :pswitch_2
    iput v9, p0, Lcom/android/camera/FaceDetection;->mSelfPortraitState:I

    .line 362
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->resetBeepCount()V

    .line 363
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    invoke-direct {p0, v3}, Lcom/android/camera/FaceDetection;->getFaces([Lcom/android/camera/FaceDetection$Face;)S

    move-result v3

    iput-short v3, p0, Lcom/android/camera/FaceDetection;->mFaceNum:S

    .line 364
    iget-short v3, p0, Lcom/android/camera/FaceDetection;->mFaceNum:S

    if-ge v3, v5, :cond_4

    .line 365
    sget v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    if-eq v3, v6, :cond_1

    .line 366
    sget-object v3, Lcom/android/camera/FaceDetection$STATE;->NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    iput-object v3, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    .line 367
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mRunnable_Stable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 370
    :cond_4
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    iget-short v4, p0, Lcom/android/camera/FaceDetection;->mFaceNum:S

    invoke-direct {p0, v3, v4}, Lcom/android/camera/FaceDetection;->calculateFocusFace([Lcom/android/camera/FaceDetection$Face;S)S

    move-result v3

    iput-short v3, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    .line 371
    sget-object v3, Lcom/android/camera/FaceDetection$STATE;->UNSTABLE_WITH_FACE:Lcom/android/camera/FaceDetection$STATE;

    iput-object v3, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    .line 372
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mRunnable_Stable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 373
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mRunnable_Stable:Ljava/lang/Runnable;

    int-to-long v5, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 377
    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/FaceDetection;->checkifChange()Z

    move-result v0

    .line 378
    iget-short v3, p0, Lcom/android/camera/FaceDetection;->mFaceNum_NEW:S

    if-ge v3, v5, :cond_5

    .line 379
    sget-object v3, Lcom/android/camera/FaceDetection$STATE;->NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    iput-object v3, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    .line 380
    sget v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    if-ne v3, v6, :cond_1

    .line 381
    sget-object v3, Lcom/android/camera/FaceDetection$STATE;->UNSTABLE_NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    iput-object v3, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    .line 382
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mRunnable_Stable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 383
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mRunnable_Stable:Ljava/lang/Runnable;

    int-to-long v5, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 387
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/FaceDetection;->satisfyAutoCapture()Z

    move-result v1

    .line 388
    .local v1, satisfy:Z
    if-eq v0, v5, :cond_6

    if-nez v1, :cond_7

    .line 389
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/FaceDetection;->assignNewFace()V

    .line 390
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mRunnable_Stable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 391
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mRunnable_Stable:Ljava/lang/Runnable;

    int-to-long v5, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 393
    :cond_7
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->reachBeepCount()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 394
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mRunnable_Stable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 395
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mRunnable_Stable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 402
    .end local v1           #satisfy:Z
    :pswitch_4
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    invoke-direct {p0, v3}, Lcom/android/camera/FaceDetection;->getFaces([Lcom/android/camera/FaceDetection$Face;)S

    move-result v3

    iput-short v3, p0, Lcom/android/camera/FaceDetection;->mFaceNum:S

    .line 403
    iget-short v3, p0, Lcom/android/camera/FaceDetection;->mFaceNum:S

    if-ge v3, v5, :cond_1

    .line 404
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mRunnable_UnStable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 405
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mRunnable_UnStable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 412
    :pswitch_5
    sget-object v3, Lcom/android/camera/FaceDetection$STATE;->STABLE_WITH_FOCUS:Lcom/android/camera/FaceDetection$STATE;

    iput-object v3, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    .line 413
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mRunnable_UnStable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 414
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mRunnable_UnStable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 417
    :pswitch_6
    invoke-direct {p0}, Lcom/android/camera/FaceDetection;->checkifChange()Z

    move-result v0

    .line 418
    iget-short v3, p0, Lcom/android/camera/FaceDetection;->mFaceNum_NEW:S

    if-lt v3, v5, :cond_1

    if-nez v0, :cond_1

    .line 419
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mRunnable_UnStable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 420
    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mRunnable_UnStable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private checkifChange()Z
    .locals 20

    .prologue
    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/FaceDetection;->mFace_NEW:[Lcom/android/camera/FaceDetection$Face;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/camera/FaceDetection;->getFaces([Lcom/android/camera/FaceDetection$Face;)S

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-short v0, v1, Lcom/android/camera/FaceDetection;->mFaceNum_NEW:S

    .line 582
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/android/camera/FaceDetection;->mFaceNum_NEW:S

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 583
    const/16 v18, 0x1

    .line 617
    :goto_0
    return v18

    .line 585
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/FaceDetection;->mFace_NEW:[Lcom/android/camera/FaceDetection$Face;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/android/camera/FaceDetection;->mFaceNum_NEW:S

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/camera/FaceDetection;->calculateFocusFace([Lcom/android/camera/FaceDetection$Face;S)S

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-short v0, v1, Lcom/android/camera/FaceDetection;->mFocusIndex_NEW:S

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 597
    .local v16, range_old:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/FaceDetection;->mFace_NEW:[Lcom/android/camera/FaceDetection$Face;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/android/camera/FaceDetection;->mFocusIndex_NEW:S

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    .line 598
    .local v15, range_new:Landroid/graphics/Rect;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v18

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v19

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v5, v0

    .line 599
    .local v5, area_old:D
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v18

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v19

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v3, v0

    .line 601
    .local v3, area_new:D
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/Rect;->left:I

    .line 603
    .local v10, overlap_left:I
    :goto_1
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    move-object/from16 v0, v16

    iget v13, v0, Landroid/graphics/Rect;->right:I

    .line 605
    .local v13, overlap_right:I
    :goto_2
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    move-object/from16 v0, v16

    iget v14, v0, Landroid/graphics/Rect;->top:I

    .line 607
    .local v14, overlap_top:I
    :goto_3
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    move-object/from16 v0, v16

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    .line 610
    .local v9, overlap_bottom:I
    :goto_4
    sub-int v18, v13, v10

    sub-int v19, v9, v14

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v7, v0

    .line 611
    .local v7, area_overlap:D
    cmpl-double v18, v5, v3

    if-lez v18, :cond_5

    .end local v5           #area_old:D
    :goto_5
    div-double v11, v7, v5

    .line 613
    .local v11, overlap_rate:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v18

    if-lez v18, :cond_6

    const v17, 0x3f333333

    .line 614
    .local v17, threshold:F
    :goto_6
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    cmpl-double v18, v11, v18

    if-lez v18, :cond_7

    .line 615
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 601
    .end local v7           #area_overlap:D
    .end local v9           #overlap_bottom:I
    .end local v10           #overlap_left:I
    .end local v11           #overlap_rate:D
    .end local v13           #overlap_right:I
    .end local v14           #overlap_top:I
    .end local v17           #threshold:F
    .restart local v5       #area_old:D
    :cond_1
    iget v10, v15, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 603
    .restart local v10       #overlap_left:I
    :cond_2
    iget v13, v15, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 605
    .restart local v13       #overlap_right:I
    :cond_3
    iget v14, v15, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 607
    .restart local v14       #overlap_top:I
    :cond_4
    iget v9, v15, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .restart local v7       #area_overlap:D
    .restart local v9       #overlap_bottom:I
    :cond_5
    move-wide v5, v3

    .line 611
    goto :goto_5

    .line 613
    .end local v5           #area_old:D
    .restart local v11       #overlap_rate:D
    :cond_6
    const/high16 v17, 0x3f00

    goto :goto_6

    .line 617
    .restart local v17       #threshold:F
    :cond_7
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method private enterStableState()V
    .locals 8

    .prologue
    const/16 v7, 0x1f

    const/4 v4, 0x1

    const-wide/16 v5, 0x1f4

    const/16 v1, 0x35

    const/4 v2, 0x0

    .line 482
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mRunnable_Stable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 483
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mRunnable_UnStable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 485
    sget-object v0, Lcom/android/camera/FaceDetection$5;->$SwitchMap$com$android$camera$FaceDetection$STATE:[I

    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    invoke-virtual {v3}, Lcom/android/camera/FaceDetection$STATE;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 487
    :pswitch_0
    sget-object v0, Lcom/android/camera/FaceDetection$STATE;->STABLE_NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    iput-object v0, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    .line 488
    sget v0, Lcom/android/camera/HTCCamera;->mFocusMode:I

    if-eq v0, v4, :cond_1

    .line 489
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 490
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable_UnStable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 495
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->reachBeepCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FaceDetection;->assignNewFace()V

    .line 499
    sget-object v0, Lcom/android/camera/FaceDetection$STATE;->STABLE_WITH_FACE:Lcom/android/camera/FaceDetection$STATE;

    iput-object v0, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    .line 500
    sget v0, Lcom/android/camera/HTCCamera;->mFocusMode:I

    if-eq v0, v4, :cond_4

    .line 501
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mRect:[Landroid/graphics/Rect;

    iget-short v3, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    iget-short v7, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v4, v4, v7

    invoke-direct {p0, v4}, Lcom/android/camera/FaceDetection;->mapFaceToSurface(Lcom/android/camera/FaceDetection$Face;)Landroid/graphics/Rect;

    move-result-object v4

    aput-object v4, v0, v3

    .line 502
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    iget-short v3, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mRect:[Landroid/graphics/Rect;

    iget-short v4, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    iput-short v3, v0, Lcom/android/camera/FaceDetection$Face;->focus_X:S

    .line 503
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    iget-short v3, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mRect:[Landroid/graphics/Rect;

    iget-short v4, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    iput-short v3, v0, Lcom/android/camera/FaceDetection$Face;->focus_Y:S

    .line 505
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 506
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v0

    if-lez v0, :cond_3

    .line 507
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    iget-short v4, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v4, v3, v4

    move v3, v2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    .line 509
    :cond_3
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    iget-short v4, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v3, v3, v4

    invoke-static {v0, v1, v2, v2, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 511
    :cond_4
    sget-object v0, Lcom/android/camera/FaceDetection$STATE;->STABLE_WITH_FOCUS:Lcom/android/camera/FaceDetection$STATE;

    iput-object v0, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    .line 512
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable_UnStable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 485
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private enterUnStableState()V
    .locals 3

    .prologue
    const/16 v2, 0x36

    .line 521
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable_Stable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 522
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable_UnStable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 524
    sget-object v0, Lcom/android/camera/FaceDetection$STATE;->NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    iput-object v0, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    .line 526
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 527
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 528
    return-void
.end method

.method private getFaces([Lcom/android/camera/FaceDetection$Face;)S
    .locals 9
    .parameter "faces"

    .prologue
    const/4 v6, 0x0

    .line 825
    const/4 v2, 0x0

    .line 828
    .local v2, hasPortrait:Z
    iget-object v5, p0, Lcom/android/camera/FaceDetection;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v5, :cond_0

    .line 829
    const-string v5, "FaceDetection"

    const-string v7, "getFaces() failed - mCameraThread == null"

    invoke-static {v5, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :goto_0
    return v6

    .line 833
    :cond_0
    iget-object v5, p0, Lcom/android/camera/FaceDetection;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    .line 834
    .local v0, device:Landroid/hardware/Camera;
    if-nez v0, :cond_1

    .line 835
    const-string v5, "FaceDetection"

    const-string v7, "getFaces() failed - device == null"

    invoke-static {v5, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 840
    :cond_1
    const/4 v4, 0x0

    .line 841
    .local v4, numFaces:S
    iget-object v5, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5, p1}, Lcom/android/camera/HTCCamera;->getICSFace([Lcom/android/camera/FaceDetection$Face;)I

    move-result v5

    int-to-short v4, v5

    .line 842
    if-nez v4, :cond_2

    .line 843
    iget-object v5, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v5, :cond_2

    .line 844
    iget-object v5, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->updateFaceIcon(I)V

    .line 845
    iget-object v5, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v5

    new-instance v7, Lcom/android/camera/BooleanEvent;

    const-string v8, "PortraitMode.Changed"

    invoke-direct {v7, v8, v2}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5, v7}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto :goto_0

    .line 851
    :cond_2
    iget-object v5, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v5, :cond_3

    .line 852
    iget-object v7, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-lez v4, :cond_5

    move v5, v4

    :goto_1
    invoke-virtual {v7, v5}, Lcom/android/camera/HTCCamera;->updateFaceIcon(I)V

    .line 855
    :cond_3
    if-gtz v4, :cond_6

    .line 857
    iget-object v5, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v5, :cond_4

    .line 858
    iget-object v5, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v5

    new-instance v6, Lcom/android/camera/BooleanEvent;

    const-string v7, "PortraitMode.Changed"

    invoke-direct {v6, v7, v2}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    :cond_4
    move v6, v4

    .line 859
    goto :goto_0

    :cond_5
    move v5, v6

    .line 852
    goto :goto_1

    .line 862
    :cond_6
    const/16 v5, 0xa

    if-le v4, v5, :cond_7

    .line 863
    const-string v5, "FaceDetection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "numFaces > MAX_FACE_NUM: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 867
    :cond_7
    const/4 v3, 0x0

    .line 868
    .local v3, index:S
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_9

    .line 870
    aget-object v5, p1, v3

    iget-object v5, v5, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 871
    .local v1, facesize:I
    iget v5, p0, Lcom/android/camera/FaceDetection;->mPortraitThreshold:I

    if-lt v1, v5, :cond_8

    .line 872
    const/4 v2, 0x1

    .line 873
    :cond_8
    or-int/2addr v2, v2

    .line 868
    add-int/lit8 v5, v3, 0x1

    int-to-short v3, v5

    goto :goto_2

    .line 876
    .end local v1           #facesize:I
    :cond_9
    iget-object v5, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v5, :cond_a

    .line 877
    const/4 v5, 0x3

    if-gt v4, v5, :cond_b

    .line 878
    iget-object v5, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v5

    new-instance v6, Lcom/android/camera/BooleanEvent;

    const-string v7, "PortraitMode.Changed"

    invoke-direct {v6, v7, v2}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 882
    :cond_a
    :goto_3
    const-string v5, "FaceDetection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getFaces numFaces:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v4

    .line 883
    goto/16 :goto_0

    .line 880
    :cond_b
    iget-object v5, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v5

    new-instance v7, Lcom/android/camera/BooleanEvent;

    const-string v8, "PortraitMode.Changed"

    invoke-direct {v7, v8, v6}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5, v7}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto :goto_3
.end method

.method private insideCentralArea(Landroid/graphics/Rect;)Z
    .locals 7
    .parameter "rect"

    .prologue
    .line 648
    iget-object v5, p0, Lcom/android/camera/FaceDetection;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getPreviewHeight()I

    move-result v3

    .line 649
    .local v3, preview_width:I
    iget-object v5, p0, Lcom/android/camera/FaceDetection;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getPreviewWidth()I

    move-result v2

    .line 650
    .local v2, preview_height:I
    sub-int v0, v3, v2

    .line 652
    .local v0, diff:I
    iget-object v6, p0, Lcom/android/camera/FaceDetection;->mCentralArea:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->hasPreviewFilterLayout()Z

    move-result v5

    if-eqz v5, :cond_2

    div-int/lit8 v5, v0, 0x2

    :goto_0
    iput v5, v6, Landroid/graphics/Rect;->left:I

    .line 653
    iget-object v5, p0, Lcom/android/camera/FaceDetection;->mCentralArea:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x5

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 654
    iget-object v5, p0, Lcom/android/camera/FaceDetection;->mCentralArea:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/camera/FaceDetection;->mCentralArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int v6, v3, v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 655
    iget-object v5, p0, Lcom/android/camera/FaceDetection;->mCentralArea:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/camera/FaceDetection;->mCentralArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, v2, v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 657
    const/4 v1, 0x0

    .line 658
    .local v1, inside:Z
    const/4 v4, 0x2

    .line 659
    .local v4, state:I
    iget-object v5, p0, Lcom/android/camera/FaceDetection;->mCentralArea:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 660
    const/4 v4, 0x1

    .line 661
    const/4 v1, 0x1

    .line 664
    :cond_0
    iget v5, p0, Lcom/android/camera/FaceDetection;->mSelfPortraitState:I

    if-eq v4, v5, :cond_1

    .line 665
    iput v4, p0, Lcom/android/camera/FaceDetection;->mSelfPortraitState:I

    .line 666
    iget-object v5, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget v6, p0, Lcom/android/camera/FaceDetection;->mSelfPortraitState:I

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->updateBeepLevel(I)V

    .line 669
    :cond_1
    return v1

    .line 652
    .end local v1           #inside:Z
    .end local v4           #state:I
    :cond_2
    div-int/lit8 v5, v0, 0x4

    goto :goto_0
.end method

.method private insideCentralAreaMix([Lcom/android/camera/FaceDetection$Face;I)Z
    .locals 9
    .parameter "faces"
    .parameter "num"

    .prologue
    .line 675
    const/4 v2, 0x1

    .line 676
    .local v2, inside:Z
    const/4 v6, 0x2

    .line 677
    .local v6, state:I
    iget-object v7, p0, Lcom/android/camera/FaceDetection;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getPreviewHeight()I

    move-result v4

    .line 678
    .local v4, preview_width:I
    iget-object v7, p0, Lcom/android/camera/FaceDetection;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getPreviewWidth()I

    move-result v3

    .line 679
    .local v3, preview_height:I
    sub-int v0, v4, v3

    .line 680
    .local v0, diff:I
    const/4 v5, 0x0

    .line 682
    .local v5, rect:Landroid/graphics/Rect;
    if-nez p2, :cond_1

    .line 683
    const/4 v6, 0x2

    .line 684
    const/4 v2, 0x0

    .line 720
    :goto_0
    iget v7, p0, Lcom/android/camera/FaceDetection;->mSelfPortraitState:I

    if-eq v6, v7, :cond_0

    .line 721
    iput v6, p0, Lcom/android/camera/FaceDetection;->mSelfPortraitState:I

    .line 722
    iget-object v7, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget v8, p0, Lcom/android/camera/FaceDetection;->mSelfPortraitState:I

    invoke-virtual {v7, v8}, Lcom/android/camera/HTCCamera;->updateBeepLevel(I)V

    .line 725
    :cond_0
    return v2

    .line 685
    :cond_1
    const/4 v7, 0x1

    if-ne p2, v7, :cond_4

    .line 686
    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget-object v5, v7, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    .line 687
    iget-object v8, p0, Lcom/android/camera/FaceDetection;->mCentralArea:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v7}, Lcom/android/camera/HTCCamera;->hasPreviewFilterLayout()Z

    move-result v7

    if-eqz v7, :cond_2

    div-int/lit8 v7, v0, 0x2

    :goto_1
    iput v7, v8, Landroid/graphics/Rect;->left:I

    .line 688
    iget-object v7, p0, Lcom/android/camera/FaceDetection;->mCentralArea:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x5

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 689
    iget-object v7, p0, Lcom/android/camera/FaceDetection;->mCentralArea:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/camera/FaceDetection;->mCentralArea:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int v8, v4, v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 690
    iget-object v7, p0, Lcom/android/camera/FaceDetection;->mCentralArea:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/camera/FaceDetection;->mCentralArea:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int v8, v3, v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 692
    iget-object v7, p0, Lcom/android/camera/FaceDetection;->mCentralArea:Landroid/graphics/Rect;

    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 693
    const/4 v6, 0x1

    .line 694
    const/4 v2, 0x1

    goto :goto_0

    .line 687
    :cond_2
    div-int/lit8 v7, v0, 0x4

    goto :goto_1

    .line 696
    :cond_3
    const/4 v6, 0x2

    .line 697
    const/4 v2, 0x0

    goto :goto_0

    .line 700
    :cond_4
    iget-object v7, p0, Lcom/android/camera/FaceDetection;->mCentralArea:Landroid/graphics/Rect;

    div-int/lit8 v8, v0, 0x8

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 701
    iget-object v7, p0, Lcom/android/camera/FaceDetection;->mCentralArea:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/camera/FaceDetection;->mCentralArea:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int v8, v4, v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 703
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, p2, :cond_5

    .line 704
    aget-object v7, p1, v1

    iget-object v5, v7, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    .line 705
    iget-object v7, p0, Lcom/android/camera/FaceDetection;->mCentralArea:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x8

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 706
    iget-object v7, p0, Lcom/android/camera/FaceDetection;->mCentralArea:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/camera/FaceDetection;->mCentralArea:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int v8, v3, v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 707
    iget-object v7, p0, Lcom/android/camera/FaceDetection;->mCentralArea:Landroid/graphics/Rect;

    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 708
    const/4 v6, 0x2

    .line 709
    const/4 v2, 0x0

    .line 714
    :cond_5
    if-eqz v2, :cond_7

    .line 715
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 703
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 717
    :cond_7
    const/4 v6, 0x2

    goto/16 :goto_0
.end method

.method private mapFaceToSurface(Lcom/android/camera/FaceDetection$Face;)Landroid/graphics/Rect;
    .locals 5
    .parameter "face"

    .prologue
    .line 888
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 889
    .local v1, newRect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v4, :cond_0

    .line 890
    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget v2, v4, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    .line 891
    .local v2, orientation:I
    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v3

    .line 892
    .local v3, surface:Landroid/view/View;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 893
    .local v0, display:Landroid/graphics/Rect;
    invoke-virtual {v3, v0}, Landroid/view/SurfaceView;->getHitRect(Landroid/graphics/Rect;)V

    .line 895
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/camera/FaceDetection;->mapRect_Preview2Screen(Lcom/android/camera/FaceDetection$Face;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 898
    .end local v0           #display:Landroid/graphics/Rect;
    .end local v2           #orientation:I
    .end local v3           #surface:Landroid/view/View;
    :cond_0
    return-object v1
.end method

.method private mapRect_Preview2Screen(Lcom/android/camera/FaceDetection$Face;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 7
    .parameter "face"
    .parameter "rect"
    .parameter "display"
    .parameter "orientation"

    .prologue
    .line 903
    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 904
    .local v1, preview_width:I
    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 906
    .local v0, preview_height:I
    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v4, :cond_1

    .line 907
    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getPreviewWidth()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getPreviewWidth()I

    move-result v1

    .line 908
    :cond_0
    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getPreviewHeight()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getPreviewHeight()I

    move-result v0

    .line 911
    :cond_1
    iget-object v2, p1, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    .line 912
    .local v2, range:Landroid/graphics/Rect;
    const/4 v4, 0x1

    if-ne p4, v4, :cond_2

    .line 913
    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    mul-int/2addr v4, v5

    div-int/2addr v4, v1

    iput v4, p2, Landroid/graphics/Rect;->left:I

    .line 914
    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    div-int/2addr v4, v0

    iput v4, p2, Landroid/graphics/Rect;->top:I

    .line 915
    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    mul-int/2addr v4, v5

    div-int/2addr v4, v1

    iput v4, p2, Landroid/graphics/Rect;->right:I

    .line 916
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    div-int/2addr v4, v0

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 929
    :goto_0
    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, p2, Landroid/graphics/Rect;->left:I

    .line 930
    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, p2, Landroid/graphics/Rect;->top:I

    .line 931
    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, p2, Landroid/graphics/Rect;->right:I

    .line 932
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget v5, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 933
    return-void

    .line 919
    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    mul-int/2addr v5, v6

    div-int/2addr v5, v0

    sub-int/2addr v4, v5

    iput v4, p2, Landroid/graphics/Rect;->left:I

    .line 920
    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    div-int/2addr v4, v1

    iput v4, p2, Landroid/graphics/Rect;->top:I

    .line 921
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    mul-int/2addr v5, v6

    div-int/2addr v5, v0

    sub-int/2addr v4, v5

    iput v4, p2, Landroid/graphics/Rect;->right:I

    .line 922
    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    div-int/2addr v4, v1

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 924
    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 925
    .local v3, ref:I
    iget v4, p2, Landroid/graphics/Rect;->right:I

    iput v4, p2, Landroid/graphics/Rect;->left:I

    .line 926
    iput v3, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private satisfyAutoCapture()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 623
    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v2, :cond_1

    .line 639
    :cond_0
    :goto_0
    return v0

    .line 626
    :cond_1
    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v2, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v0

    if-ge v0, v1, :cond_2

    move v0, v1

    .line 630
    goto :goto_0

    .line 636
    :cond_2
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->hasPreviewFilterLayout()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 637
    :cond_3
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mFace_NEW:[Lcom/android/camera/FaceDetection$Face;

    iget-short v1, p0, Lcom/android/camera/FaceDetection;->mFocusIndex_NEW:S

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/camera/FaceDetection;->insideCentralArea(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 639
    :cond_4
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mFace_NEW:[Lcom/android/camera/FaceDetection$Face;

    iget-short v1, p0, Lcom/android/camera/FaceDetection;->mFaceNum_NEW:S

    invoke-direct {p0, v0, v1}, Lcom/android/camera/FaceDetection;->insideCentralAreaMix([Lcom/android/camera/FaceDetection$Face;I)Z

    move-result v0

    goto :goto_0
.end method

.method private startDrawFace()V
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 253
    iput-short v1, p0, Lcom/android/camera/FaceDetection;->mFaceNum:S

    .line 254
    iput-short v1, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    .line 256
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mDrawFace:Lcom/android/camera/widget/DrawFace;

    if-nez v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const v2, 0x7f080044

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 258
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0800ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/DrawFace;

    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mDrawFace:Lcom/android/camera/widget/DrawFace;

    .line 261
    .end local v0           #stub:Landroid/view/ViewStub;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mDrawFace:Lcom/android/camera/widget/DrawFace;

    invoke-virtual {v1}, Lcom/android/camera/widget/DrawFace;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mDrawFace:Lcom/android/camera/widget/DrawFace;

    invoke-virtual {v1}, Lcom/android/camera/widget/DrawFace;->resetFace()V

    .line 263
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mDrawFace:Lcom/android/camera/widget/DrawFace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/DrawFace;->setVisibility(I)V

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 267
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 268
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 270
    :cond_2
    return-void
.end method

.method private stopDrawFace()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 294
    iput-short v0, p0, Lcom/android/camera/FaceDetection;->mFaceNum:S

    .line 295
    iput-short v0, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    .line 297
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mDrawFace:Lcom/android/camera/widget/DrawFace;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mDrawFace:Lcom/android/camera/widget/DrawFace;

    invoke-virtual {v0}, Lcom/android/camera/widget/DrawFace;->resetFace()V

    .line 299
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mDrawFace:Lcom/android/camera/widget/DrawFace;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/DrawFace;->setVisibility(I)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 305
    :cond_1
    return-void
.end method

.method private updateDrawFace()V
    .locals 5

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mDrawFace:Lcom/android/camera/widget/DrawFace;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mDrawFace:Lcom/android/camera/widget/DrawFace;

    invoke-virtual {v1}, Lcom/android/camera/widget/DrawFace;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    invoke-direct {p0, v1}, Lcom/android/camera/FaceDetection;->getFaces([Lcom/android/camera/FaceDetection$Face;)S

    move-result v1

    iput-short v1, p0, Lcom/android/camera/FaceDetection;->mFaceNum:S

    .line 280
    iget-short v1, p0, Lcom/android/camera/FaceDetection;->mFaceNum:S

    if-lez v1, :cond_3

    .line 281
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-short v1, p0, Lcom/android/camera/FaceDetection;->mFaceNum:S

    if-ge v0, v1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRect:[Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/android/camera/FaceDetection;->mapFaceToSurface(Lcom/android/camera/FaceDetection$Face;)Landroid/graphics/Rect;

    move-result-object v2

    aput-object v2, v1, v0

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mDrawFace:Lcom/android/camera/widget/DrawFace;

    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mRect:[Landroid/graphics/Rect;

    iget-short v3, p0, Lcom/android/camera/FaceDetection;->mFaceNum:S

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/widget/DrawFace;->setFace([Landroid/graphics/Rect;SZ)V

    .line 289
    .end local v0           #i:I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mDrawFace:Lcom/android/camera/widget/DrawFace;

    invoke-virtual {v1}, Lcom/android/camera/widget/DrawFace;->invalidate()V

    .line 291
    :cond_2
    return-void

    .line 287
    :cond_3
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mDrawFace:Lcom/android/camera/widget/DrawFace;

    invoke-virtual {v1}, Lcom/android/camera/widget/DrawFace;->resetFace()V

    goto :goto_1
.end method


# virtual methods
.method public clearFocusFace()V
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x0

    .line 204
    iget-boolean v1, p0, Lcom/android/camera/FaceDetection;->bStartDetection:Z

    if-nez v1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mCamController:Lcom/android/camera/CameraController;

    if-eqz v1, :cond_0

    .line 209
    const-string v1, "%01d%04d%04d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, options:Ljava/lang/String;
    const-string v1, "FaceDetection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearFocusFace(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 215
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v6, v5, v5, v0}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getFaceState()Lcom/android/camera/FaceDetection$STATE;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    return-object v0
.end method

.method public getFocusFace()Lcom/android/camera/FaceDetection$Face;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 759
    const-string v1, "FaceDetection"

    const-string v2, "getFocusFace()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    invoke-direct {p0, v1}, Lcom/android/camera/FaceDetection;->getFaces([Lcom/android/camera/FaceDetection$Face;)S

    move-result v1

    iput-short v1, p0, Lcom/android/camera/FaceDetection;->mFaceNum:S

    .line 764
    iget-short v1, p0, Lcom/android/camera/FaceDetection;->mFaceNum:S

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 765
    const-string v1, "FaceDetection"

    const-string v2, "getFocusFace() - mFaceNum < 1"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :goto_0
    return-object v0

    .line 769
    :cond_0
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    iget-short v2, p0, Lcom/android/camera/FaceDetection;->mFaceNum:S

    invoke-direct {p0, v1, v2}, Lcom/android/camera/FaceDetection;->calculateFocusFace([Lcom/android/camera/FaceDetection$Face;S)S

    move-result v1

    iput-short v1, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    .line 770
    const-string v1, "FaceDetection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFocusFace() - focus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-short v1, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    if-gez v1, :cond_1

    .line 772
    const-string v1, "FaceDetection"

    const-string v2, "getFocusFace() - mFocusIndex < 0"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mRect:[Landroid/graphics/Rect;

    iget-short v1, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    iget-short v3, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/camera/FaceDetection;->mapFaceToSurface(Lcom/android/camera/FaceDetection$Face;)Landroid/graphics/Rect;

    move-result-object v2

    aput-object v2, v0, v1

    .line 779
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    iget-short v1, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRect:[Landroid/graphics/Rect;

    iget-short v2, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mRect:[Landroid/graphics/Rect;

    iget-short v3, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/android/camera/FaceDetection$Face;->focus_X:S

    .line 780
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    iget-short v1, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRect:[Landroid/graphics/Rect;

    iget-short v2, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mRect:[Landroid/graphics/Rect;

    iget-short v3, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/android/camera/FaceDetection$Face;->focus_Y:S

    .line 782
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    iget-short v1, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getSelfPortraitState()I
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Lcom/android/camera/FaceDetection;->mSelfPortraitState:I

    return v0
.end method

.method public initFaceDetection(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V
    .locals 4
    .parameter "mCamera"
    .parameter "mThread"

    .prologue
    const/16 v3, 0xa

    .line 72
    iput-object p1, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 73
    iput-object p2, p0, Lcom/android/camera/FaceDetection;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 74
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    .line 75
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mCameraHandler:Landroid/os/Handler;

    .line 76
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mCamController:Lcom/android/camera/CameraController;

    .line 78
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mCentralArea:Landroid/graphics/Rect;

    .line 79
    new-array v1, v3, [Lcom/android/camera/FaceDetection$Face;

    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    .line 80
    new-array v1, v3, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mRect:[Landroid/graphics/Rect;

    .line 81
    new-array v1, v3, [Lcom/android/camera/FaceDetection$Face;

    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mFace_NEW:[Lcom/android/camera/FaceDetection$Face;

    .line 82
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    new-instance v2, Lcom/android/camera/FaceDetection$Face;

    invoke-direct {v2, p0}, Lcom/android/camera/FaceDetection$Face;-><init>(Lcom/android/camera/FaceDetection;)V

    aput-object v2, v1, v0

    .line 84
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRect:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 85
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mFace_NEW:[Lcom/android/camera/FaceDetection$Face;

    new-instance v2, Lcom/android/camera/FaceDetection$Face;

    invoke-direct {v2, p0}, Lcom/android/camera/FaceDetection$Face;-><init>(Lcom/android/camera/FaceDetection;)V

    aput-object v2, v1, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    new-instance v1, Lcom/android/camera/FaceDetection$1;

    invoke-direct {v1, p0}, Lcom/android/camera/FaceDetection$1;-><init>(Lcom/android/camera/FaceDetection;)V

    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable:Ljava/lang/Runnable;

    .line 94
    new-instance v1, Lcom/android/camera/FaceDetection$2;

    invoke-direct {v1, p0}, Lcom/android/camera/FaceDetection$2;-><init>(Lcom/android/camera/FaceDetection;)V

    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable_Check:Ljava/lang/Runnable;

    .line 100
    new-instance v1, Lcom/android/camera/FaceDetection$3;

    invoke-direct {v1, p0}, Lcom/android/camera/FaceDetection$3;-><init>(Lcom/android/camera/FaceDetection;)V

    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable_Stable:Ljava/lang/Runnable;

    .line 106
    new-instance v1, Lcom/android/camera/FaceDetection$4;

    invoke-direct {v1, p0}, Lcom/android/camera/FaceDetection$4;-><init>(Lcom/android/camera/FaceDetection;)V

    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable_UnStable:Ljava/lang/Runnable;

    .line 111
    return-void
.end method

.method public isCheckLoop()Z
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/android/camera/FaceDetection;->bCheckLoop:Z

    return v0
.end method

.method public isStartDetection()Z
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/android/camera/FaceDetection;->bStartDetection:Z

    return v0
.end method

.method public quickFocus()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 431
    const-string v2, "FaceDetection"

    const-string v3, "quickFocus()"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-boolean v2, p0, Lcom/android/camera/FaceDetection;->bStartDetection:Z

    if-nez v2, :cond_0

    .line 434
    const-string v1, "FaceDetection"

    const-string v2, "quickFocus() failed - bStartDetection == false"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :goto_0
    return v0

    .line 438
    :cond_0
    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x35

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 439
    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x36

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 440
    invoke-virtual {p0}, Lcom/android/camera/FaceDetection;->clearFocusFace()V

    .line 442
    iget-boolean v2, p0, Lcom/android/camera/FaceDetection;->bCheckLoop:Z

    if-nez v2, :cond_1

    .line 443
    invoke-virtual {p0}, Lcom/android/camera/FaceDetection;->startCheckLoop()V

    .line 450
    :goto_1
    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    sget-object v3, Lcom/android/camera/FaceDetection$STATE;->STABLE_NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    if-ne v2, v3, :cond_2

    .line 452
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mRunnable_UnStable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 445
    :cond_1
    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mRunnable_Stable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 446
    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mRunnable_UnStable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 455
    :cond_2
    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    sget-object v3, Lcom/android/camera/FaceDetection$STATE;->NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    sget-object v3, Lcom/android/camera/FaceDetection$STATE;->UNSTABLE_NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    if-ne v2, v3, :cond_6

    .line 457
    :cond_3
    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    invoke-direct {p0, v2}, Lcom/android/camera/FaceDetection;->getFaces([Lcom/android/camera/FaceDetection$Face;)S

    move-result v2

    iput-short v2, p0, Lcom/android/camera/FaceDetection;->mFaceNum:S

    .line 458
    iget-short v2, p0, Lcom/android/camera/FaceDetection;->mFaceNum:S

    if-ge v2, v1, :cond_4

    .line 459
    sget-object v1, Lcom/android/camera/FaceDetection$STATE;->STABLE_NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    iput-object v1, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    goto :goto_0

    .line 462
    :cond_4
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    iget-short v2, p0, Lcom/android/camera/FaceDetection;->mFaceNum:S

    invoke-direct {p0, v0, v2}, Lcom/android/camera/FaceDetection;->calculateFocusFace([Lcom/android/camera/FaceDetection$Face;S)S

    move-result v0

    iput-short v0, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    .line 471
    :cond_5
    :goto_2
    sget-object v0, Lcom/android/camera/FaceDetection$STATE;->STABLE_WITH_FACE:Lcom/android/camera/FaceDetection$STATE;

    iput-object v0, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    .line 472
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mRect:[Landroid/graphics/Rect;

    iget-short v2, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    iget-short v4, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/camera/FaceDetection;->mapFaceToSurface(Lcom/android/camera/FaceDetection$Face;)Landroid/graphics/Rect;

    move-result-object v3

    aput-object v3, v0, v2

    .line 473
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    iget-short v2, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mRect:[Landroid/graphics/Rect;

    iget-short v3, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    iput-short v2, v0, Lcom/android/camera/FaceDetection$Face;->focus_X:S

    .line 474
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    iget-short v2, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mRect:[Landroid/graphics/Rect;

    iget-short v3, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    iput-short v2, v0, Lcom/android/camera/FaceDetection$Face;->focus_Y:S

    .line 475
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v2, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    iget-short v3, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/camera/HTCCamera;->handleFaceFocus(Lcom/android/camera/FaceDetection$Face;)V

    move v0, v1

    .line 476
    goto/16 :goto_0

    .line 466
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/FaceDetection;->checkifChange()Z

    .line 467
    iget-short v0, p0, Lcom/android/camera/FaceDetection;->mFaceNum_NEW:S

    if-lt v0, v1, :cond_5

    .line 468
    invoke-direct {p0}, Lcom/android/camera/FaceDetection;->assignNewFace()V

    goto :goto_2
.end method

.method public releaseFaceDetection()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 115
    iput-object v2, p0, Lcom/android/camera/FaceDetection;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 116
    iput-object v2, p0, Lcom/android/camera/FaceDetection;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 117
    iput-object v2, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    .line 118
    iput-object v2, p0, Lcom/android/camera/FaceDetection;->mCameraHandler:Landroid/os/Handler;

    .line 119
    iput-object v2, p0, Lcom/android/camera/FaceDetection;->mCamController:Lcom/android/camera/CameraController;

    .line 120
    iput-object v2, p0, Lcom/android/camera/FaceDetection;->mRunnable:Ljava/lang/Runnable;

    .line 121
    iput-object v2, p0, Lcom/android/camera/FaceDetection;->mRunnable_Check:Ljava/lang/Runnable;

    .line 122
    iput-object v2, p0, Lcom/android/camera/FaceDetection;->mRunnable_Stable:Ljava/lang/Runnable;

    .line 123
    iput-object v2, p0, Lcom/android/camera/FaceDetection;->mRunnable_UnStable:Ljava/lang/Runnable;

    .line 125
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    if-eqz v1, :cond_1

    .line 126
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    aput-object v2, v1, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    iput-object v2, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    .line 132
    .end local v0           #index:I
    :cond_1
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRect:[Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    .line 133
    const/4 v0, 0x0

    .restart local v0       #index:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 134
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRect:[Landroid/graphics/Rect;

    aput-object v2, v1, v0

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    :cond_2
    iput-object v2, p0, Lcom/android/camera/FaceDetection;->mRect:[Landroid/graphics/Rect;

    .line 139
    .end local v0           #index:I
    :cond_3
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mFace_NEW:[Lcom/android/camera/FaceDetection$Face;

    if-eqz v1, :cond_5

    .line 140
    const/4 v0, 0x0

    .restart local v0       #index:I
    :goto_2
    if-ge v0, v3, :cond_4

    .line 141
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mFace_NEW:[Lcom/android/camera/FaceDetection$Face;

    aput-object v2, v1, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 143
    :cond_4
    iput-object v2, p0, Lcom/android/camera/FaceDetection;->mFace_NEW:[Lcom/android/camera/FaceDetection$Face;

    .line 145
    .end local v0           #index:I
    :cond_5
    return-void
.end method

.method public setFocusFace()V
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 181
    const-string v1, "FaceDetection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFocusFace(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mCamController:Lcom/android/camera/CameraController;

    if-eqz v1, :cond_0

    iget-short v1, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    if-ltz v1, :cond_0

    .line 190
    const-string v1, "%01d%04d%04d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    iget-short v4, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    iget-short v5, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getPreviewWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/camera/FaceDetection;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getPreviewHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    iget-short v6, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/FaceDetection;->mFace:[Lcom/android/camera/FaceDetection$Face;

    iget-short v6, p0, Lcom/android/camera/FaceDetection;->mFocusIndex:S

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x3e8

    iget-object v5, p0, Lcom/android/camera/FaceDetection;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getPreviewHeight()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, options:Ljava/lang/String;
    const-string v1, "FaceDetection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFocusFace option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v8}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 198
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v8, v7, v7, v0}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 200
    .end local v0           #options:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setStateWithFocus()V
    .locals 4

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    sget-object v1, Lcom/android/camera/FaceDetection$STATE;->STABLE_WITH_FACE:Lcom/android/camera/FaceDetection$STATE;

    if-ne v0, v1, :cond_0

    .line 568
    sget-object v0, Lcom/android/camera/FaceDetection$STATE;->STABLE_GET_FOCUS:Lcom/android/camera/FaceDetection$STATE;

    iput-object v0, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    .line 570
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable_Check:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 571
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable_Stable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 572
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable_UnStable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 574
    iget-boolean v0, p0, Lcom/android/camera/FaceDetection;->bCheckLoop:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable_Check:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 577
    :cond_0
    return-void
.end method

.method public startCheckLoop()V
    .locals 4

    .prologue
    .line 312
    const-string v0, "FaceDetection"

    const-string v1, "startCheckLoop()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 315
    const-string v0, "FaceDetection"

    const-string v1, "startCheckLoop() failed - mUIHandler == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/FaceDetection;->bStartDetection:Z

    if-nez v0, :cond_1

    .line 320
    const-string v0, "FaceDetection"

    const-string v1, "startCheckLoop() failed - bStartDetection == false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable_Check:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 325
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable_Stable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 326
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable_UnStable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FaceDetection;->bCheckLoop:Z

    .line 329
    sget-object v0, Lcom/android/camera/FaceDetection$STATE;->NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    iput-object v0, p0, Lcom/android/camera/FaceDetection;->mCurrentState:Lcom/android/camera/FaceDetection$STATE;

    .line 330
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable_Check:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public startFaceDetection()V
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 148
    const-string v1, "FaceDetection"

    const-string v2, "startFaceDetection()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mCamController:Lcom/android/camera/CameraController;

    if-nez v1, :cond_1

    .line 150
    const-string v1, "FaceDetection"

    const-string v2, "startFaceDetection() failed - mCamController == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/FaceDetection;->bStartDetection:Z

    if-eq v1, v4, :cond_0

    .line 158
    iput-boolean v4, p0, Lcom/android/camera/FaceDetection;->bStartDetection:Z

    .line 168
    const-string v0, "On"

    .line 171
    .local v0, options:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 172
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v5, v3, v3, v0}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 177
    const-string v1, "FaceDetection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startFaceDetection(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopCheckLoop()V
    .locals 3

    .prologue
    const/16 v2, 0x36

    .line 531
    const-string v0, "FaceDetection"

    const-string v1, "stopCheckLoop()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 534
    const-string v0, "FaceDetection"

    const-string v1, "stopCheckLoop() failed - mUIHandler == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/FaceDetection;->bStartDetection:Z

    if-nez v0, :cond_1

    .line 539
    const-string v0, "FaceDetection"

    const-string v1, "stopCheckLoop() failed - bStartDetection == false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 543
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FaceDetection;->bCheckLoop:Z

    .line 544
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable_Check:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 545
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable_Stable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 546
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mRunnable_UnStable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 548
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 550
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 551
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 553
    iget-object v0, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x45

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method public stopFaceDetection()V
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    .line 220
    const-string v1, "FaceDetection"

    const-string v2, "stopFaceDetection()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mCamController:Lcom/android/camera/CameraController;

    if-nez v1, :cond_1

    .line 222
    const-string v1, "FaceDetection"

    const-string v2, "stopFaceDetection() failed - mCamController == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/FaceDetection;->bStartDetection:Z

    if-eqz v1, :cond_0

    .line 230
    iput-boolean v3, p0, Lcom/android/camera/FaceDetection;->bStartDetection:Z

    .line 232
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x36

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 242
    const-string v0, "Off"

    .line 244
    .local v0, options:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 245
    iget-object v1, p0, Lcom/android/camera/FaceDetection;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v4, v3, v3, v0}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 249
    const-string v1, "FaceDetection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopFaceDetection(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
