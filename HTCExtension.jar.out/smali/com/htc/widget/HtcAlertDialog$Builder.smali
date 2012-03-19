.class public Lcom/htc/widget/HtcAlertDialog$Builder;
.super Ljava/lang/Object;
.source "HtcAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final P:Lcom/htc/app/HtcAlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 542
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 543
    new-instance v0, Lcom/htc/app/HtcAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/htc/app/HtcAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 544
    return-void
.end method


# virtual methods
.method public create()Lcom/htc/widget/HtcAlertDialog;
    .locals 3

    .prologue
    .line 1118
    new-instance v0, Lcom/htc/widget/HtcAlertDialog;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 1119
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v2, v0, Lcom/htc/widget/HtcAlertDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcAlertController$AlertParams;->apply(Lcom/htc/app/HtcAlertController;)V

    .line 1120
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setCancelable(Z)V

    .line 1121
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1122
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_0

    .line 1123
    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1125
    :cond_0
    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "adapter"
    .parameter "listener"

    .prologue
    .line 813
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 814
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 815
    return-object p0
.end method

.method public setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "cancelable"

    .prologue
    .line 753
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCancelable:Z

    .line 754
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "cursor"
    .parameter "listener"
    .parameter "labelColumn"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 833
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 834
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 835
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "customTitleView"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 579
    return-object p0
.end method

.method public setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "iconId"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIconId:I

    .line 617
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "icon"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 627
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "useInverseBackground"

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    .line 1081
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "listener"

    .prologue
    .line 785
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 786
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 787
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "items"
    .parameter "listener"

    .prologue
    .line 797
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 798
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 799
    return-object p0
.end method

.method public setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "messageId"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 589
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "message"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 599
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "message"
    .parameter "nAutoLinkMask"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 605
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mAutoLinkMask:I

    .line 606
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 858
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 859
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 860
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItems:[Z

    .line 861
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 862
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "isCheckedColumn"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 913
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 914
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 915
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 916
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 917
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 884
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 885
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 886
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItems:[Z

    .line 887
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 888
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 704
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 705
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 716
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 717
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 718
    return-object p0
.end method

.method public setNegativeButtonDisabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    .line 678
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 730
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 731
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 742
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 743
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 744
    return-object p0
.end method

.method public setNeutralButtonDisabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    .line 666
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "onCancelListener"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 765
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1024
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "onKeyListener"

    .prologue
    .line 774
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 775
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 639
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 640
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 691
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 692
    return-object p0
.end method

.method public setPositiveButtonDisabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 653
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    .line 654
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 937
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 938
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 939
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 940
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 941
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "checkedItem"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 962
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 963
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 964
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 965
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 966
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 967
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "adapter"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 1008
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1009
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 1010
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 1011
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 985
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 986
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 987
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 988
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 989
    return-object p0
.end method

.method public setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "titleId"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 553
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "title"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 563
    return-object p0
.end method

.method public setTitleCenterEnabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "enable"

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitleCenter:Z

    .line 1107
    return-object p0
.end method

.method public setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 1
    .parameter "visible"

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitleDivider:Z

    .line 1095
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "view"

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 1037
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1038
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 1063
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1064
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingLeft:I

    .line 1065
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingTop:I

    .line 1066
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p4, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingRight:I

    .line 1067
    iget-object v0, p0, Lcom/htc/widget/HtcAlertDialog$Builder;->P:Lcom/htc/app/HtcAlertController$AlertParams;

    iput p5, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mViewSpacingBottom:I

    .line 1068
    return-object p0
.end method

.method public show()Lcom/htc/widget/HtcAlertDialog;
    .locals 1

    .prologue
    .line 1133
    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 1134
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 1135
    return-object v0
.end method
