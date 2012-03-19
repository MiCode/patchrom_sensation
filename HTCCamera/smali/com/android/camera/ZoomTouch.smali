.class public Lcom/android/camera/ZoomTouch;
.super Ljava/lang/Object;
.source "ZoomTouch.java"


# static fields
.field private static final CLICK_PERIOD:J = 0xfaL

.field public static final SHOW_ZOOM_STATE_THRESHOLD:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ZoomTouch"

.field private static final VAILD_DISTANCE:F = 50.0f

.field private static final WEIGHT_MULTIPLE:F = 1.0f

.field private static final WEIGHT_SINGLE:F = 1.0f

.field public static final ZOOM_STATE_EXIT:I = 0x5

.field public static final ZOOM_STATE_MULTIPLE_EXIT:I = 0x4

.field public static final ZOOM_STATE_MULTIPLE_TOUCH:I = 0x2

.field public static final ZOOM_STATE_MULTIPLE_ZOOM:I = 0x3

.field public static final ZOOM_STATE_SINGLE_TOUCH:I = 0x0

.field public static final ZOOM_STATE_SINGLE_ZOOM:I = 0x1


# instance fields
.field private Zoom_State:I

.field private mCanShowZoom:Z

.field private mEnterTime:J

.field private mExitTime:J

.field private mInitDist:F

.field private mInitX:F

.field private mInitY:F

.field private mIsFirstTime:Z

.field private mIsNeedUpdate:Z

.field private mIsValueChanged:Z

.field private mScale_multiple:F

.field private mScale_single:F

.field private mZoomDiff:I

.field private mZoomMax:I

.field private mZoomMin:I

.field private mZoomProgress:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/high16 v4, 0x3f80

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/ZoomTouch;->Zoom_State:I

    .line 18
    iput-wide v5, p0, Lcom/android/camera/ZoomTouch;->mEnterTime:J

    .line 19
    iput-wide v5, p0, Lcom/android/camera/ZoomTouch;->mExitTime:J

    .line 22
    iput-boolean v1, p0, Lcom/android/camera/ZoomTouch;->mIsFirstTime:Z

    .line 23
    iput-boolean v1, p0, Lcom/android/camera/ZoomTouch;->mIsValueChanged:Z

    .line 25
    iput v3, p0, Lcom/android/camera/ZoomTouch;->mZoomMin:I

    .line 26
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ZoomTouch;->mZoomMax:I

    .line 27
    iput v3, p0, Lcom/android/camera/ZoomTouch;->mZoomProgress:I

    .line 28
    iput v3, p0, Lcom/android/camera/ZoomTouch;->mZoomDiff:I

    .line 32
    iput v4, p0, Lcom/android/camera/ZoomTouch;->mScale_single:F

    .line 33
    iput v2, p0, Lcom/android/camera/ZoomTouch;->mInitX:F

    .line 34
    iput v2, p0, Lcom/android/camera/ZoomTouch;->mInitY:F

    .line 38
    iput v4, p0, Lcom/android/camera/ZoomTouch;->mScale_multiple:F

    .line 39
    iput v2, p0, Lcom/android/camera/ZoomTouch;->mInitDist:F

    .line 42
    iput-boolean v1, p0, Lcom/android/camera/ZoomTouch;->mIsNeedUpdate:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/camera/ZoomTouch;->mCanShowZoom:Z

    return-void
.end method


# virtual methods
.method public canShowZoom()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/camera/ZoomTouch;->mCanShowZoom:Z

    return v0
.end method

.method public enterMultiTouch(ILandroid/view/MotionEvent;)V
    .locals 10
    .parameter "progress"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const-wide/high16 v8, 0x4000

    .line 118
    const-string v4, "ZoomTouch"

    const-string v5, "enter multiple touch"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    .local v0, X1:F
    const/4 v1, 0x0

    .local v1, X2:F
    const/4 v2, 0x0

    .local v2, Y1:F
    const/4 v3, 0x0

    .line 120
    .local v3, Y2:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 122
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 123
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 125
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 126
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/camera/ZoomTouch;->Zoom_State:I

    .line 127
    iput p1, p0, Lcom/android/camera/ZoomTouch;->mZoomProgress:I

    .line 128
    sub-float v4, v0, v1

    float-to-double v4, v4

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-float v6, v2, v3

    float-to-double v6, v6

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/android/camera/ZoomTouch;->mInitDist:F

    .line 130
    const-string v4, "ZoomTouch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ZoomProgress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/ZoomTouch;->mZoomProgress:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mInitDist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/ZoomTouch;->mInitDist:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public enterSingleTouch(IFF)V
    .locals 3
    .parameter "progress"
    .parameter "X1"
    .parameter "Y1"

    .prologue
    const/4 v2, 0x0

    .line 61
    const-string v0, "ZoomTouch"

    const-string v1, "enter single touch"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iput v2, p0, Lcom/android/camera/ZoomTouch;->Zoom_State:I

    .line 63
    iput p1, p0, Lcom/android/camera/ZoomTouch;->mZoomProgress:I

    .line 64
    iput p2, p0, Lcom/android/camera/ZoomTouch;->mInitX:F

    .line 65
    iput p3, p0, Lcom/android/camera/ZoomTouch;->mInitY:F

    .line 67
    iput-boolean v2, p0, Lcom/android/camera/ZoomTouch;->mIsValueChanged:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/camera/ZoomTouch;->mCanShowZoom:Z

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ZoomTouch;->mEnterTime:J

    .line 70
    return-void
