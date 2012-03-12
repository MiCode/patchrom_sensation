.class public Lcom/android/camera/widget/ImageCheckBox;
.super Landroid/widget/LinearLayout;
.source "ImageCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/ImageCheckBox$OnClickChangedListener;
    }
.end annotation


# instance fields
.field private mCheckBoxContainer:Lcom/android/camera/rotate/RotateLinearLayout;

.field private m_Checkbox:Landroid/widget/CheckBox;

.field private m_Checked:Z

.field private m_Context:Landroid/content/Context;

.field private m_ImageBtn:Landroid/widget/ImageView;

.field private m_OnClickChangedListener:Lcom/android/camera/widget/ImageCheckBox$OnClickChangedListener;

.field private m_PictureUri:Landroid/net/Uri;

.field private m_Status:Z

.field private m_selectedFrame:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->mCheckBoxContainer:Lcom/android/camera/rotate/RotateLinearLayout;

    .line 54
    iput-object p1, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Context:Landroid/content/Context;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Checked:Z

    .line 56
    invoke-virtual {p0}, Lcom/android/camera/widget/ImageCheckBox;->initialize()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/ImageCheckBox;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Checkbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/widget/ImageCheckBox;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Checked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/widget/ImageCheckBox;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Checked:Z

    return p1
.end method


# virtual methods
.method public addImageUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/camera/widget/ImageCheckBox;->m_PictureUri:Landroid/net/Uri;

    .line 179
    return-void
.end method

.method public checkClick(Z)V
    .locals 1
    .parameter "bCheck"

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/android/camera/widget/ImageCheckBox;->setStatus(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_OnClickChangedListener:Lcom/android/camera/widget/ImageCheckBox$OnClickChangedListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_OnClickChangedListener:Lcom/android/camera/widget/ImageCheckBox$OnClickChangedListener;

    invoke-interface {v0, p0}, Lcom/android/camera/widget/ImageCheckBox$OnClickChangedListener;->onClickChanged(Lcom/android/camera/widget/ImageCheckBox;)V

    .line 123
    :cond_0
    return-void
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Checkbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_PictureUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_PictureUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_ImageBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method public initialize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 61
    iget-object v2, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 63
    .local v1, li:Landroid/view/LayoutInflater;
    const v2, 0x7f030008

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 64
    .local v0, base:Landroid/widget/RelativeLayout;
    const v2, 0x7f080037

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/widget/ImageCheckBox;->m_ImageBtn:Landroid/widget/ImageView;

    .line 65
    const v2, 0x7f080038

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/widget/ImageCheckBox;->m_selectedFrame:Landroid/widget/ImageView;

    .line 66
    iget-object v2, p0, Lcom/android/camera/widget/ImageCheckBox;->m_selectedFrame:Landroid/widget/ImageView;

    const v3, 0x7f020150

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    iget-object v2, p0, Lcom/android/camera/widget/ImageCheckBox;->m_selectedFrame:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    const v2, 0x7f08003a

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Checkbox:Landroid/widget/CheckBox;

    .line 70
    iget-object v2, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Checkbox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Context:Landroid/content/Context;

    const v4, 0x7f0a0012

    const v5, 0x2080492

    invoke-static {v3, v4, v5}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    const v2, 0x7f080039

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v2, p0, Lcom/android/camera/widget/ImageCheckBox;->mCheckBoxContainer:Lcom/android/camera/rotate/RotateLinearLayout;

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ImageCheckBox;->addView(Landroid/view/View;)V

    .line 77
    iput-object v6, p0, Lcom/android/camera/widget/ImageCheckBox;->m_PictureUri:Landroid/net/Uri;

    .line 80
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/widget/ImageCheckBox;->setStatus(Z)V

    .line 82
    iget-object v2, p0, Lcom/android/camera/widget/ImageCheckBox;->m_ImageBtn:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/camera/widget/ImageCheckBox$1;

    invoke-direct {v3, p0}, Lcom/android/camera/widget/ImageCheckBox$1;-><init>(Lcom/android/camera/widget/ImageCheckBox;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setCheck(Z)V
    .locals 1
    .parameter "bCheck"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Checkbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 108
    iput-boolean p1, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Checked:Z

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/camera/widget/ImageCheckBox;->setStatus(Z)V

    .line 112
    :cond_0
    return-void
.end method

.method public setCheckBoxOritation(I)V
    .locals 1
    .parameter "angle"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->mCheckBoxContainer:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    .line 171
    return-void
.end method

.method public setFocus(Z)V
    .locals 2
    .parameter "focused"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_selectedFrame:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 129
    if-eqz p1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_selectedFrame:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_selectedFrame:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setImage(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_ImageBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_ImageBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    :cond_0
    return-void
.end method

.method public setOnClickChangedListener(Lcom/android/camera/widget/ImageCheckBox$OnClickChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/camera/widget/ImageCheckBox;->m_OnClickChangedListener:Lcom/android/camera/widget/ImageCheckBox$OnClickChangedListener;

    .line 142
    return-void
.end method

.method public setStatus(Z)V
    .locals 1
    .parameter "bCheck"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Checkbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/camera/widget/ImageCheckBox;->m_Checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 150
    :cond_0
    return-void
.end method
