.class final Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;
.super Landroid/os/Handler;
.source "AsyncImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/AsyncImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/util/AsyncImageDecoder;


# direct methods
.method public constructor <init>(Lcom/htc/music/util/AsyncImageDecoder;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 647
    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    .line 648
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 649
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .parameter "msg"

    .prologue
    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x1

    .line 652
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 748
    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "Something wrong in NonUiHandler.handleMessage()."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 655
    :pswitch_0
    const/4 v7, 0x0

    .line 657
    .local v7, task:Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$900(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 658
    :try_start_0
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #calls: Lcom/htc/music/util/AsyncImageDecoder;->removeFirstVisibleTask()Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$1000(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-result-object v7

    .line 659
    if-nez v7, :cond_1

    .line 661
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$700(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$700(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v7, v0

    .line 663
    :cond_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 665
    const/4 v1, 0x0

    .line 667
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_6

    .line 668
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1100(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 669
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1100(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/htc/music/util/AsyncImageDecoder;->decodeByPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v8, v9}, Lcom/htc/music/util/AsyncImageDecoder;->access$1200(Lcom/htc/music/util/AsyncImageDecoder;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 671
    if-nez v1, :cond_2

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1300(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I

    move-result v8

    const/4 v9, -0x1

    if-le v8, v9, :cond_2

    .line 672
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1300(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I

    move-result v9

    #calls: Lcom/htc/music/util/AsyncImageDecoder;->decodeByAlbumId(I)Landroid/graphics/Bitmap;
    invoke-static {v8, v9}, Lcom/htc/music/util/AsyncImageDecoder;->access$1400(Lcom/htc/music/util/AsyncImageDecoder;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 680
    :cond_2
    :goto_1
    if-eqz v1, :cond_6

    .line 682
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$1700(Lcom/htc/music/util/AsyncImageDecoder;)Z

    move-result v8

    if-ne v8, v13, :cond_3

    if-eqz v7, :cond_3

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1100(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1100(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 684
    new-instance v5, Ljava/io/File;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1100(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 685
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 686
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/io/File;->setLastModified(J)Z

    .line 692
    .end local v5           #file:Ljava/io/File;
    :cond_3
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$1800(Lcom/htc/music/util/AsyncImageDecoder;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 693
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$1900(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_4

    .line 694
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    iget-object v9, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/music/util/AsyncImageDecoder;->access$2000(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I
    invoke-static {v10}, Lcom/htc/music/util/AsyncImageDecoder;->access$2100(Lcom/htc/music/util/AsyncImageDecoder;)I

    move-result v10

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    #setter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;
    invoke-static {v8, v9}, Lcom/htc/music/util/AsyncImageDecoder;->access$1902(Lcom/htc/music/util/AsyncImageDecoder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 696
    :cond_4
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$1900(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 697
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$2200(Lcom/htc/music/util/AsyncImageDecoder;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I
    invoke-static {v9}, Lcom/htc/music/util/AsyncImageDecoder;->access$2300(Lcom/htc/music/util/AsyncImageDecoder;)I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 698
    .local v3, cleanImage:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 699
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 700
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$1900(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v2, v8, v14, v14, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 701
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$2400(Lcom/htc/music/util/AsyncImageDecoder;)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I
    invoke-static {v9}, Lcom/htc/music/util/AsyncImageDecoder;->access$2500(Lcom/htc/music/util/AsyncImageDecoder;)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2, v1, v8, v9, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 702
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 703
    move-object v1, v3

    .line 707
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #cleanImage:Landroid/graphics/Bitmap;
    :cond_5
    #setter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7, v1}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$002(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 708
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$200(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    move-result-object v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$2600(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 709
    const/4 v8, 0x2

    invoke-virtual {p0, v8, v12, v12, v11}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 710
    .local v6, message:Landroid/os/Message;
    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 711
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$2600(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v6, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 721
    .end local v6           #message:Landroid/os/Message;
    :cond_6
    :goto_2
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$900(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 722
    :cond_7
    :goto_3
    :try_start_1
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$300(Lcom/htc/music/util/AsyncImageDecoder;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_c

    .line 724
    :try_start_2
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$900(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 725
    :catch_0
    move-exception v4

    .line 726
    .local v4, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 727
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$2600(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 728
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$2600(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;

    move-result-object v8

    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 729
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$2600(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;

    move-result-object v8

    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 731
    :cond_8
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$2600(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;

    move-result-object v8

    const/4 v10, 0x3

    const-wide/16 v11, 0x64

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 735
    .end local v4           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 663
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v8

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v8

    .line 674
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_9
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1300(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I

    move-result v8

    const/4 v9, -0x1

    if-le v8, v9, :cond_a

    .line 675
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mAlbumId:I
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1300(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I

    move-result v9

    #calls: Lcom/htc/music/util/AsyncImageDecoder;->decodeByAlbumId(I)Landroid/graphics/Bitmap;
    invoke-static {v8, v9}, Lcom/htc/music/util/AsyncImageDecoder;->access$1400(Lcom/htc/music/util/AsyncImageDecoder;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_1

    .line 676
    :cond_a
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1500(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 677
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mDescriptor:Landroid/content/res/AssetFileDescriptor;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$1500(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v9

    #calls: Lcom/htc/music/util/AsyncImageDecoder;->decodeByFileDescriptor(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;
    invoke-static {v8, v9}, Lcom/htc/music/util/AsyncImageDecoder;->access$1600(Lcom/htc/music/util/AsyncImageDecoder;Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_1

    .line 713
    :cond_b
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_6

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_6

    .line 714
    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$000(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 715
    #setter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7, v11}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$002(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 735
    :cond_c
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 737
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->this$0:Lcom/htc/music/util/AsyncImageDecoder;

    #getter for: Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;
    invoke-static {v8}, Lcom/htc/music/util/AsyncImageDecoder;->access$700(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_d

    .line 738
    invoke-virtual {p0, v13}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 739
    const-wide/16 v8, 0x0

    invoke-virtual {p0, v13, v8, v9}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 742
    :cond_d
    invoke-virtual {p0, v13}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 652
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
