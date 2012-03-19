.class public Lcom/android/camera/widget/ImageTextView;
.super Landroid/widget/LinearLayout;
.source "ImageTextView.java"


# instance fields
.field private m_ImageView:Landroid/widget/ImageView;

.field private m_TextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v4, 0x11

    const/4 v3, -0x2

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-virtual {p0, v4}, Lcom/android/camera/widget/ImageTextView;->setGravity(I)V

    .line 53
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Landroid/widget/ImageView;

    .line 54
    iget-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/widget/ImageTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Landroid/widget/TextView;

    .line 58
    iget-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 59
    iget-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/widget/ImageTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ImageTextView;->setImageTextPadding(I)V

    .line 64
    return-void
.end method


# virtual methods
.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/16 v3, 0xff

    const/16 v2, 0x80

    .line 88
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 89
    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 92
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 97
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public final setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/camera/widget/ImageTextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Landroid/widget/ImageView;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 109
    :cond_0
    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/camera/widget/ImageTextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Landroid/widget/ImageView;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 115
    :cond_0
    return-void
.end method

.method public final setImageResource(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/camera/widget/ImageTextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_ImageView:Landroid/widget/ImageView;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 121
    :cond_0
    return-void
.end method

.method public setImageTextPadding(I)V
    .locals 2
    .parameter "padding"

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 129
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 130
    iget-object v1, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 131
    invoke-virtual {p0}, Lcom/android/camera/widget/ImageTextView;->requestLayout()V

    .line 132
    return-void
.end method

.method public final setText(I)V
    .locals 1
    .parameter "redId"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 144
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/widget/ImageTextView;->m_TextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method
