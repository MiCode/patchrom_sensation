.class Lcom/android/camera/ImageManager$SingleImageList;
.super Lcom/android/camera/ImageManager$BaseImageList;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleImageList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ImageManager$SingleImageList$UriImage;
    }
.end annotation


# instance fields
.field final INDEX_ID:I

.field private final SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mSingleImage:Lcom/android/camera/ImageManager$IImage;

.field private mUri:Landroid/net/Uri;

.field private mbShareAndDelete:Z

.field private mbViewSingleImage:Z

.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/ImageManager;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 6
    .parameter
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 3824
    iput-object p1, p0, Lcom/android/camera/ImageManager$SingleImageList;->this$0:Lcom/android/camera/ImageManager;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, v1

    .line 3825
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImageList;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    .line 3595
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

    .line 3596
    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

    const-string v1, "_id"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->INDEX_ID:I

    .line 3826
    iput-object p2, p0, Lcom/android/camera/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 3827
    iput-object p3, p0, Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    .line 3828
    new-instance v0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;-><init>(Lcom/android/camera/ImageManager$SingleImageList;)V

    iput-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mSingleImage:Lcom/android/camera/ImageManager$IImage;

    .line 3829
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILandroid/net/Uri;Z)V
    .locals 7
    .parameter
    .parameter "ctx"
    .parameter "cr"
    .parameter "imageUri"
    .parameter "thumbUri"
    .parameter "sort"
    .parameter "uriAbsoluteFilePath"
    .parameter "bShareAndDelete"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 3833
    iput-object p1, p0, Lcom/android/camera/ImageManager$SingleImageList;->this$0:Lcom/android/camera/ImageManager;

    .line 3834
    if-eqz p8, :cond_1

    move-object v1, p2

    :goto_0
    if-eqz p8, :cond_2

    move-object v3, p4

    :goto_1
    if-eqz p8, :cond_3

    move v4, p6

    :goto_2
    move-object v0, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImageList;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    .line 3595
    new-array v0, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

    .line 3596
    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

    const-string v1, "_id"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->INDEX_ID:I

    .line 3836
    iput-object p3, p0, Lcom/android/camera/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 3837
    if-eqz p8, :cond_4

    .end local p7
    :goto_3
    iput-object p7, p0, Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    .line 3838
    new-instance v0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;-><init>(Lcom/android/camera/ImageManager$SingleImageList;)V

    iput-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mSingleImage:Lcom/android/camera/ImageManager$IImage;

    .line 3840
    if-nez p8, :cond_5

    .line 3855
    :cond_0
    return-void

    .restart local p7
    :cond_1
    move-object v1, v5

    .line 3834
    goto :goto_0

    :cond_2
    move-object v3, p7

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_2

    :cond_4
    move-object p7, p4

    .line 3837
    goto :goto_3

    .line 3843
    .end local p7
    :cond_5
    iput-boolean v6, p0, Lcom/android/camera/ImageManager$SingleImageList;->mbViewSingleImage:Z

    .line 3844
    iput-boolean p8, p0, Lcom/android/camera/ImageManager$SingleImageList;->mbShareAndDelete:Z

    .line 3846
    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3848
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList;->createCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    .line 3849
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 3851
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to create image cursor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3852
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ImageManager$SingleImageList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 3586
    iget-boolean v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mbViewSingleImage:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ImageManager$SingleImageList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 3586
    iget-boolean v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mbShareAndDelete:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3586
    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3586
    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private makeInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 3
    .parameter "uri"

    .prologue
    .line 4040
    const/4 v1, 0x0

    .line 4042
    .local v1, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 4045
    :goto_0
    return-object v2

    .line 4044
    :catch_0
    move-exception v0

    .line 4045
    .local v0, ex:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sortOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3884
    iget v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mSort:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, " ASC"

    .line 3885
    .local v0, ascending:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3884
    .end local v0           #ascending:Ljava/lang/String;
    :cond_0
    const-string v0, " DESC"

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 0

    .prologue
    .line 3921
    return-void
.end method

.method protected createCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 3858
    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList;->SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/camera/ImageManager$SingleImageList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3867
    .local v6, c:Landroid/database/Cursor;
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SingleImageList createCursor c: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3868
    return-object v6
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 3925
    return-void
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3916
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 3929
    iget-boolean v1, p0, Lcom/android/camera/ImageManager$SingleImageList;->mbViewSingleImage:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/ImageManager$SingleImageList;->mbShareAndDelete:Z

    if-eqz v1, :cond_1

    .line 3931
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3932
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 3933
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 3939
    .end local v0           #c:Landroid/database/Cursor;
    :goto_0
    return v1

    .line 3935
    .restart local v0       #c:Landroid/database/Cursor;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3939
    .end local v0           #c:Landroid/database/Cursor;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getImageAt(I)Lcom/android/camera/ImageManager$IImage;
    .locals 1
    .parameter "i"

    .prologue
    .line 3943
    if-nez p1, :cond_0

    .line 3944
    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mSingleImage:Lcom/android/camera/ImageManager$IImage;

    .line 3946
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageForFilePath(Ljava/lang/String;)Lcom/android/camera/ImageManager$IImage;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 3958
    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3959
    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mSingleImage:Lcom/android/camera/ImageManager$IImage;

    .line 3961
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;
    .locals 1
    .parameter "uri"

    .prologue
    .line 3951
    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3952
    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mSingleImage:Lcom/android/camera/ImageManager$IImage;

    .line 3954
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageManager$SingleImageList;->getImageForFilePath(Ljava/lang/String;)Lcom/android/camera/ImageManager$IImage;

    move-result-object v0

    goto :goto_0
