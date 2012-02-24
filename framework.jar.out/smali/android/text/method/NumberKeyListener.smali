.class public abstract Landroid/text/method/NumberKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "NumberKeyListener.java"

# interfaces
.implements Landroid/text/InputFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    return-void
.end method

.method protected static ok([CC)Z
    .locals 2
    .parameter "accept"
    .parameter "c"

    .prologue
    .line 102
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 103
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 104
    const/4 v1, 0x1

    .line 108
    :goto_1
    return v1

    .line 102
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 108
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    move-result-object v0

    .line 66
    .local v0, accept:[C
    const/4 v1, 0x0

    .line 69
    .local v1, filter:Z
    move v3, p2

    .local v3, i:I
    :goto_0
    if-ge v3, p3, :cond_0

    .line 70
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    move-result v6

    if-nez v6, :cond_2

    .line 75
    :cond_0
    if-ne v3, p3, :cond_3

    .line 77
    const/4 v2, 0x0

    .line 98
    :cond_1
    :goto_1
    return-object v2

    .line 69
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 80
    :cond_3
    sub-int v6, p3, p2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 82
    const-string v2, ""

    goto :goto_1

    .line 85
    :cond_4
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 87
    .local v2, filtered:Landroid/text/SpannableStringBuilder;
    sub-int/2addr v3, p2

    .line 88
    sub-int/2addr p3, p2

    .line 90
    sub-int v5, p3, p2

    .line 92
    .local v5, len:I
    add-int/lit8 v4, p3, -0x1

    .local v4, j:I
    :goto_2
    if-lt v4, v3, :cond_1

    .line 93
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    move-result v6

    if-nez v6, :cond_5

    .line 94
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v4, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 92
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2
.end method

.method protected abstract getAcceptedChars()[C
.end method

.method protected lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I
    .locals 3
    .parameter "event"
    .parameter "content"

    .prologue
    .line 45
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v1

    .line 47
    .local v1, meta_state:I
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_0

    .line 48
    const/16 v0, 0x200

    .line 49
    .local v0, mask:I
    and-int/lit16 v1, v1, -0x201

    .line 50
    or-int/lit8 v1, v1, 0x2

    .line 53
    .end local v0           #mask:I
    :cond_0
    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_1

    .line 54
    const/16 v0, 0x100

    .line 55
    .restart local v0       #mask:I
    and-int/lit16 v1, v1, -0x101

    .line 56
    or-int/lit8 v1, v1, 0x1

    .line 59
    .end local v0           #mask:I
    :cond_1
    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v2

    return v2
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 117
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 118
    .local v0, a:I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 120
    .local v1, b:I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 121
    .local v7, selStart:I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 124
    .local v6, selEnd:I
    if-ltz v7, :cond_0

    if-gez v6, :cond_1

    .line 125
    :cond_0
    const/4 v6, 0x0

    move v7, v6

    .line 126
    const/4 v9, 0x0

    invoke-static {p2, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 129
    :cond_1
    if-eqz p4, :cond_3

    invoke-virtual {p0, p4, p2}, Landroid/text/method/NumberKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v3

    .line 130
    .local v3, i:I
    :goto_0
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    .line 131
    .local v5, repeatCount:I
    :goto_1
    if-nez v5, :cond_5

    .line 132
    if-eqz v3, :cond_e

    .line 133
    if-eq v7, v6, :cond_2

    .line 134
    invoke-static {p2, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 137
    :cond_2
    int-to-char v9, v3

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v7, v6, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 139
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 140
    const/4 v9, 0x1

    .line 186
    :goto_2
    return v9

    .line 129
    .end local v3           #i:I
    .end local v5           #repeatCount:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 130
    .restart local v3       #i:I
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 144
    .restart local v5       #repeatCount:I
    :cond_5
    const/4 v9, 0x1

    if-ne v9, v5, :cond_b

    const/16 v9, 0x2c

    if-eq v9, p3, :cond_6

    const/16 v9, 0x33

    if-ne v9, p3, :cond_b

    .line 145
    :cond_6
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v4

    .line 146
    .local v4, meta_state:I
    and-int/lit16 v9, v4, 0x100

    if-nez v9, :cond_7

    and-int/lit8 v9, v4, 0x1

    if-eqz v9, :cond_9

    :cond_7
    const/4 v2, 0x1

    .line 148
    .local v2, bCapState:Z
    :goto_3
    const/16 v9, 0x2c

    if-ne v9, p3, :cond_a

    const/16 v8, 0x70

    .line 149
    .local v8, symb:C
    :goto_4
    if-eqz v2, :cond_8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    .line 151
    :cond_8
    if-ne v7, v6, :cond_e

    if-lez v6, :cond_e

    .line 152
    add-int/lit8 v9, v7, -0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v6, v10}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 153
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 154
    const/4 v9, 0x1

    goto :goto_2

    .line 146
    .end local v2           #bCapState:Z
    .end local v8           #symb:C
    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    .line 148
    .restart local v2       #bCapState:Z
    :cond_a
    const/16 v8, 0x77

    goto :goto_4

    .line 159
    .end local v2           #bCapState:Z
    .end local v4           #meta_state:I
    :cond_b
    const/4 v9, 0x1

    if-ne v5, v9, :cond_c

    const/16 v9, 0x37

    if-ne p3, v9, :cond_c

    .line 160
    if-ne v7, v6, :cond_e

    if-lez v6, :cond_e

    .line 161
    add-int/lit8 v9, v7, -0x1

    const/16 v10, 0x2c

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v6, v10}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 162
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 163
    const/4 v9, 0x1

    goto :goto_2

    .line 166
    :cond_c
    const/16 v9, 0x37

    if-eq p3, v9, :cond_d

    const/16 v9, 0x38

    if-ne p3, v9, :cond_e

    :cond_d
    if-lez v5, :cond_e

    .line 168
    const/4 v9, 0x1

    goto :goto_2

    .line 186
    :cond_e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v9

    goto :goto_2
.end method
