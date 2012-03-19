.class Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;
.super Landroid/os/AsyncTask;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView$QuickSelectWV$EventHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/webkit/SelectionUnitInfo;",
        "Ljava/lang/Void;",
        "[I>;"
    }
.end annotation


# instance fields
.field lang:Ljava/lang/String;

.field pnode:I

.field final synthetic this$2:Landroid/webkit/WebView$QuickSelectWV$EventHub;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView$QuickSelectWV$EventHub;)V
    .locals 0
    .parameter

    .prologue
    .line 13344
    iput-object p1, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;->this$2:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13344
    check-cast p1, [Landroid/webkit/SelectionUnitInfo;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;->doInBackground([Landroid/webkit/SelectionUnitInfo;)[I

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/webkit/SelectionUnitInfo;)[I
    .locals 7
    .parameter "infos"

    .prologue
    const/4 v3, 0x0

    .line 13383
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;->this$2:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    iget-object v4, v4, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v4, v4, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v4, v4, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    sget-object v0, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    .line 13384
    .local v0, detector:Lcom/htc/textselection/FetchSuggestionFromIME;
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;->this$2:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    iget-object v4, v4, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v4, v4, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkit/WebView;->access$16200(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    .line 13385
    invoke-virtual {v0}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 13386
    invoke-virtual {v0, v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    .line 13387
    const/4 v0, 0x0

    move-object v1, v3

    .line 13399
    :goto_0
    return-object v1

    .line 13391
    :cond_0
    const/4 v4, 0x0

    aget-object v2, p1, v4

    .line 13392
    .local v2, targetInfo:Landroid/webkit/SelectionUnitInfo;
    iget v4, v2, Landroid/webkit/SelectionUnitInfo;->node:I

    iput v4, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;->pnode:I

    .line 13393
    iget-object v4, v2, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v2, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    const-string v6, "1"

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/textselection/FetchSuggestionFromIME;->matchWord(Ljava/lang/String;ILjava/lang/String;)[I

    move-result-object v1

    .line 13396
    .local v1, ret:[I
    invoke-virtual {v0, v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    .line 13397
    const/4 v0, 0x0

    .line 13399
    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 13351
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 13352
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13344
    check-cast p1, [I

    .end local p1
    invoke-virtual {p0, p1}, Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;->onPostExecute([I)V

    return-void
.end method

.method protected onPostExecute([I)V
    .locals 7
    .parameter "ret"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 13356
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;->this$2:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/webkit/WebView$QuickSelectWV$EventHub;->queryWorker:Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;

    .line 13357
    if-eqz p1, :cond_0

    aget v2, p1, v5

    aget v3, p1, v4

    if-ne v2, v3, :cond_1

    .line 13373
    :cond_0
    :goto_0
    return-void

    .line 13360
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 13361
    .local v1, cursor2:Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;->this$2:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    iget-object v2, v2, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v2, v2, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget v3, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;->pnode:I

    aget v4, p1, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4, v1}, Landroid/webkit/HTCWebCore;->nativeGetCharRect(IILandroid/graphics/Rect;)Z

    .line 13362
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 13363
    .local v0, cursor1:Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;->this$2:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    iget-object v2, v2, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v2, v2, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget v3, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;->pnode:I

    aget v4, p1, v5

    invoke-virtual {v2, v3, v4, v0}, Landroid/webkit/HTCWebCore;->nativeGetCharRect(IILandroid/graphics/Rect;)Z

    .line 13365
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;->this$2:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    iget-object v2, v2, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/webkit/WebView$QuickSelectWV;->makeSelect(IIII)Z

    .line 13367
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;->this$2:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    iget-object v2, v2, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v2, v2, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;->this$2:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    iget-object v3, v3, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v3, v3, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebView;->nativeGetSelectionStart(Landroid/graphics/Rect;)V
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$14600(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    .line 13368
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;->this$2:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    iget-object v2, v2, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v2, v2, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;->this$2:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    iget-object v3, v3, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v3, v3, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->nativeGetSelectionEnd(Landroid/graphics/Rect;)V

    .line 13370
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;->this$2:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    iget-object v2, v2, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    #calls: Landroid/webkit/WebView$QuickSelectWV;->getUIdataFromWebcore()V
    invoke-static {v2}, Landroid/webkit/WebView$QuickSelectWV;->access$16000(Landroid/webkit/WebView$QuickSelectWV;)V

    .line 13371
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;->this$2:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    iget-object v2, v2, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v2, v2, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;->this$2:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    iget-object v3, v3, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v3, v3, Landroid/webkit/WebView$QuickSelectWV;->mSelectRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;->this$2:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    iget-object v4, v4, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v4, v4, Landroid/webkit/WebView$QuickSelectWV;->mSelectRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;->this$2:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    iget-object v5, v5, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v5, v5, Landroid/webkit/WebView$QuickSelectWV;->mSelectRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;->this$2:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectWV;->mSelectRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/webkit/WebView;->postInvalidate(IIII)V

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 13378
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 13379
    return-void
.end method
