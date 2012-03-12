.class public final Lcom/android/camera/effect/SceneMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "SceneMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/SceneMenuAdapter$1;,
        Lcom/android/camera/effect/SceneMenuAdapter$ItemViewInfo;
    }
.end annotation


# instance fields
.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private final m_SceneList:Lcom/android/camera/effect/EffectList;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/effect/EffectList;)V
    .locals 0
    .parameter "cameraActivity"
    .parameter "effectList"

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/camera/effect/SceneMenuAdapter;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    .line 40
    iput-object p2, p0, Lcom/android/camera/effect/SceneMenuAdapter;->m_SceneList:Lcom/android/camera/effect/EffectList;

    .line 41
    return-void
.end method

.method private getIconAndText(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;
    .locals 6
    .parameter "scene"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, name:Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020048

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a0182

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 78
    :goto_0
    return-object v1

    .line 60
    :cond_0
    const-string v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020071

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a0183

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    .line 62
    :cond_1
    const-string v1, "landscape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020061

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a0184

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    .line 64
    :cond_2
    const-string v1, "burst"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f02007f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a0185

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    .line 66
    :cond_3
    const-string v1, "panorama"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 67
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f02006d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a0186

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    .line 68
    :cond_4
    const-string v1, "hdr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 69
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f02005e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a0187

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    .line 70
    :cond_5
    const-string v1, "B_whiteboard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 71
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020086

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a0188

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    .line 72
    :cond_6
    const-string v1, "flowers"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 73
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020067

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a018a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    .line 74
    :cond_7
    const-string v1, "backlight"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 75
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f02004b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a018b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    .line 76
    :cond_8
    const-string v1, "night"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 77
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020065

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a0190

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    .line 78
    :cond_9
    new-array v1, v2, [Ljava/lang/Integer;

    aput-object v5, v1, v3

    aput-object v5, v1, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/effect/SceneMenuAdapter;->m_SceneList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectList;->getCurrentEffectCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/effect/SceneMenuAdapter;->m_SceneList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectList;->getEffect(I)Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/effect/SceneMenuAdapter;->m_SceneList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectList;->getEffect(I)Lcom/android/camera/effect/EffectBase;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 107
    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/SceneMenuAdapter$ItemViewInfo;

    .line 120
    .local v2, viewInfo:Lcom/android/camera/effect/SceneMenuAdapter$ItemViewInfo;
    :goto_0
    iget-object v3, p0, Lcom/android/camera/effect/SceneMenuAdapter;->m_SceneList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v3, p1}, Lcom/android/camera/effect/EffectList;->getEffect(I)Lcom/android/camera/effect/EffectBase;

    move-result-object v1

    .line 121
    .local v1, scene:Lcom/android/camera/effect/EffectBase;
    iput-object v1, v2, Lcom/android/camera/effect/SceneMenuAdapter$ItemViewInfo;->scene:Lcom/android/camera/effect/EffectBase;

    .line 124
    invoke-direct {p0, v1}, Lcom/android/camera/effect/SceneMenuAdapter;->getIconAndText(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;

    move-result-object v0

    .line 127
    .local v0, iconAndText:[Ljava/lang/Integer;
    aget-object v3, v0, v5

    if-eqz v3, :cond_1

    .line 128
    iget-object v3, v2, Lcom/android/camera/effect/SceneMenuAdapter$ItemViewInfo;->iconView:Landroid/widget/ImageView;

    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    :goto_1
    aget-object v3, v0, v4

    if-eqz v3, :cond_2

    .line 134
    iget-object v3, v2, Lcom/android/camera/effect/SceneMenuAdapter$ItemViewInfo;->textView:Landroid/widget/TextView;

    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 139
    :goto_2
    iget-object v6, v2, Lcom/android/camera/effect/SceneMenuAdapter$ItemViewInfo;->radioButton:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/camera/effect/SceneMenuAdapter;->m_SceneList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectList;->getCurrentEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v3

    if-ne v3, v1, :cond_3

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 142
    return-object p2

    .line 111
    .end local v0           #iconAndText:[Ljava/lang/Integer;
    .end local v1           #scene:Lcom/android/camera/effect/EffectBase;
    .end local v2           #viewInfo:Lcom/android/camera/effect/SceneMenuAdapter$ItemViewInfo;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/effect/SceneMenuAdapter;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f03002c

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 112
    new-instance v2, Lcom/android/camera/effect/SceneMenuAdapter$ItemViewInfo;

    invoke-direct {v2, v7}, Lcom/android/camera/effect/SceneMenuAdapter$ItemViewInfo;-><init>(Lcom/android/camera/effect/SceneMenuAdapter$1;)V

    .line 113
    .restart local v2       #viewInfo:Lcom/android/camera/effect/SceneMenuAdapter$ItemViewInfo;
    const v3, 0x7f0800a2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/android/camera/effect/SceneMenuAdapter$ItemViewInfo;->iconView:Landroid/widget/ImageView;

    .line 114
    const v3, 0x7f0800b9

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/camera/effect/SceneMenuAdapter$ItemViewInfo;->textView:Landroid/widget/TextView;

    .line 115
    const v3, 0x7f08013c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v2, Lcom/android/camera/effect/SceneMenuAdapter$ItemViewInfo;->radioButton:Landroid/widget/RadioButton;

    .line 116
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    .restart local v0       #iconAndText:[Ljava/lang/Integer;
    .restart local v1       #scene:Lcom/android/camera/effect/EffectBase;
    :cond_1
    iget-object v3, v2, Lcom/android/camera/effect/SceneMenuAdapter$ItemViewInfo;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 136
    :cond_2
    iget-object v3, v2, Lcom/android/camera/effect/SceneMenuAdapter$ItemViewInfo;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    move v3, v5

    .line 139
    goto :goto_3
.end method
