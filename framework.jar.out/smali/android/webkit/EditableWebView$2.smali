.class Landroid/webkit/EditableWebView$2;
.super Landroid/os/Handler;
.source "EditableWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/EditableWebView;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 735
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 737
    :sswitch_0
    iget-object v4, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v4}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v4, v5, :cond_0

    .line 738
    iget-object v4, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v4}, Landroid/webkit/WebView$QuickSelectAbs;->dismissAnchor()V

    .line 739
    iget-object v4, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v5, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    goto :goto_0

    .line 743
    :sswitch_1
    iget-object v4, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->captureMessages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    .line 746
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 747
    :try_start_0
    iget-object v4, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v4, Landroid/webkit/EditableWebView;->captureMessages:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 748
    .local v2, m:Landroid/os/Message;
    iget-object v8, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Rect;

    iget v5, v2, Landroid/os/Message;->arg1:I

    if-ne v5, v6, :cond_1

    move v5, v6

    :goto_2
    invoke-virtual {v8, v4, v5}, Landroid/webkit/EditableWebView;->getRegionCapture(Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 749
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v5, v7

    .line 748
    goto :goto_2

    .line 752
    .end local v2           #m:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 753
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v4, "webview"

    const-string v5, "ERROR!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 775
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v1           #i:I
    .end local v3           #size:I
    :sswitch_2
    iget-object v4, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v4, v7}, Landroid/webkit/EditableWebView;->updateContentFromMessage(I)V

    goto :goto_0

    .line 779
    :sswitch_3
    iget-object v4, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mSingleTapQuickActions:Landroid/webkit/EditableWebView$SingleTapQuickActions;
    invoke-static {v4}, Landroid/webkit/EditableWebView;->access$200(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$SingleTapQuickActions;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 780
    iget-object v4, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mSingleTapQuickActions:Landroid/webkit/EditableWebView$SingleTapQuickActions;
    invoke-static {v4}, Landroid/webkit/EditableWebView;->access$200(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$SingleTapQuickActions;

    move-result-object v4

    iput-boolean v6, v4, Landroid/webkit/EditableWebView$SingleTapQuickActions;->checkTimeout:Z

    .line 781
    iget-object v4, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v4}, Landroid/webkit/EditableWebView;->showSingleTapQuickActions()V

    .line 782
    iget-object v4, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/webkit/EditableWebView;->access$300(Landroid/webkit/EditableWebView;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x66

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 788
    :sswitch_4
    iget-object v4, p0, Landroid/webkit/EditableWebView$2;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v4}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    goto/16 :goto_0

    .line 735
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
    .end sparse-switch
.end method
