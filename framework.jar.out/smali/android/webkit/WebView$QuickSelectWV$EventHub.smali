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


# instance fields
.field final synthetic this$1:Landroid/webkit/WebView$QuickSelectWV;


# direct methods
.method constructor <init>(Landroid/webkit/WebView$QuickSelectWV;)V
    .locals 0
    .parameter

    .prologue
    .line 13587
    iput-object p1, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 13589
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV$EventHub;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView$QuickSelectWV;->handleSelectMessage(Landroid/os/Message;)V

    .line 13590
    return-void
.end method