.end method

.method public exitMultiZoom()V
    .locals 2

    .prologue
    .line 182
    const-string v0, "ZoomTouch"

    const-string v1, "exit multiple zoom"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/ZoomTouch;->Zoom_State:I

    .line 184
    return-void
.end method

.method public exitZoom()V
    .locals 2

    .prologue
    .line 188
    const-string v0, "ZoomTouch"

    const-string v1, "exit Zoom"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/ZoomTouch;->Zoom_State:I

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ZoomTouch;->mExitTime:J

    .line 192
    return-void
.end method

.method public getFingers(Landroid/view/MotionEvent;)I
    .locals 1
    .parameter "event"

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method public getZoomProgress()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/android/camera/ZoomTouch;->mZoomProgress:I

    return v0
.end method

.method public getZoomState()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/android/camera/ZoomTouch;->Zoom_State:I

    return v0
.end method

.method public initZoomTouch(IIII)V
    .locals 8
    .parameter "width"
    .parameter "height"
    .parameter "min"
    .parameter "max"

    .prologue
    const/high16 v7, 0x3f80

    const-wide/high16 v5, 0x4000

    .line 49
    const-string v1, "ZoomTouch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initiate ZoomTouch: width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iput p3, p0, Lcom/android/camera/ZoomTouch;->mZoomMin:I

    .line 51
    iput p4, p0, Lcom/android/camera/ZoomTouch;->mZoomMax:I

    .line 52
    sub-int v1, p4, p3

    iput v1, p0, Lcom/android/camera/ZoomTouch;->mZoomDiff:I

    .line 53
    iget v1, p0, Lcom/android/camera/ZoomTouch;->mZoomDiff:I

    int-to-float v1, v1

    mul-float/2addr v1, v7

    int-to-float v2, p2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ZoomTouch;->mScale_single:F

    .line 54
    int-to-double v1, p1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    int-to-double v3, p2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 55
    .local v0, diagonal:F
    iget v1, p0, Lcom/android/camera/ZoomTouch;->mZoomDiff:I

    int-to-float v1, v1

    mul-float/2addr v1, v7

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/camera/ZoomTouch;->mScale_multiple:F

    .line 56
    const-string v1, "ZoomTouch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initiate ZoomTouch: ZoomMax = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ZoomTouch;->mZoomMax:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ZoomMin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ZoomTouch;->mZoomMin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public isClick()Z
    .locals 6

    .prologue
    .line 211
    iget-wide v2, p0, Lcom/android/camera/ZoomTouch;->mExitTime:J

    iget-wide v4, p0, Lcom/android/camera/ZoomTouch;->mEnterTime:J

    sub-long v0, v2, v4

    .line 212
    .local v0, period:J
    const-string v2, "ZoomTouch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Click Period: 250, your period: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/ZoomTouch;->mIsValueChanged:Z

    if-nez v2, :cond_0

    .line 214
    const/4 v2, 0x1

    .line 216
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isFirstTime()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/camera/ZoomTouch;->mIsFirstTime:Z

    return v0
.end method

.method public isNeedUpdate()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/android/camera/ZoomTouch;->mIsNeedUpdate:Z

    return v0
.end method

