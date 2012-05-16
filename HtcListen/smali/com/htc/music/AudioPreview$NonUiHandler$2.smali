.class Lcom/htc/music/AudioPreview$NonUiHandler$2;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/AudioPreview$NonUiHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/AudioPreview$NonUiHandler;


# direct methods
.method constructor <init>(Lcom/htc/music/AudioPreview$NonUiHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1554
    iput-object p1, p0, Lcom/htc/music/AudioPreview$NonUiHandler$2;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1556
    iget-object v1, p0, Lcom/htc/music/AudioPreview$NonUiHandler$2;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v1, v1, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/music/AudioPreview;->access$2600(Lcom/htc/music/AudioPreview;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/AudioPreview$NonUiHandler$2;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v1, v1, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/music/AudioPreview;->access$2600(Lcom/htc/music/AudioPreview;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1557
    iget-object v1, p0, Lcom/htc/music/AudioPreview$NonUiHandler$2;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v1, v1, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mAlbumArt:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/htc/music/AudioPreview;->access$2500(Lcom/htc/music/AudioPreview;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/AudioPreview$NonUiHandler$2;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v2, v2, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/htc/music/AudioPreview;->access$2600(Lcom/htc/music/AudioPreview;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1558
    iget-object v1, p0, Lcom/htc/music/AudioPreview$NonUiHandler$2;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v1, v1, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    const v2, 0x7f08002e

    invoke-virtual {v1, v2}, Lcom/htc/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1559
    .local v0, albumReflection:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/htc/music/AudioPreview$NonUiHandler$2;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v1, v1, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mAlbumArtReflectionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/music/AudioPreview;->access$2800(Lcom/htc/music/AudioPreview;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/AudioPreview$NonUiHandler$2;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v1, v1, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mAlbumArtReflectionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/music/AudioPreview;->access$2800(Lcom/htc/music/AudioPreview;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1560
    iget-object v1, p0, Lcom/htc/music/AudioPreview$NonUiHandler$2;->this$1:Lcom/htc/music/AudioPreview$NonUiHandler;

    iget-object v1, v1, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mAlbumArtReflectionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/music/AudioPreview;->access$2800(Lcom/htc/music/AudioPreview;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1562
    .end local v0           #albumReflection:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
