.class Landroid/webkit/WebView$QuickSelectWV$EventHub;
.super Landroid/os/Handler;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView$QuickSelectWV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;
    }
.end annotation


# static fields
.field static final AUTO_EXTEND_TO_WORD:I = 0x13e1da

.field static final END_CJKS_SELECT:I = 0x13e1d8

.field static final RESUME_SELECTION:I = 0x13e1db

.field static final SELECT_CJKS_WORD:I = 0x13e1d9

.field static final SHOW_QUICKACTION:I = 0x13e1dc


# instance fields
.field queryWorker:Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;

.field final synthetic this$1:Landroid/webkit/WebView$QuickSelectWV;


# direct methods
.method constructor <init>(Landroid/webkit/WebView$QuickSelectWV;)V
    .locals 1
    .parameter

    .prologue
    .line 13140
    iput-object p1, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 13147
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->queryWorker:Landroid/webkit/WebView$QuickSelectWV$EventHub$QueryWorker;

    .line 13253
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .parameter "msg"

    .prologue
    .line 13151
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_0

    .line 13251
    :cond_0
    :goto_0
    return-void

    .line 13153
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v14, v14, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v14, v14, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    sget-object v14, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    goto :goto_0

    .line 13165
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v14, v14, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v14, v14, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    sget-object v4, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    .line 13166
    .local v4, detector:Lcom/htc/textselection/FetchSuggestionFromIME;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v14, v14, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v14}, Landroid/webkit/WebView;->access$16000(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    .line 13167
    invoke-virtual {v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 13173
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/webkit/SelectionUnitInfo;

    .line 13174
    .local v13, targetInfo:Landroid/webkit/SelectionUnitInfo;
    iget v9, v13, Landroid/webkit/SelectionUnitInfo;->node:I

    .line 13175
    .local v9, pnode:I
    iget-object v14, v13, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    iget v15, v13, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    const-string v16, "1"

    move-object/from16 v0, v16

    invoke-virtual {v4, v14, v15, v0}, Lcom/htc/textselection/FetchSuggestionFromIME;->matchWord(Ljava/lang/String;ILjava/lang/String;)[I

    move-result-object v10

    .line 13181
    .local v10, ret:[I
    const/4 v14, 0x0

    aget v14, v10, v14

    const/4 v15, 0x1

    aget v15, v10, v15

    if-eq v14, v15, :cond_0

    .line 13184
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 13185
    .local v3, cursor2:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v14, v14, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v14, v14, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    const/4 v15, 0x1

    aget v15, v10, v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v9, v15, v3}, Landroid/webkit/HTCWebCore;->nativeGetCharRect(IILandroid/graphics/Rect;)Z

    .line 13186
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 13187
    .local v2, cursor1:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v14, v14, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v14, v14, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    const/4 v15, 0x0

    aget v15, v10, v15

    invoke-virtual {v14, v9, v15, v2}, Landroid/webkit/HTCWebCore;->nativeGetCharRect(IILandroid/graphics/Rect;)Z

    .line 13189
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v15

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v16

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    invoke-virtual/range {v14 .. v18}, Landroid/webkit/WebView$QuickSelectWV;->makeSelect(IIII)Z

    .line 13191
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v14, v14, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v15, v15, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebView;->nativeGetSelectionStart(Landroid/graphics/Rect;)V
    invoke-static {v14, v15}, Landroid/webkit/WebView;->access$14600(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    .line 13192
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v14, v14, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v15, v15, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->nativeGetSelectionEnd(Landroid/graphics/Rect;)V

    .line 13194
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    #calls: Landroid/webkit/WebView$QuickSelectWV;->getUIdataFromWebcore()V
    invoke-static {v14}, Landroid/webkit/WebView$QuickSelectWV;->access$16100(Landroid/webkit/WebView$QuickSelectWV;)V

    .line 13195
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v14, v14, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v15, v15, Landroid/webkit/WebView$QuickSelectWV;->mSelectRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->mSelectRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->mSelectRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->mSelectRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    #calls: Landroid/webkit/WebView;->viewInvalidate(IIII)V
    invoke-static/range {v14 .. v18}, Landroid/webkit/WebView;->access$8000(Landroid/webkit/WebView;IIII)V

    goto/16 :goto_0

    .line 13201
    .end local v2           #cursor1:Landroid/graphics/Rect;
    .end local v3           #cursor2:Landroid/graphics/Rect;
    .end local v4           #detector:Lcom/htc/textselection/FetchSuggestionFromIME;
    .end local v9           #pnode:I
    .end local v10           #ret:[I
    .end local v13           #targetInfo:Landroid/webkit/SelectionUnitInfo;
    :pswitch_2
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 13202
    .local v11, src:I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    .line 13203
    .local v12, target:I
    if-le v12, v11, :cond_2

    const/4 v6, 0x1

    .line 13205
    .local v6, extendToRight:Z
    :goto_1
    if-eqz v6, :cond_3

    sub-int v14, v12, v11

    :goto_2
    int-to-float v14, v14

    const v15, 0x3ea8f5c3

    mul-float/2addr v14, v15

    float-to-int v7, v14

    .line 13206
    .local v7, inc:I
    const/4 v14, 0x2

    if-ge v7, v14, :cond_1

    .line 13207
    const/4 v7, 0x2

    .line 13209
    :cond_1
    if-eqz v6, :cond_4

    add-int v14, v11, v7

    invoke-static {v14, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 13211
    :goto_3
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 13212
    .local v5, extend:Landroid/graphics/Rect;
    if-ne v11, v12, :cond_5

    .line 13213
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v15, v15, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->centerY()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    invoke-virtual/range {v14 .. v18}, Landroid/webkit/WebView$QuickSelectWV;->makeSelect(IIII)Z

    .line 13214
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v14, v14, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v15, v15, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebView;->nativeGetSelectionStart(Landroid/graphics/Rect;)V
    invoke-static {v14, v15}, Landroid/webkit/WebView;->access$14600(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    .line 13215
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v14, v14, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v15, v15, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->nativeGetSelectionEnd(Landroid/graphics/Rect;)V

    .line 13216
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    #calls: Landroid/webkit/WebView$QuickSelectWV;->getUIdataFromWebcore()V
    invoke-static {v14}, Landroid/webkit/WebView$QuickSelectWV;->access$16100(Landroid/webkit/WebView$QuickSelectWV;)V

    .line 13217
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v14, v14, Landroid/webkit/WebView$QuickSelectWV;->mSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13219
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v15, v15, Landroid/webkit/WebView$QuickSelectWV;->mSelectRect:Landroid/graphics/Rect;

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/webkit/WebView$QuickSelectWV;->showQuickActions(Landroid/graphics/Rect;I)V

    .line 13237
    :goto_4
    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-virtual {v5, v14, v15}, Landroid/graphics/Rect;->inset(II)V

    .line 13238
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v14, v14, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget v15, v5, Landroid/graphics/Rect;->left:I

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    #calls: Landroid/webkit/WebView;->viewInvalidate(IIII)V
    invoke-static/range {v14 .. v18}, Landroid/webkit/WebView;->access$8000(Landroid/webkit/WebView;IIII)V

    goto/16 :goto_0

    .line 13203
    .end local v5           #extend:Landroid/graphics/Rect;
    .end local v6           #extendToRight:Z
    .end local v7           #inc:I
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 13205
    .restart local v6       #extendToRight:Z
    :cond_3
    sub-int v14, v11, v12

    goto/16 :goto_2

    .line 13209
    .restart local v7       #inc:I
    :cond_4
    sub-int v14, v11, v7

    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto/16 :goto_3

    .line 13221
    .restart local v5       #extend:Landroid/graphics/Rect;
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v8

    .line 13222
    .local v8, nextExtend:Landroid/os/Message;
    iput v11, v8, Landroid/os/Message;->arg1:I

    .line 13224
    const-wide/16 v14, 0x19

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14, v15}, Landroid/webkit/WebView$QuickSelectWV$EventHub;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 13227
    if-eqz v6, :cond_6

    .line 13228
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v14, v14, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    iput v11, v14, Landroid/graphics/Rect;->right:I

    .line 13229
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v14, v14, Landroid/webkit/WebView$QuickSelectWV;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v5, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13234
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v14, v14, Landroid/webkit/WebView$QuickSelectWV;->tmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v14, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 13235
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v14, v14, Landroid/webkit/WebView$QuickSelectWV;->mSelectPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v15, v15, Landroid/webkit/WebView$QuickSelectWV;->tmpRectF:Landroid/graphics/RectF;

    sget-object v16, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_4

    .line 13231
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v14, v14, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    iput v11, v14, Landroid/graphics/Rect;->left:I

    .line 13232
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v14, v14, Landroid/webkit/WebView$QuickSelectWV;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v5, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_5

    .line 13243
    .end local v5           #extend:Landroid/graphics/Rect;
    .end local v6           #extendToRight:Z
    .end local v7           #inc:I
    .end local v8           #nextExtend:Landroid/os/Message;
    .end local v11           #src:I
    .end local v12           #target:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    invoke-virtual {v14}, Landroid/webkit/WebView$QuickSelectWV;->resumeSelection()V

    goto/16 :goto_0

    .line 13246
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    .line 13247
    .local v1, anchor:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    const/4 v15, 0x0

    invoke-virtual {v14, v1, v15}, Landroid/webkit/WebView$QuickSelectWV;->showQuickActions(Landroid/graphics/Rect;I)V

    goto/16 :goto_0

    .line 13151
    :pswitch_data_0
    .packed-switch 0x13e1d8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
