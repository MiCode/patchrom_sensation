.class Lcom/android/camera/widget/ResolutionView$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolutionView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/ResolutionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mChkPreference:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private mDummyCount:I

.field private mListPreference:Landroid/preference/ListPreference;

.field final synthetic this$0:Lcom/android/camera/widget/ResolutionView;


# direct methods
.method public constructor <init>(Lcom/android/camera/widget/ResolutionView;Landroid/content/Context;Landroid/preference/ListPreference;Landroid/preference/CheckBoxPreference;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "list_preference"
    .parameter "chk_preference"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 268
    iput-object p3, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    .line 269
    iput-object p4, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    .line 270
    iput-object p2, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mContext:Landroid/content/Context;

    .line 272
    invoke-virtual {p0}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->hasFastMenuItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    .line 276
    :goto_0
    return-void

    .line 275
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public checkEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 396
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 398
    iget-object v1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-string v3, "pref_fast_fps"

    invoke-static {v1, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 399
    .local v0, isFastFrame:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    #getter for: Lcom/android/camera/widget/ResolutionView;->mCameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v1}, Lcom/android/camera/widget/ResolutionView;->access$300(Lcom/android/camera/widget/ResolutionView;)Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    .line 417
    .end local v0           #isFastFrame:Z
    :goto_0
    return v1

    .line 404
    .restart local v0       #isFastFrame:Z
    :cond_1
    iget-object v1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    #getter for: Lcom/android/camera/widget/ResolutionView;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v1}, Lcom/android/camera/widget/ResolutionView;->access$400(Lcom/android/camera/widget/ResolutionView;)Lcom/android/camera/MenuHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/MenuHandler;->getMenuResolutionItem(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1080p"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    #getter for: Lcom/android/camera/widget/ResolutionView;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v1}, Lcom/android/camera/widget/ResolutionView;->access$400(Lcom/android/camera/widget/ResolutionView;)Lcom/android/camera/MenuHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/MenuHandler;->getMenuResolutionItem(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "720p"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT7x30()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    #getter for: Lcom/android/camera/widget/ResolutionView;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v1}, Lcom/android/camera/widget/ResolutionView;->access$400(Lcom/android/camera/widget/ResolutionView;)Lcom/android/camera/MenuHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/MenuHandler;->getMenuResolutionItem(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "QCIF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 411
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #isFastFrame:Z
    :cond_4
    move v1, v2

    .line 417
    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 436
    iget-object v1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    .line 437
    :cond_0
    const/4 v0, 0x0

    .line 441
    :goto_0
    return v0

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    iget v2, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    add-int v0, v1, v2

    .line 440
    .local v0, count:I
    iget-object v1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    iget-object v2, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    #getter for: Lcom/android/camera/widget/ResolutionView;->m_MenuItemHeight:I
    invoke-static {v2}, Lcom/android/camera/widget/ResolutionView;->access$600(Lcom/android/camera/widget/ResolutionView;)I

    move-result v2

    mul-int/2addr v2, v0

    #setter for: Lcom/android/camera/widget/ResolutionView;->m_MenuHeight:I
    invoke-static {v1, v2}, Lcom/android/camera/widget/ResolutionView;->access$502(Lcom/android/camera/widget/ResolutionView;I)I

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 445
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 449
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 454
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->hasFastMenuItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    const/4 v0, 0x0

    .line 458
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v11, 0x0

    .line 292
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->hasFastMenuItem()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 293
    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    const v10, 0x7f030049

    #calls: Lcom/android/camera/widget/ResolutionView;->inflateIfNeed(Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    invoke-static {v9, p2, v10, p3, v11}, Lcom/android/camera/widget/ResolutionView;->access$100(Lcom/android/camera/widget/ResolutionView;Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 295
    const v9, 0x7f0800b9

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 296
    .local v8, title:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 298
    .local v1, checked:Z
    const v9, 0x7f08003a

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 299
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 300
    const v9, 0x7f08013a

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 301
    .local v7, summary:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v9

    :goto_0
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, key:Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v9, "pref_camera_switch"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 305
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_1
    move-object v9, p2

    .line 355
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v1           #checked:Z
    .end local v5           #key:Ljava/lang/String;
    .end local v7           #summary:Landroid/widget/TextView;
    .end local v8           #title:Landroid/widget/TextView;
    :goto_2
    return-object v9

    .line 301
    .restart local v0       #checkBox:Landroid/widget/CheckBox;
    .restart local v1       #checked:Z
    .restart local v7       #summary:Landroid/widget/TextView;
    .restart local v8       #title:Landroid/widget/TextView;
    :cond_0
    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->getSummaryOff()Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_0

    .line 307
    .restart local v5       #key:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 314
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v1           #checked:Z
    .end local v5           #key:Ljava/lang/String;
    .end local v7           #summary:Landroid/widget/TextView;
    .end local v8           #title:Landroid/widget/TextView;
    :cond_2
    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    if-nez v9, :cond_4

    .line 315
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 317
    :cond_4
    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 319
    .local v3, entry:[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    const v10, 0x7f030044

    #calls: Lcom/android/camera/widget/ResolutionView;->inflateIfNeed(Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    invoke-static {v9, p2, v10, p3, v11}, Lcom/android/camera/widget/ResolutionView;->access$100(Lcom/android/camera/widget/ResolutionView;Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 322
    const v9, 0x7f080190

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    .line 323
    .local v2, checkview:Landroid/widget/CheckedTextView;
    iget v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    sub-int v9, p1, v9

    aget-object v9, v3, v9

    invoke-virtual {v2, v9}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 332
    iget v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    sub-int v9, p1, v9

    invoke-virtual {p0, v9}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->checkEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 333
    invoke-static {v2}, Lcom/android/camera/ViewUtil;->enableTextView(Landroid/widget/TextView;)V

    .line 338
    :cond_5
    :goto_3
    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 339
    .local v4, index:I
    iget v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    sub-int v9, p1, v9

    if-ne v9, v4, :cond_9

    .line 340
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 344
    :goto_4
    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/camera/ViewUtil;->getModifiedRadioBtn(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    .line 346
    .local v6, mark:Landroid/graphics/drawable/Drawable;
    iget v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    sub-int v9, p1, v9

    invoke-virtual {p0, v9}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->checkEnabled(I)Z

    move-result v9

    if-nez v9, :cond_6

    .line 347
    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    #getter for: Lcom/android/camera/widget/ResolutionView;->m_Context:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/camera/widget/ResolutionView;->access$000(Lcom/android/camera/widget/ResolutionView;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0a0022

    const v11, 0x2080076

    invoke-static {v9, v10, v11}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 349
    const/16 v9, 0x80

    invoke-virtual {v6, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 351
    :cond_6
    if-eqz v6, :cond_7

    .line 352
    invoke-virtual {v2, v6}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 354
    :cond_7
    iget-object v9, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    iget v10, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    sub-int v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->checkEnabled(I)Z

    move-result v10

    #calls: Lcom/android/camera/widget/ResolutionView;->setEnabledStateOnViews(Landroid/view/View;Z)V
    invoke-static {v9, p2, v10}, Lcom/android/camera/widget/ResolutionView;->access$200(Lcom/android/camera/widget/ResolutionView;Landroid/view/View;Z)V

    move-object v9, p2

    .line 355
    goto/16 :goto_2

    .line 335
    .end local v4           #index:I
    .end local v6           #mark:Landroid/graphics/drawable/Drawable;
    :cond_8
    invoke-static {v2}, Lcom/android/camera/ViewUtil;->disableTextView(Landroid/widget/TextView;)V

    goto :goto_3

    .line 342
    .restart local v4       #index:I
    :cond_9
    invoke-virtual {v2, v11}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_4
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x2

    return v0
.end method

.method public hasFastMenuItem()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 422
    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    if-nez v0, :cond_0

    move v0, v1

    .line 430
    :goto_0
    return v0

    .line 425
    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    #getter for: Lcom/android/camera/widget/ResolutionView;->mCameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v0}, Lcom/android/camera/widget/ResolutionView;->access$300(Lcom/android/camera/widget/ResolutionView;)Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 428
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 430
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->hasFastMenuItem()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 477
    iget-object v4, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    iget-object v5, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    #calls: Lcom/android/camera/widget/ResolutionView;->updateCheckBoxPreference(Landroid/preference/Preference;Z)V
    invoke-static {v4, v5, v3}, Lcom/android/camera/widget/ResolutionView;->access$700(Lcom/android/camera/widget/ResolutionView;Landroid/preference/Preference;Z)V

    .line 478
    iget-object v3, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 479
    .local v0, checked:Z
    const v3, 0x7f08003a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 480
    const v3, 0x7f08013a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    invoke-virtual {p0}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->notifyDataSetChanged()V

    .line 510
    .end local v0           #checked:Z
    :cond_0
    :goto_2
    return-void

    .line 477
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 480
    .restart local v0       #checked:Z
    :cond_2
    iget-object v4, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->getSummaryOff()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_1

    .line 486
    .end local v0           #checked:Z
    :cond_3
    iget v3, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    sub-int v3, p3, v3

    invoke-virtual {p0, v3}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->checkEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 489
    iget-object v3, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 490
    .local v2, values:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 491
    .local v1, current:I
    iget v3, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    sub-int v3, p3, v3

    if-eq v3, v1, :cond_4

    .line 492
    iget-object v3, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    iget v4, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    sub-int v4, p3, v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 493
    invoke-virtual {p0}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->notifyDataSetChanged()V

    .line 494
    iget-object v3, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    iget-object v4, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    iget v5, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    sub-int v5, p3, v5

    #calls: Lcom/android/camera/widget/ResolutionView;->updateListPreference(Landroid/preference/Preference;I)V
    invoke-static {v3, v4, v5}, Lcom/android/camera/widget/ResolutionView;->access$800(Lcom/android/camera/widget/ResolutionView;Landroid/preference/Preference;I)V

    goto :goto_2

    .line 500
    :cond_4
    iget-object v3, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->this$0:Lcom/android/camera/widget/ResolutionView;

    #getter for: Lcom/android/camera/widget/ResolutionView;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v3}, Lcom/android/camera/widget/ResolutionView;->access$900(Lcom/android/camera/widget/ResolutionView;)Lcom/android/camera/EventManager;

    move-result-object v3

    const-string v4, "SameMenuItem.Selected"

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public updateAdapter(Landroid/preference/ListPreference;Landroid/preference/CheckBoxPreference;)V
    .locals 1
    .parameter "l_preferences"
    .parameter "c_preferences"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mListPreference:Landroid/preference/ListPreference;

    .line 280
    iput-object p2, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mChkPreference:Landroid/preference/CheckBoxPreference;

    .line 282
    invoke-virtual {p0}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->hasFastMenuItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    .line 286
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->getCount()I

    .line 287
    invoke-virtual {p0}, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->notifyDataSetChanged()V

    .line 288
    return-void

    .line 285
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/ResolutionView$MenuAdapter;->mDummyCount:I

    goto :goto_0
.end method
