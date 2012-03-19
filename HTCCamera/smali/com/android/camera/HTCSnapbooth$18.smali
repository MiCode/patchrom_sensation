.class Lcom/android/camera/HTCSnapbooth$18;
.super Ljava/lang/Object;
.source "HTCSnapbooth.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCSnapbooth;->closeReviewScreen(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCSnapbooth;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCSnapbooth;)V
    .locals 0
    .parameter

    .prologue
    .line 1995
    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth$18;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/4 v1, 0x0

    .line 2003
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$18;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mReviewImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$4000(Lcom/android/camera/HTCSnapbooth;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2004
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$18;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mReviewImage:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$4100(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2006
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$18;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mReviewImage:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$4100(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2007
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$18;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mReviewImage:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/android/camera/HTCSnapbooth;->access$4102(Lcom/android/camera/HTCSnapbooth;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2011
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$18;->this$0:Lcom/android/camera/HTCSnapbooth;

    #calls: Lcom/android/camera/HTCSnapbooth;->unfreezeUIRotation()V
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$800(Lcom/android/camera/HTCSnapbooth;)V

    .line 2012
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1999
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1997
    return-void
.end method
