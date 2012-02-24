.class Landroid/webkit/EditableWebView$EditableQuickActions$9;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogSettings(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/EditableWebView$EditableQuickActions;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V
    .locals 0
    .parameter

    .prologue
    .line 2116
    iput-object p1, p0, Landroid/webkit/EditableWebView$EditableQuickActions$9;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2119
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions$9;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-boolean v3, v2, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontUnderline:Z

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions$9;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v2, v2, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getUnderlineState()I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    :goto_0
    if-eq v3, v2, :cond_0

    .line 2120
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions$9;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v2, v2, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->toggleUnderline()V

    .line 2121
    :cond_0
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions$9;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-boolean v3, v2, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontBold:Z

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions$9;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v2, v2, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getBoldState()I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v1

    :goto_1
    if-eq v3, v2, :cond_1

    .line 2122
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions$9;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v2, v2, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->toggleBold()V

    .line 2123
    :cond_1
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions$9;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-boolean v2, v2, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontItalic:Z

    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions$9;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v3, v3, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v3}, Landroid/webkit/EditableWebView;->getItalicState()I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    if-eq v2, v0, :cond_3

    .line 2124
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$9;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->toggleItalic()V

    .line 2127
    :cond_3
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$9;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iput-boolean v1, v0, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 2128
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$9;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->getSelectionMethod()Landroid/webkit/WebViewSelectionMethod;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v0, v2}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 2129
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$9;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    .line 2130
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions$9;->this$1:Landroid/webkit/EditableWebView$EditableQuickActions;

    iget-object v0, v0, Landroid/webkit/EditableWebView$EditableQuickActions;->dialog_font_style_settings:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 2131
    return-void

    :cond_4
    move v2, v0

    .line 2119
    goto :goto_0

    :cond_5
    move v2, v0

    .line 2121
    goto :goto_1
.end method
