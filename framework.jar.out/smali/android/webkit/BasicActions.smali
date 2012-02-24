.class Landroid/webkit/BasicActions;
.super Ljava/lang/Object;
.source "BasicActions.java"

# interfaces
.implements Lcom/htc/textselection/QuickActions;
.implements Landroid/webkit/WebView$WrapActions;


# static fields
.field private static final BUTTON_ID_COPY:I = 0x1020021

.field private static final BUTTON_ID_QUICKLOOKUP:I = 0x1

.field private static final BUTTON_ID_SHARE:I = 0x102033f

.field private static final BUTTON_ID_WEBSEARCH:I = 0x1020341

.field private static final G_DEFAULT:I = 0x1140000


# instance fields
.field copyButtonOnly:Z

.field focusedView:Landroid/view/View;

.field icon_copy:Landroid/graphics/drawable/Drawable;

.field icon_lookup:Landroid/graphics/drawable/Drawable;

.field icon_share:Landroid/graphics/drawable/Drawable;

.field icon_websearch:Landroid/graphics/drawable/Drawable;

.field mActionMenu:Landroid/view/Menu;

.field mActionMode:Landroid/view/ActionMode;

.field mWebView:Landroid/webkit/WebView;

.field menuCopy:Landroid/view/MenuItem;

.field menuQuikckLookup:Landroid/view/MenuItem;

.field private resLoaded:Z

.field showQuickLookup:Z

.field str_copy:Ljava/lang/String;

.field str_lookup:Ljava/lang/String;

.field str_share:Ljava/lang/String;

.field str_websearch:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1
    .parameter "wv"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v0, p0, Landroid/webkit/BasicActions;->showQuickLookup:Z

    .line 54
    iput-boolean v0, p0, Landroid/webkit/BasicActions;->copyButtonOnly:Z

    .line 55
    iput-boolean v0, p0, Landroid/webkit/BasicActions;->resLoaded:Z

    .line 58
    iput-object p1, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    .line 59
    return-void
.end method

