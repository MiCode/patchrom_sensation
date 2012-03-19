.class Lcom/android/camera/ImageManager$DrmImageList$DrmImage;
.super Lcom/android/camera/ImageManager$Image;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager$DrmImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrmImage"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ImageManager$DrmImageList;


# direct methods
.method protected constructor <init>(Lcom/android/camera/ImageManager$DrmImageList;JLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$BaseImageList;I)V
    .locals 10
    .parameter
    .parameter "id"
    .parameter "cr"
    .parameter "container"
    .parameter "cursorRow"

    .prologue
    .line 3082
    iput-object p1, p0, Lcom/android/camera/ImageManager$DrmImageList$DrmImage;->this$1:Lcom/android/camera/ImageManager$DrmImageList;

    .line 3083
    iget-object v1, p1, Lcom/android/camera/ImageManager$DrmImageList;->this$0:Lcom/android/camera/ImageManager;

    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v2, p2

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/ImageManager$Image;-><init>(Lcom/android/camera/ImageManager;JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$BaseImageList;II)V

    .line 3084
    return-void
.end method


# virtual methods
.method public getDataPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3104
    const-string v1, ""

    .line 3105
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$DrmImageList$DrmImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3106
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 3107
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$DrmImageList$DrmImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3108
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$BaseImageList;->indexData()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3110
    :cond_0
    monitor-exit v0

    .line 3111
    return-object v1

    .line 3110
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3126
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$DrmImageList$DrmImage;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 7

    .prologue
    .line 3130
    const/4 v5, 0x0

    .line 3131
    .local v5, mimeType:Ljava/lang/String;
    const/4 v3, 0x0

    .line 3133
    .local v3, fileType:I
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$DrmImageList$DrmImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3134
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 3135
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$DrmImageList$DrmImage;->getRow()I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3136
    iget-object v6, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v6}, Lcom/android/camera/ImageManager$BaseImageList;->indexMimeType()I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3138
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3140
    invoke-static {v5}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    .line 3141
    if-nez v3, :cond_7

    .line 3143
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$DrmImageList$DrmImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    .line 3144
    .local v2, fileName:Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 3145
    .local v4, lastDot:I
    if-gez v4, :cond_1

    .line 3146
    const/4 v6, 0x0

    .line 3173
    .end local v2           #fileName:Ljava/lang/String;
    .end local v4           #lastDot:I
    :goto_0
    return-object v6

    .line 3138
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 3148
    .restart local v2       #fileName:Ljava/lang/String;
    .restart local v4       #lastDot:I
    :cond_1
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3149
    .local v1, fileExt:Ljava/lang/String;
    const-string v6, "jpg"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "jpeg"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 3151
    :cond_2
    const-string v5, "image/jpeg"

    .line 3152
    const/16 v3, 0x21

    .line 3154
    :cond_3
    const-string v6, "gif"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    .line 3155
    const-string v5, "image/gif"

    .line 3156
    const/16 v3, 0x22

    .line 3158
    :cond_4
    const-string v6, "png"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    .line 3159
    const-string v5, "image/png"

    .line 3160
    const/16 v3, 0x23

    .line 3162
    :cond_5
    const-string v6, "bmp"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    .line 3163
    const-string v5, "image/x-ms-bmp"

    .line 3164
    const/16 v3, 0x24

    .line 3166
    :cond_6
    const-string v6, "wbmp"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7

    .line 3167
    const-string v5, "image/vnd.wap.wbmp"

    .line 3168
    const/16 v3, 0x25

    .line 3171
    .end local v1           #fileExt:Ljava/lang/String;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v4           #lastDot:I
    :cond_7
    invoke-static {v3}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 3172
    const/4 v5, 0x0

    :cond_8
    move-object v6, v5

    .line 3173
    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3115
    const-string v1, ""

    .line 3116
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$DrmImageList$DrmImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3117
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 3118
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$DrmImageList$DrmImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3119
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$BaseImageList;->indexTitle()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3121
    :cond_0
    monitor-exit v0

    .line 3122
    return-object v1

    .line 3121
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 3087
    const/4 v0, 0x1

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 3091
    const/4 v0, 0x1

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 3095
    const/16 v0, 0x60

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageManager$DrmImageList$DrmImage;->fullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 3099
    const/16 v0, 0x140

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageManager$DrmImageList$DrmImage;->fullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
