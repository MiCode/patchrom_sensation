.class Lcom/android/htcdialer/Dialer$28;
.super Ljava/lang/Object;
.source "Dialer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/Dialer;->enlargeTouchArea(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/Dialer;

.field final synthetic val$delegate:Landroid/view/View;

.field final synthetic val$gap:I

.field final synthetic val$parent:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;Landroid/view/View;ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7876
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$28;->this$0:Lcom/android/htcdialer/Dialer;

    iput-object p2, p0, Lcom/android/htcdialer/Dialer$28;->val$delegate:Landroid/view/View;

    iput p3, p0, Lcom/android/htcdialer/Dialer$28;->val$gap:I

    iput-object p4, p0, Lcom/android/htcdialer/Dialer$28;->val$parent:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 7880
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7881
    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$28;->val$delegate:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 7882
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/htcdialer/Dialer$28;->val$gap:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 7883
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/htcdialer/Dialer$28;->val$gap:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 7884
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/htcdialer/Dialer$28;->val$gap:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 7885
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/htcdialer/Dialer$28;->val$gap:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 7886
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$28;->val$parent:Landroid/view/View;

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lcom/android/htcdialer/Dialer$28;->val$delegate:Landroid/view/View;

    invoke-direct {v2, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 7887
    return-void
.end method
