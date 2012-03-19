.class Lcom/android/camera/widget/Panel$2;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/Panel;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/Panel;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/camera/widget/Panel$2;->this$0:Lcom/android/camera/widget/Panel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/camera/widget/Panel$2;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mBringToFront:Z
    invoke-static {v0}, Lcom/android/camera/widget/Panel;->access$100(Lcom/android/camera/widget/Panel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/camera/widget/Panel$2;->this$0:Lcom/android/camera/widget/Panel;

    invoke-virtual {v0}, Lcom/android/camera/widget/Panel;->bringToFront()V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/Panel$2;->this$0:Lcom/android/camera/widget/Panel;

    invoke-virtual {v0}, Lcom/android/camera/widget/Panel;->initChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/android/camera/widget/Panel$2;->this$0:Lcom/android/camera/widget/Panel;

    iget-object v1, p0, Lcom/android/camera/widget/Panel$2;->this$0:Lcom/android/camera/widget/Panel;

    iget-object v1, v1, Lcom/android/camera/widget/Panel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/Panel;->post(Ljava/lang/Runnable;)Z

    .line 386
    :cond_1
    return-void
.end method
