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

.field showWebSearch:Z

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

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v0, p0, Landroid/webkit/BasicActions;->showQuickLookup:Z

    .line 56
    iput-boolean v0, p0, Landroid/webkit/BasicActions;->showWebSearch:Z

    .line 58
    iput-boolean v0, p0, Landroid/webkit/BasicActions;->copyButtonOnly:Z

    .line 59
    iput-boolean v0, p0, Landroid/webkit/BasicActions;->resLoaded:Z

    .line 62
    iput-object p1, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    .line 63
    return-void
.end method

.method private handleItemAction(I)Z
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 103
    const/4 v3, 0x1

    .line 104
    .local v3, ret:Z
    sparse-switch p1, :sswitch_data_0

    .line 157
    const/4 v3, 0x0

    .line 161
    :cond_0
    :goto_0
    return v3

    .line 106
    :sswitch_0
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->copySelection()Z

    goto :goto_0

    .line 110
    :sswitch_1
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, selection:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 115
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x7d0

    if-le v6, v7, :cond_1

    .line 116
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x104

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getQuickSearch()Landroid/webkit/HTCQuickSearch;

    move-result-object v2

    .line 121
    .local v2, quickSearch:Landroid/webkit/HTCQuickSearch;
    if-eqz v2, :cond_0

    .line 122
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/webkit/HTCQuickSearch;->shareContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    .end local v2           #quickSearch:Landroid/webkit/HTCQuickSearch;
    .end local v5           #selection:Ljava/lang/String;
    :sswitch_2
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v5

    .line 129
    .restart local v5       #selection:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 132
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, i:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    const-string/jumbo v6, "new_search"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 135
    const-string/jumbo v6, "query"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    :try_start_0
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v6, "BasicActions"

    const-string v7, "ERROR!"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10403a6

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 148
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #i:Landroid/content/Intent;
    .end local v5           #selection:Ljava/lang/String;
    :sswitch_3
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->selectAll()V

    goto/16 :goto_0

    .line 152
    :sswitch_4
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, sel:Ljava/lang/String;
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, v4, v8}, Landroid/webkit/WebView;->showFindDialog(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 104
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
    .locals 8

    .prologue
    .line 66
    iget-object v6, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    .local v0, ctx:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 69
    .local v4, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/view/MenuInflater;

    invoke-direct {v2, v0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 70
    .local v2, menuInflater:Landroid/view/MenuInflater;
    new-instance v6, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v6, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/webkit/BasicActions;->mActionMenu:Landroid/view/Menu;

    .line 71
    const/high16 v6, 0x114

    iget-object v7, p0, Landroid/webkit/BasicActions;->mActionMenu:Landroid/view/Menu;

    invoke-virtual {v2, v6, v7}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 74
    const v6, 0x20805f0

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/webkit/BasicActions;->icon_copy:Landroid/graphics/drawable/Drawable;

    .line 75
    iget-object v6, p0, Landroid/webkit/BasicActions;->mActionMenu:Landroid/view/Menu;

    const v7, 0x1020021

    invoke-interface {v6, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/webkit/BasicActions;->str_copy:Ljava/lang/String;

    .line 88
    const v6, 0x20805f8

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/webkit/BasicActions;->icon_share:Landroid/graphics/drawable/Drawable;

    .line 89
    iget-object v6, p0, Landroid/webkit/BasicActions;->mActionMenu:Landroid/view/Menu;

    const v7, 0x102033f

    invoke-interface {v6, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/webkit/BasicActions;->str_share:Ljava/lang/String;

    .line 92
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.WEB_SEARCH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v5, target:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 94
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/high16 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 95
    .local v1, mainActivitiesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 96
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/webkit/BasicActions;->showWebSearch:Z

    .line 98
    :cond_0
    const v6, 0x20805f4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/webkit/BasicActions;->icon_websearch:Landroid/graphics/drawable/Drawable;

    .line 99
    iget-object v6, p0, Landroid/webkit/BasicActions;->mActionMenu:Landroid/view/Menu;

    const v7, 0x1020341

    invoke-interface {v6, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/webkit/BasicActions;->str_websearch:Ljava/lang/String;

    .line 100
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Landroid/webkit/BasicActions;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Landroid/webkit/BasicActions;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 346
    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 286
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 287
    .local v0, actionID:I
    invoke-direct {p0, v0}, Landroid/webkit/BasicActions;->handleItemAction(I)Z

    move-result v1

    .line 288
    .local v1, ret:Z
    const v2, 0x102033e

    if-eq v0, v2, :cond_0

    .line 289
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 291
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

    .line 166
    iget-boolean v4, p0, Landroid/webkit/BasicActions;->resLoaded:Z

    if-nez v4, :cond_0

    .line 167
    iput-boolean v5, p0, Landroid/webkit/BasicActions;->resLoaded:Z

    .line 168
    invoke-direct {p0}, Landroid/webkit/BasicActions;->loadResource()V

    .line 172
    :cond_0
    iget-object v4, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 190
    .local v1, ctx:Landroid/content/Context;
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    const/high16 v7, 0x114

    invoke-virtual {v4, v7, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1110030

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 211
    .local v0, allowText:Z
    if-eqz v0, :cond_2

    const v4, 0x1040397

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 220
    const v4, 0x1020340

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 221
    .local v3, findOnPageItem:Landroid/view/MenuItem;
    if-eqz v3, :cond_1

    .line 222
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 226
    .end local v3           #findOnPageItem:Landroid/view/MenuItem;
    :cond_1
    iput-object p1, p0, Landroid/webkit/BasicActions;->mActionMode:Landroid/view/ActionMode;

    move v4, v5

    .line 227
    .end local v0           #allowText:Z
    :goto_1
    return v4

    .line 203
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    move v4, v6

    .line 204
    goto :goto_1

    .line 211
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

    .line 350
    iget-boolean v0, p0, Landroid/webkit/BasicActions;->resLoaded:Z

    if-nez v0, :cond_0

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BasicActions;->resLoaded:Z

    .line 352
    invoke-direct {p0}, Landroid/webkit/BasicActions;->loadResource()V

    .line 354
    :cond_0
    const v0, 0x1020021

    iget-object v1, p0, Landroid/webkit/BasicActions;->str_copy:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/BasicActions;->icon_copy:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 356
    const v0, 0x1020341

    iget-object v1, p0, Landroid/webkit/BasicActions;->str_websearch:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/BasicActions;->icon_websearch:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 357
    const v0, 0x102033f

    iget-object v1, p0, Landroid/webkit/BasicActions;->str_share:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/BasicActions;->icon_share:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 358
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 330
    iget-object v0, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->selectionDone()V

    .line 331
    iput-object v1, p0, Landroid/webkit/BasicActions;->menuQuikckLookup:Landroid/view/MenuItem;

    .line 332
    iput-object v1, p0, Landroid/webkit/BasicActions;->menuCopy:Landroid/view/MenuItem;

    .line 333
    iput-object v1, p0, Landroid/webkit/BasicActions;->mActionMode:Landroid/view/ActionMode;

    .line 334
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 268
    const v5, 0x1020021

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 269
    .local v0, copyItem:Landroid/view/MenuItem;
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v3

    .line 270
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 271
    invoke-interface {p2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 272
    .local v2, item:Landroid/view/MenuItem;
    iget-boolean v5, p0, Landroid/webkit/BasicActions;->copyButtonOnly:Z

    if-eqz v5, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v5, v7

    :goto_1
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v5, v6

    .line 272
    goto :goto_1

    .line 275
    .end local v2           #item:Landroid/view/MenuItem;
    :cond_2
    iget-boolean v5, p0, Landroid/webkit/BasicActions;->showWebSearch:Z

    if-nez v5, :cond_3

    .line 276
    const v5, 0x1020341

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 277
    .local v4, webSearch:Landroid/view/MenuItem;
    if-eqz v4, :cond_3

    .line 278
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 281
    .end local v4           #webSearch:Landroid/view/MenuItem;
    :cond_3
    return v7
.end method

.method public onPrepareShowQuicActions(Lcom/htc/textselection/ActionMenu;)V
    .locals 5
    .parameter "actions"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x114

    .line 362
    iget-boolean v1, p0, Landroid/webkit/BasicActions;->copyButtonOnly:Z

    if-eqz v1, :cond_2

    .line 363
    invoke-interface {p1, v2, v3}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    .line 364
    const v1, 0x1020021

    invoke-interface {p1, v2, v1}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v0

    .line 365
    .local v0, a:Lcom/htc/textselection/Action;
    if-eqz v0, :cond_0

    .line 366
    invoke-interface {v0, v4}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 378
    .end local v0           #a:Lcom/htc/textselection/Action;
    :cond_0
    :goto_0
    iget-boolean v1, p0, Landroid/webkit/BasicActions;->showWebSearch:Z

    if-nez v1, :cond_1

    .line 379
    const v1, 0x1020341

    invoke-interface {p1, v2, v1}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v0

    .line 380
    .restart local v0       #a:Lcom/htc/textselection/Action;
    if-eqz v0, :cond_1

    .line 381
    invoke-interface {v0, v3}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 383
    .end local v0           #a:Lcom/htc/textselection/Action;
    :cond_1
    return-void

    .line 369
    :cond_2
    invoke-interface {p1, v2, v4}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    .line 371
    iget-object v1, p0, Landroid/webkit/BasicActions;->str_lookup:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 372
    invoke-interface {p1, v2, v4}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v0

    .line 373
    .restart local v0       #a:Lcom/htc/textselection/Action;
    if-eqz v0, :cond_0

    .line 374
    invoke-interface {v0, v3}, Lcom/htc/textselection/Action;->setVisible(Z)V

    goto :goto_0
.end method

.method public onQuickActionItemClicked(I)V
    .locals 1
    .parameter "actionID"

    .prologue
    .line 387
    invoke-direct {p0, p1}, Landroid/webkit/BasicActions;->handleItemAction(I)Z

    .line 388
    iget-object v0, p0, Landroid/webkit/BasicActions;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->selectionDone()V

    .line 389
    return-void
.end method
