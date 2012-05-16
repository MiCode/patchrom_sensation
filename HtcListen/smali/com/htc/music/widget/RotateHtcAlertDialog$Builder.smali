.class public Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
.super Ljava/lang/Object;
.source "RotateHtcAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/RotateHtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 513
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 514
    new-instance v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    .line 515
    return-void
.end method


# virtual methods
.method public create()Lcom/htc/music/widget/RotateHtcAlertDialog;
    .locals 3

    .prologue
    .line 1081
    new-instance v0, Lcom/htc/music/widget/RotateHtcAlertDialog;

    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/music/widget/RotateHtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 1082
    .local v0, dialog:Lcom/htc/music/widget/RotateHtcAlertDialog;
    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    #getter for: Lcom/htc/music/widget/RotateHtcAlertDialog;->mAlert:Lcom/htc/music/widget/RotateHtcAlertController;
    invoke-static {v0}, Lcom/htc/music/widget/RotateHtcAlertDialog;->access$000(Lcom/htc/music/widget/RotateHtcAlertDialog;)Lcom/htc/music/widget/RotateHtcAlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->apply(Lcom/htc/music/widget/RotateHtcAlertController;)V

    .line 1083
    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/RotateHtcAlertDialog;->setCancelable(Z)V

    .line 1084
    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/RotateHtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1085
    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_0

    .line 1086
    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/RotateHtcAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1088
    :cond_0
    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 1
    .parameter "adapter"
    .parameter "listener"

    .prologue
    .line 776
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 777
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 778
    return-object p0
.end method

.method public setCancelable(Z)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 1
    .parameter "cancelable"

    .prologue
    .line 716
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mCancelable:Z

    .line 717
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 1
    .parameter "cursor"
    .parameter "listener"
    .parameter "labelColumn"

    .prologue
    .line 795
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 796
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 797
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 798
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 1
    .parameter "customTitleView"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 550
    return-object p0
.end method

.method public setIcon(I)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 1
    .parameter "iconId"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mIconId:I

    .line 580
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 1
    .parameter "icon"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 590
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 1
    .parameter "useInverseBackground"

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mForceInverseBackground:Z

    .line 1044
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "listener"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 749
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 750
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 1
    .parameter "items"
    .parameter "listener"

    .prologue
    .line 760
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 761
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 762
    return-object p0
.end method

.method public setMessage(I)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 2
    .parameter "messageId"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 560
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 1
    .parameter "message"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 570
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 821
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 822
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 823
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mCheckedItems:[Z

    .line 824
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 825
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "isCheckedColumn"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 875
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 876
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 877
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 878
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 879
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 880
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 847
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 848
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 849
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mCheckedItems:[Z

    .line 850
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 851
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 667
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 668
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 680
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 681
    return-object p0
.end method

.method public setNegativeButtonDisabled(Z)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    .line 641
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 693
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 694
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 705
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 706
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 707
    return-object p0
.end method

.method public setNeutralButtonDisabled(Z)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    .line 629
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 1
    .parameter "onCancelListener"

    .prologue
    .line 727
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 728
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 986
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 987
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 1
    .parameter "onKeyListener"

    .prologue
    .line 737
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 738
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 602
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 603
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 653
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 654
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 655
    return-object p0
.end method

.method public setPositiveButtonDisabled(Z)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    .line 617
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 900
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 901
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 902
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mCheckedItem:I

    .line 903
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 904
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "checkedItem"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 925
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 926
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 927
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mCheckedItem:I

    .line 928
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 929
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 930
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 2
    .parameter "adapter"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 970
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 971
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 972
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mCheckedItem:I

    .line 973
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 974
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 948
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 949
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 950
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mCheckedItem:I

    .line 951
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 952
    return-object p0
.end method

.method public setTitle(I)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 2
    .parameter "titleId"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 524
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 1
    .parameter "title"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 534
    return-object p0
.end method

.method public setTitleCenterEnabled(Z)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 1
    .parameter "enable"

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mTitleCenter:Z

    .line 1070
    return-object p0
.end method

.method public setTitleDividerVisible(Z)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 1
    .parameter "visible"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mTitleDivider:Z

    .line 1058
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 2
    .parameter "view"

    .prologue
    .line 999
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 1000
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1001
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;
    .locals 2
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 1026
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1027
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput p2, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mViewSpacingLeft:I

    .line 1028
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput p3, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mViewSpacingTop:I

    .line 1029
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput p4, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mViewSpacingRight:I

    .line 1030
    iget-object v0, p0, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->P:Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;

    iput p5, v0, Lcom/htc/music/widget/RotateHtcAlertController$AlertParams;->mViewSpacingBottom:I

    .line 1031
    return-object p0
.end method

.method public show()Lcom/htc/music/widget/RotateHtcAlertDialog;
    .locals 1

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/htc/music/widget/RotateHtcAlertDialog$Builder;->create()Lcom/htc/music/widget/RotateHtcAlertDialog;

    move-result-object v0

    .line 1097
    .local v0, dialog:Lcom/htc/music/widget/RotateHtcAlertDialog;
    invoke-virtual {v0}, Lcom/htc/music/widget/RotateHtcAlertDialog;->show()V

    .line 1098
    return-object v0
.end method
