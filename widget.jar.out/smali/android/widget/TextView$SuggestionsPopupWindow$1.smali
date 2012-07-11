.class Landroid/widget/TextView$SuggestionsPopupWindow$1;
.super Landroid/content/BroadcastReceiver;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$SuggestionsPopupWindow;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$SuggestionsPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/TextView$SuggestionsPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 10758
    iput-object p1, p0, Landroid/widget/TextView$SuggestionsPopupWindow$1;->this$1:Landroid/widget/TextView$SuggestionsPopupWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 10761
    return-void
.end method
