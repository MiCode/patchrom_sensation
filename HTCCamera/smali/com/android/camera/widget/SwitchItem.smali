.class public Lcom/android/camera/widget/SwitchItem;
.super Landroid/widget/LinearLayout;
.source "SwitchItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/SwitchItem$OnSwitchChangedListener;
    }
.end annotation


# static fields
.field public static final STATUS_LEFT:I = 0x0

.field public static final STATUS_RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SwitchItem"


# instance fields
.field private m_Context:Landroid/content/Context;

.field private m_IndicatorContainer:Landroid/widget/LinearLayout;

.field private m_Indicator_btn:Landroid/widget/RelativeLayout;

.field private m_IsDisable:Z

.field private m_LeftItem:Lcom/android/camera/widget/ImageTextView;

.field private m_RightItem:Lcom/android/camera/widget/ImageTextView;

.field private m_Status:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/SwitchItem;->m_IsDisable:Z

    .line 65
    iput-object p1, p0, Lcom/android/camera/widget/SwitchItem;->m_Context:Landroid/content/Context;

    .line 66
    invoke-virtual {p0}, Lcom/android/camera/widget/SwitchItem;->initialize()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/SwitchItem;->m_IsDisable:Z

    .line 58
    iput-object p1, p0, Lcom/android/camera/widget/SwitchItem;->m_Context:Landroid/content/Context;

    .line 59
    invoke-virtual {p0}, Lcom/android/camera/widget/SwitchItem;->initialize()V

    .line 60
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/android/camera/widget/SwitchItem;->m_Status:I

    return v0
.end method

.method public initialize()V
    .locals 6

    .prologue
    const v5, 0x7f0b0043

    .line 73
    iget-object v3, p0, Lcom/android/camera/widget/SwitchItem;->m_Context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 74
    .local v1, li:Landroid/view/LayoutInflater;
    const v3, 0x7f03004a

    invoke-virtual {v1, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 76
    .local v0, base:Landroid/widget/LinearLayout;
    const v3, 0x7f08019d

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/camera/widget/SwitchItem;->m_IndicatorContainer:Landroid/widget/LinearLayout;

    .line 78
    const v3, 0x7f08019e

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/camera/widget/SwitchItem;->m_Indicator_btn:Landroid/widget/RelativeLayout;

    .line 80
    const v3, 0x7f08019c

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/widget/ImageTextView;

    iput-object v3, p0, Lcom/android/camera/widget/SwitchItem;->m_LeftItem:Lcom/android/camera/widget/ImageTextView;

    .line 81
    const v3, 0x7f08019f

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/widget/ImageTextView;

    iput-object v3, p0, Lcom/android/camera/widget/SwitchItem;->m_RightItem:Lcom/android/camera/widget/ImageTextView;

    .line 84
    iget-object v3, p0, Lcom/android/camera/widget/SwitchItem;->m_Context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 85
    .local v2, res:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/camera/widget/SwitchItem;->m_LeftItem:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/widget/ImageTextView;->setImageTextPadding(I)V

    .line 86
    iget-object v3, p0, Lcom/android/camera/widget/SwitchItem;->m_RightItem:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/widget/ImageTextView;->setImageTextPadding(I)V

    .line 89
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/widget/SwitchItem;->setStatus(I)V

    .line 91
    return-void
.end method

.method public setDisable()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    const/4 v2, 0x0

    .line 191
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/widget/SwitchItem;->m_IsDisable:Z

    .line 194
    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_LeftItem:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    .line 195
    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_RightItem:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    .line 196
    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_IndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 197
    .local v0, drawBackground:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 198
    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_IndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_Indicator_btn:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 201
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 202
    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_Indicator_btn:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    return-void
.end method

.method public setImage(II)V
    .locals 1
    .parameter "resIdLeft"
    .parameter "resIdRight"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/widget/SwitchItem;->m_LeftItem:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    .line 96
    iget-object v0, p0, Lcom/android/camera/widget/SwitchItem;->m_RightItem:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v0, p2}, Lcom/android/camera/widget/ImageTextView;->setImageResource(I)V

    .line 97
    return-void
.end method

.method public setStatus(I)V
    .locals 5
    .parameter "status"

    .prologue
    .line 159
    iput p1, p0, Lcom/android/camera/widget/SwitchItem;->m_Status:I

    .line 161
    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_IndicatorContainer:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 162
    const-string v1, "SwitchItem"

    const-string v2, "m_IndicatorContainer is null!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_IndicatorContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 172
    :goto_1
    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_Indicator_btn:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/camera/widget/SwitchItem;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0018

    const v4, 0x7f0200c3

    invoke-static {v2, v3, v4}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-boolean v1, p0, Lcom/android/camera/widget/SwitchItem;->m_IsDisable:Z

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_Indicator_btn:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 175
    .local v0, drawBackground:Landroid/graphics/drawable/Drawable;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 176
    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_Indicator_btn:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 169
    .end local v0           #drawBackground:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/widget/SwitchItem;->m_IndicatorContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1
.end method

.method public setText(II)V
    .locals 1
    .parameter "resIdLeft"
    .parameter "resIdRight"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/widget/SwitchItem;->m_LeftItem:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/ImageTextView;->setText(I)V

    .line 102
    iget-object v0, p0, Lcom/android/camera/widget/SwitchItem;->m_RightItem:Lcom/android/camera/widget/ImageTextView;

    invoke-virtual {v0, p2}, Lcom/android/camera/widget/ImageTextView;->setText(I)V

    .line 103
    return-void
.end method

.method public switchStatus()V
    .locals 2

    .prologue
    .line 148
    iget v0, p0, Lcom/android/camera/widget/SwitchItem;->m_Status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/camera/widget/SwitchItem;->switchToLeft()V

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/SwitchItem;->switchToRight()V

    goto :goto_0
.end method

.method public switchToLeft()V
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/android/camera/widget/SwitchItem;->m_Status:I

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SwitchItem;->setStatus(I)V

    goto :goto_0
.end method

.method public switchToRight()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 123
    iget v0, p0, Lcom/android/camera/widget/SwitchItem;->m_Status:I

    if-ne v0, v1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/widget/SwitchItem;->setStatus(I)V

    goto :goto_0
.end method
