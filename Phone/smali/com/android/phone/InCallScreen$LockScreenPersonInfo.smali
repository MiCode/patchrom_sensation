.class public Lcom/android/phone/InCallScreen$LockScreenPersonInfo;
.super Ljava/lang/Object;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LockScreenPersonInfo"
.end annotation


# instance fields
.field mName:Landroid/widget/TextView;

.field mNumber:Landroid/widget/TextView;

.field mPhoto:Landroid/widget/ImageView;

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Landroid/view/View;)V
    .locals 4
    .parameter
    .parameter "mView"

    .prologue
    .line 9129
    iput-object p1, p0, Lcom/android/phone/InCallScreen$LockScreenPersonInfo;->this$0:Lcom/android/phone/InCallScreen;

    .line 9130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9131
    iput-object p2, p0, Lcom/android/phone/InCallScreen$LockScreenPersonInfo;->mView:Landroid/view/View;

    .line 9132
    if-eqz p2, :cond_1

    .line 9133
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 9134
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 9135
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9137
    :cond_0
    const-string v1, "LockScreenPersonInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9138
    const v1, 0x7f08005d

    invoke-virtual {p1, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/InCallScreen$LockScreenPersonInfo;->mPhoto:Landroid/widget/ImageView;

    .line 9139
    const v1, 0x7f0800da

    invoke-virtual {p1, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/InCallScreen$LockScreenPersonInfo;->mName:Landroid/widget/TextView;

    .line 9140
    const v1, 0x7f0800db

    invoke-virtual {p1, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/InCallScreen$LockScreenPersonInfo;->mNumber:Landroid/widget/TextView;

    .line 9142
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 9164
    iget-object v1, p0, Lcom/android/phone/InCallScreen$LockScreenPersonInfo;->mView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 9165
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen$LockScreenPersonInfo;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    .line 9153
    iget-object v2, p0, Lcom/android/phone/InCallScreen$LockScreenPersonInfo;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 9154
    iget-object v2, p0, Lcom/android/phone/InCallScreen$LockScreenPersonInfo;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 9155
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    const-string v2, "LockScreenPersonInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9156
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 9157
    .local v1, visibility:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen$LockScreenPersonInfo;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 9158
    iget-object v2, p0, Lcom/android/phone/InCallScreen$LockScreenPersonInfo;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9161
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #visibility:I
    :cond_0
    return-void

    .line 9156
    .restart local v0       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public updateInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "number"

    .prologue
    .line 9145
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen$LockScreenPersonInfo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen$LockScreenPersonInfo;->mName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen$LockScreenPersonInfo;->mNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 9146
    iget-object v0, p0, Lcom/android/phone/InCallScreen$LockScreenPersonInfo;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9147
    iget-object v0, p0, Lcom/android/phone/InCallScreen$LockScreenPersonInfo;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9150
    :cond_0
    return-void
.end method
