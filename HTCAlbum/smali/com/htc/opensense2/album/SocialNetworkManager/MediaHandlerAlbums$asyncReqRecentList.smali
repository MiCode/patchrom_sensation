.class Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;
.super Landroid/os/AsyncTask;
.source "MediaHandlerAlbums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqRecentList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsCacheExits:Z

.field private mIsExceptioned:Z

.field private mListCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private mListLivePOM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation
.end field

.field private mListLivePhoto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation
.end field

.field private mListLiveVideo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonOp:Lcom/htc/opensense/social/PersonOp;

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;


# direct methods
.method private constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 409
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 411
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsExceptioned:Z

    .line 412
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListCache:Ljava/util/List;

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 12
    .parameter "urls"

    .prologue
    const/4 v11, 0x1

    .line 422
    :try_start_0
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v6, :cond_3

    .line 424
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mUids:Ljava/util/List;

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 428
    .local v1, id:Ljava/lang/String;
    :try_start_1
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mUids:Ljava/util/List;

    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v8

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->isFileCacheExist(Ljava/lang/String;)Z
    invoke-static {v7, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    .line 429
    iget-boolean v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    if-eqz v6, :cond_0

    .line 430
    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mUids:Ljava/util/List;

    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v8

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v7, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 431
    .local v5, validList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 440
    .end local v5           #validList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    :cond_0
    :goto_0
    :try_start_2
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v6

    if-eq v11, v6, :cond_1

    iget-boolean v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    invoke-virtual {v6}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->onEnableCacheList()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 442
    const-string v6, "MediaHandlerAlbums"

    const-string v7, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: use cache...!!"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v6, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListCache:Ljava/util/List;

    .line 445
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListCache:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 447
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListCache:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 450
    :cond_1
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 621
    .end local v1           #id:Ljava/lang/String;
    :goto_1
    return-object v6

    .line 434
    .restart local v1       #id:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 435
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "MediaHandlerAlbums"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    .line 437
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    const/4 v7, 0x1

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 613
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #id:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 616
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v6, "MediaHandlerAlbums"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList] Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iput-boolean v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsExceptioned:Z

    .line 621
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :goto_2
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v11}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1

    .line 453
    :cond_3
    :try_start_3
    const-string v6, "MediaHandlerAlbums"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "getRecentMedia.."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaSource:Ljava/util/List;

    if-nez v6, :cond_4

    .line 457
    const-string v6, "MediaHandlerAlbums"

    const-string v7, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: No source just skip.."

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 461
    :cond_4
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaSource:Ljava/util/List;

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/social/PersonOp;

    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 466
    :try_start_4
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v7}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v7

    iget-object v7, v7, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->isFileCacheExist(Ljava/lang/String;)Z
    invoke-static {v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    .line 467
    iget-boolean v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    if-eqz v6, :cond_5

    .line 468
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v7}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v7

    iget-object v7, v7, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 469
    .restart local v5       #validList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 478
    .end local v5           #validList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    :cond_5
    :goto_3
    :try_start_5
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v6

    if-eq v11, v6, :cond_6

    iget-boolean v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    if-nez v6, :cond_14

    .line 480
    :cond_6
    const-string v6, "MediaHandlerAlbums"

    const-string v7, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: sync live.."

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentWrappers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 482
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentVWrappers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 483
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    if-eqz v6, :cond_9

    .line 485
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I

    move-result-object v3

    .line 487
    .local v3, nScreenDisplay:[I
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnableRecentPhotos:Z
    invoke-static {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$1000(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v6

    if-ne v11, v6, :cond_7

    .line 489
    const-string v6, "MediaHandlerAlbums"

    const-string v7, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: sync live photo.."

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x1

    aget v10, v3, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/htc/opensense/social/PersonOp;->getRecentMedia(IIII)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    .line 497
    :cond_7
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnableRecentVideos:Z
    invoke-static {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$1100(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v6

    if-ne v11, v6, :cond_8

    .line 499
    const-string v6, "MediaHandlerAlbums"

    const-string v7, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: sync live video.."

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    const/16 v7, 0x1e

    const/4 v8, 0x1

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x1

    aget v10, v3, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/htc/opensense/social/PersonOp;->getRecentMedia(IIII)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    .line 507
    :cond_8
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnablePhotosOfMe:Z
    invoke-static {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$1200(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v6

    if-ne v11, v6, :cond_9

    .line 509
    const-string v6, "MediaHandlerAlbums"

    const-string v7, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: sync photos of me.."

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    const/16 v7, 0x63

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x1

    aget v10, v3, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/htc/opensense/social/PersonOp;->getMediaTagOf(IIII)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    .line 515
    const-string v6, "skyer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "skyer photos of me count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    .end local v3           #nScreenDisplay:[I
    :cond_9
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_4
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v2, :cond_a

    .line 523
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v7, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentWrappers:Ljava/util/List;

    new-instance v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/social/MediumOp;

    invoke-direct {v8, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/MediumOp;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 472
    .end local v2           #nIndex:I
    :catch_2
    move-exception v0

    .line 473
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v6, "MediaHandlerAlbums"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    .line 475
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    const/4 v7, 0x1

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z

    goto/16 :goto_3

    .line 525
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #nIndex:I
    :cond_a
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v7}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v7

    iget-object v7, v7, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->putRecentListToFileCache(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$1300(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)V

    .line 530
    const/4 v2, 0x0

    :goto_5
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v2, :cond_b

    .line 532
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v7, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentVWrappers:Ljava/util/List;

    new-instance v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/social/MediumOp;

    invoke-direct {v8, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/MediumOp;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 534
    :cond_b
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v7}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v7

    iget-object v7, v7, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->putRecentVideoListToFileCache(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$1400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)V

    .line 539
    const/4 v2, 0x0

    :goto_6
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v2, :cond_c

    .line 541
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v7, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentPOMWrappers:Ljava/util/List;

    new-instance v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/social/MediumOp;

    invoke-direct {v8, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/MediumOp;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 543
    :cond_c
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v7}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v7

    iget-object v7, v7, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->putPhotosOfMeListToFileCache(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$1500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)V

    .line 548
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_d

    .line 550
    new-instance v4, Lcom/htc/opensense/social/data/Album;

    invoke-direct {v4}, Lcom/htc/opensense/social/data/Album;-><init>()V

    .line 551
    .local v4, profile:Lcom/htc/opensense/social/data/Album;
    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTLIST:Ljava/lang/String;

    iput-object v6, v4, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    .line 552
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v6}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    iput-object v6, v4, Lcom/htc/opensense/social/data/Album;->coverUrl:Ljava/lang/String;

    .line 553
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iput v6, v4, Lcom/htc/opensense/social/data/Album;->count:I

    .line 554
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mServiceName:Ljava/lang/String;

    sget-object v7, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 555
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v6}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v6

    iget-wide v6, v6, Lcom/htc/opensense/social/data/Medium;->createTime:J

    iput-wide v6, v4, Lcom/htc/opensense/social/data/Album;->createTime:J

    .line 558
    :goto_7
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    const/4 v7, 0x0

    new-instance v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-direct {v8, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 564
    .end local v4           #profile:Lcom/htc/opensense/social/data/Album;
    :cond_d
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_e

    .line 566
    new-instance v4, Lcom/htc/opensense/social/data/Album;

    invoke-direct {v4}, Lcom/htc/opensense/social/data/Album;-><init>()V

    .line 567
    .restart local v4       #profile:Lcom/htc/opensense/social/data/Album;
    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTVLIST:Ljava/lang/String;

    iput-object v6, v4, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    .line 568
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v6}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/opensense/social/data/Medium;->thumbnailUrl:Ljava/lang/String;

    iput-object v6, v4, Lcom/htc/opensense/social/data/Album;->coverUrl:Ljava/lang/String;

    .line 569
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iput v6, v4, Lcom/htc/opensense/social/data/Album;->count:I

    .line 570
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mServiceName:Ljava/lang/String;

    sget-object v7, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 571
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v6}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v6

    iget-wide v6, v6, Lcom/htc/opensense/social/data/Medium;->createTime:J

    iput-wide v6, v4, Lcom/htc/opensense/social/data/Album;->createTime:J

    .line 575
    :goto_8
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gt v11, v6, :cond_12

    .line 576
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    const/4 v7, 0x1

    new-instance v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-direct {v8, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 585
    .end local v4           #profile:Lcom/htc/opensense/social/data/Album;
    :cond_e
    :goto_9
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_f

    .line 587
    new-instance v4, Lcom/htc/opensense/social/data/Album;

    invoke-direct {v4}, Lcom/htc/opensense/social/data/Album;-><init>()V

    .line 588
    .restart local v4       #profile:Lcom/htc/opensense/social/data/Album;
    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPOMLIST:Ljava/lang/String;

    iput-object v6, v4, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    .line 589
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v6}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    iput-object v6, v4, Lcom/htc/opensense/social/data/Album;->coverUrl:Ljava/lang/String;

    .line 590
    const-string v6, "skyer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "skyer photo of me url: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/htc/opensense/social/data/Album;->coverUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iput v6, v4, Lcom/htc/opensense/social/data/Album;->count:I

    .line 592
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mServiceName:Ljava/lang/String;

    sget-object v7, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 593
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v6}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v6

    iget-wide v6, v6, Lcom/htc/opensense/social/data/Medium;->createTime:J

    iput-wide v6, v4, Lcom/htc/opensense/social/data/Album;->createTime:J

    .line 596
    :goto_a
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    const/4 v7, 0x0

    new-instance v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-direct {v8, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 599
    .end local v4           #profile:Lcom/htc/opensense/social/data/Album;
    :cond_f
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    const/4 v7, 0x1

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z

    goto/16 :goto_2

    .line 557
    .restart local v4       #profile:Lcom/htc/opensense/social/data/Album;
    :cond_10
    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lcom/htc/opensense/social/data/Album;->createTime:J

    goto/16 :goto_7

    .line 573
    :cond_11
    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lcom/htc/opensense/social/data/Album;->createTime:J

    goto/16 :goto_8

    .line 578
    :cond_12
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    new-instance v7, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-direct {v7, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 595
    :cond_13
    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lcom/htc/opensense/social/data/Album;->createTime:J

    goto :goto_a

    .line 603
    .end local v2           #nIndex:I
    .end local v4           #profile:Lcom/htc/opensense/social/data/Album;
    :cond_14
    const-string v6, "MediaHandlerAlbums"

    const-string v7, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: use cache...!!"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v7}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v7

    iget-object v7, v7, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListCache:Ljava/util/List;

    .line 606
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListCache:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 608
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListCache:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 409
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 625
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 12
    .parameter "result"

    .prologue
    const/16 v11, 0x4e2f

    const/16 v10, 0x2761

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 632
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v1

    .line 633
    .local v1, count:I
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-static {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$608(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    .line 634
    iget-boolean v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsExceptioned:Z

    if-ne v9, v4, :cond_2

    .line 636
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumRequestTotal:I
    invoke-static {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$900(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v5

    if-gt v4, v5, :cond_1

    .line 638
    const-string v4, "MediaHandlerAlbums"

    const-string v5, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: Error End... "

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 640
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v4, v10, v8, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 743
    :goto_0
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v4, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z

    .line 744
    return-void

    .line 642
    :cond_0
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    const/16 v5, 0x4e88

    invoke-virtual {v4, v5, v8, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 646
    :cond_1
    const-string v4, "MediaHandlerAlbums"

    const-string v5, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Error Next..."

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v4, v11, v8, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 652
    :cond_2
    const-string v4, "MediaHandlerAlbums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Total Albums: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v4

    if-ne v9, v4, :cond_5

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mUids:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 655
    :cond_3
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    invoke-virtual {v4}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->onEnableCacheList()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 657
    :cond_4
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mUids:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    .line 658
    .local v2, id:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->putListToFileCache(Ljava/lang/String;Ljava/util/List;)V
    invoke-static {v4, v2, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$1600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;Ljava/util/List;)V

    .line 662
    .end local v2           #id:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnableRecentPhotos:Z
    invoke-static {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$1000(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 664
    const-string v4, "MediaHandlerAlbums"

    const-string v5, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Filter all recent photo items from list..."

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const/4 v0, 0x0

    .line 666
    .local v0, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    const/4 v3, 0x0

    .local v3, nIndex:I
    :goto_2
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_6

    .line 668
    const/4 v0, 0x0

    .line 669
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    if-eqz v0, :cond_a

    .line 671
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTLIST:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 673
    const-string v4, "MediaHandlerAlbums"

    const-string v5, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Found recent item remove it..."

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 684
    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .end local v3           #nIndex:I
    :cond_6
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnablePhotosOfMe:Z
    invoke-static {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$1200(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 686
    const-string v4, "MediaHandlerAlbums"

    const-string v5, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Filter photo of me from list..."

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const/4 v0, 0x0

    .line 688
    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    const/4 v3, 0x0

    .restart local v3       #nIndex:I
    :goto_3
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_7

    .line 690
    const/4 v0, 0x0

    .line 691
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    if-eqz v0, :cond_b

    .line 693
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPOMLIST:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 696
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 706
    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .end local v3           #nIndex:I
    :cond_7
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnableRecentVideos:Z
    invoke-static {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$1100(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 708
    const-string v4, "MediaHandlerAlbums"

    const-string v5, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Filter recent videos from list..."

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const/4 v0, 0x0

    .line 710
    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    const/4 v3, 0x0

    .restart local v3       #nIndex:I
    :goto_4
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_8

    .line 712
    const/4 v0, 0x0

    .line 713
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    if-eqz v0, :cond_c

    .line 715
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTVLIST:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 718
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 724
    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .end local v3           #nIndex:I
    :cond_8
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 726
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumRequestTotal:I
    invoke-static {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$900(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v5

    if-gt v4, v5, :cond_e

    .line 728
    const-string v4, "MediaHandlerAlbums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Success End: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_d

    .line 730
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v4, v10, v8, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 657
    :cond_9
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v4}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v4

    iget-object v2, v4, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    goto/16 :goto_1

    .line 666
    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v3       #nIndex:I
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 688
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 710
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 732
    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .end local v3           #nIndex:I
    :cond_d
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    const/16 v5, 0x4e88

    invoke-virtual {v4, v5, v8, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 736
    :cond_e
    const-string v4, "MediaHandlerAlbums"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Success Next: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v4, v11, v8, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 409
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 628
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 409
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
