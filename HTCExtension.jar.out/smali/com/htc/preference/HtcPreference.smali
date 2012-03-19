.class public Lcom/htc/preference/HtcPreference;
.super Ljava/lang/Object;
.source "HtcPreference.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/htc/preference/HtcOnDependencyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcPreference$BaseSavedState;,
        Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;,
        Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;,
        Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;,
        Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/preference/HtcPreference;",
        ">;",
        "Lcom/htc/preference/HtcOnDependencyChangeListener;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private mBaseMethodCalled:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mHasBoundView:Z

.field private mHasSpecifiedLayout:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mIconVisibility:Z

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

.field private mOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

.field private mOnFirstBindViewListener:Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;

.field private mOrder:I

.field private mPersistent:Z

.field private mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

.field private mRequiresKey:Z

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 413
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 414
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 404
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 405
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v6, 0x10900bc

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 260
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-boolean v4, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    .line 125
    iput-boolean v4, p0, Lcom/htc/preference/HtcPreference;->mHasBoundView:Z

    .line 127
    const v3, 0x7fffffff

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    .line 140
    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mEnabled:Z

    .line 141
    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mSelectable:Z

    .line 143
    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mPersistent:Z

    .line 146
    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mDependencyMet:Z

    .line 151
    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    .line 153
    iput v6, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    .line 155
    iput-boolean v4, p0, Lcom/htc/preference/HtcPreference;->mHasSpecifiedLayout:Z

    .line 261
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    .line 263
    sget-object v3, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 265
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 266
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 267
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 265
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 269
    :pswitch_0
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mIconResId:I

    goto :goto_1

    .line 273
    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    goto :goto_1

    .line 277
    :pswitch_2
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mTitleRes:I

    .line 278
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 282
    :pswitch_3
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mSummary:Ljava/lang/CharSequence;

    goto :goto_1

    .line 286
    :pswitch_4
    iget v3, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    goto :goto_1

    .line 290
    :pswitch_5
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mFragment:Ljava/lang/String;

    goto :goto_1

    .line 295
    :pswitch_6
    iget v3, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 309
    iget v3, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    goto :goto_1

    .line 299
    :sswitch_0
    iput v6, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    goto :goto_1

    .line 303
    :sswitch_1
    const v3, 0x10900be

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    goto :goto_1

    .line 306
    :sswitch_2
    const v3, 0x10900c0

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    goto :goto_1

    .line 314
    :pswitch_7
    iget v3, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    goto :goto_1

    .line 318
    :pswitch_8
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mEnabled:Z

    goto :goto_1

    .line 322
    :pswitch_9
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mSelectable:Z

    goto :goto_1

    .line 326
    :pswitch_a
    iget-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mPersistent:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mPersistent:Z

    goto :goto_1

    .line 330
    :pswitch_b
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    goto :goto_1

    .line 334
    :pswitch_c
    invoke-virtual {p0, v0, v1}, Lcom/htc/preference/HtcPreference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mDefaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    .line 338
    :pswitch_d
    iget-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    goto/16 :goto_1

    .line 342
    .end local v1           #attr:I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 344
    const v3, 0x1010091

    if-ne p3, v3, :cond_1

    .line 345
    const v3, 0x10900bf

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    .line 347
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.htc.preference"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 349
    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mHasSpecifiedLayout:Z

    .line 351
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;->applyExtendedAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 352
    return-void

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_6
        :pswitch_2
        :pswitch_9
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_5
    .end packed-switch

    .line 295
    :sswitch_data_0
    .sparse-switch
        0x1090002 -> :sswitch_1
        0x109006a -> :sswitch_0
        0x109006b -> :sswitch_1
        0x109006e -> :sswitch_2
        0x1090070 -> :sswitch_0
        0x1090072 -> :sswitch_0
    .end sparse-switch
.end method