.end method

.method public getImageWithId(J)Lcom/android/camera/ImageManager$IImage;
    .locals 1
    .parameter "id"

    .prologue
    .line 3966
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected indexData()I
    .locals 1

    .prologue
    .line 3996
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDateTaken()I
    .locals 1

    .prologue
    .line 3976
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDescription()I
    .locals 1

    .prologue
    .line 3986
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDisplayName()I
    .locals 1

    .prologue
    .line 4031
    const/4 v0, -0x1

    return v0
.end method

.method protected indexId()I
    .locals 1

    .prologue
    .line 3991
    const/4 v0, -0x1

    return v0
.end method

.method protected indexLatitude()I
    .locals 1

    .prologue
    .line 4001
    const/4 v0, -0x1

    return v0
.end method

.method protected indexLongitude()I
    .locals 1

    .prologue
    .line 4006
    const/4 v0, -0x1

    return v0
.end method

.method protected indexMimeType()I
    .locals 1

    .prologue
    .line 3981
    const/4 v0, -0x1

    return v0
.end method

.method protected indexMiniThumbId()I
    .locals 1

    .prologue
    .line 4011
    const/4 v0, -0x1

    return v0
.end method

.method protected indexOrientation()I
    .locals 1

    .prologue
    .line 3971
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPicasaWeb()I
    .locals 1

    .prologue
    .line 4016
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPrivate()I
    .locals 1

    .prologue
    .line 4021
    const/4 v0, -0x1

    return v0
.end method

.method protected indexThumbId()I
    .locals 1

    .prologue
    .line 4036
    const/4 v0, -0x1

    return v0
.end method

.method protected indexTitle()I
    .locals 1

    .prologue
    .line 4026
    const/4 v0, -0x1

    return v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "targetWidthHeight"
    .parameter "uri"
    .parameter "pfdInput"
    .parameter "options"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 4051
    const/4 v0, 0x0

    .line 4054
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez p4, :cond_0

    .line 4055
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p4
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    move-object p4, v2

    .line 4056
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local p4
    :cond_0
    const/4 v4, 0x1

    iput v4, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4058
    const/4 v4, -0x1

    if-eq p1, v4, :cond_2

    .line 4059
    const/4 v4, 0x1

    iput-boolean v4, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4060
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, p4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4062
    #calls: Lcom/android/camera/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    invoke-static {p4, p1}, Lcom/android/camera/ImageManager;->access$300(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v4

    iput v4, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4063
    iget v4, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v4, v6, :cond_1

    .line 4064
    const/4 v4, 0x1

    iput v4, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4065
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4067
    :cond_2
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, p4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4068
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "C: got bitmap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with sampleSize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4070
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 4075
    :goto_0
    return-object v3

    .line 4071
    :catch_0
    move-exception v1

    .line 4072
    .local v1, ex:Ljava/io/IOException;
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got io exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeImageAt(I)V
    .locals 8
    .parameter "i"

    .prologue
    .line 3889
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3890
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 3892
    :try_start_0
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SingleImageList.removeImageAt before c.getCount(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3896
    :try_start_1
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 3902
    .local v3, moved:Z
    if-eqz v3, :cond_0

    .line 3904
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/camera/ImageManager$SingleImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v2

    .line 3905
    .local v2, image:Lcom/android/camera/ImageManager$IImage;
    invoke-interface {v2}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    .line 3906
    .local v4, u:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/camera/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3907
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/camera/ImageManager$SingleImageList;->mSingleImage:Lcom/android/camera/ImageManager$IImage;

    .line 3908
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList;->requery()V

    .line 3910
    .end local v2           #image:Lcom/android/camera/ImageManager$IImage;
    .end local v4           #u:Landroid/net/Uri;
    :cond_0
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SingleImageList.removeImageAt after c.getCount(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3911
    monitor-exit v0

    .line 3912
    .end local v3           #moved:Z
    :goto_0
    return-void

    .line 3898
    :catch_0
    move-exception v1

    .line 3900
    .local v1, ex:Ljava/lang/Exception;
    monitor-exit v0

    goto :goto_0

    .line 3911
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method protected whereClause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3872
    const-string v0, "(_data=?)"

    return-object v0
.end method

.method protected whereClauseArgs()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3876
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3877
    .local v1, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/String;

    const-string v3, "file://"

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3878
    .local v0, sPattern:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3879
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 3880
    .local v2, stringArgs:[Ljava/lang/String;
    return-object v2
.end method
