.class public Lcom/android/camera/rotate/RotateImageView;
.super Landroid/widget/ImageView;
.source "RotateImageView.java"


# instance fields
.field private mDefindedOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/rotate/RotateImageView;->mDefindedOrientation:I

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/rotate/RotateImageView;->mDefindedOrientation:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/rotate/RotateImageView;->mDefindedOrientation:I

    .line 20
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 30
    iget v2, p0, Lcom/android/camera/rotate/RotateImageView;->mDefindedOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v1, p0, Lcom/android/camera/rotate/RotateImageView;->mDefindedOrientation:I

    .line 31
    .local v1, orientation:I
    :goto_0
    add-int/lit8 v2, v1, 0x0

    mul-int/lit8 v0, v2, 0x5a

    .line 32
    .local v0, degree:I
    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 34
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 35
    return-void

    .line 30
    .end local v0           #degree:I
    .end local v1           #orientation:I
    :cond_0
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v1

    goto :goto_0
.end method

.method public setDefinedOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/camera/rotate/RotateImageView;->mDefindedOrientation:I

    .line 39
    return-void
.end method
