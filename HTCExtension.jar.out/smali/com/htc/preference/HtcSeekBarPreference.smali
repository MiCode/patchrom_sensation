.class public Lcom/htc/preference/HtcSeekBarPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcSeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mMax:I

.field private mProgress:I

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    sget-object v1, Lcom/android/internal/R$styleable;->ProgressBar:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/preference/HtcSeekBarPreference;->mMax:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcSeekBarPreference;->setMax(I)V

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    const v1, 0x1090077

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcSeekBarPreference;->setLayoutResource(I)V

    .line 52
    return-void
.end method

.method private getProgressDrawable(Landroid/widget/SeekBar;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "seekBar"

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 81
    .local v1, layer:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "common_progress_empty"

    const v6, 0x20804c0

    invoke-static {v4, v5, v6}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 82
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "common_progress_full"

    const v6, 0x20804c1

    invoke-static {v4, v5, v6}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 83
    .local v2, progress:Landroid/graphics/drawable/ClipDrawable;
    const/high16 v3, 0x102

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 84
    const v3, 0x102000d

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 85
    return-object v1
.end method

.method private getProgressThumb()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_music_progress_button"

    const v3, 0x2080066

    invoke-static {v1, v2, v3}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private setProgress(IZ)V
    .locals 1
    .parameter "progress"
    .parameter "notifyChanged"

    .prologue
    .line 137
    iget v0, p0, Lcom/htc/preference/HtcSeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 138
    iget p1, p0, Lcom/htc/preference/HtcSeekBarPreference;->mMax:I

    .line 140
    :cond_0
    if-gez p1, :cond_1

    .line 141
    const/4 p1, 0x0

    .line 143
    :cond_1
    iget v0, p0, Lcom/htc/preference/HtcSeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 144
    iput p1, p0, Lcom/htc/preference/HtcSeekBarPreference;->mProgress:I

    .line 145
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcSeekBarPreference;->persistInt(I)Z

    .line 146
    if-eqz p2, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarPreference;->notifyChanged()V

    .line 150
    :cond_2
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/htc/preference/HtcSeekBarPreference;->mProgress:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 65
    const v2, 0x10202d9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 67
    .local v0, seekBar:Landroid/widget/SeekBar;
    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2080066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 68
    .local v1, thumb:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 69
    invoke-direct {p0, v0}, Lcom/htc/preference/HtcSeekBarPreference;->getProgressDrawable(Landroid/widget/SeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-direct {p0}, Lcom/htc/preference/HtcSeekBarPreference;->getProgressThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 72
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 73
    iget v2, p0, Lcom/htc/preference/HtcSeekBarPreference;->mMax:I

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 74
    iget v2, p0, Lcom/htc/preference/HtcSeekBarPreference;->mProgress:I

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 75
    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarPreference;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 77
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 111
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 112
    const/16 v1, 0x51

    if-eq p2, v1, :cond_0

    const/16 v1, 0x46

    if-ne p2, v1, :cond_1

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcSeekBarPreference;->setProgress(I)V

    .line 122
    :goto_0
    return v0

    .line 117
    :cond_1
    const/16 v1, 0x45

    if-ne p2, v1, :cond_2

    .line 118
    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcSeekBarPreference;->setProgress(I)V

    goto :goto_0

    .line 122
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 174
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/htc/preference/HtcSeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcSeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 177
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/htc/preference/HtcSeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 227
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 222
    check-cast v0, Lcom/htc/preference/HtcSeekBarPreference$SavedState;

    .line 223
    .local v0, myState:Lcom/htc/preference/HtcSeekBarPreference$SavedState;
    invoke-virtual {v0}, Lcom/htc/preference/HtcSeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 224
    iget v1, v0, Lcom/htc/preference/HtcSeekBarPreference$SavedState;->progress:I

    iput v1, p0, Lcom/htc/preference/HtcSeekBarPreference;->mProgress:I

    .line 225
    iget v1, v0, Lcom/htc/preference/HtcSeekBarPreference$SavedState;->max:I

    iput v1, p0, Lcom/htc/preference/HtcSeekBarPreference;->mMax:I

    .line 226
    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 200
    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 201
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 207
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/htc/preference/HtcSeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcSeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 208
    .local v0, myState:Lcom/htc/preference/HtcSeekBarPreference$SavedState;
    iget v2, p0, Lcom/htc/preference/HtcSeekBarPreference;->mProgress:I

    iput v2, v0, Lcom/htc/preference/HtcSeekBarPreference$SavedState;->progress:I

    .line 209
    iget v2, p0, Lcom/htc/preference/HtcSeekBarPreference;->mMax:I

    iput v2, v0, Lcom/htc/preference/HtcSeekBarPreference$SavedState;->max:I

    move-object v1, v0

    .line 210
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 100
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/preference/HtcSeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcSeekBarPreference;->getPersistedInt(I)I

    move-result v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcSeekBarPreference;->setProgress(I)V

    .line 102
    return-void

    .line 100
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcSeekBarPreference;->mTrackingTouch:Z

    .line 182
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/preference/HtcSeekBarPreference;->mTrackingTouch:Z

    .line 187
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/htc/preference/HtcSeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 188
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcSeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 190
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 126
    iget v0, p0, Lcom/htc/preference/HtcSeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 127
    iput p1, p0, Lcom/htc/preference/HtcSeekBarPreference;->mMax:I

    .line 128
    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarPreference;->notifyChanged()V

    .line 130
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcSeekBarPreference;->setProgress(IZ)V

    .line 134
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 162
    .local v0, progress:I
    iget v1, p0, Lcom/htc/preference/HtcSeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcSeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/preference/HtcSeekBarPreference;->setProgress(IZ)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget v1, p0, Lcom/htc/preference/HtcSeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
