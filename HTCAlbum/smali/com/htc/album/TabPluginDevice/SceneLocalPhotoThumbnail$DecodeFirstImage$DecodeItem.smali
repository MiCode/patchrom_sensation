.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage$DecodeItem;
.super Ljava/lang/Object;
.source "SceneLocalPhotoThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DecodeItem"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field mediaData:Lcom/htc/sunny2/IMediaData;

.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;Landroid/content/Context;Lcom/htc/sunny2/IMediaData;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "mediaData"

    .prologue
    .line 1298
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage$DecodeItem;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1299
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage$DecodeItem;->context:Landroid/content/Context;

    .line 1300
    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage$DecodeItem;->mediaData:Lcom/htc/sunny2/IMediaData;

    .line 1301
    return-void
.end method
