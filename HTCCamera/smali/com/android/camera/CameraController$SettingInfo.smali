.class public Lcom/android/camera/CameraController$SettingInfo;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingInfo"
.end annotation


# instance fields
.field private current_value:I

.field private default_value:I

.field private max_value:I

.field private min_value:I

.field private step:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 448
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput v1, p0, Lcom/android/camera/CameraController$SettingInfo;->min_value:I

    .line 439
    iput v1, p0, Lcom/android/camera/CameraController$SettingInfo;->max_value:I

    .line 441
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CameraController$SettingInfo;->step:F

    .line 443
    iput v1, p0, Lcom/android/camera/CameraController$SettingInfo;->default_value:I

    .line 445
    iput v1, p0, Lcom/android/camera/CameraController$SettingInfo;->current_value:I

    .line 450
    return-void
.end method


# virtual methods
.method public getCurrent()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/android/camera/CameraController$SettingInfo;->current_value:I

    return v0
.end method

.method public getDefault()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lcom/android/camera/CameraController$SettingInfo;->default_value:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/android/camera/CameraController$SettingInfo;->max_value:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcom/android/camera/CameraController$SettingInfo;->min_value:I

    return v0
.end method

.method public getStep()F
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/android/camera/CameraController$SettingInfo;->step:F

    return v0
.end method

.method public setCurrent(I)V
    .locals 0
    .parameter "current_value"

    .prologue
    .line 489
    iput p1, p0, Lcom/android/camera/CameraController$SettingInfo;->current_value:I

    .line 490
    return-void
.end method

.method public setDefault(I)V
    .locals 0
    .parameter "default_value"

    .prologue
    .line 485
    iput p1, p0, Lcom/android/camera/CameraController$SettingInfo;->default_value:I

    .line 486
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .parameter "max_value"

    .prologue
    .line 477
    iput p1, p0, Lcom/android/camera/CameraController$SettingInfo;->max_value:I

    .line 478
    return-void
.end method

.method public setMin(I)V
    .locals 0
    .parameter "min_value"

    .prologue
    .line 473
    iput p1, p0, Lcom/android/camera/CameraController$SettingInfo;->min_value:I

    .line 474
    return-void
.end method

.method public setStep(F)V
    .locals 0
    .parameter "step"

    .prologue
    .line 481
    iput p1, p0, Lcom/android/camera/CameraController$SettingInfo;->step:F

    .line 482
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "min: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/CameraController$SettingInfo;->min_value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, str:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/CameraController$SettingInfo;->max_value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", step: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/CameraController$SettingInfo;->step:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/CameraController$SettingInfo;->default_value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/CameraController$SettingInfo;->current_value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    return-object v0
.end method
