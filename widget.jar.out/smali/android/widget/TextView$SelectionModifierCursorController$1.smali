.class Landroid/widget/TextView$SelectionModifierCursorController$1;
.super Landroid/widget/TextView$SelectionEndHandleView;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$SelectionModifierCursorController;->initHandles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$SelectionModifierCursorController;


# direct methods
.method constructor <init>(Landroid/widget/TextView$SelectionModifierCursorController;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12583
    iput-object p1, p0, Landroid/widget/TextView$SelectionModifierCursorController$1;->this$1:Landroid/widget/TextView$SelectionModifierCursorController;

    iget-object v0, p1, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/TextView$SelectionEndHandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 12586
    invoke-super {p0, p1}, Landroid/widget/TextView$SelectionEndHandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 12587
    .local v0, b:Z
    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController$1;->this$1:Landroid/widget/TextView$SelectionModifierCursorController;

    #getter for: Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;
    invoke-static {v1}, Landroid/widget/TextView$SelectionModifierCursorController;->access$11000(Landroid/widget/TextView$SelectionModifierCursorController;)Landroid/widget/TextView$SelectionStartHandleView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartHandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController$1;->this$1:Landroid/widget/TextView$SelectionModifierCursorController;

    #getter for: Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;
    invoke-static {v1}, Landroid/widget/TextView$SelectionModifierCursorController;->access$11100(Landroid/widget/TextView$SelectionModifierCursorController;)Landroid/widget/TextView$SelectionEndHandleView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionEndHandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12588
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController$1;->this$1:Landroid/widget/TextView$SelectionModifierCursorController;

    #getter for: Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;
    invoke-static {v1}, Landroid/widget/TextView$SelectionModifierCursorController;->access$11000(Landroid/widget/TextView$SelectionModifierCursorController;)Landroid/widget/TextView$SelectionStartHandleView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView$SelectionStartHandleView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12590
    :cond_0
    return v0
.end method
