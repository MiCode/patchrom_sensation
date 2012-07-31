.class public Lcom/htc/album/addons/SceneScrollCacheHandler;
.super Ljava/lang/Object;
.source "SceneScrollCacheHandler.java"

# interfaces
.implements Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;,
        Lcom/htc/album/addons/SceneScrollCacheHandler$GridViewScrollListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final RETRY_TIMER:I = 0x1f4

.field private static final SCCSTATE_PREPARE_FOOTER_SNAPSHOT:I = 0xb

.field private static final SCCSTATE_PREPARE_HEADER_SNAPSHOT:I = 0xa

.field private static final SCCSTATE_UNKNOWN:I = -0x1


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

.field private mEnableCache:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsEnableDelayCache:Z

.field private mIsEnablePreciseFooterCache:Z

.field private mIsEnablePreciseHeaderCache:Z

.field private mIsFooterSnapShotLock:Z

.field private mIsHeaderSnapShotLock:Z

.field private mIsProgressBarOn:Z

.field private mMainView:Lcom/htc/sunny2/widget/gridview/GridView;

.field private mScrollState:I

.field private mStatusBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/scene/GalleryBaseScene;Z)V
    .locals 3
    .parameter "activity"
    .parameter "mainView"
    .parameter "controlHost"
    .parameter "bEnable"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mActivity:Landroid/app/Activity;

    .line 48
    iput-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mMainView:Lcom/htc/sunny2/widget/gridview/GridView;

    .line 49
    iput-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    .line 50
    iput-boolean v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    .line 51
    const/16 v0, 0x4f4c

    iput v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mScrollState:I

    .line 52
    iput v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mStatusBarHeight:I

    .line 54
    iput-boolean v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsEnableDelayCache:Z

    .line 55
    iput-boolean v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsProgressBarOn:Z

    .line 56
    iput-boolean v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsHeaderSnapShotLock:Z

    .line 57
    iput-boolean v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsFooterSnapShotLock:Z

    .line 59
    iput-boolean v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsEnablePreciseHeaderCache:Z

    .line 60
    iput-boolean v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsEnablePreciseFooterCache:Z

    .line 429
    new-instance v0, Lcom/htc/album/addons/SceneScrollCacheHandler$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/SceneScrollCacheHandler$1;-><init>(Lcom/htc/album/addons/SceneScrollCacheHandler;)V

    iput-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mHandler:Landroid/os/Handler;

    .line 132
    iput-object p1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mActivity:Landroid/app/Activity;

    .line 133
    iput-object p2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mMainView:Lcom/htc/sunny2/widget/gridview/GridView;

    .line 134
    iput-object p3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    .line 135
    iput-boolean p4, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    .line 136
    sget-object v0, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][SceneScrollCacheHandler]: identify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][SceneScrollCacheHandler]: cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][SceneScrollCacheHandler]: host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isHostScene()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/SceneScrollCacheHandler;)Lcom/htc/sunny2/scene/GalleryBaseScene;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/addons/SceneScrollCacheHandler;Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onCacheAttached(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/addons/SceneScrollCacheHandler;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private onCacheAttached(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V
    .locals 4
    .parameter "nCacheType"

    .prologue
    .line 205
    iget-boolean v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    if-nez v1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const/16 v1, 0x4f4d

    iget v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mScrollState:I

    if-ne v1, v2, :cond_2

    .line 211
    sget-object v1, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneScrollCacheHandler][onCacheAttached]: already in idle state skip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_2
    const/4 v0, 0x0

    .line 217
    .local v0, galleryBar:Lcom/htc/album/modules/ui/widget/BaseControlBar;
    iget-object v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isHostScene()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 219
    sget-object v1, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    if-ne v1, p1, :cond_3

    .line 220
    iget-object v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    move-result-object v0

    .line 231
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 232
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->setVisibility(I)V

    goto :goto_0

    .line 224
    :cond_4
    sget-object v1, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    if-ne v1, p1, :cond_5

    .line 225
    iget-object v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v0

    goto :goto_1

    .line 226
    :cond_5
    sget-object v1, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->FOOTER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    if-ne v1, p1, :cond_3

    .line 227
    iget-object v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    goto :goto_1
.end method

.method private takeSnapShot4Footer()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 339
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    .line 340
    .local v1, footer:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    if-nez v1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->isExistSnapShot()Z

    move-result v0

    .line 345
    .local v0, bExistSnapShot:Z
    iget-boolean v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsEnableDelayCache:Z

    if-ne v5, v3, :cond_2

    if-nez v0, :cond_2

    iget-boolean v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsFooterSnapShotLock:Z

    if-nez v3, :cond_2

    .line 348
    sget-object v3, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SceneScrollCacheHandler][takeSnapShot4Footer]: lock it... 500"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iput-boolean v5, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsFooterSnapShotLock:Z

    .line 350
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/16 v5, 0x1f4

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 354
    :cond_2
    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->snapShot()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 355
    .local v2, snapShot:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3

    .line 357
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mMainView:Lcom/htc/sunny2/widget/gridview/GridView;

    sget-object v4, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->FOOTER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    new-instance v5, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;

    invoke-direct {v5, p0}, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;-><init>(Lcom/htc/album/addons/SceneScrollCacheHandler;)V

    invoke-virtual {v3, v4, v2, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->postUpdateScrollCache(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;Landroid/graphics/Bitmap;Lcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;)V

    .line 362
    :cond_3
    iget-boolean v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsFooterSnapShotLock:Z

    if-eqz v3, :cond_0

    .line 364
    sget-object v3, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SceneScrollCacheHandler][takeSnapShot4Footer]: unlock it: "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsFooterSnapShotLock:Z

    goto :goto_0
