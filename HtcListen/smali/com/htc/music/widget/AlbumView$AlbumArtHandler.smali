.class public Lcom/htc/music/widget/AlbumView$AlbumArtHandler;
.super Landroid/os/Handler;
.source "AlbumView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/AlbumView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlbumArtHandler"
.end annotation


# instance fields
.field private failCount:I

.field private mAlbumId:I

.field private mIsHandleMessageFinished:Z

.field final synthetic this$0:Lcom/htc/music/widget/AlbumView;


# direct methods
.method public constructor <init>(Lcom/htc/music/widget/AlbumView;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->this$0:Lcom/htc/music/widget/AlbumView;

    .line 430
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 421
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->mAlbumId:I

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->mIsHandleMessageFinished:Z

    .line 427
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->failCount:I

    .line 431
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 439
    iput-boolean v5, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->mIsHandleMessageFinished:Z

    .line 440
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 442
    .local v0, albumid:I
    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v8, :cond_8

    iget v5, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->mAlbumId:I

    if-ne v5, v0, :cond_0

    if-gez v0, :cond_8

    :cond_0
    iget-object v5, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->this$0:Lcom/htc/music/widget/AlbumView;

    #getter for: Lcom/htc/music/widget/AlbumView;->mIsAttachedToWindow:Z
    invoke-static {v5}, Lcom/htc/music/widget/AlbumView;->access$000(Lcom/htc/music/widget/AlbumView;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 447
    const/4 v1, 0x0

    .line 448
    .local v1, bm:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Lcom/htc/music/util/HtcBitmapFactory;->isReady()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 449
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 450
    iget-object v5, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->this$0:Lcom/htc/music/widget/AlbumView;

    #getter for: Lcom/htc/music/widget/AlbumView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/music/widget/AlbumView;->access$100(Lcom/htc/music/widget/AlbumView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/music/util/MusicUtils;->getPluginArtWorkPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 451
    .local v4, path:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 452
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->mIsHandleMessageFinished:Z

    .line 500
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v4           #path:Ljava/lang/String;
    :goto_0
    return-void

    .line 455
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    .restart local v4       #path:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->this$0:Lcom/htc/music/widget/AlbumView;

    #getter for: Lcom/htc/music/widget/AlbumView;->mAlbumWidth:I
    invoke-static {v5}, Lcom/htc/music/widget/AlbumView;->access$200(Lcom/htc/music/widget/AlbumView;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->this$0:Lcom/htc/music/widget/AlbumView;

    #getter for: Lcom/htc/music/widget/AlbumView;->mAlbumHeight:I
    invoke-static {v6}, Lcom/htc/music/widget/AlbumView;->access$300(Lcom/htc/music/widget/AlbumView;)I

    move-result v6

    iget-object v7, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->this$0:Lcom/htc/music/widget/AlbumView;

    #getter for: Lcom/htc/music/widget/AlbumView;->mReflectionHeight:I
    invoke-static {v7}, Lcom/htc/music/widget/AlbumView;->access$400(Lcom/htc/music/widget/AlbumView;)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/htc/music/util/HtcBitmapFactory;->createScaledBitmapWithReflection(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 483
    .end local v4           #path:Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 484
    iget-object v5, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->this$0:Lcom/htc/music/widget/AlbumView;

    #getter for: Lcom/htc/music/widget/AlbumView;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/music/widget/AlbumView;->access$500(Lcom/htc/music/widget/AlbumView;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 485
    .local v3, numsg:Landroid/os/Message;
    iget-object v5, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->this$0:Lcom/htc/music/widget/AlbumView;

    #getter for: Lcom/htc/music/widget/AlbumView;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/music/widget/AlbumView;->access$500(Lcom/htc/music/widget/AlbumView;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 486
    iget-object v5, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->this$0:Lcom/htc/music/widget/AlbumView;

    #getter for: Lcom/htc/music/widget/AlbumView;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/music/widget/AlbumView;->access$500(Lcom/htc/music/widget/AlbumView;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 487
    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->failCount:I

    .line 489
    .end local v3           #numsg:Landroid/os/Message;
    :cond_3
    iput v0, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->mAlbumId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :goto_2
    iput-boolean v8, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->mIsHandleMessageFinished:Z

    goto :goto_0

    .line 458
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->this$0:Lcom/htc/music/widget/AlbumView;

    #getter for: Lcom/htc/music/widget/AlbumView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/music/widget/AlbumView;->access$100(Lcom/htc/music/widget/AlbumView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/htc/music/util/MusicUtils;->getArtWorkPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 459
    .restart local v4       #path:Ljava/lang/String;
    if-nez v4, :cond_5

    .line 460
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->mIsHandleMessageFinished:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 490
    .end local v4           #path:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 492
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "[AlbumView]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decoding bitmap error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 463
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #path:Ljava/lang/String;
    :cond_5
    :try_start_2
    iget-object v5, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->this$0:Lcom/htc/music/widget/AlbumView;

    #getter for: Lcom/htc/music/widget/AlbumView;->mAlbumWidth:I
    invoke-static {v5}, Lcom/htc/music/widget/AlbumView;->access$200(Lcom/htc/music/widget/AlbumView;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->this$0:Lcom/htc/music/widget/AlbumView;

    #getter for: Lcom/htc/music/widget/AlbumView;->mAlbumHeight:I
    invoke-static {v6}, Lcom/htc/music/widget/AlbumView;->access$300(Lcom/htc/music/widget/AlbumView;)I

    move-result v6

    iget-object v7, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->this$0:Lcom/htc/music/widget/AlbumView;

    #getter for: Lcom/htc/music/widget/AlbumView;->mReflectionHeight:I
    invoke-static {v7}, Lcom/htc/music/widget/AlbumView;->access$400(Lcom/htc/music/widget/AlbumView;)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/htc/music/util/HtcBitmapFactory;->createScaledBitmapWithReflection(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 465
    if-nez v1, :cond_2

    .line 466
    const-string v5, "[AlbumView]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reGetArtworkFromFile albumid= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", prev path= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v5, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->this$0:Lcom/htc/music/widget/AlbumView;

    #getter for: Lcom/htc/music/widget/AlbumView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/music/widget/AlbumView;->access$100(Lcom/htc/music/widget/AlbumView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/htc/music/util/MusicUtils;->reGetArtworkFromFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 469
    const-string v5, "[AlbumView]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reGetArtworkFromFile path= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    if-nez v4, :cond_6

    .line 471
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->mIsHandleMessageFinished:Z

    goto/16 :goto_0

    .line 474
    :cond_6
    iget-object v5, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->this$0:Lcom/htc/music/widget/AlbumView;

    #getter for: Lcom/htc/music/widget/AlbumView;->mAlbumWidth:I
    invoke-static {v5}, Lcom/htc/music/widget/AlbumView;->access$200(Lcom/htc/music/widget/AlbumView;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->this$0:Lcom/htc/music/widget/AlbumView;

    #getter for: Lcom/htc/music/widget/AlbumView;->mAlbumHeight:I
    invoke-static {v6}, Lcom/htc/music/widget/AlbumView;->access$300(Lcom/htc/music/widget/AlbumView;)I

    move-result v6

    iget-object v7, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->this$0:Lcom/htc/music/widget/AlbumView;

    #getter for: Lcom/htc/music/widget/AlbumView;->mReflectionHeight:I
    invoke-static {v7}, Lcom/htc/music/widget/AlbumView;->access$400(Lcom/htc/music/widget/AlbumView;)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/htc/music/util/HtcBitmapFactory;->createScaledBitmapWithReflection(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_1

    .line 479
    .end local v4           #path:Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->this$0:Lcom/htc/music/widget/AlbumView;

    #getter for: Lcom/htc/music/widget/AlbumView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/music/widget/AlbumView;->access$100(Lcom/htc/music/widget/AlbumView;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->this$0:Lcom/htc/music/widget/AlbumView;

    #getter for: Lcom/htc/music/widget/AlbumView;->mAlbumWidth:I
    invoke-static {v6}, Lcom/htc/music/widget/AlbumView;->access$200(Lcom/htc/music/widget/AlbumView;)I

    move-result v6

    iget-object v7, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->this$0:Lcom/htc/music/widget/AlbumView;

    #getter for: Lcom/htc/music/widget/AlbumView;->mAlbumHeight:I
    invoke-static {v7}, Lcom/htc/music/widget/AlbumView;->access$300(Lcom/htc/music/widget/AlbumView;)I

    move-result v7

    invoke-static {v5, v0, v6, v7}, Lcom/htc/music/util/MusicUtils;->getArtworkQuickWithWrite(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    goto/16 :goto_1

    .line 495
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :cond_8
    const-string v5, "[AlbumView]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "borranx don\'t decode bitmape albumid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mAlbumId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->mAlbumId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public isHandleMessageFinished()Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/htc/music/widget/AlbumView$AlbumArtHandler;->mIsHandleMessageFinished:Z

    return v0
.end method
