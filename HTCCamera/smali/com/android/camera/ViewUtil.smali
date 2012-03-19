.class public Lcom/android/camera/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableImageView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 24
    if-eqz p0, :cond_0

    .line 25
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 26
    :cond_0
    return-void
.end method

.method public static disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V
    .locals 2
    .parameter "view"
    .parameter "btn"

    .prologue
    const/4 v1, 0x0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 40
    :cond_0
    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 42
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setPressed(Z)V

    .line 44
    :cond_1
    return-void
.end method

.method public static disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 1
    .parameter "view"
    .parameter "btn"
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-static {p0}, Lcom/android/camera/ViewUtil;->disableImageView(Landroid/widget/ImageView;)V

    .line 90
    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 92
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setPressed(Z)V

    .line 95
    :cond_0
    invoke-static {p2}, Lcom/android/camera/ViewUtil;->disableTextView(Landroid/widget/TextView;)V

    .line 96
    return-void
.end method

.method public static disableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V
    .locals 1
    .parameter "view"
    .parameter "btn"

    .prologue
    const/4 v0, 0x0

    .line 56
    if-eqz p0, :cond_0

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    .line 59
    :cond_0
    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setPressed(Z)V

    .line 63
    :cond_1
    return-void
.end method

.method public static disableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 1
    .parameter "view"
    .parameter "btn"
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 110
    if-eqz p0, :cond_0

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    .line 113
    :cond_0
    if-eqz p1, :cond_1

    .line 114
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 115
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setPressed(Z)V

    .line 118
    :cond_1
    invoke-static {p2}, Lcom/android/camera/ViewUtil;->disableTextView(Landroid/widget/TextView;)V

    .line 119
    return-void
.end method

.method public static disableTextView(Landroid/widget/TextView;)V
    .locals 2
    .parameter "textView"

    .prologue
    .line 67
    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 69
    :cond_0
    return-void
.end method

.method public static enableImageView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 19
    if-eqz p0, :cond_0

    .line 20
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 21
    :cond_0
    return-void
.end method

.method public static enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V
    .locals 1
    .parameter "view"
    .parameter "btn"

    .prologue
    .line 29
    if-eqz p0, :cond_0

    .line 30
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 32
    :cond_0
    if-eqz p1, :cond_1

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 34
    :cond_1
    return-void
.end method

.method public static enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 1
    .parameter "view"
    .parameter "btn"
    .parameter "text"

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/camera/ViewUtil;->enableImageView(Landroid/widget/ImageView;)V

    .line 81
    if-eqz p1, :cond_0

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 84
    :cond_0
    invoke-static {p2}, Lcom/android/camera/ViewUtil;->enableTextView(Landroid/widget/TextView;)V

    .line 85
    return-void
.end method

.method public static enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V
    .locals 1
    .parameter "view"
    .parameter "btn"

    .prologue
    const/4 v0, 0x1

    .line 48
    if-eqz p0, :cond_0

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    .line 51
    :cond_0
    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 53
    :cond_1
    return-void
.end method

.method public static enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 1
    .parameter "view"
    .parameter "btn"
    .parameter "text"

    .prologue
    const/4 v0, 0x1

    .line 100
    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    .line 103
    :cond_0
    if-eqz p1, :cond_1

    .line 104
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 106
    :cond_1
    invoke-static {p2}, Lcom/android/camera/ViewUtil;->enableTextView(Landroid/widget/TextView;)V

    .line 107
    return-void
.end method

.method public static enableTextView(Landroid/widget/TextView;)V
    .locals 2
    .parameter "textView"

    .prologue
    .line 73
    if-eqz p0, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 75
    :cond_0
    return-void
.end method

.method public static getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "resStrId"
    .parameter "resId"

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 199
    .local v0, skin_rid:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getModifiedRadioBtn(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 166
    const v5, 0x10100a0

    .line 167
    .local v5, stateChecked:I
    const v6, 0x101009c

    .line 168
    .local v6, stateFocused:I
    const v7, 0x10100a7

    .line 169
    .local v7, statePressed:I
    const v8, 0x7f0a0020

    const v9, 0x2080078

    invoke-static {p0, v8, v9}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 171
    .local v2, drawableOn:Landroid/graphics/drawable/Drawable;
    const v8, 0x7f0a0021

    const v9, 0x20804c5

    invoke-static {p0, v8, v9}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 173
    .local v3, drawableOn_selected:Landroid/graphics/drawable/Drawable;
    const v8, 0x7f0a0022

    const v9, 0x2080076

    invoke-static {p0, v8, v9}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 175
    .local v0, drawableOff:Landroid/graphics/drawable/Drawable;
    const v8, 0x7f0a0023

    const v9, 0x2080077

    invoke-static {p0, v8, v9}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 178
    .local v1, drawableOff_selected:Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 179
    .local v4, radioBtn:Landroid/graphics/drawable/StateListDrawable;
    new-array v8, v12, [I

    aput v5, v8, v10

    aput v7, v8, v11

    invoke-virtual {v4, v8, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 180
    new-array v8, v12, [I

    aput v5, v8, v10

    aput v6, v8, v11

    invoke-virtual {v4, v8, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 181
    new-array v8, v12, [I

    aput v5, v8, v10

    neg-int v9, v6

    aput v9, v8, v11

    invoke-virtual {v4, v8, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 182
    new-array v8, v12, [I

    neg-int v9, v5

    aput v9, v8, v10

    aput v7, v8, v11

    invoke-virtual {v4, v8, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 183
    new-array v8, v12, [I

    neg-int v9, v5

    aput v9, v8, v10

    aput v6, v8, v11

    invoke-virtual {v4, v8, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 184
    new-array v8, v12, [I

    neg-int v9, v5

    aput v9, v8, v10

    neg-int v9, v6

    aput v9, v8, v11

    invoke-virtual {v4, v8, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 186
    return-object v4
.end method

.method public static setHeight(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "height"

    .prologue
    .line 136
    if-nez p0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 140
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 142
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public static setSize(Landroid/view/View;II)V
    .locals 1
    .parameter "view"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 149
    if-nez p0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 153
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 155
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 156
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public static setWidth(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "width"

    .prologue
    .line 123
    if-nez p0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 127
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 129
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method
