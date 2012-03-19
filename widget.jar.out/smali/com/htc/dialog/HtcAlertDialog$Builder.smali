.class public Lcom/htc/dialog/HtcAlertDialog$Builder;
.super Ljava/lang/Object;
.source "HtcAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dialog/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/htc/dialog/HtcAlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 519
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 520
    new-instance v0, Lcom/htc/dialog/HtcAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/htc/dialog/HtcAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    .line 521
    return-void
.end method


# virtual methods
.method public create()Lcom/htc/dialog/HtcAlertDialog;
    .locals 3

    .prologue
    .line 1087
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 1088
    .local v0, dialog:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    #getter for: Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;
    invoke-static {v0}, Lcom/htc/dialog/HtcAlertDialog;->access$000(Lcom/htc/dialog/HtcAlertDialog;)Lcom/htc/dialog/HtcAlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertController$AlertParams;->apply(Lcom/htc/dialog/HtcAlertController;)V

    .line 1089
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setCancelable(Z)V

    .line 1090
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1091
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_0

    .line 1092
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1094
    :cond_0
    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "adapter"
    .parameter "listener"

    .prologue
    .line 782
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 783
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 784
    return-object p0
.end method

.method public setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "cancelable"

    .prologue
    .line 722
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCancelable:Z

    .line 723
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "cursor"
    .parameter "listener"
    .parameter "labelColumn"

    .prologue
    .line 801
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 802
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 803
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 804
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "customTitleView"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 556
    return-object p0
.end method

.method public setIcon(I)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "iconId"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIconId:I

    .line 586
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "icon"

    .prologue
    .line 595
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 596
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "useInverseBackground"

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    .line 1050
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "listener"

    .prologue
    .line 754
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 755
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 756
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "items"
    .parameter "listener"

    .prologue
    .line 766
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 767
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 768
    return-object p0
.end method

.method public setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "messageId"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 566
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "message"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 576
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 827
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 828
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 829
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItems:[Z

    .line 830
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 831
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "isCheckedColumn"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 881
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 882
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 883
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 884
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 885
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 886
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 853
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 854
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 855
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItems:[Z

    .line 856
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 857
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 673
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 674
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 685
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 686
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 687
    return-object p0
.end method

.method public setNegativeButtonDisabled(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    .line 647
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 699
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 700
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 711
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 712
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 713
    return-object p0
.end method

.method public setNeutralButtonDisabled(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    .line 635
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "onCancelListener"

    .prologue
    .line 733
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 734
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 992
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 993
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "onKeyListener"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 744
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 608
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 609
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 660
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 661
    return-object p0
.end method

.method public setPositiveButtonDisabled(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    .line 623
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 906
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 907
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 908
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 909
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 910
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "checkedItem"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 931
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 932
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 933
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 934
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 935
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 936
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "adapter"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 976
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 977
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 978
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 979
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 980
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 954
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 955
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 956
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 957
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 958
    return-object p0
.end method

.method public setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "titleId"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 530
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "title"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 540
    return-object p0
.end method

.method public setTitleCenterEnabled(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "enable"

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleCenter:Z

    .line 1076
    return-object p0
.end method

.method public setTitleDividerVisible(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 1
    .parameter "visible"

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mTitleDivider:Z

    .line 1064
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "view"

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 1006
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1007
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/htc/dialog/HtcAlertDialog$Builder;
    .locals 2
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 1032
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1033
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingLeft:I

    .line 1034
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p3, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingTop:I

    .line 1035
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p4, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingRight:I

    .line 1036
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog$Builder;->P:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p5, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mViewSpacingBottom:I

    .line 1037
    return-object p0
.end method

.method public show()Lcom/htc/dialog/HtcAlertDialog;
    .locals 1

    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    .line 1103
    .local v0, dialog:Lcom/htc/dialog/HtcAlertDialog;
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 1104
    return-object v0
.end method