.end method

.method private takeSnapShot4Header()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 295
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v1

    .line 296
    .local v1, header:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    if-nez v1, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->isExistSnapShot()Z

    move-result v0

    .line 303
    .local v0, bExistSnapShot:Z
    iget-boolean v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsEnableDelayCache:Z

    if-ne v6, v3, :cond_2

    if-nez v0, :cond_2

    iget-boolean v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsHeaderSnapShotLock:Z

    if-nez v3, :cond_2

    .line 306
    iget-boolean v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsProgressBarOn:Z

    if-eqz v3, :cond_0

    .line 308
    sget-object v3, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SceneScrollCacheHandler][takeSnapShot4Header]: lock it... 500"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {v1, v7}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->showProgressBar(Z)V

    .line 310
    iput-boolean v6, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsHeaderSnapShotLock:Z

    .line 311
    const/16 v3, 0xa

    const/4 v4, 0x0

    const/16 v5, 0x1f4

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 320
    :cond_2
    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->snapShot()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 321
    .local v2, snapShot:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3

    .line 323
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mMainView:Lcom/htc/sunny2/widget/gridview/GridView;

    sget-object v4, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    new-instance v5, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;

    invoke-direct {v5, p0}, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;-><init>(Lcom/htc/album/addons/SceneScrollCacheHandler;)V

    invoke-virtual {v3, v4, v2, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->postUpdateScrollCache(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;Landroid/graphics/Bitmap;Lcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;)V

    .line 328
    :cond_3
    iget-boolean v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsHeaderSnapShotLock:Z

    if-eqz v3, :cond_0

    .line 330
    sget-object v3, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SceneScrollCacheHandler][takeSnapShot4Header]: unlock it: "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iput-boolean v7, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsHeaderSnapShotLock:Z

    .line 332
    iget-boolean v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsProgressBarOn:Z

    if-eqz v3, :cond_0

    .line 333
    invoke-virtual {v1, v6}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->showProgressBar(Z)V

    goto :goto_0
.end method


# virtual methods
.method public enablePreciseFooterCache()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsEnablePreciseFooterCache:Z

    .line 160
    return-void
.end method

.method public enablePreciseHeaderCache()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsEnablePreciseHeaderCache:Z

    .line 156
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    return-object v0
.end method

.method public isHeaderSnapShotLock()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsHeaderSnapShotLock:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 240
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onRecycleCache(Z)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 446
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 455
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 449
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->takeSnapShot4Header()V

    goto :goto_0

    .line 452
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->takeSnapShot4Footer()V

    goto :goto_0

    .line 446
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNotifyHeaderProgressBar(Z)V
    .locals 0
    .parameter "bShow"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsProgressBarOn:Z

    .line 128
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onRecycleCache(Z)V

    goto :goto_0
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 463
    :cond_0
    return-void
.end method

