.class public Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoFullscreen.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FullscreenZoomListener"
.end annotation


# instance fields
.field private mHeight:I

.field private mIndex:I

.field private mIsAligning:Z

.field private mIsFlinging:Z

.field private mIsPanning:Z

.field private mIsZooming:Z

.field private mItemIndex:I

.field private mLeft:I

.field private mTop:I

.field private mWidth:I

.field private mZoomFactor:F

.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;


# direct methods
.method protected constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 665
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsZooming:Z

    .line 668
    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsPanning:Z

    .line 669
    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsAligning:Z

    .line 670
    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsFlinging:Z

    .line 672
    iput v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mItemIndex:I

    .line 673
    iput v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mLeft:I

    .line 674
    iput v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mTop:I

    .line 675
    iput v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mWidth:I

    .line 676
    iput v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mHeight:I

    .line 677
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mZoomFactor:F

    .line 679
    iput v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIndex:I

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 665
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIndex:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 665
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIndex:I

    return p1
.end method


# virtual methods
.method public checkPhotoIntegrity(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 877
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$2200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 878
    .local v0, adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
    if-eqz v0, :cond_0

    .line 880
    const-string v1, "SceneOnlinePhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneOnlinePhotoFullscreen][checkPhotoIntegrity] adapter is null"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    invoke-virtual {v0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onRequestPhotoIntegrity(I)I

    move-result v1

    .line 884
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public onAlignBeginIRT()V
    .locals 2

    .prologue
    .line 807
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsAligning:Z

    .line 810
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onAlignBeginIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->onAnimationBeginIRT()V

    .line 813
    return-void
.end method

.method public onAlignEndIRT()V
    .locals 2

    .prologue
    .line 816
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsAligning:Z

    .line 819
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onAlignEndIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->onAnimationEndIRT()V

    .line 822
    return-void
.end method

.method public onAnimationBeginIRT()V
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$2300(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$2400(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$2500(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$5;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$5;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onAnimationEndIRT()V
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$2600(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$2700(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$2800(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$6;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$6;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onEnterImageIRT(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 690
    const-string v1, "SceneOnlinePhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneOnlinePhotoFullscreen][onEnterImageIRT] + "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    move v0, p1

    .line 693
    .local v0, nIndex:I
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$800(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$900(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$1100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$1;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 704
    const-string v1, "SceneOnlinePhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneOnlinePhotoFullscreen][onEnterImageIRT] - "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFlingBeginIRT()V
    .locals 2

    .prologue
    .line 889
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsFlinging:Z

    .line 892
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onFlingBeginIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->onAnimationBeginIRT()V

    .line 895
    return-void
.end method

.method public onFlingEndIRT()V
    .locals 2

    .prologue
    .line 899
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsFlinging:Z

    .line 902
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onFlingEndIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->onAnimationEndIRT()V

    .line 905
    return-void
.end method

.method public onImageBoundsUpdateIRT(IIIIIF)V
    .locals 2
    .parameter "itemIndex"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "zoomFactor"

    .prologue
    .line 832
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneOnlinePhotoFullscreen][FullscreenZoomListener][onImageBoundsUpdateIRT] + "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    iget-boolean v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOrientationHasChanged:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mItemIndex:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mLeft:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mTop:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mWidth:I

    if-ne v0, p4, :cond_1

    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mHeight:I

    if-ne v0, p5, :cond_1

    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mZoomFactor:F

    cmpl-float v0, v0, p6

    if-nez v0, :cond_1

    .line 835
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneOnlinePhotoFullscreen][FullscreenZoomListener][onImageBoundsUpdateIRT] - returned "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 838
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mOrientationHasChanged:Z

    .line 839
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mItemIndex:I

    .line 840
    iput p2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mLeft:I

    .line 841
    iput p3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mTop:I

    .line 842
    iput p4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mWidth:I

    .line 843
    iput p5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mHeight:I

    .line 844
    iput p6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mZoomFactor:F

    .line 846
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$1500(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$1600(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$2100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$4;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$4;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 872
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneOnlinePhotoFullscreen][FullscreenZoomListener][onImageBoundsUpdateIRT] - "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLeaveImageIRT()V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #calls: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideControlBars()V
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$1200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    .line 717
    return-void
.end method

.method public onPanBeginIRT()V
    .locals 2

    .prologue
    .line 780
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsPanning:Z

    .line 783
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onPanBeginIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->onAnimationBeginIRT()V

    .line 786
    return-void
.end method

.method public onPanEndIRT()V
    .locals 2

    .prologue
    .line 797
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsPanning:Z

    .line 800
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onPanEndIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->onAnimationEndIRT()V

    .line 803
    return-void
.end method

.method public onZoomBeginIRT()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #calls: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->hideControlBars()V
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$1300(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    .line 730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsZooming:Z

    .line 733
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onZoomBeginIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->onAnimationBeginIRT()V

    .line 737
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$2;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$2;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 745
    return-void
.end method

.method public onZoomEndIRT()V
    .locals 2

    .prologue
    .line 756
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->mIsZooming:Z

    .line 759
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "[HtcAlbum][FullscreenZoomListener][onZoomEndIRT]:  "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->onAnimationEndIRT()V

    .line 762
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$3;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener$3;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$FullscreenZoomListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 769
    return-void
.end method
