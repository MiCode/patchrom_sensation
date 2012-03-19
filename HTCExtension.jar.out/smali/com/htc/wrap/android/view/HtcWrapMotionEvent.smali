.class public Lcom/htc/wrap/android/view/HtcWrapMotionEvent;
.super Ljava/lang/Object;
.source "HtcWrapMotionEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPenEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, pointerIndex:I
    const/4 v1, 0x2

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 78
    const/4 v1, 0x1

    .line 80
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
