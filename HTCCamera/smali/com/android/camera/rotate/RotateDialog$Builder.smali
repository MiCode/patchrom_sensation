.class public Lcom/android/camera/rotate/RotateDialog$Builder;
.super Ljava/lang/Object;
.source "RotateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/rotate/RotateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 305
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 306
    new-instance v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    .line 307
    return-void
.end method


# virtual methods
.method public create()Lcom/android/camera/rotate/RotateDialog;
    .locals 3

    .prologue
    .line 873
    new-instance v0, Lcom/android/camera/rotate/RotateDialog;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/rotate/RotateDialog;-><init>(Landroid/content/Context;)V

    .line 874
    .local v0, dialog:Lcom/android/camera/rotate/RotateDialog;
    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    #getter for: Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;
    invoke-static {v0}, Lcom/android/camera/rotate/RotateDialog;->access$000(Lcom/android/camera/rotate/RotateDialog;)Lcom/android/camera/rotate/RotateHtcAlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->apply(Lcom/android/camera/rotate/RotateHtcAlertController;)V

    .line 875
    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateDialog;->setCancelable(Z)V

    .line 876
    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 877
    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_0

    .line 878
    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 880
    :cond_0
    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "adapter"
    .parameter "listener"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 569
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 570
    return-object p0
.end method

.method public setCancelable(Z)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "cancelable"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCancelable:Z

    .line 509
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "cursor"
    .parameter "listener"
    .parameter "labelColumn"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 588
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 589
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 590
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "customTitleView"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 342
    return-object p0
.end method

.method public setIcon(I)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "iconId"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIconId:I

    .line 372
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "icon"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 382
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "useInverseBackground"

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mForceInverseBackground:Z

    .line 836
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "listener"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 541
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 542
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "items"
    .parameter "listener"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 553
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 554
    return-object p0
.end method

.method public setMessage(I)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "messageId"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 352
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "message"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 362
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 614
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 615
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCheckedItems:[Z

    .line 616
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 617
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "isCheckedColumn"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 668
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 669
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 670
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 671
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 672
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItems"
    .parameter "listener"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 640
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 641
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCheckedItems:[Z

    .line 642
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 643
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 459
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 460
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 472
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 473
    return-object p0
.end method

.method public setNegativeButtonDisabled(Z)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    .line 433
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 485
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 486
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 498
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 499
    return-object p0
.end method

.method public setNeutralButtonDisabled(Z)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    .line 421
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "onCancelListener"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 520
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 779
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "onKeyListener"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 530
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "textId"
    .parameter "listener"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 394
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 395
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 446
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 447
    return-object p0
.end method

.method public setPositiveButtonDisabled(Z)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "disabled"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    .line 409
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "itemsId"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 693
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 694
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCheckedItem:I

    .line 695
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 696
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "cursor"
    .parameter "checkedItem"
    .parameter "labelColumn"
    .parameter "listener"

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 718
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p4, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 719
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCheckedItem:I

    .line 720
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 721
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 722
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "adapter"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 763
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 764
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCheckedItem:I

    .line 765
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 766
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "items"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 741
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 742
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mCheckedItem:I

    .line 743
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 744
    return-object p0
.end method

.method public setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "titleId"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 316
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "title"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 326
    return-object p0
.end method

.method public setTitleCenterEnabled(Z)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 0
    .parameter "enable"

    .prologue
    .line 862
    return-object p0
.end method

.method public setTitleDividerVisible(Z)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 1
    .parameter "visible"

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mTitleDivider:Z

    .line 850
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "view"

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 792
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 793
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/android/camera/rotate/RotateDialog$Builder;
    .locals 2
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput-object p1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 818
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 819
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p2, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingLeft:I

    .line 820
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p3, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingTop:I

    .line 821
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p4, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingRight:I

    .line 822
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog$Builder;->P:Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;

    iput p5, v0, Lcom/android/camera/rotate/RotateHtcAlertController$AlertParams;->mViewSpacingBottom:I

    .line 823
    return-object p0
.end method

.method public show()Lcom/android/camera/rotate/RotateDialog;
    .locals 1

    .prologue
    .line 888
    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v0

    .line 889
    .local v0, dialog:Lcom/android/camera/rotate/RotateDialog;
    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateDialog;->show()V

    .line 890
    return-object v0
.end method
