.class public Landroid/widget/InputMethodStateUtil;
.super Ljava/lang/Object;
.source "InputMethodStateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static focusIn(Landroid/view/View;Landroid/content/Context;)V
    .locals 2
    .parameter "view"
    .parameter "context"

    .prologue
    .line 38
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 42
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static getCursorRectInWindow(Landroid/widget/TextView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "tv"

    .prologue
    .line 22
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    .line 25
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHtcListItemView(Landroid/view/View;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;
    .locals 13
    .parameter "convertView"
    .parameter "context"
    .parameter "imeName"
    .parameter "subtypeName"
    .parameter "isChecked"

    .prologue
    .line 52
    move-object v10, p0

    .line 54
    .local v10, view:Landroid/view/View;
    if-nez v10, :cond_3

    .line 55
    if-nez p1, :cond_1

    .line 56
    const/4 v9, 0x0

    .line 101
    :cond_0
    :goto_0
    return-object v9

    .line 58
    :cond_1
    const-string v11, "layout_inflater"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 59
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v11, 0x2090008

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 61
    .local v9, textView:Landroid/view/View;
    if-nez v9, :cond_2

    .line 62
    const/4 v9, 0x0

    goto :goto_0

    .line 63
    :cond_2
    if-eqz p2, :cond_0

    .line 66
    const v11, 0x2090087

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 68
    .local v5, radio:Landroid/view/View;
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    .local v6, root:Landroid/widget/LinearLayout;
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 73
    .local v4, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v11, 0x3f80

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 75
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4           #lp:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 76
    .restart local v4       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v11, 0x10

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 78
    move-object v10, v6

    .line 83
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #radio:Landroid/view/View;
    .end local v6           #root:Landroid/widget/LinearLayout;
    .end local v9           #textView:Landroid/view/View;
    :cond_3
    if-eqz p2, :cond_4

    .line 84
    const v11, 0x2020010

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 85
    .local v2, firstTextView:Landroid/widget/TextView;
    const v11, 0x2020014

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 86
    .local v8, secondTextView:Landroid/widget/TextView;
    const v11, 0x2020012

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 88
    .local v7, secondLayout:Landroid/widget/LinearLayout;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 89
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    :goto_1
    const v11, 0x2020126

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 98
    .local v1, check:Landroid/widget/CheckedTextView;
    move/from16 v0, p4

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .end local v1           #check:Landroid/widget/CheckedTextView;
    .end local v2           #firstTextView:Landroid/widget/TextView;
    .end local v7           #secondLayout:Landroid/widget/LinearLayout;
    .end local v8           #secondTextView:Landroid/widget/TextView;
    :cond_4
    move-object v9, v10

    .line 101
    goto :goto_0

    .line 92
    .restart local v2       #firstTextView:Landroid/widget/TextView;
    .restart local v7       #secondLayout:Landroid/widget/LinearLayout;
    .restart local v8       #secondTextView:Landroid/widget/TextView;
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public static initInputMethodState(Landroid/widget/TextView;)V
    .locals 1
    .parameter "tv"

    .prologue
    .line 17
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Landroid/widget/TextView$InputMethodState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputMethodState;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 19
    :cond_0
    return-void
.end method

.method public static showSoftInputUnchecked(ILandroid/os/ResultReceiver;Landroid/content/Context;)V
    .locals 2
    .parameter "flags"
    .parameter "resultReceiver"
    .parameter "context"

    .prologue
    .line 29
    if-nez p2, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    const-string v1, "input_method"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 33
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0, p0, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    goto :goto_0
.end method
