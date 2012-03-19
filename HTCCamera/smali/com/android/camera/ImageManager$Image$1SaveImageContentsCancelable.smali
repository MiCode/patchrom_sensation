.class final Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;
.super Lcom/android/camera/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IGetBoolean_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageManager$Image;->saveImageContents(Landroid/graphics/Bitmap;[BIZLandroid/database/Cursor;Lcom/android/camera/ImageManager$StoreImageCallback;)Lcom/android/camera/ImageManager$IGetBoolean_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SaveImageContentsCancelable"
.end annotation


# instance fields
.field mCurrentCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

.field final synthetic this$1:Lcom/android/camera/ImageManager$Image;

.field final synthetic val$callback:Lcom/android/camera/ImageManager$StoreImageCallback;

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$image:Landroid/graphics/Bitmap;

.field final synthetic val$jpegData:[B


# direct methods
.method constructor <init>(Lcom/android/camera/ImageManager$Image;Landroid/graphics/Bitmap;[BLcom/android/camera/ImageManager$StoreImageCallback;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2260
    iput-object p1, p0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->this$1:Lcom/android/camera/ImageManager$Image;

    iput-object p2, p0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$image:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$jpegData:[B

    iput-object p4, p0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$callback:Lcom/android/camera/ImageManager$StoreImageCallback;

    iput-object p5, p0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$cursor:Landroid/database/Cursor;

    iget-object v0, p1, Lcom/android/camera/ImageManager$Image;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct {p0, v0}, Lcom/android/camera/ImageManager$BaseCancelable;-><init>(Lcom/android/camera/ImageManager;)V

    .line 2258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->mCurrentCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    .line 2261
    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .locals 1

    .prologue
    .line 2264
    monitor-enter p0

    .line 2265
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->mCurrentCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    if-eqz v0, :cond_0

    .line 2266
    iget-object v0, p0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->mCurrentCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    invoke-interface {v0}, Lcom/android/camera/ImageManager$IGetBoolean_cancelable;->cancel()Z

    .line 2267
    :cond_0
    monitor-exit p0

    .line 2268
    const/4 v0, 0x1

    return v0

    .line 2267
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get()Z
    .locals 25

    .prologue
    .line 2274
    const/16 v18, 0x0

    .line 2276
    .local v18, thumbnail:Landroid/graphics/Bitmap;
    const/16 v17, 0x0

    .line 2280
    .local v17, thumbData:[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->this$1:Lcom/android/camera/ImageManager$Image;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->this$1:Lcom/android/camera/ImageManager$Image;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/camera/ImageManager$BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v19

    .line 2281
    .local v19, uri:Landroid/net/Uri;
    if-nez v19, :cond_0

    .line 2282
    const-string v21, "ImageManager"

    const-string v22, "before compressImageToFile() - uri = null"

    invoke-static/range {v21 .. v22}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2285
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->checkCanceled()V

    .line 2286
    const-string v21, "ImageManager"

    const-string v22, "mCurrentCancelable - set compressImageToFile()"

    invoke-static/range {v21 .. v22}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->this$1:Lcom/android/camera/ImageManager$Image;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$image:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$jpegData:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$callback:Lcom/android/camera/ImageManager$StoreImageCallback;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v19

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/ImageManager$Image;->compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;Lcom/android/camera/ImageManager$StoreImageCallback;)Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->mCurrentCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    .line 2288
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2290
    :try_start_2
    const-string v21, "ImageManager"

    const-string v22, "mCurrentCancelable - return compressImageToFile()"

    invoke-static/range {v21 .. v22}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->mCurrentCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 2292
    const-string v21, "ImageManager"

    const-string v22, "mCurrentCancelable = null"

    invoke-static/range {v21 .. v22}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->mCurrentCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/camera/ImageManager$IGetBoolean_cancelable;->get()Z

    move-result v21

    if-nez v21, :cond_2

    .line 2295
    const-string v21, "ImageManager"

    const-string v22, "mCurrentCancelable.get() = false"

    invoke-static/range {v21 .. v22}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2296
    const/16 v21, 0x0

    .line 2423
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->acknowledgeCancel()V

    .end local v19           #uri:Landroid/net/Uri;
    :goto_0
    return v21

    .line 2288
    .restart local v19       #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v21

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2419
    .end local v19           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 2420
    .local v8, ex:Lcom/android/camera/ImageManager$CanceledException;
    :try_start_5
    const-string v21, "ImageManager"

    const-string v22, "got canceled... need to cleanup"

    invoke-static/range {v21 .. v22}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2421
    const/16 v21, 0x0

    .line 2423
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->acknowledgeCancel()V

    goto :goto_0

    .line 2303
    .end local v8           #ex:Lcom/android/camera/ImageManager$CanceledException;
    .restart local v19       #uri:Landroid/net/Uri;
    :cond_2
    :try_start_6
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2304
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$cursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2305
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$cursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$cursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v23, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2307
    .local v10, filePath:Ljava/lang/String;
    monitor-exit v22
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2332
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2341
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->checkCanceled()V

    .line 2346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$image:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    .line 2347
    const-string v21, "ro.product.model"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2348
    .local v14, model:Ljava/lang/String;
    const-string v21, "ro.product.manufacturer"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2350
    .local v12, maker:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 2351
    .local v5, c:Ljava/util/Calendar;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    .line 2352
    .local v20, year:Ljava/lang/String;
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 2353
    .local v15, month:Ljava/lang/String;
    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 2354
    .local v7, day:Ljava/lang/String;
    const/16 v21, 0xb

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 2355
    .local v11, hour:Ljava/lang/String;
    const/16 v21, 0xc

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 2356
    .local v13, minute:Ljava/lang/String;
    const/16 v21, 0xd

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    .line 2358
    .local v16, second:Ljava/lang/String;
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2359
    :cond_3
    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2360
    :cond_4
    const/16 v21, 0xb

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2361
    :cond_5
    const/16 v21, 0xc

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2362
    :cond_6
    const/16 v21, 0xd

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2364
    :cond_7
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2366
    .local v6, date:Ljava/lang/String;
    const-string v21, "ImageManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveImageContents make: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    const-string v21, "ImageManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveImageContents model: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2368
    const-string v21, "ImageManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveImageContents originaldate: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    if-eqz v12, :cond_9

    if-eqz v14, :cond_9

    .line 2371
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_a .. :try_end_a} :catch_0

    .line 2372
    :try_start_b
    const-string v21, "ImageManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveImageContents filePath:l"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 2376
    :try_start_c
    new-instance v9, Landroid/media/ExifInterface;

    invoke-direct {v9, v10}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    .line 2383
    .local v9, exif:Landroid/media/ExifInterface;
    :goto_1
    if-eqz v9, :cond_8

    .line 2385
    :try_start_d
    const-string v21, "Make"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0, v12}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2386
    const-string v21, "Model"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0, v14}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    const-string v21, "DateTime"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 2390
    :try_start_e
    invoke-virtual {v9}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    .line 2407
    :cond_8
    :goto_2
    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 2412
    .end local v5           #c:Ljava/util/Calendar;
    .end local v6           #date:Ljava/lang/String;
    .end local v7           #day:Ljava/lang/String;
    .end local v9           #exif:Landroid/media/ExifInterface;
    .end local v11           #hour:Ljava/lang/String;
    .end local v12           #maker:Ljava/lang/String;
    .end local v13           #minute:Ljava/lang/String;
    .end local v14           #model:Ljava/lang/String;
    .end local v15           #month:Ljava/lang/String;
    .end local v16           #second:Ljava/lang/String;
    .end local v20           #year:Ljava/lang/String;
    :cond_9
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->this$1:Lcom/android/camera/ImageManager$Image;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->forceSync(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_10 .. :try_end_10} :catch_0

    .line 2418
    const/16 v21, 0x1

    .line 2423
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->acknowledgeCancel()V

    goto/16 :goto_0

    .line 2307
    .end local v10           #filePath:Ljava/lang/String;
    :catchall_1
    move-exception v21

    :try_start_11
    monitor-exit v22
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    throw v21

    .line 2332
    :catchall_2
    move-exception v21

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    throw v21
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_13 .. :try_end_13} :catch_0

    .line 2423
    .end local v19           #uri:Landroid/net/Uri;
    :catchall_3
    move-exception v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->acknowledgeCancel()V

    throw v21

    .line 2378
    .restart local v5       #c:Ljava/util/Calendar;
    .restart local v6       #date:Ljava/lang/String;
    .restart local v7       #day:Ljava/lang/String;
    .restart local v10       #filePath:Ljava/lang/String;
    .restart local v11       #hour:Ljava/lang/String;
    .restart local v12       #maker:Ljava/lang/String;
    .restart local v13       #minute:Ljava/lang/String;
    .restart local v14       #model:Ljava/lang/String;
    .restart local v15       #month:Ljava/lang/String;
    .restart local v16       #second:Ljava/lang/String;
    .restart local v19       #uri:Landroid/net/Uri;
    .restart local v20       #year:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 2380
    .local v8, ex:Ljava/io/IOException;
    const/4 v9, 0x0

    .restart local v9       #exif:Landroid/media/ExifInterface;
    goto :goto_1

    .line 2407
    .end local v8           #ex:Ljava/io/IOException;
    .end local v9           #exif:Landroid/media/ExifInterface;
    :catchall_4
    move-exception v21

    :try_start_14
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :try_start_15
    throw v21
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_15 .. :try_end_15} :catch_0

    .line 2392
    .restart local v9       #exif:Landroid/media/ExifInterface;
    :catch_2
    move-exception v21

    goto :goto_2
.end method
