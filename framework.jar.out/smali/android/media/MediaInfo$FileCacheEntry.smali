.class Landroid/media/MediaInfo$FileCacheEntry;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileCacheEntry"
.end annotation


# instance fields
.field mLastModified:J

.field mLastModifiedChanged:Z

.field mPath:Ljava/lang/String;

.field mRowId:J

.field mSeenInFileSystem:Z

.field mTableUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;JLjava/lang/String;J)V
    .locals 1
    .parameter "tableUri"
    .parameter "rowId"
    .parameter "path"
    .parameter "lastModified"

    .prologue
    const/4 v0, 0x0

    .line 256
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Landroid/media/MediaInfo$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    .line 258
    iput-wide p2, p0, Landroid/media/MediaInfo$FileCacheEntry;->mRowId:J

    .line 259
    iput-object p4, p0, Landroid/media/MediaInfo$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 260
    iput-wide p5, p0, Landroid/media/MediaInfo$FileCacheEntry;->mLastModified:J

    .line 261
    iput-boolean v0, p0, Landroid/media/MediaInfo$FileCacheEntry;->mSeenInFileSystem:Z

    .line 262
    iput-boolean v0, p0, Landroid/media/MediaInfo$FileCacheEntry;->mLastModifiedChanged:Z

    .line 263
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Landroid/media/MediaInfo$FileCacheEntry;->mPath:Ljava/lang/String;

    return-object v0
.end method
