.class Landroid/webkit/WebView$11;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->handleTouchEventEditable(Landroid/view/MotionEvent;III)Z
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
    .line 11513
    iput-object p1, p0, Landroid/webkit/WebView$11;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 11515
    iget-object v0, p0, Landroid/webkit/WebView$11;->this$0:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebView$11;->this$0:Landroid/webkit/WebView;

    const/4 v2, 0x0

    #setter for: Landroid/webkit/WebView;->mTouchHighlightY:I
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$1702(Landroid/webkit/WebView;I)I

    move-result v1

    #setter for: Landroid/webkit/WebView;->mTouchHighlightX:I
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$1602(Landroid/webkit/WebView;I)I

    .line 11516
    iget-object v0, p0, Landroid/webkit/WebView$11;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 11517
    return-void
.end method
