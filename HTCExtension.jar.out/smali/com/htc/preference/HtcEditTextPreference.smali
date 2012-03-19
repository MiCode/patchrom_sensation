.class public Lcom/htc/preference/HtcEditTextPreference;
.super Lcom/htc/preference/HtcDialogPreference;
.source "HtcEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;,
        Lcom/htc/preference/HtcEditTextPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mResultReceiver:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 91
    const v0, 0x1010092

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 70
    .local v0, Inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/htc/preference/HtcEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10900c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/htc/preference/HtcEditTextPreference;->mEditText:Landroid/widget/EditText;

    .line 72
    iget-object v1, p0, Lcom/htc/preference/HtcEditTextPreference;->mEditText:Landroid/widget/EditText;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 73
    iget-object v1, p0, Lcom/htc/preference/HtcEditTextPreference;->mEditText:Landroid/widget/EditText;

    const v2, 0x2030030

    invoke-virtual {v1, p1, v2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 74
    iget-object v1, p0, Lcom/htc/preference/HtcEditTextPreference;->mEditText:Landroid/widget/EditText;

    const-string v2, "common_inputfield"

    const v3, 0x2080046

    invoke-static {p1, v2, v3}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 77
    iget-object v1, p0, Lcom/htc/preference/HtcEditTextPreference;->mEditText:Landroid/widget/EditText;

    const v2, 0x1020003

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setId(I)V

    .line 85
    iget-object v1, p0, Lcom/htc/preference/HtcEditTextPreference;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 87
    new-instance v1, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    invoke-direct {v1, p0}, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;-><init>(Lcom/htc/preference/HtcEditTextPreference;)V

    iput-object v1, p0, Lcom/htc/preference/HtcEditTextPreference;->mResultReceiver:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/htc/preference/HtcEditTextPreference;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/preference/HtcEditTextPreference;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/preference/HtcEditTextPreference;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/htc/preference/HtcEditTextPreference;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/preference/HtcEditTextPreference;)Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/preference/HtcEditTextPreference;->mResultReceiver:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    return-object v0
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/htc/preference/HtcEditTextPreference;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/preference/HtcEditTextPreference;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3
    .parameter "dialogView"
    .parameter "editText"

    .prologue
    .line 147
    const v1, 0x10202d0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 149
    .local v0, container:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 150
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/htc/preference/HtcEditTextPreference;->mResultReceiver:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->retryCount:I

    .line 155
    iget-object v1, p0, Lcom/htc/preference/HtcEditTextPreference;->mResultReceiver:Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;

    invoke-virtual {v1}, Lcom/htc/preference/HtcEditTextPreference$LaunchIMEReceiver;->relaunchIME()V

    .line 157
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/htc/preference/HtcEditTextPreference;->mEditText:Landroid/widget/EditText;

    .line 130
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 133
    .local v1, oldParent:Landroid/view/ViewParent;
    if-eq v1, p1, :cond_1

    .line 134
    if-eqz v1, :cond_0

    .line 135
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #oldParent:Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 137
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/htc/preference/HtcEditTextPreference;->onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V

    .line 139
    :cond_1
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onDialogClosed(Z)V

    .line 163
    if-eqz p1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/htc/preference/HtcEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcEditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 169
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 173
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 210
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/htc/preference/HtcEditTextPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 219
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 216
    check-cast v0, Lcom/htc/preference/HtcEditTextPreference$SavedState;

    .line 217
    .local v0, myState:Lcom/htc/preference/HtcEditTextPreference$SavedState;
    invoke-virtual {v0}, Lcom/htc/preference/HtcEditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/preference/HtcDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 218
    iget-object v1, v0, Lcom/htc/preference/HtcEditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 197
    invoke-super {p0}, Lcom/htc/preference/HtcDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 198
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/htc/preference/HtcEditTextPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 203
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/htc/preference/HtcEditTextPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcEditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 204
    .local v0, myState:Lcom/htc/preference/HtcEditTextPreference$SavedState;
    invoke-virtual {p0}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/preference/HtcEditTextPreference$SavedState;->text:Ljava/lang/String;

    move-object v1, v0

    .line 205
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 178
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcEditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcEditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 179
    return-void

    .line 178
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/htc/preference/HtcEditTextPreference;->shouldDisableDependents()Z

    move-result v1

    .line 106
    .local v1, wasBlocking:Z
    iput-object p1, p0, Lcom/htc/preference/HtcEditTextPreference;->mText:Ljava/lang/String;

    .line 108
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->persistString(Ljava/lang/String;)Z

    .line 110
    invoke-virtual {p0}, Lcom/htc/preference/HtcEditTextPreference;->shouldDisableDependents()Z

    move-result v0

    .line 111
    .local v0, isBlocking:Z
    if-eq v0, v1, :cond_0

    .line 112
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcEditTextPreference;->notifyDependencyChange(Z)V

    .line 114
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/preference/HtcEditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/htc/preference/HtcDialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