.method private handleItemAction(I)Z
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 93
    const/4 v3, 0x1

    .line 94
    .local v3, ret:Z
    sparse-switch p1, :sswitch_data_0

    .line 147
    const/4 v3, 0x0

    .line 151
    :cond_0
    :goto_0
    return v3

    .line 96
    :sswitch_0
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->copySelection()Z

    goto :goto_0

    .line 100
    :sswitch_1
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, selection:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 105
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x7d0

    if-le v6, v7, :cond_1

    .line 106
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x104

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getQuickSearch()Landroid/webkit/HTCQuickSearch;

    move-result-object v2

    .line 111
    .local v2, quickSearch:Landroid/webkit/HTCQuickSearch;
    if-eqz v2, :cond_0

    .line 112
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/webkit/HTCQuickSearch;->shareContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    .end local v2           #quickSearch:Landroid/webkit/HTCQuickSearch;
    .end local v5           #selection:Ljava/lang/String;
    :sswitch_2
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v5

    .line 119
    .restart local v5       #selection:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 122
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, i:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    const-string/jumbo v6, "new_search"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    const-string/jumbo v6, "query"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    :try_start_0
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v6, "BasicActions"

    const-string v7, "ERROR!"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10403a6

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 138
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #i:Landroid/content/Intent;
    .end local v5           #selection:Ljava/lang/String;
    :sswitch_3
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->selectAll()V

    goto/16 :goto_0

    .line 142
    :sswitch_4
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, sel:Ljava/lang/String;
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, v4, v8}, Landroid/webkit/WebView;->showFindDialog(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 94
    :sswitch_data_0
    .sparse-switch
        0x1020021 -> :sswitch_0
        0x102033e -> :sswitch_3
        0x102033f -> :sswitch_1
        0x1020340 -> :sswitch_4
        0x1020341 -> :sswitch_2
    .end sparse-switch
.end method

.method private loadResource()V
    .locals 5

    .prologue
    .line 62
    iget-object v3, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    .local v0, ctx:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 65
    .local v2, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/view/MenuInflater;

    invoke-direct {v1, v0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 66
    .local v1, menuInflater:Landroid/view/MenuInflater;
    new-instance v3, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v3, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/webkit/BasicActions;->mActionMenu:Landroid/view/Menu;

    .line 67
    const/high16 v3, 0x114

    iget-object v4, p0, Landroid/webkit/BasicActions;->mActionMenu:Landroid/view/Menu;

    invoke-virtual {v1, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 70
    const v3, 0x20805f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/BasicActions;->icon_copy:Landroid/graphics/drawable/Drawable;

    .line 71
    iget-object v3, p0, Landroid/webkit/BasicActions;->mActionMenu:Landroid/view/Menu;

    const v4, 0x1020021

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/BasicActions;->str_copy:Ljava/lang/String;

    .line 84
    const v3, 0x20805f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/BasicActions;->icon_share:Landroid/graphics/drawable/Drawable;

    .line 85
    iget-object v3, p0, Landroid/webkit/BasicActions;->mActionMenu:Landroid/view/Menu;

    const v4, 0x102033f

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/BasicActions;->str_share:Ljava/lang/String;

    .line 88
    const v3, 0x20805f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/BasicActions;->icon_websearch:Landroid/graphics/drawable/Drawable;

    .line 89
    iget-object v3, p0, Landroid/webkit/BasicActions;->mActionMenu:Landroid/view/Menu;

    const v4, 0x1020341

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/BasicActions;->str_websearch:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Landroid/webkit/BasicActions;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Landroid/webkit/BasicActions;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 330
    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 270
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 271
    .local v0, actionID:I
    invoke-direct {p0, v0}, Landroid/webkit/BasicActions;->handleItemAction(I)Z

    move-result v1

    .line 272
    .local v1, ret:Z
    const v2, 0x102033e

    if-eq v0, v2, :cond_0

    .line 273
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 275
    :cond_0
    return v1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 156
    iget-boolean v4, p0, Landroid/webkit/BasicActions;->resLoaded:Z

    if-nez v4, :cond_0

    .line 157
    iput-boolean v5, p0, Landroid/webkit/BasicActions;->resLoaded:Z

    .line 158
    invoke-direct {p0}, Landroid/webkit/BasicActions;->loadResource()V

    .line 162
    :cond_0
    iget-object v4, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 180
    .local v1, ctx:Landroid/content/Context;
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    const/high16 v7, 0x114

    invoke-virtual {v4, v7, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1110030

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 201
    .local v0, allowText:Z
    if-eqz v0, :cond_2

    const v4, 0x1040397

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 210
    const v4, 0x1020340

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 211
    .local v3, findOnPageItem:Landroid/view/MenuItem;
    if-eqz v3, :cond_1

    .line 212
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 216
    .end local v3           #findOnPageItem:Landroid/view/MenuItem;
    :cond_1
    iput-object p1, p0, Landroid/webkit/BasicActions;->mActionMode:Landroid/view/ActionMode;

    move v4, v5

    .line 217
    .end local v0           #allowText:Z
    :goto_1
    return v4

    .line 193
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    move v4, v6

    .line 194
    goto :goto_1

    .line 201
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #allowText:Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onCreateQuickActions(Lcom/htc/textselection/ActionMenu;)V
    .locals 4
    .parameter "actions"

    .prologue
    const/high16 v3, 0x114

    .line 334
    iget-boolean v0, p0, Landroid/webkit/BasicActions;->resLoaded:Z

    if-nez v0, :cond_0

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BasicActions;->resLoaded:Z

    .line 336
    invoke-direct {p0}, Landroid/webkit/BasicActions;->loadResource()V

    .line 338
    :cond_0
    const v0, 0x1020021

    iget-object v1, p0, Landroid/webkit/BasicActions;->str_copy:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/BasicActions;->icon_copy:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 340
    const v0, 0x1020341

    iget-object v1, p0, Landroid/webkit/BasicActions;->str_websearch:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/BasicActions;->icon_websearch:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 341
    const v0, 0x102033f

    iget-object v1, p0, Landroid/webkit/BasicActions;->str_share:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/BasicActions;->icon_share:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 342
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 314
    iget-object v0, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->selectionDone()V

    .line 315
    iput-object v1, p0, Landroid/webkit/BasicActions;->menuQuikckLookup:Landroid/view/MenuItem;

    .line 316
    iput-object v1, p0, Landroid/webkit/BasicActions;->menuCopy:Landroid/view/MenuItem;

    .line 317
    iput-object v1, p0, Landroid/webkit/BasicActions;->mActionMode:Landroid/view/ActionMode;

    .line 318
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    .line 258
    const v4, 0x1020021

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 259
    .local v0, copyItem:Landroid/view/MenuItem;
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v3

    .line 260
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 261
    invoke-interface {p2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 262
    .local v2, item:Landroid/view/MenuItem;
    iget-boolean v4, p0, Landroid/webkit/BasicActions;->copyButtonOnly:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v4, v5

    :goto_1
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 265
    .end local v2           #item:Landroid/view/MenuItem;
    :cond_2
    return v5
.end method

.method public onPrepareShowQuicActions(Lcom/htc/textselection/ActionMenu;)V
    .locals 5
    .parameter "actions"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/high16 v2, 0x114

    .line 346
    iget-boolean v1, p0, Landroid/webkit/BasicActions;->copyButtonOnly:Z

    if-eqz v1, :cond_1

    .line 347
    invoke-interface {p1, v2, v4}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    .line 348
    const v1, 0x1020021

    invoke-interface {p1, v2, v1}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v0

    .line 349
    .local v0, a:Lcom/htc/textselection/Action;
    if-eqz v0, :cond_0

    .line 350
    invoke-interface {v0, v3}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 361
    .end local v0           #a:Lcom/htc/textselection/Action;
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-interface {p1, v2, v3}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    .line 355
    iget-object v1, p0, Landroid/webkit/BasicActions;->str_lookup:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 356
    invoke-interface {p1, v2, v3}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v0

    .line 357
    .restart local v0       #a:Lcom/htc/textselection/Action;
    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0, v4}, Lcom/htc/textselection/Action;->setVisible(Z)V

    goto :goto_0
.end method

.method public onQuickActionItemClicked(I)V
    .locals 1
    .parameter "actionID"

    .prologue
    .line 365
    invoke-direct {p0, p1}, Landroid/webkit/BasicActions;->handleItemAction(I)Z

    .line 366
    iget-object v0, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->selectionDone()V

    .line 367
    return-void
.end method
