.class public Landroid/webkit/HtcQuickLookupWebView;
.super Landroid/webkit/WebView;
.source "HtcQuickLookupWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;
    }
.end annotation


# instance fields
.field private mHorizontalOffset:I

.field private mLayoutChangedClient:Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;

.field private mVerticalOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/HtcQuickLookupWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtcQuickLookupWebView;->mLayoutChangedClient:Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;

    .line 39
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/webkit/HtcQuickLookupWebView;->setDrawingCacheBackgroundColor(I)V

    .line 41
    invoke-virtual {p0, v2}, Landroid/webkit/HtcQuickLookupWebView;->setScrollbarFadingEnabled(Z)V

    .line 42
    const/high16 v0, 0x200

    invoke-virtual {p0, v0}, Landroid/webkit/HtcQuickLookupWebView;->setScrollBarStyle(I)V

    .line 43
    invoke-virtual {p0}, Landroid/webkit/HtcQuickLookupWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 44
    invoke-virtual {p0, v1}, Landroid/webkit/HtcQuickLookupWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 48
    iput v1, p0, Landroid/webkit/HtcQuickLookupWebView;->mVerticalOffset:I

    .line 49
    iput v1, p0, Landroid/webkit/HtcQuickLookupWebView;->mHorizontalOffset:I

    .line 50
    return-void
.end method


# virtual methods
.method public emulateShiftHeld()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Landroid/webkit/WebView;->emulateShiftHeld()V

    .line 113
    iget-object v0, p0, Landroid/webkit/HtcQuickLookupWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Landroid/webkit/HtcQuickLookupWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$QuickSelectAbs;->setQuickSelectionButtonFlag(I)V

    .line 115
    :cond_0
    return-void
.end method

.method public getHTCWebCore()Landroid/webkit/HTCWebCore;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/webkit/HtcQuickLookupWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    return-object v0
.end method

.method public getHeaderRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 81
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/webkit/HtcQuickLookupWebView;->getHTCWebCore()Landroid/webkit/HTCWebCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/HTCWebCore;->nativeGetHeaderRect(Landroid/graphics/Rect;)I

    .line 82
    return-object v0
.end method

.method public getTableRect()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 88
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/webkit/HtcQuickLookupWebView;->getHTCWebCore()Landroid/webkit/HTCWebCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/HTCWebCore;->nativeGetGDInputBoxRect(Landroid/graphics/Rect;)I

    .line 89
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 90
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 91
    :cond_0
    return-object v0
.end method

.method protected getTitleHeight()I
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Landroid/webkit/HtcQuickLookupWebView;->mVerticalOffset:I

    invoke-super {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getVisibleTitleHeight()I
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    iget v1, p0, Landroid/webkit/HtcQuickLookupWebView;->mScrollY:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onWebViewLayoutChanged(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 104
    iget-object v0, p0, Landroid/webkit/HtcQuickLookupWebView;->mLayoutChangedClient:Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Landroid/webkit/HtcQuickLookupWebView;->mLayoutChangedClient:Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;

    invoke-interface {v0, p1, p2}, Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;->onWebViewLayoutChanged(II)V

    .line 106
    :cond_0
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 71
    iput p1, p0, Landroid/webkit/HtcQuickLookupWebView;->mHorizontalOffset:I

    .line 72
    return-void
.end method

.method public setTextReflowProp(F)V
    .locals 1
    .parameter "prop"

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/webkit/HtcQuickLookupWebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewCore;->setTextwrapWithProp(F)V

    .line 76
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 67
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/webkit/HtcQuickLookupWebView;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/webkit/HtcQuickLookupWebView;->mVerticalOffset:I

    .line 68
    return-void
.end method

.method public setWebViewLayoutChangedClient(Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;)V
    .locals 0
    .parameter "changedClient"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/webkit/HtcQuickLookupWebView;->mLayoutChangedClient:Landroid/webkit/HtcQuickLookupWebView$WebViewLayoutChangedClient;

    .line 102
    return-void
.end method