.method private applyExtendedAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 367
    new-array v3, v6, [I

    const v4, 0x1010002

    aput v4, v3, v5

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 371
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 374
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 377
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 371
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 379
    :pswitch_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 380
    iput-boolean v6, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    goto :goto_1

    .line 385
    .end local v1           #attr:I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 386
    return-void

    .line 377
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private dispatchSetInitialValue()V
    .locals 3

    .prologue
    .line 1634
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    .line 1635
    .local v0, shouldPersist:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1636
    :cond_0
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1637
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/htc/preference/HtcPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1642
    :cond_1
    :goto_0
    return-void

    .line 1640
    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/preference/HtcPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private registerDependency()V
    .locals 4

    .prologue
    .line 1469
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1478
    :goto_0
    return-void

    .line 1471
    :cond_0
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 1472
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    if-eqz v0, :cond_1

    .line 1473
    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreference;->registerDependent(Lcom/htc/preference/HtcPreference;)V

    goto :goto_0

    .line 1475
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerDependent(Lcom/htc/preference/HtcPreference;)V
    .locals 1
    .parameter "dependent"

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    .line 1521
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1523
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/htc/preference/HtcPreference;->onDependencyChanged(Lcom/htc/preference/HtcPreference;Z)V

    .line 1524
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "enabled"

    .prologue
    .line 847
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 849
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 850
    check-cast v1, Landroid/view/ViewGroup;

    .line 851
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 852
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/htc/preference/HtcPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 851
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 855
    .end local v0           #i:I
    .end local v1           #vg:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private syncIconDrawable()Z
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 777
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private syncIconVisibility()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 791
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 792
    iget-boolean v1, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    if-eqz v1, :cond_1

    .line 793
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 797
    :goto_0
    const/4 v0, 0x1

    .line 799
    :cond_0
    return v0

    .line 795
    :cond_1
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .parameter "editor"

    .prologue
    .line 1665
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceManager;->shouldCommit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1667
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1675
    :cond_0
    :goto_0
    return-void

    .line 1668
    :catch_0
    move-exception v0

    .line 1672
    .local v0, unused:Ljava/lang/AbstractMethodError;
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private unregisterDependency()V
    .locals 2

    .prologue
    .line 1481
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1482
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 1483
    .local v0, oldDependency:Lcom/htc/preference/HtcPreference;
    if-eqz v0, :cond_0

    .line 1484
    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreference;->unregisterDependent(Lcom/htc/preference/HtcPreference;)V

    .line 1487
    .end local v0           #oldDependency:Lcom/htc/preference/HtcPreference;
    :cond_0
    return-void
.end method

.method private unregisterDependent(Lcom/htc/preference/HtcPreference;)V
    .locals 1
    .parameter "dependent"

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1538
    :cond_0
    return-void
.end method


# virtual methods
.method protected callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .parameter "newValue"

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public compareTo(Lcom/htc/preference/HtcPreference;)I
    .locals 2
    .parameter "another"

    .prologue
    const v1, 0x7fffffff

    .line 1388
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/htc/preference/HtcPreference;->mOrder:I

    if-eq v0, v1, :cond_1

    .line 1391
    :cond_0
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    iget v1, p1, Lcom/htc/preference/HtcPreference;->mOrder:I

    sub-int/2addr v0, v1

    .line 1398
    :goto_0
    return v0

    .line 1392
    :cond_1
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 1393
    const/4 v0, 0x1

    goto :goto_0

    .line 1394
    :cond_2
    iget-object v0, p1, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 1395
    const/4 v0, -0x1

    goto :goto_0

    .line 1398
    :cond_3
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    check-cast p1, Lcom/htc/preference/HtcPreference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreference;->compareTo(Lcom/htc/preference/HtcPreference;)I

    move-result v0

    return v0
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "container"

    .prologue
    .line 2071
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2072
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 2073
    .local v0, state:Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 2074
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    .line 2075
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2076
    iget-boolean v1, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 2077
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2082
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "container"

    .prologue
    .line 2018
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2019
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    .line 2020
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2021
    .local v0, state:Landroid/os/Parcelable;
    iget-boolean v1, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 2022
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2025
    :cond_0
    if-eqz v0, :cond_1

    .line 2026
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2029
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "key"

    .prologue
    .line 1500
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_1

    .line 1501
    :cond_0
    const/4 v0, 0x0

    .line 1504
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    goto :goto_0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 714
    const/4 v0, 0x0

    .line 716
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_0

    .line 1358
    const/4 v0, 0x0

    .line 1361
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 477
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcPreference;->mExtras:Landroid/os/Bundle;

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 1979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1980
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1981
    .local v2, title:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1982
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1984
    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1985
    .local v1, summary:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1986
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1988
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1990
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1992
    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIconVisibility()Z
    .locals 1

    .prologue
    .line 744
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    return v0
.end method

.method getId()J
    .locals 2

    .prologue
    .line 1087
    iget-wide v0, p0, Lcom/htc/preference/HtcPreference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOnPreferenceFirstBindViewListener()Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mOnFirstBindViewListener:Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 887
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    return v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 1951
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1955
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedFloat(F)F
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 1863
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1867
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedInt(I)I
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 1819
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1823
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedLong(J)J
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 1907
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1911
    .end local p1
    :goto_0
    return-wide p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 1720
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1724
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1775
    .local p1, defaultReturnValue:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1779
    .end local p1           #defaultReturnValue:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object p1

    .restart local p1       #defaultReturnValue:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0
.end method

.method public getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;
    .locals 1

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_0

    .line 1331
    const/4 v0, 0x0

    .line 1334
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getShouldDisableView()Z
    .locals 1

    .prologue
    .line 1077
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mSummaryView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 925
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mTitleRes:I

    return v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 563
    if-nez p1, :cond_1

    .line 564
    invoke-virtual {p0, p2}, Lcom/htc/preference/HtcPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 569
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 570
    return-object p1

    .line 566
    :cond_1
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    const v1, 0x10900be

    if-ne v0, v1, :cond_0

    .line 567
    invoke-virtual {p0, p2}, Lcom/htc/preference/HtcPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0
.end method

.method public getWidgetLayoutResource()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasSpecifiedLayout()Z
    .locals 1

    .prologue
    .line 1959
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mHasSpecifiedLayout:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1031
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 1154
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 1052
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mSelectable:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;->onPreferenceChange(Lcom/htc/preference/HtcPreference;)V

    .line 1419
    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4
    .parameter "disableDependents"

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    .line 1550
    .local v0, dependents:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreference;>;"
    if-nez v0, :cond_1

    .line 1558
    :cond_0
    return-void

    .line 1554
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1555
    .local v1, dependentsCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1556
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, p0, p1}, Lcom/htc/preference/HtcPreference;->onDependencyChanged(Lcom/htc/preference/HtcPreference;Z)V

    .line 1555
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Lcom/htc/preference/HtcPreference;)V

    .line 1430
    :cond_0
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 0

    .prologue
    .line 1464
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->registerDependency()V

    .line 1465
    return-void
