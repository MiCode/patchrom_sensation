.class public Landroid/webkit/WebViewInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "WebViewInputConnection.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WebViewInputConnection"


# instance fields
.field private final mWebView:Landroid/webkit/EditableWebView;


# direct methods
.method public constructor <init>(Landroid/webkit/EditableWebView;)V
    .locals 1
    .parameter "webview"

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 40
    iput-object p1, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    .line 41
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->beginBatchEdit()V

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 3
    .parameter "states"

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/webkit/WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 65
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 75
    :goto_0
    return v2

    .line 66
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    .line 67
    .local v1, kl:Landroid/text/method/KeyListener;
    if-eqz v1, :cond_1

    .line 69
    :try_start_0
    iget-object v2, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-interface {v1, v2, v0, p1}, Landroid/text/method/KeyListener;->clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 70
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->beginBatchEdit()V

    .line 81
    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0, p1}, Landroid/webkit/EditableWebView;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    .line 82
    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->endBatchEdit()V

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 149
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 150
    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/EditableWebView;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteSurroundingText(II)Z
    .locals 15
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/webkit/WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v4

    .line 190
    .local v4, content:Landroid/text/Editable;
    if-nez v4, :cond_0

    const/4 v14, 0x0

    .line 258
    :goto_0
    return v14

    .line 192
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewInputConnection;->beginBatchEdit()Z

    .line 194
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 195
    .local v0, a:I
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 197
    .local v1, b:I
    if-le v0, v1, :cond_1

    .line 198
    move v13, v0

    .line 199
    .local v13, tmp:I
    move v0, v1

    .line 200
    move v1, v13

    .line 204
    .end local v13           #tmp:I
    :cond_1
    invoke-static {v4}, Landroid/webkit/WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 205
    .local v2, ca:I
    invoke-static {v4}, Landroid/webkit/WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 206
    .local v3, cb:I
    if-ge v3, v2, :cond_2

    .line 207
    move v13, v2

    .line 208
    .restart local v13       #tmp:I
    move v2, v3

    .line 209
    move v3, v13

    .line 211
    .end local v13           #tmp:I
    :cond_2
    const/4 v14, -0x1

    if-eq v2, v14, :cond_4

    const/4 v14, -0x1

    if-eq v3, v14, :cond_4

    .line 212
    if-ge v2, v0, :cond_3

    move v0, v2

    .line 213
    :cond_3
    if-le v3, v1, :cond_4

    move v1, v3

    .line 216
    :cond_4
    const/4 v11, 0x0

    .line 217
    .local v11, shouldDelete:Z
    const/4 v8, -0x1

    .local v8, leftStart:I
    const/4 v7, -0x1

    .line 218
    .local v7, leftEnd:I
    if-lez p1, :cond_6

    .line 219
    move v7, v0

    .line 220
    sub-int v8, v7, p1

    .line 221
    if-gez v8, :cond_5

    const/4 v8, 0x0

    .line 222
    :cond_5
    const/4 v11, 0x1

    .line 224
    :cond_6
    const/4 v10, -0x1

    .local v10, rightStart:I
    const/4 v9, -0x1

    .line 225
    .local v9, rightEnd:I
    if-lez p2, :cond_8

    .line 226
    move v10, v1

    .line 227
    add-int v9, v10, p2

    .line 228
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v14

    if-le v9, v14, :cond_7

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v9

    .line 229
    :cond_7
    const/4 v11, 0x1

    .line 231
    :cond_8
    if-eqz v11, :cond_a

    .line 232
    if-gtz p1, :cond_f

    .line 233
    move v7, v10

    move v8, v10

    .line 236
    :cond_9
    :goto_1
    iget-object v14, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v14, v8, v7, v10, v9}, Landroid/webkit/EditableWebView;->deleteSurroundingText(IIII)V

    .line 238
    :cond_a
    const/4 v5, 0x0

    .line 240
    .local v5, deleted:I
    if-lez p1, :cond_c

    .line 241
    sub-int v12, v0, p1

    .line 242
    .local v12, start:I
    if-gez v12, :cond_b

    const/4 v12, 0x0

    .line 243
    :cond_b
    invoke-interface {v4, v12, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 244
    sub-int v5, v0, v12

    .line 247
    .end local v12           #start:I
    :cond_c
    if-lez p2, :cond_e

    .line 248
    sub-int/2addr v1, v5

    .line 250
    add-int v6, v1, p2

    .line 251
    .local v6, end:I
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v14

    if-le v6, v14, :cond_d

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    .line 253
    :cond_d
    invoke-interface {v4, v1, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 256
    .end local v6           #end:I
    :cond_e
    invoke-virtual {p0}, Landroid/webkit/WebViewInputConnection;->endBatchEdit()Z

    .line 258
    const/4 v14, 0x1

    goto :goto_0

    .line 234
    .end local v5           #deleted:I
    :cond_f
    if-gtz p2, :cond_9

    .line 235
    move v9, v7

    move v10, v7

    goto :goto_1
.end method

.method public endBatchEdit()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->endBatchEdit()V

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public finishComposingText()Z
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 128
    invoke-virtual {p0}, Landroid/webkit/WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v3

    .line 129
    .local v3, content:Landroid/text/Editable;
    if-eqz v3, :cond_2

    .line 130
    invoke-virtual {p0}, Landroid/webkit/WebViewInputConnection;->beginBatchEdit()Z

    .line 131
    invoke-static {v3}, Landroid/webkit/WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    .line 132
    .local v0, a:I
    invoke-static {v3}, Landroid/webkit/WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 133
    .local v1, b:I
    if-ge v1, v0, :cond_0

    .line 134
    move v4, v0

    .line 135
    .local v4, tmp:I
    move v0, v1

    .line 136
    move v1, v4

    .line 138
    .end local v4           #tmp:I
    :cond_0
    if-eq v0, v5, :cond_1

    if-eq v1, v5, :cond_1

    .line 139
    invoke-interface {v3, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 140
    .local v2, composingText:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/webkit/WebViewInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 141
    iget-object v5, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/webkit/EditableWebView;->commitText(Ljava/lang/CharSequence;I)Z

    .line 143
    .end local v2           #composingText:Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewInputConnection;->endBatchEdit()Z

    .line 145
    .end local v0           #a:I
    .end local v1           #b:I
    :cond_2
    const/4 v5, 0x1

    return v5
.end method

.method public getCursorCapsMode(I)I
    .locals 5
    .parameter "reqModes"

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/webkit/WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 171
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    .line 183
    :goto_0
    return v3

    .line 173
    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 174
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 176
    .local v1, b:I
    if-le v0, v1, :cond_1

    .line 177
    move v4, v0

    .line 178
    .local v4, tmp:I
    move v0, v1

    .line 179
    move v1, v4

    .line 181
    .end local v4           #tmp:I
    :cond_1
    invoke-static {v2, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    .line 183
    .local v3, ret:I
    goto :goto_0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 5
    .parameter "request"
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, et:Landroid/view/inputmethod/ExtractedText;
    invoke-virtual {p0}, Landroid/webkit/WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 106
    .local v0, content:Landroid/text/Editable;
    iget-object v2, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 107
    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    .end local v1           #et:Landroid/view/inputmethod/ExtractedText;
    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 108
    .restart local v1       #et:Landroid/view/inputmethod/ExtractedText;
    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 109
    invoke-virtual {p0}, Landroid/webkit/WebViewInputConnection;->getSelectionStart()I

    move-result v2

    iput v2, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 110
    invoke-virtual {p0}, Landroid/webkit/WebViewInputConnection;->getSelectionEnd()I

    move-result v2

    iput v2, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 111
    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 112
    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 113
    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 114
    iget v2, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 115
    iput-object v0, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 119
    :cond_0
    :goto_0
    return-object v1

    .line 117
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 97
    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->beginBatchEdit()V

    .line 98
    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0, p1}, Landroid/webkit/EditableWebView;->onTextContextMenuItem(I)Z

    .line 99
    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->endBatchEdit()V

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 1
    .parameter "actionCode"

    .prologue
    .line 91
    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0, p1}, Landroid/webkit/EditableWebView;->onEditorAction(I)V

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 123
    iget-object v0, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/EditableWebView;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    .line 159
    .local v0, ret:Z
    iget-object v1, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Landroid/webkit/WebViewInputConnection;->mWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/EditableWebView;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    .line 162
    .end local v0           #ret:Z
    :cond_0
    return v0
.end method
