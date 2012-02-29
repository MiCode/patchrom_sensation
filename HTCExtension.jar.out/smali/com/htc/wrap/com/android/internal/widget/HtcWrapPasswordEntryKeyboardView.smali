.class public Lcom/htc/wrap/com/android/internal/widget/HtcWrapPasswordEntryKeyboardView;
.super Lcom/android/internal/widget/PasswordEntryKeyboardView;
.source "HtcWrapPasswordEntryKeyboardView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/PasswordEntryKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method public requestFocusView()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 19
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    .line 23
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "ViewType"

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 15
    return-void
.end method