.end method

.method protected onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V
    .locals 2
    .parameter "preferenceManager"

    .prologue
    .line 1448
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    .line 1450
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/preference/HtcPreference;->mId:J

    .line 1452
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->dispatchSetInitialValue()V

    .line 1453
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const v7, 0x1020006

    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 649
    const v5, 0x1020016

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 650
    .local v2, textView:Landroid/widget/TextView;
    iput-object v2, p0, Lcom/htc/preference/HtcPreference;->mTitleView:Landroid/widget/TextView;

    .line 651
    if-eqz v2, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    :cond_0
    const v5, 0x1020010

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #textView:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 656
    .restart local v2       #textView:Landroid/widget/TextView;
    iput-object v2, p0, Lcom/htc/preference/HtcPreference;->mSummaryView:Landroid/widget/TextView;

    .line 657
    if-eqz v2, :cond_2

    .line 658
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 659
    .local v1, summary:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 660
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 661
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 664
    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    .end local v1           #summary:Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 673
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_6

    .line 674
    iget v5, p0, Lcom/htc/preference/HtcPreference;->mIconResId:I

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 675
    :cond_3
    iget-object v5, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_4

    .line 676
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/htc/preference/HtcPreference;->mIconResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 678
    :cond_4
    iget-object v5, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 679
    iget-object v5, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 682
    :cond_5
    iget-object v5, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_a

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 686
    :cond_6
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    .line 688
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->syncIconVisibility()Z

    .line 689
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->syncIconDrawable()Z

    .line 691
    iget-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    if-eqz v3, :cond_7

    .line 692
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->isEnabled()Z

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/htc/preference/HtcPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 696
    :cond_7
    iget-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mHasBoundView:Z

    if-nez v3, :cond_8

    .line 697
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mHasBoundView:Z

    .line 698
    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mOnFirstBindViewListener:Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;

    if-eqz v3, :cond_8

    .line 699
    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mOnFirstBindViewListener:Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;

    invoke-interface {v3, p0}, Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;->onPreferenceFirstBindView(Lcom/htc/preference/HtcPreference;)V

    .line 702
    :cond_8
    return-void

    .line 666
    .end local v0           #imageView:Landroid/widget/ImageView;
    .restart local v1       #summary:Ljava/lang/CharSequence;
    :cond_9
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 667
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v1           #summary:Ljava/lang/CharSequence;
    .restart local v0       #imageView:Landroid/widget/ImageView;
    :cond_a
    move v3, v4

    .line 682
    goto :goto_1
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 1097
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "parent"

    .prologue
    .line 587
    iget-object v9, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 590
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    iget v9, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    const/4 v10, 0x0

    invoke-virtual {v1, v9, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 592
    .local v0, layout:Landroid/view/View;
    iget v9, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    const v10, 0x10900be

    if-ne v9, v10, :cond_0

    .line 594
    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 595
    const v9, 0x1020016

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 596
    .local v5, title:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    const v10, 0x203002a

    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 597
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 598
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 600
    .end local v5           #title:Landroid/widget/TextView;
    :cond_0
    iget v9, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    const v10, 0x10900bc

    if-ne v9, v10, :cond_1

    .line 601
    const v9, 0x1020016

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 602
    .restart local v5       #title:Landroid/widget/TextView;
    const v9, 0x1020010

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 603
    .local v2, summary:Landroid/widget/TextView;
    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 605
    iget-object v9, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    const v10, 0x2030012

    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 606
    iget-object v9, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    const v10, 0x2030025

    invoke-virtual {v2, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 610
    .end local v2           #summary:Landroid/widget/TextView;
    .end local v5           #title:Landroid/widget/TextView;
    :cond_1
    const v9, 0x1020018

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 612
    .local v7, widgetFrame:Landroid/view/ViewGroup;
    if-eqz v7, :cond_2

    .line 613
    iget v9, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    if-eqz v9, :cond_4

    .line 614
    iget v9, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    invoke-virtual {v1, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 619
    :cond_2
    :goto_0
    const v9, 0x10202da

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    .line 620
    .local v4, switchwidget:Landroid/widget/Switch;
    if-eqz v4, :cond_3

    .line 622
    const-string v9, "HTCPreference"

    const-string v10, "switchwidget!=null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    new-instance v6, Lcom/htc/widget/HtcToggleButton;

    iget-object v9, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Lcom/htc/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    .line 624
    .local v6, toggleButton:Lcom/htc/widget/HtcToggleButton;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcToggleButton;->setClickable(Z)V

    .line 625
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcToggleButton;->setFocusable(Z)V

    .line 626
    const v9, 0x10202da

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcToggleButton;->setId(I)V

    .line 628
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroid/widget/Switch;->setVisibility(I)V

    .line 629
    invoke-virtual {v4}, Landroid/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    .line 630
    .local v8, x:I
    invoke-virtual {v4}, Landroid/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 631
    .local v3, switchParent:Landroid/view/ViewGroup;
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 632
    invoke-virtual {v3, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 634
    .end local v3           #switchParent:Landroid/view/ViewGroup;
    .end local v6           #toggleButton:Lcom/htc/widget/HtcToggleButton;
    .end local v8           #x:I
    :cond_3
    return-object v0

    .line 616
    .end local v4           #switchwidget:Landroid/widget/Switch;
    :cond_4
    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDependencyChanged(Lcom/htc/preference/HtcPreference;Z)V
    .locals 1
    .parameter "dependency"
    .parameter "disableDependent"

    .prologue
    .line 1567
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1568
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mDependencyMet:Z

    .line 1571
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->notifyDependencyChange(Z)V

    .line 1573
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 1575
    :cond_0
    return-void

    .line 1568
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 430
    const/4 v0, 0x0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1297
    const/4 v0, 0x0

    return v0
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .prologue
    .line 1618
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->unregisterDependency()V

    .line 1619
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2095
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    .line 2096
    sget-object v0, Lcom/htc/preference/HtcPreference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 2097
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2099
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 2044
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    .line 2045
    sget-object v0, Lcom/htc/preference/HtcPreference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .parameter "restorePersistedValue"
    .parameter "defaultValue"

    .prologue
    .line 1662
    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method performClick(Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 4
    .parameter "preferenceScreen"

    .prologue
    .line 1263
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1267
    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->onClick()V

    .line 1269
    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    invoke-interface {v3, p0}, Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;->onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1273
    :cond_2
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    .line 1274
    .local v2, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    if-eqz v2, :cond_3

    .line 1275
    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getOnPreferenceTreeClickListener()Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 1277
    .local v1, listener:Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;
    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {v1, p1, p0}, Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1283
    .end local v1           #listener:Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;
    :cond_3
    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 1284
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1285
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected persistBoolean(Z)Z
    .locals 4
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1925
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1926
    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->getPersistedBoolean(Z)Z

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1936
    :goto_0
    return v2

    .line 1931
    :cond_1
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1932
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1933
    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    move v2, v1

    .line 1936
    goto :goto_0
.end method

.method protected persistFloat(F)Z
    .locals 3
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 1837
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1838
    const/high16 v2, 0x7fc0

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->getPersistedFloat(F)F

    move-result v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 1848
    :goto_0
    return v1

    .line 1843
    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1844
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1845
    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1848
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistInt(I)Z
    .locals 3
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 1793
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1794
    xor-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->getPersistedInt(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 1804
    :goto_0
    return v1

    .line 1799
    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1800
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1801
    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1804
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistLong(J)Z
    .locals 4
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 1881
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1882
    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/htc/preference/HtcPreference;->getPersistedLong(J)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 1892
    :goto_0
    return v1

    .line 1887
    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1888
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1889
    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1892
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 1691
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1693
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 1703
    :goto_0
    return v1

    .line 1698
    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1699
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1700
    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1703
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistStringSet(Ljava/util/Set;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 1743
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1745
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1755
    :goto_0
    return v1

    .line 1750
    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1751
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1752
    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1755
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method requireKey()V
    .locals 2

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1135
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mRequiresKey:Z

    .line 1136
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 2057
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2058
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 2004
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 2005
    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 729
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    .line 733
    :goto_0
    return-void

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "defaultValue"

    .prologue
    .line 1629
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mDefaultValue:Ljava/lang/Object;

    .line 1630
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0
    .parameter "dependencyKey"

    .prologue
    .line 1595
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->unregisterDependency()V

    .line 1598
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    .line 1599
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->registerDependency()V

    .line 1600
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1015
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1016
    iput-boolean p1, p0, Lcom/htc/preference/HtcPreference;->mEnabled:Z

    .line 1019
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->notifyDependencyChange(Z)V

    .line 1021
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 1023
    :cond_0
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 458
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mFragment:Ljava/lang/String;

    .line 459
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "iconResId"

    .prologue
    .line 962
    iput p1, p0, Lcom/htc/preference/HtcPreference;->mIconResId:I

    .line 963
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 964
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 947
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 948
    :cond_1
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 949
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    .line 950
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->syncIconDrawable()Z

    .line 951
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 953
    :cond_2
    return-void
.end method

.method public setIconVisibility(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 756
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    if-eq v0, p1, :cond_0

    .line 757
    iput-boolean p1, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    .line 758
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->syncIconVisibility()Z

    .line 759
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 761
    :cond_0
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 440
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    .line 441
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    .line 1108
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mRequiresKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->requireKey()V

    .line 1111
    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 1
    .parameter "layoutResId"

    .prologue
    .line 505
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mHasSpecifiedLayout:Z

    .line 510
    :cond_0
    iput p1, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    .line 511
    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1409
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

    .line 1410
    return-void
.end method

.method public setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V
    .locals 0
    .parameter "onPreferenceChangeListener"

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    .line 1224
    return-void
.end method

.method public setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V
    .locals 0
    .parameter "onPreferenceClickListener"

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    .line 1243
    return-void
.end method

.method public setOnPreferenceFirstBindViewListener(Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mOnFirstBindViewListener:Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;

    .line 1203
    return-void
.end method

.method public setOrder(I)V
    .locals 1
    .parameter "order"

    .prologue
    .line 871
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 872
    iput p1, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    .line 875
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyHierarchyChanged()V

    .line 877
    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .parameter "persistent"

    .prologue
    .line 1178
    iput-boolean p1, p0, Lcom/htc/preference/HtcPreference;->mPersistent:Z

    .line 1179
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1
    .parameter "selectable"

    .prologue
    .line 1040
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 1041
    iput-boolean p1, p0, Lcom/htc/preference/HtcPreference;->mSelectable:Z

    .line 1042
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 1044
    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 0
    .parameter "shouldDisableView"

    .prologue
    .line 1067
    iput-boolean p1, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    .line 1068
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 1069
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1006
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 992
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 993
    :cond_1
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mSummary:Ljava/lang/CharSequence;

    .line 994
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 996
    :cond_2
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleResId"

    .prologue
    .line 913
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 914
    iput p1, p0, Lcom/htc/preference/HtcPreference;->mTitleRes:I

    .line 915
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 899
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 900
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/preference/HtcPreference;->mTitleRes:I

    .line 901
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    .line 902
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 904
    :cond_2
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 1
    .parameter "widgetLayoutResId"

    .prologue
    .line 533
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mHasSpecifiedLayout:Z

    .line 537
    :cond_0
    iput p1, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    .line 538
    return-void
.end method

.method public shouldCommit()Z
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_0

    .line 1374
    const/4 v0, 0x0

    .line 1377
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->shouldCommit()Z

    move-result v0

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 1584
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldPersist()Z
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1964
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
