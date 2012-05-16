.class public Lcom/htc/music/util/MBitmap;
.super Ljava/lang/Object;
.source "MBitmap.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .parameter "bitmap"
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/htc/music/util/MBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 13
    iput-object v0, p0, Lcom/htc/music/util/MBitmap;->mPath:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/htc/music/util/MBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 17
    iput-object p2, p0, Lcom/htc/music/util/MBitmap;->mPath:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/music/util/MBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/music/util/MBitmap;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public isRecycled()Z
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/music/util/MBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x1

    .line 24
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/MBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    goto :goto_0
.end method
