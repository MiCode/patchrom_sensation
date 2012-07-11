.class Landroid/webkit/WebView$13;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 14820
    iput-object p1, p0, Landroid/webkit/WebView$13;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 14822
    sget-boolean v0, Landroid/webkit/WebView;->gbIsAnimationZoomOut:Z

    if-ne v0, v3, :cond_0

    .line 14823
    iget-object v0, p0, Landroid/webkit/WebView$13;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->EndAnimationZoomOut()V

    .line 14824
    sget-object v0, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    if-eqz v0, :cond_0

    .line 14825
    sget-object v0, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    iget-object v1, p0, Landroid/webkit/WebView$13;->this$0:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebView$13;->this$0:Landroid/webkit/WebView;

    iget-boolean v2, v2, Landroid/webkit/WebView;->mbNeedCallBack:Z

    invoke-interface {v0, v1, v2}, Landroid/webkit/WebView$OnWebViewTabEffectListener;->onMultiTouchBouncingMinScale(Landroid/webkit/WebView;Z)V

    .line 14826
    iget-object v0, p0, Landroid/webkit/WebView$13;->this$0:Landroid/webkit/WebView;

    iput-boolean v3, v0, Landroid/webkit/WebView;->mbIsAnimationZoomOutFinish:Z

    .line 14829
    :cond_0
    return-void
.end method
