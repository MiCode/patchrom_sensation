.class public Landroid/widget/TextView$InputMethodState;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputMethodState"
.end annotation


# instance fields
.field mBatchEditNesting:I

.field mChangedDelta:I

.field mChangedEnd:I

.field mChangedStart:I

.field mContentChanged:Z

.field mCursorChanged:Z

.field public mCursorRectInWindow:Landroid/graphics/Rect;

.field mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

.field mOnScreenOffset:[I

.field mSelectionModeChanged:Z

.field final mTmpExtracted:Landroid/view/inputmethod/ExtractedText;

.field mTmpOffset:[F

.field mTmpRectF:Landroid/graphics/RectF;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 371
    iput-object p1, p0, Landroid/widget/TextView$InputMethodState;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    .line 373
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    .line 374
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    .line 375
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/widget/TextView$InputMethodState;->mOnScreenOffset:[I

    .line 377
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$InputMethodState;->mTmpExtracted:Landroid/view/inputmethod/ExtractedText;

    return-void
.end method
