.class public Lcom/htc/music/util/SourceItem;
.super Ljava/lang/Object;
.source "SourceItem.java"


# instance fields
.field public mAlbumId:I

.field public mIconBitmap:Landroid/graphics/Bitmap;

.field public mIconRes:I

.field public final mLaunchIntent:Landroid/content/Intent;

.field public mSourceName:Ljava/lang/String;

.field public final mSourceTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .parameter "tag"
    .parameter "launchIntent"

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v1, p0, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/util/SourceItem;->mIconRes:I

    .line 13
    iput-object v1, p0, Lcom/htc/music/util/SourceItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/SourceItem;->mAlbumId:I

    .line 18
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "tag and launchIntent can\'t be NULL!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_1
    iput-object p1, p0, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    .line 24
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    return-object v0
.end method
