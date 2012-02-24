.class Landroid/webkit/HTCQuickSearch$2;
.super Landroid/os/Handler;
.source "HTCQuickSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTCQuickSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTCQuickSearch;


# direct methods
.method constructor <init>(Landroid/webkit/HTCQuickSearch;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Landroid/webkit/HTCQuickSearch$2;->this$0:Landroid/webkit/HTCQuickSearch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 283
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 287
    :pswitch_0
    iget-object v4, p0, Landroid/webkit/HTCQuickSearch$2;->this$0:Landroid/webkit/HTCQuickSearch;

    #getter for: Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/HTCQuickSearch;->access$000(Landroid/webkit/HTCQuickSearch;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->nativeGetFirstMatch()Landroid/graphics/Rect;

    move-result-object v3

    .line 289
    .local v3, rect:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 292
    const/16 v0, 0x14

    .line 296
    .local v0, UPPER_BOND:I
    iget-object v4, p0, Landroid/webkit/HTCQuickSearch$2;->this$0:Landroid/webkit/HTCQuickSearch;

    #getter for: Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/HTCQuickSearch;->access$000(Landroid/webkit/HTCQuickSearch;)Landroid/webkit/WebView;

    move-result-object v5

    iget-object v4, p0, Landroid/webkit/HTCQuickSearch$2;->this$0:Landroid/webkit/HTCQuickSearch;

    #getter for: Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/HTCQuickSearch;->access$000(Landroid/webkit/HTCQuickSearch;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v6, "window"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 301
    .local v1, nDisplayHeight:I
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    div-int/lit8 v5, v1, 0x2

    if-ge v4, v5, :cond_2

    .line 302
    iget v4, v3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v1, 0x2

    if-le v4, v5, :cond_0

    .line 303
    iget-object v4, p0, Landroid/webkit/HTCQuickSearch$2;->this$0:Landroid/webkit/HTCQuickSearch;

    #getter for: Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/HTCQuickSearch;->access$000(Landroid/webkit/HTCQuickSearch;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v4

    sub-int/2addr v4, v1

    iget v5, v3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, -0x14

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_1

    iget v4, v3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, -0x14

    sub-int v2, v4, v5

    .line 315
    .local v2, ny:I
    :goto_1
    iget-object v4, p0, Landroid/webkit/HTCQuickSearch$2;->this$0:Landroid/webkit/HTCQuickSearch;

    #getter for: Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/HTCQuickSearch;->access$000(Landroid/webkit/HTCQuickSearch;)Landroid/webkit/WebView;

    move-result-object v4

    iget-object v4, v4, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    iget-object v6, p0, Landroid/webkit/HTCQuickSearch$2;->this$0:Landroid/webkit/HTCQuickSearch;

    #getter for: Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6}, Landroid/webkit/HTCQuickSearch;->access$000(Landroid/webkit/HTCQuickSearch;)Landroid/webkit/WebView;

    move-result-object v6

    iget-object v7, p0, Landroid/webkit/HTCQuickSearch$2;->this$0:Landroid/webkit/HTCQuickSearch;

    #getter for: Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;
    invoke-static {v7}, Landroid/webkit/HTCQuickSearch;->access$000(Landroid/webkit/HTCQuickSearch;)Landroid/webkit/WebView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebView;->getScrollX()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v6

    invoke-static {v4, v5, v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 320
    iget-object v4, p0, Landroid/webkit/HTCQuickSearch$2;->this$0:Landroid/webkit/HTCQuickSearch;

    #getter for: Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/HTCQuickSearch;->access$000(Landroid/webkit/HTCQuickSearch;)Landroid/webkit/WebView;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    const/16 v7, 0x10

    invoke-virtual {v4, v5, v6, v7}, Landroid/webkit/WebView;->nativeSmartHorizontalScroll(III)Z

    goto/16 :goto_0

    .line 303
    .end local v2           #ny:I
    :cond_1
    iget-object v4, p0, Landroid/webkit/HTCQuickSearch$2;->this$0:Landroid/webkit/HTCQuickSearch;

    #getter for: Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/HTCQuickSearch;->access$000(Landroid/webkit/HTCQuickSearch;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v4

    sub-int v2, v4, v1

    goto :goto_1

    .line 310
    :cond_2
    iget-object v4, p0, Landroid/webkit/HTCQuickSearch$2;->this$0:Landroid/webkit/HTCQuickSearch;

    #getter for: Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/HTCQuickSearch;->access$000(Landroid/webkit/HTCQuickSearch;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v4

    sub-int/2addr v4, v1

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, -0x14

    if-le v4, v5, :cond_3

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v4, -0x14

    .restart local v2       #ny:I
    :goto_2
    goto :goto_1

    .end local v2           #ny:I
    :cond_3
    iget-object v4, p0, Landroid/webkit/HTCQuickSearch$2;->this$0:Landroid/webkit/HTCQuickSearch;

    #getter for: Landroid/webkit/HTCQuickSearch;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/HTCQuickSearch;->access$000(Landroid/webkit/HTCQuickSearch;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
