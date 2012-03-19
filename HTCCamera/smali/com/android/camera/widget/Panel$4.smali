.class Lcom/android/camera/widget/Panel$4;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 490
    iput-object p1, p0, Lcom/android/camera/widget/Panel$4;->this$0:Lcom/android/camera/widget/Panel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/camera/widget/Panel$4;->this$0:Lcom/android/camera/widget/Panel;

    #calls: Lcom/android/camera/widget/Panel;->postProcess()V
    invoke-static {v0}, Lcom/android/camera/widget/Panel;->access$1500(Lcom/android/camera/widget/Panel;)V

    .line 500
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 502
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/camera/widget/Panel$4;->this$0:Lcom/android/camera/widget/Panel;

    sget-object v1, Lcom/android/camera/widget/Panel$State;->ANIMATING:Lcom/android/camera/widget/Panel$State;

    #setter for: Lcom/android/camera/widget/Panel;->mState:Lcom/android/camera/widget/Panel$State;
    invoke-static {v0, v1}, Lcom/android/camera/widget/Panel;->access$002(Lcom/android/camera/widget/Panel;Lcom/android/camera/widget/Panel$State;)Lcom/android/camera/widget/Panel$State;

    .line 505
    return-void
.end method
