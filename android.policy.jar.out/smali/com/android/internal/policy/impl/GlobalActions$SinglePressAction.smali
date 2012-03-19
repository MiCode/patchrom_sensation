.class abstract Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# instance fields
.field private final mIconResId:I

.field private final mMessageResId:I

.field private final mStatusResId:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1
    .parameter "iconResId"
    .parameter "messageResId"

    .prologue
    .line 748
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 749
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 750
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 751
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    .line 752
    return-void
.end method

.method protected constructor <init>(III)V
    .locals 0
    .parameter "iconResId"
    .parameter "messageResId"
    .parameter "statusResId"

    .prologue
    .line 754
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 755
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 756
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 757
    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    .line 758
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    const v8, 0x202001a

    const v7, 0x2020010

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 768
    const/4 v3, 0x0

    .line 769
    .local v3, v:Landroid/view/View;
    const/4 v0, 0x0

    .line 770
    .local v0, icon:Landroid/widget/ImageView;
    const/4 v1, 0x0

    .line 771
    .local v1, messageView:Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 775
    .local v2, statusView:Landroid/widget/TextView;
    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    if-nez v4, :cond_2

    .line 779
    const v4, 0x2090078

    invoke-virtual {p4, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 780
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #icon:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 781
    .restart local v0       #icon:Landroid/widget/ImageView;
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #messageView:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 782
    .restart local v1       #messageView:Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 790
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 791
    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 792
    if-eqz v2, :cond_0

    .line 793
    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 796
    :cond_0
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 797
    if-eqz v2, :cond_1

    .line 798
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 799
    :cond_1
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 800
    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 833
    return-object v3

    .line 784
    :cond_2
    const v4, 0x2090077

    invoke-virtual {p4, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 785
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #icon:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 786
    .restart local v0       #icon:Landroid/widget/ImageView;
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #messageView:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 787
    .restart local v1       #messageView:Landroid/widget/TextView;
    const v4, 0x2020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #statusView:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .restart local v2       #statusView:Landroid/widget/TextView;
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 761
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPress()V
.end method