.method public proceedMultiZoom(Landroid/view/MotionEvent;)V
    .locals 13
    .parameter "event"

    .prologue
    .line 136
    const/4 v0, 0x0

    .local v0, X1:F
    const/4 v1, 0x0

    .local v1, X2:F
    const/4 v2, 0x0

    .local v2, Y1:F
    const/4 v3, 0x0

    .line 137
    .local v3, Y2:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 139
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 142
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 143
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/camera/ZoomTouch;->Zoom_State:I

    .line 144
    sub-float v7, v0, v1

    float-to-double v7, v7

    const-wide/high16 v9, 0x4000

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    sub-float v9, v2, v3

    float-to-double v9, v9

    const-wide/high16 v11, 0x4000

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v4, v7

    .line 145
    .local v4, dist:F
    const/high16 v7, 0x4248

    cmpg-float v7, v4, v7

    if-gez v7, :cond_0

    .line 146
    const-string v7, "ZoomTouch"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "two points with non valid distance:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " < "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/high16 v9, 0x4248

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/camera/ZoomTouch;->mIsNeedUpdate:Z

    .line 178
    :goto_0
    return-void

    .line 150
    :cond_0
    iget v7, p0, Lcom/android/camera/ZoomTouch;->mInitDist:F

    sub-float v7, v4, v7

    iget v8, p0, Lcom/android/camera/ZoomTouch;->mScale_multiple:F

    mul-float v6, v7, v8

    .line 151
    .local v6, update:F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x3f80

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 152
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/camera/ZoomTouch;->mIsNeedUpdate:Z

    goto :goto_0

    .line 158
    :cond_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/camera/ZoomTouch;->mIsValueChanged:Z

    .line 160
    iget v7, p0, Lcom/android/camera/ZoomTouch;->mZoomProgress:I

    float-to-int v8, v6

    add-int v5, v7, v8

    .line 161
    .local v5, tempProgress:I
    iget v7, p0, Lcom/android/camera/ZoomTouch;->mZoomMin:I

    if-ge v5, v7, :cond_2

    .line 162
    iget v5, p0, Lcom/android/camera/ZoomTouch;->mZoomMin:I

    .line 168
    :goto_1
    iget v7, p0, Lcom/android/camera/ZoomTouch;->mZoomProgress:I

    if-ne v5, v7, :cond_4

    .line 169
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/camera/ZoomTouch;->mIsNeedUpdate:Z

    goto :goto_0

    .line 163
    :cond_2
    iget v7, p0, Lcom/android/camera/ZoomTouch;->mZoomMax:I

    if-le v5, v7, :cond_3

    .line 164
    iget v5, p0, Lcom/android/camera/ZoomTouch;->mZoomMax:I

    goto :goto_1

    .line 166
    :cond_3
    iput v4, p0, Lcom/android/camera/ZoomTouch;->mInitDist:F

    goto :goto_1

    .line 173
    :cond_4
    iput v5, p0, Lcom/android/camera/ZoomTouch;->mZoomProgress:I

    .line 174
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/camera/ZoomTouch;->mIsNeedUpdate:Z

    .line 176
    const-string v7, "ZoomTouch"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New ZoomProgress = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/ZoomTouch;->mZoomProgress:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mInitDist = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/ZoomTouch;->mInitDist:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v7, "ZoomTouch"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(X1, Y1) = ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") - (X2 , Y2) = ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public proceedSingleZoom(FF)V
    .locals 6
    .parameter "X1"
    .parameter "Y1"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 75
    iput v4, p0, Lcom/android/camera/ZoomTouch;->Zoom_State:I

    .line 76
    new-instance v1, Ljava/lang/Float;

    iget v2, p0, Lcom/android/camera/ZoomTouch;->mInitX:F

    sub-float v2, p1, v2

    iget v3, p0, Lcom/android/camera/ZoomTouch;->mScale_single:F

    mul-float/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    .line 78
    .local v1, update:Ljava/lang/Float;
    iget-boolean v2, p0, Lcom/android/camera/ZoomTouch;->mIsFirstTime:Z

    if-ne v2, v4, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/ZoomTouch;->mCanShowZoom:Z

    if-nez v2, :cond_1

    .line 79
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40a0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 80
    iput-boolean v4, p0, Lcom/android/camera/ZoomTouch;->mCanShowZoom:Z

    .line 81
    iput p1, p0, Lcom/android/camera/ZoomTouch;->mInitX:F

    .line 82
    iput p2, p0, Lcom/android/camera/ZoomTouch;->mInitY:F

    .line 83
    const-string v2, "ZoomTouch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "proceed single zoom - mCanShowZoom = true :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f80

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 89
    iput-boolean v5, p0, Lcom/android/camera/ZoomTouch;->mIsNeedUpdate:Z

    goto :goto_0

    .line 95
    :cond_2
    iput-boolean v4, p0, Lcom/android/camera/ZoomTouch;->mIsValueChanged:Z

    .line 97
    iput p1, p0, Lcom/android/camera/ZoomTouch;->mInitX:F

    .line 98
    iput p2, p0, Lcom/android/camera/ZoomTouch;->mInitY:F

    .line 99
    iget v2, p0, Lcom/android/camera/ZoomTouch;->mZoomProgress:I

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v3

    add-int v0, v2, v3

    .line 100
    .local v0, tempProgress:I
    iget v2, p0, Lcom/android/camera/ZoomTouch;->mZoomMin:I

    if-ge v0, v2, :cond_4

    .line 101
    iget v0, p0, Lcom/android/camera/ZoomTouch;->mZoomMin:I

    .line 105
    :cond_3
    :goto_1
    iget v2, p0, Lcom/android/camera/ZoomTouch;->mZoomProgress:I

    if-ne v0, v2, :cond_5

    .line 106
    iput-boolean v5, p0, Lcom/android/camera/ZoomTouch;->mIsNeedUpdate:Z

    goto :goto_0

    .line 102
    :cond_4
    iget v2, p0, Lcom/android/camera/ZoomTouch;->mZoomMax:I

    if-le v0, v2, :cond_3

    .line 103
    iget v0, p0, Lcom/android/camera/ZoomTouch;->mZoomMax:I

    goto :goto_1

    .line 110
    :cond_5
    iput v0, p0, Lcom/android/camera/ZoomTouch;->mZoomProgress:I

    .line 111
    iput-boolean v4, p0, Lcom/android/camera/ZoomTouch;->mIsNeedUpdate:Z

    goto :goto_0
.end method

.method public setIsFirstTime(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/android/camera/ZoomTouch;->mIsFirstTime:Z

    .line 222
    return-void
.end method