.method public onRecycleCache(Z)V
    .locals 7
    .parameter "bEnableControl"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 163
    iget-boolean v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    if-nez v3, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mMainView:Lcom/htc/sunny2/widget/gridview/GridView;

    sget-object v4, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunny2/widget/gridview/GridView;->postDisplayScrollCache(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;ZLcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;)V

    .line 168
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mMainView:Lcom/htc/sunny2/widget/gridview/GridView;

    sget-object v4, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->FOOTER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunny2/widget/gridview/GridView;->postDisplayScrollCache(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;ZLcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;)V

    .line 170
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isHostScene()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 172
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    move-result-object v2

    .line 173
    .local v2, hostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    if-eqz v2, :cond_2

    .line 174
    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->releaseSnapShot()V

    .line 176
    :cond_2
    if-eqz p1, :cond_0

    .line 178
    if-eqz v2, :cond_0

    .line 179
    invoke-virtual {v2, v5}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->setVisibility(I)V

    goto :goto_0

    .line 184
    .end local v2           #hostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    :cond_3
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v1

    .line 185
    .local v1, header:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    if-eqz v1, :cond_4

    .line 186
    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->releaseSnapShot()V

    .line 188
    :cond_4
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 189
    .local v0, footer:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    if-eqz v0, :cond_5

    .line 190
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->releaseSnapShot()V

    .line 191
    :cond_5
    if-eqz p1, :cond_0

    .line 193
    if-eqz v1, :cond_6

    .line 195
    invoke-virtual {v1, v5}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setVisibility(I)V

    .line 196
    invoke-virtual {v1, v5}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->showProgressBar(Z)V

    .line 198
    :cond_6
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0, v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 469
    :cond_0
    return-void
.end method

.method public onScrollIdle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 263
    iget-boolean v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    if-nez v3, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    const/16 v3, 0x4f4d

    iput v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mScrollState:I

    .line 270
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isHostScene()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 272
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    move-result-object v2

    .line 274
    .local v2, hostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    if-eqz v2, :cond_0

    .line 275
    invoke-virtual {v2, v4}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->setVisibility(I)V

    goto :goto_0

    .line 279
    .end local v2           #hostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    :cond_2
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v1

    .line 280
    .local v1, header:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 282
    .local v0, footer:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    if-eqz v1, :cond_3

    .line 283
    invoke-virtual {v1, v4}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setVisibility(I)V

    .line 285
    :cond_3
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->setVisibility(I)V

    .line 288
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->invalidate()V

    goto :goto_0
.end method

.method public onScrolling()V
    .locals 5

    .prologue
    const/16 v3, 0x4f4e

    .line 371
    iget-boolean v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    if-nez v2, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mScrollState:I

    if-eq v3, v2, :cond_0

    .line 378
    iput v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mScrollState:I

    .line 382
    iget v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mStatusBarHeight:I

    if-nez v2, :cond_2

    .line 384
    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->getWindowStatusBarHeight(Landroid/app/Activity;)I

    move-result v2

    iput v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mStatusBarHeight:I

    .line 385
    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mMainView:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mStatusBarHeight:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setStatusBarHeight(I)V

    .line 388
    :cond_2
    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isHostScene()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 390
    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    move-result-object v1

    .line 394
    .local v1, hostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    if-eqz v1, :cond_0

    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, bitmapHost:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->isExistSnapShot()Z

    move-result v2

    if-nez v2, :cond_3

    .line 399
    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v2, :cond_3

    .line 400
    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    .line 402
    :cond_3
    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->snapShot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_0

    .line 405
    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mMainView:Lcom/htc/sunny2/widget/gridview/GridView;

    sget-object v3, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    new-instance v4, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;

    invoke-direct {v4, p0}, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;-><init>(Lcom/htc/album/addons/SceneScrollCacheHandler;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->postUpdateScrollCache(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;Landroid/graphics/Bitmap;Lcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;)V

    goto :goto_0

    .line 417
    .end local v0           #bitmapHost:Landroid/graphics/Bitmap;
    .end local v1           #hostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    :cond_4
    invoke-direct {p0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->takeSnapShot4Header()V

    .line 423
    invoke-direct {p0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->takeSnapShot4Footer()V

    goto :goto_0
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onRecycleCache(Z)V

    goto :goto_0
.end method

.method public scrollListener()Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcom/htc/album/addons/SceneScrollCacheHandler$GridViewScrollListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/album/addons/SceneScrollCacheHandler$GridViewScrollListener;-><init>(Lcom/htc/album/addons/SceneScrollCacheHandler;Lcom/htc/album/addons/SceneScrollCacheHandler$1;)V

    return-object v0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 441
    return-void
.end method

.method public uninitialize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    sget-object v0, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][uninitialize]: identify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][uninitialize]: host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isHostScene()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iput-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mActivity:Landroid/app/Activity;

    .line 145
    iput-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mMainView:Lcom/htc/sunny2/widget/gridview/GridView;

    .line 146
    iput-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    .line 148
    return-void
.end method
