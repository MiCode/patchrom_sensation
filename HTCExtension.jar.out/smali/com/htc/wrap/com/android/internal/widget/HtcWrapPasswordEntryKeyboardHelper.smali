.class public Lcom/htc/wrap/com/android/internal/widget/HtcWrapPasswordEntryKeyboardHelper;
.super Lcom/android/internal/widget/PasswordEntryKeyboardHelper;
.source "HtcWrapPasswordEntryKeyboardHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V
    .locals 0
    .parameter "context"
    .parameter "keyboardView"
    .parameter "targetView"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    .line 20
    return-void
.end method


# virtual methods
.method public setKeyboardMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 16
    return-void
.end method
