.class Lcom/android/camera/HTCSnapbooth$17;
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

.field final synthetic val$aniThumbImageView:Landroid/widget/ImageView;

.field final synthetic val$updateThumbnail:Z


# direct methods
.method constructor <init>(Lcom/android/camera/HTCSnapbooth;ZLandroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1919
    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth$17;->this$0:Lcom/android/camera/HTCSnapbooth;

    iput-boolean p2, p0, Lcom/android/camera/HTCSnapbooth$17;->val$updateThumbnail:Z

    iput-object p3, p0, Lcom/android/camera/HTCSnapbooth$17;->val$aniThumbImageView:Landroid/widget/ImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 1928
    iget-boolean v1, p0, Lcom/android/camera/HTCSnapbooth$17;->val$updateThumbnail:Z

    if-eqz v1, :cond_1

    .line 1930
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$17;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$2000(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1931
    .local v0, oldBitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$17;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeThumbnail:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$2100(Lcom/android/camera/HTCSnapbooth;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth$17;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/camera/HTCSnapbooth;->access$3900(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1932
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$17;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitThumbnail:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$2200(Lcom/android/camera/HTCSnapbooth;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth$17;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/camera/HTCSnapbooth;->access$3900(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1933
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$17;->this$0:Lcom/android/camera/HTCSnapbooth;

    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth$17;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/camera/HTCSnapbooth;->access$3900(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/android/camera/HTCSnapbooth;->access$2002(Lcom/android/camera/HTCSnapbooth;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1934
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$17;->this$0:Lcom/android/camera/HTCSnapbooth;

    #setter for: Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v1, v3}, Lcom/android/camera/HTCSnapbooth;->access$3902(Lcom/android/camera/HTCSnapbooth;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1935
    if-eqz v0, :cond_0

    .line 1936
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1944
    .end local v0           #oldBitmap:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 1940
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$17;->val$aniThumbImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1941
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$17;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$3900(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1942
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$17;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$3900(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1924
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1921
    return-void
.end method
