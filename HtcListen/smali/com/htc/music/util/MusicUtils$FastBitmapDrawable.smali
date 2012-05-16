.class Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FastBitmapDrawable"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1866
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 1867
    iput-object p1, p0, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 1868
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 1873
    iget-object v0, p0, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1875
    iget-object v0, p0, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1876
    iget-object v0, p0, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1879
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 1883
    const/4 v0, -0x1

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1896
    iget-object v0, p0, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1897
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 1899
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 1888
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 1892
    return-void
.end method
