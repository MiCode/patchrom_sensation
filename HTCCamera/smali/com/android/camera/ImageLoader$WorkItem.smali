.class Lcom/android/camera/ImageLoader$WorkItem;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WorkItem"
.end annotation


# instance fields
.field mImage:Lcom/android/camera/ImageManager$IImage;

.field mOnLoadedRunnable:Lcom/android/camera/ImageLoader$LoadedCallback;

.field mPostBack:Z

.field mTag:I

.field mTargetX:I

.field mTargetY:I

.field final synthetic this$0:Lcom/android/camera/ImageLoader;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageLoader;Lcom/android/camera/ImageManager$IImage;ILcom/android/camera/ImageLoader$LoadedCallback;Z)V
    .locals 0
    .parameter
    .parameter "image"
    .parameter "tag"
    .parameter "onLoadedRunnable"
    .parameter "postBack"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/camera/ImageLoader$WorkItem;->this$0:Lcom/android/camera/ImageLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p2, p0, Lcom/android/camera/ImageLoader$WorkItem;->mImage:Lcom/android/camera/ImageManager$IImage;

    .line 150
    iput p3, p0, Lcom/android/camera/ImageLoader$WorkItem;->mTag:I

    .line 151
    iput-object p4, p0, Lcom/android/camera/ImageLoader$WorkItem;->mOnLoadedRunnable:Lcom/android/camera/ImageLoader$LoadedCallback;

    .line 152
    iput-boolean p5, p0, Lcom/android/camera/ImageLoader$WorkItem;->mPostBack:Z

    .line 153
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "other"

    .prologue
    .line 156
    move-object v0, p1

    check-cast v0, Lcom/android/camera/ImageLoader$WorkItem;

    .line 157
    .local v0, otherWorkItem:Lcom/android/camera/ImageLoader$WorkItem;
    iget-object v1, v0, Lcom/android/camera/ImageLoader$WorkItem;->mImage:Lcom/android/camera/ImageManager$IImage;

    iget-object v2, p0, Lcom/android/camera/ImageLoader$WorkItem;->mImage:Lcom/android/camera/ImageManager$IImage;

    if-eq v1, v2, :cond_0

    .line 158
    const/4 v1, 0x0

    .line 160
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/camera/ImageLoader$WorkItem;->mImage:Lcom/android/camera/ImageManager$IImage;

    invoke-interface {v0}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method
