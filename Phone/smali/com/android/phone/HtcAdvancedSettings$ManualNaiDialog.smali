.class Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;
.super Lcom/htc/widget/HtcAlertDialog;
.source "HtcAdvancedSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcAdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ManualNaiDialog"
.end annotation


# static fields
.field static final BUTTON_SUBMIT:I = -0x1


# instance fields
.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/phone/HtcAdvancedSettings;


# direct methods
.method public constructor <init>(Lcom/android/phone/HtcAdvancedSettings;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 625
    iput-object p1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    .line 626
    invoke-direct {p0, p2}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 627
    iput-object p3, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 628
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v2, -0x1

    .line 664
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$200(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 666
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$200(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 667
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$200(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/HtcAdvancedSettings;->access$200(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$300(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$300(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 671
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$300(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/HtcAdvancedSettings;->access$300(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 681
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/HtcAdvancedSettings;->access$300(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v1

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 660
    return-void

    .line 656
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030040

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->mView:Landroid/view/View;

    .line 634
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->setView(Landroid/view/View;)V

    .line 635
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->setInverseBackgroundForced(Z)V

    .line 637
    invoke-virtual {p0}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 639
    .local v0, context:Landroid/content/Context;
    const v1, 0x7f0e0189

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->setTitle(I)V

    .line 640
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->mView:Landroid/view/View;

    const v2, 0x7f080106

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 641
    iget-object v2, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->mView:Landroid/view/View;

    const v3, 0x7f080107

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    #setter for: Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;
    invoke-static {v2, v1}, Lcom/android/phone/HtcAdvancedSettings;->access$202(Lcom/android/phone/HtcAdvancedSettings;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 642
    iget-object v2, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->mView:Landroid/view/View;

    const v3, 0x7f080109

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    #setter for: Lcom/android/phone/HtcAdvancedSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v2, v1}, Lcom/android/phone/HtcAdvancedSettings;->access$302(Lcom/android/phone/HtcAdvancedSettings;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 644
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->this$0:Lcom/android/phone/HtcAdvancedSettings;

    #getter for: Lcom/android/phone/HtcAdvancedSettings;->mUserName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/HtcAdvancedSettings;->access$200(Lcom/android/phone/HtcAdvancedSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 646
    const/4 v1, -0x1

    const v2, 0x104000a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 647
    const/4 v1, -0x2

    const/high16 v2, 0x104

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 650
    iget-object v1, p0, Lcom/android/phone/HtcAdvancedSettings$ManualNaiDialog;->mView:Landroid/view/View;

    const v2, 0x7f08010a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 652
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 653
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 687
    return-void
.end method
