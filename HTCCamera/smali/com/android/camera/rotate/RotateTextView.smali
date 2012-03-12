.class public Lcom/android/camera/rotate/RotateTextView;
.super Landroid/widget/TextView;
.source "RotateTextView.java"


# instance fields
.field private mDefindedOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/rotate/RotateTextView;->mDefindedOrientation:I

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/rotate/RotateTextView;->mDefindedOrientation:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/rotate/RotateTextView;->mDefindedOrientation:I

    .line 22
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 32
    iget v2, p0, Lcom/android/camera/rotate/RotateTextView;->mDefindedOrientation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v1, p0, Lcom/android/camera/rotate/RotateTextView;->mDefindedOrientation:I

    .line 33
    .local v1, orientation:I
    :goto_0
    add-int/lit8 v2, v1, 0x0

    mul-int/lit8 v0, v2, 0x5a

    .line 34
    .local v0, degree:I
    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateTextView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateTextView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 36
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 37
    return-void

    .line 32
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
    .line 40
    iput p1, p0, Lcom/android/camera/rotate/RotateTextView;->mDefindedOrientation:I

    .line 41
    return-void
.end method
