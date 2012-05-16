.class public Lcom/htc/music/MusicPluginManager;
.super Ljava/lang/Object;
.source "MusicPluginManager.java"

# interfaces
.implements Lcom/htc/music/IPluginIPCNotify;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/MusicPluginManager$NonUiHandler;,
        Lcom/htc/music/MusicPluginManager$MusicPlugin;,
        Lcom/htc/music/MusicPluginManager$PluginConnection;
    }
.end annotation


# static fields
.field private static final DELETE_ART_FILE_CACHE:I = 0x1

.field private static final DELETE_TIME_DELAY:I = 0x1388

.field private static final MAX_FILE_CACHE:I = 0x64

.field private static final MAX_ICON_SIZE:I = 0x40

.field private static final PLUGIN_META_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.metachanged"

.field private static final PLUGIN_PLAYBACK_COMPLETE:Ljava/lang/String; = "com.htc.music.plugin.playbackcomplete"

.field private static final PLUGIN_PLAYSTATE_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.statechanged"

.field private static final PLUGIN_QUEUE_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.queuechanged"

.field private static final TAG:Ljava/lang/String; = "[MusicPluginManager]"


# instance fields
.field private final mBinder:Lcom/htc/music/IPluginIPCNotify$Stub;

.field private mBindingClass:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

.field private mExtPluginList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/MusicPluginManager$MusicPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsBinding:Z

.field private mLastPluginClass:Ljava/lang/String;

.field private mMainService:Lcom/htc/music/MediaPlaybackService;

.field private mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

.field private mPluginCount:I

.field private mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;


# direct methods
.method public constructor <init>(Lcom/htc/music/MediaPlaybackService;Landroid/content/Context;)V
    .locals 2
    .parameter "service"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    .line 41
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 43
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    .line 45
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 47
    iput v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    .line 49
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 51
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    .line 53
    iput-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    .line 55
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    .line 59
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mLastPluginClass:Ljava/lang/String;

    .line 608
    new-instance v0, Lcom/htc/music/MusicPluginManager$1;

    invoke-direct {v0, p0}, Lcom/htc/music/MusicPluginManager$1;-><init>(Lcom/htc/music/MusicPluginManager;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBinder:Lcom/htc/music/IPluginIPCNotify$Stub;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    .line 66
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    .line 67
    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->refreshPlugins()V

    .line 68
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlbumArtFileDeleteWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 69
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 70
    new-instance v0, Lcom/htc/music/MusicPluginManager$NonUiHandler;

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/MusicPluginManager$NonUiHandler;-><init>(Lcom/htc/music/MusicPluginManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    .line 71
    iput-object p2, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "service"
    .parameter "serviceToBind"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    .line 41
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 43
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    .line 45
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 47
    iput v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    .line 49
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 51
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    .line 53
    iput-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    .line 55
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    .line 59
    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mLastPluginClass:Ljava/lang/String;

    .line 608
    new-instance v0, Lcom/htc/music/MusicPluginManager$1;

    invoke-direct {v0, p0}, Lcom/htc/music/MusicPluginManager$1;-><init>(Lcom/htc/music/MusicPluginManager;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBinder:Lcom/htc/music/IPluginIPCNotify$Stub;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    .line 76
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    .line 77
    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->refreshPlugins()V

    .line 78
    invoke-direct {p0, p2, v1}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;Z)Z

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlbumArtFileDeleteWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 80
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance v0, Lcom/htc/music/MusicPluginManager$NonUiHandler;

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/MusicPluginManager$NonUiHandler;-><init>(Lcom/htc/music/MusicPluginManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    .line 82
    iput-object p3, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method static synthetic access$1002(Lcom/htc/music/MusicPluginManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/music/MusicPluginManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/music/MusicPluginManager;)[Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/MusicPluginManager;)Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/music/MusicPluginManager;Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/htc/music/MusicPluginManager;)Lcom/htc/music/MediaPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/music/MusicPluginManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    return p1
.end method

.method private bindPluginService(IZ)Z
    .locals 8
    .parameter "index"
    .parameter "startActivity"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 393
    monitor-enter p0

    .line 395
    :try_start_0
    new-instance v0, Lcom/htc/music/MusicPluginManager$PluginConnection;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/htc/music/MusicPluginManager$PluginConnection;-><init>(Lcom/htc/music/MusicPluginManager;Lcom/htc/music/MusicPluginManager$1;)V

    .line 396
    .local v0, conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v5, p1

    .line 398
    .local v2, plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    if-nez v2, :cond_0

    .line 399
    const-string v4, "[MusicPluginManager]"

    const-string v5, "bindPluginService fails, plugin is null. 3 parameters."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 423
    :try_start_1
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(I)V

    .line 400
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    .end local v0           #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .end local v2           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :goto_0
    return v3

    .line 403
    .restart local v0       #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .restart local v2       #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :cond_0
    :try_start_2
    invoke-virtual {v2, p2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setStartActivity(Z)V

    .line 404
    invoke-virtual {v2, v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setConnection(Landroid/content/ServiceConnection;)V

    .line 405
    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    new-instance v6, Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v0, v7}, Lcom/htc/music/MediaPlaybackService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 406
    const-string v5, "[MusicPluginManager]"

    const-string v6, "bindPluginService succeed."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    .line 408
    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 423
    :try_start_3
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(I)V

    .line 409
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v4

    goto :goto_0

    .line 411
    :cond_1
    :try_start_4
    const-string v4, "[MusicPluginManager]"

    const-string v5, "bindPluginService failed."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    .line 423
    :try_start_5
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(I)V

    .line 412
    monitor-exit p0

    goto :goto_0

    .line 425
    .end local v0           #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .end local v2           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 414
    :catch_0
    move-exception v1

    .line 415
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 416
    const-string v4, "[MusicPluginManager]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindPluginService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 423
    :try_start_7
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(I)V

    .line 417
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 418
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 419
    .local v1, e:Ljava/lang/NullPointerException;
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 420
    const-string v4, "[MusicPluginManager]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindPluginService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 423
    :try_start_9
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(I)V

    .line 421
    monitor-exit p0

    goto :goto_0

    .line 423
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catchall_1
    move-exception v3

    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(I)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method private bindPluginService(Ljava/lang/String;Z)Z
    .locals 8
    .parameter "className"
    .parameter "startActivity"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 352
    monitor-enter p0

    .line 354
    :try_start_0
    new-instance v0, Lcom/htc/music/MusicPluginManager$PluginConnection;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/htc/music/MusicPluginManager$PluginConnection;-><init>(Lcom/htc/music/MusicPluginManager;Lcom/htc/music/MusicPluginManager$1;)V

    .line 355
    .local v0, conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    invoke-virtual {p0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginByClass(Ljava/lang/String;)Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v2

    .line 357
    .local v2, plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    if-nez v2, :cond_0

    .line 358
    const-string v4, "[MusicPluginManager]"

    const-string v5, "bindPluginService fails, plugin is null. 2 parameters."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 382
    :try_start_1
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 359
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    .end local v0           #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .end local v2           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :goto_0
    return v3

    .line 362
    .restart local v0       #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .restart local v2       #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :cond_0
    :try_start_2
    invoke-virtual {v2, p2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setStartActivity(Z)V

    .line 363
    invoke-virtual {v2, v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setConnection(Landroid/content/ServiceConnection;)V

    .line 364
    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v0, v7}, Lcom/htc/music/MediaPlaybackService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 365
    const-string v5, "[MusicPluginManager]"

    const-string v6, "bindPluginService succeed."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    .line 367
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 382
    :try_start_3
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 368
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v4

    goto :goto_0

    .line 370
    :cond_1
    :try_start_4
    const-string v4, "[MusicPluginManager]"

    const-string v5, "bindPluginService failed."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    .line 382
    :try_start_5
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 371
    monitor-exit p0

    goto :goto_0

    .line 384
    .end local v0           #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .end local v2           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 373
    :catch_0
    move-exception v1

    .line 374
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 375
    const-string v4, "[MusicPluginManager]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindPluginService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 382
    :try_start_7
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 376
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 377
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 378
    .local v1, e:Ljava/lang/NullPointerException;
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 379
    const-string v4, "[MusicPluginManager]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindPluginService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 382
    :try_start_9
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 380
    monitor-exit p0

    goto :goto_0

    .line 382
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catchall_1
    move-exception v3

    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method private unbindOtherServices(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 524
    monitor-enter p0

    .line 525
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 526
    if-eq p1, v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 527
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getConnection()Landroid/content/ServiceConnection;

    move-result-object v0

    .line 528
    .local v0, conn:Landroid/content/ServiceConnection;
    if-eqz v0, :cond_0

    .line 529
    const-string v2, "[MusicPluginManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbinding Service of plugin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v4, v4, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v2, v0}, Lcom/htc/music/MediaPlaybackService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 531
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setService(Lcom/htc/music/IMusicPluginService;)V

    .line 532
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setConnection(Landroid/content/ServiceConnection;)V

    .line 533
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 534
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 525
    .end local v0           #conn:Landroid/content/ServiceConnection;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    :cond_1
    monitor-exit p0

    .line 539
    return-void

    .line 538
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private unbindOtherServices(Ljava/lang/String;)V
    .locals 6
    .parameter "className"

    .prologue
    .line 502
    if-nez p1, :cond_0

    .line 521
    :goto_0
    return-void

    .line 503
    :cond_0
    monitor-enter p0

    .line 504
    const/4 v2, 0x0

    .line 505
    .local v2, plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    iget v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    .line 506
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v3, v1

    .line 507
    if-eqz v2, :cond_1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 509
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getConnection()Landroid/content/ServiceConnection;

    move-result-object v0

    .line 510
    .local v0, conn:Landroid/content/ServiceConnection;
    if-eqz v0, :cond_1

    .line 511
    const-string v3, "[MusicPluginManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unbinding Service of plugin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v5, v5, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3, v0}, Lcom/htc/music/MediaPlaybackService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 513
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setService(Lcom/htc/music/IMusicPluginService;)V

    .line 514
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setConnection(Landroid/content/ServiceConnection;)V

    .line 515
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 516
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 505
    .end local v0           #conn:Landroid/content/ServiceConnection;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 520
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBinder:Lcom/htc/music/IPluginIPCNotify$Stub;

    return-object v0
.end method

.method protected bindPluginService(Ljava/lang/String;ZZ)Z
    .locals 8
    .parameter "actionName"
    .parameter "startActivity"
    .parameter "playSongAtBeginning"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 435
    monitor-enter p0

    .line 437
    :try_start_0
    new-instance v0, Lcom/htc/music/MusicPluginManager$PluginConnection;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/htc/music/MusicPluginManager$PluginConnection;-><init>(Lcom/htc/music/MusicPluginManager;Lcom/htc/music/MusicPluginManager$1;)V

    .line 438
    .local v0, conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    invoke-virtual {p0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginByClass(Ljava/lang/String;)Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v2

    .line 439
    .local v2, plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    invoke-virtual {v2, p2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setStartActivity(Z)V

    .line 440
    invoke-virtual {v2, p3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPlayAtBeginning(Z)V

    .line 441
    invoke-virtual {v2, v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setConnection(Landroid/content/ServiceConnection;)V

    .line 443
    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v0, v7}, Lcom/htc/music/MediaPlaybackService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 444
    const-string v5, "[MusicPluginManager]"

    const-string v6, "bindPluginService succeed."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    .line 446
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 461
    :try_start_1
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 447
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 459
    .end local v0           #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .end local v2           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :goto_0
    return v3

    .line 449
    .restart local v0       #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .restart local v2       #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :cond_0
    :try_start_2
    const-string v3, "[MusicPluginManager]"

    const-string v5, "bindPluginService failed."

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 461
    :try_start_3
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 450
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v3, v4

    goto :goto_0

    .line 452
    .end local v0           #conn:Lcom/htc/music/MusicPluginManager$PluginConnection;
    .end local v2           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :catch_0
    move-exception v1

    .line 453
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 454
    const-string v3, "[MusicPluginManager]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindPluginService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 461
    :try_start_5
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 455
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v3, v4

    goto :goto_0

    .line 456
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 457
    .local v1, e:Ljava/lang/NullPointerException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 458
    const-string v3, "[MusicPluginManager]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindPluginService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 461
    :try_start_7
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    .line 459
    monitor-exit p0

    move v3, v4

    goto :goto_0

    .line 461
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v3

    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    throw v3

    .line 463
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3
.end method

.method public clearAlbumArtRequests()V
    .locals 2

    .prologue
    .line 1192
    monitor-enter p0

    .line 1193
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1195
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->clearAlbumArtRequests()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1200
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1201
    return-void

    .line 1196
    :catch_0
    move-exception v0

    .line 1197
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1200
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public clearNowplayingQueueRequests()V
    .locals 2

    .prologue
    .line 1232
    monitor-enter p0

    .line 1233
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1235
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->clearNowplayingQueueRequests()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1240
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1241
    return-void

    .line 1236
    :catch_0
    move-exception v0

    .line 1237
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1240
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public duration()J
    .locals 3

    .prologue
    .line 843
    monitor-enter p0

    .line 844
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 846
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->duration()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    :try_start_2
    monitor-exit p0

    .line 852
    :goto_0
    return-wide v1

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 852
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 853
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getAlbumArtPathByPosition(I)Ljava/lang/String;
    .locals 6
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 1122
    monitor-enter p0

    .line 1123
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v5, :cond_3

    if-ltz p1, :cond_3

    .line 1124
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1125
    .local v2, key:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1126
    .local v3, path:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 1127
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1128
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1129
    monitor-exit p0

    .line 1145
    .end local v1           #file:Ljava/io/File;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #path:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1131
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #key:Ljava/lang/Integer;
    .restart local v3       #path:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    .end local v1           #file:Ljava/io/File;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v5}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/htc/music/IMusicPluginService;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v3

    .line 1136
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 1137
    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1139
    :cond_2
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 1146
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #path:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1140
    .restart local v2       #key:Ljava/lang/Integer;
    .restart local v3       #path:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1141
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1142
    monitor-exit p0

    move-object v3, v4

    goto :goto_0

    .line 1145
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #path:Ljava/lang/String;
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v4

    goto :goto_0
.end method

.method public getAlbumArtPathByShufflePosition(I)Ljava/lang/String;
    .locals 5
    .parameter "position"

    .prologue
    .line 1158
    monitor-enter p0

    .line 1159
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v4, :cond_3

    if-ltz p1, :cond_3

    .line 1160
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1161
    .local v2, key:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1162
    .local v3, path:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 1163
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1164
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1165
    monitor-exit p0

    .line 1180
    .end local v1           #file:Ljava/io/File;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #path:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1167
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #key:Ljava/lang/Integer;
    .restart local v3       #path:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    .end local v1           #file:Ljava/io/File;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/htc/music/IMusicPluginService;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v3

    .line 1172
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1173
    iget-object v4, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1175
    :cond_2
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 1181
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #path:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1176
    .restart local v2       #key:Ljava/lang/Integer;
    .restart local v3       #path:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1177
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1180
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #path:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 897
    monitor-enter p0

    .line 898
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 900
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getAlbumName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    .line 906
    :goto_0
    return-object v1

    .line 901
    :catch_0
    move-exception v0

    .line 902
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 906
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 907
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 911
    monitor-enter p0

    .line 912
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 914
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getArtistName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    .line 920
    :goto_0
    return-object v1

    .line 915
    :catch_0
    move-exception v0

    .line 916
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 920
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 921
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method getAudioSessionId()I
    .locals 2

    .prologue
    .line 1305
    monitor-enter p0

    .line 1306
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1308
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getAudioSessionId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 1313
    :goto_0
    return v1

    .line 1309
    :catch_0
    move-exception v0

    .line 1310
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1313
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1314
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getBindingClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBufferingPercent()I
    .locals 2

    .prologue
    .line 1069
    monitor-enter p0

    .line 1070
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1072
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getBufferingPercent()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 1077
    :goto_0
    return v1

    .line 1073
    :catch_0
    move-exception v0

    .line 1074
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1077
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1078
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getComposer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1043
    monitor-enter p0

    .line 1044
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1046
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getComposer()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    .line 1051
    :goto_0
    return-object v1

    .line 1047
    :catch_0
    move-exception v0

    .line 1048
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1051
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1052
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getCurrentPlugService()Lcom/htc/music/IMusicPluginService;
    .locals 1

    .prologue
    .line 331
    monitor-enter p0

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentPluginClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    monitor-enter p0

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    .line 341
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExternalPluginCount()I
    .locals 1

    .prologue
    .line 995
    monitor-enter p0

    .line 996
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 997
    const/4 v0, 0x0

    monitor-exit p0

    .line 999
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 1001
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1017
    monitor-enter p0

    .line 1018
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1020
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getFileName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    .line 1025
    :goto_0
    return-object v1

    .line 1021
    :catch_0
    move-exception v0

    .line 1022
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1025
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1026
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getGenre()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1030
    monitor-enter p0

    .line 1031
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1033
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getGenre()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    .line 1038
    :goto_0
    return-object v1

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1038
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1039
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1056
    monitor-enter p0

    .line 1057
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1059
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getLocation()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    .line 1064
    :goto_0
    return-object v1

    .line 1060
    :catch_0
    move-exception v0

    .line 1061
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1064
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1065
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getNowplayingQueue(I)V
    .locals 2
    .parameter "interval"

    .prologue
    .line 1214
    monitor-enter p0

    .line 1215
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1217
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->getNowplayingQueue(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1222
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1223
    return-void

    .line 1218
    :catch_0
    move-exception v0

    .line 1219
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1222
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getPluginByClass(Ljava/lang/String;)Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .locals 3
    .parameter "classname"

    .prologue
    const/4 v1, 0x0

    .line 242
    monitor-enter p0

    .line 243
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v2, :cond_1

    .line 244
    :cond_0
    monitor-exit p0

    .line 254
    :goto_0
    return-object v1

    .line 247
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge v0, v2, :cond_4

    .line 248
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 247
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 250
    :cond_3
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 251
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v1, v1, v0

    monitor-exit p0

    goto :goto_0

    .line 255
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 254
    .restart local v0       #i:I
    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPluginByIndex(I)Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .locals 1
    .parameter "index"

    .prologue
    .line 264
    monitor-enter p0

    .line 265
    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-lt p1, v0, :cond_1

    .line 266
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    .line 269
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v0, v0, p1

    monitor-exit p0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPluginClass(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 227
    monitor-enter p0

    .line 228
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v1, :cond_0

    monitor-exit p0

    .line 236
    :goto_0
    return-object v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 233
    :cond_1
    if-ltz p1, :cond_2

    :try_start_1
    iget v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge p1, v1, :cond_2

    .line 234
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 236
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPluginCount()I
    .locals 1

    .prologue
    .line 191
    monitor-enter p0

    .line 192
    :try_start_0
    iget v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    monitor-exit p0

    return v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPluginDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 212
    monitor-enter p0

    .line 213
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v1, :cond_0

    monitor-exit p0

    .line 221
    :goto_0
    return-object v0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 218
    :cond_1
    if-ltz p1, :cond_2

    :try_start_1
    iget v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge p1, v1, :cond_2

    .line 219
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginDescription()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 221
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPluginIcon()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/16 v8, 0x40

    const/4 v6, 0x0

    .line 289
    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_5

    .line 292
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 293
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    :goto_0
    return-object v6

    .line 295
    :cond_0
    :try_start_3
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/music/IMusicPluginService;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 296
    .local v2, icon:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_4

    .line 297
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 298
    .local v5, width:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 299
    .local v1, height:I
    const/4 v3, 0x0

    .line 301
    .local v3, needScale:Z
    :goto_1
    if-ge v5, v8, :cond_1

    if-lt v1, v8, :cond_2

    .line 302
    :cond_1
    div-int/lit8 v5, v5, 0x2

    .line 303
    div-int/lit8 v1, v1, 0x2

    .line 304
    const/4 v3, 0x1

    goto :goto_1

    .line 307
    :cond_2
    if-eqz v3, :cond_3

    .line 308
    const-string v7, "[MusicPluginManager]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPluginIcon scaled size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const/4 v7, 0x1

    invoke-static {v2, v5, v1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 310
    .local v4, temp:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 311
    move-object v2, v4

    .line 314
    .end local v4           #temp:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    invoke-virtual {v7, v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginIcon(Landroid/graphics/Bitmap;)V

    .line 315
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    :try_start_4
    monitor-exit p0

    goto :goto_0

    .line 327
    .end local v1           #height:I
    .end local v2           #icon:Landroid/graphics/Bitmap;
    .end local v3           #needScale:Z
    .end local v5           #width:I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 317
    .restart local v2       #icon:Landroid/graphics/Bitmap;
    :cond_4
    :try_start_5
    monitor-exit p0

    goto :goto_0

    .line 320
    .end local v2           #icon:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 321
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 322
    monitor-exit p0

    goto :goto_0

    .line 325
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public getPluginName(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 197
    monitor-enter p0

    .line 198
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v1, :cond_0

    monitor-exit p0

    .line 206
    :goto_0
    return-object v0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$300(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 203
    :cond_1
    if-ltz p1, :cond_2

    :try_start_1
    iget v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge p1, v1, :cond_2

    .line 204
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 206
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method getPluginNotReadyMsg()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1288
    monitor-enter p0

    .line 1289
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v2, :cond_0

    .line 1290
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1296
    :goto_0
    return-object v1

    .line 1293
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/music/IMusicPluginService;->getPluginNotReadyMsg()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 1298
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1294
    :catch_0
    move-exception v0

    .line 1295
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1296
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getPluginServiceByClass(Ljava/lang/String;)Lcom/htc/music/IMusicPluginService;
    .locals 3
    .parameter "classname"

    .prologue
    const/4 v1, 0x0

    .line 274
    monitor-enter p0

    .line 275
    if-nez p1, :cond_0

    .line 276
    :try_start_0
    monitor-exit p0

    .line 284
    :goto_0
    return-object v1

    .line 278
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge v0, v2, :cond_2

    .line 279
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    monitor-exit p0

    goto :goto_0

    .line 285
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 278
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 284
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPositionByShufflePosition(I)I
    .locals 2
    .parameter "shufflePosition"

    .prologue
    .line 1088
    monitor-enter p0

    .line 1089
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1091
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->getPositionByShufflePosition(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 1096
    :goto_0
    return v1

    .line 1092
    :catch_0
    move-exception v0

    .line 1093
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1096
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    monitor-exit p0

    goto :goto_0

    .line 1097
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getQueuePosition()I
    .locals 2

    .prologue
    .line 754
    monitor-enter p0

    .line 755
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 757
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getQueuePosition()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 762
    :goto_0
    return v1

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 762
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 763
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getQueueSize()I
    .locals 2

    .prologue
    .line 925
    monitor-enter p0

    .line 926
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 928
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getQueueSize()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 933
    :goto_0
    return v1

    .line 929
    :catch_0
    move-exception v0

    .line 930
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 933
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 934
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getRepeatMode()I
    .locals 2

    .prologue
    .line 976
    monitor-enter p0

    .line 977
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 979
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getRepeatMode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 984
    :goto_0
    return v1

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 984
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 985
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getShuffleMode()I
    .locals 2

    .prologue
    .line 951
    monitor-enter p0

    .line 952
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 954
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getShuffleMode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 959
    :goto_0
    return v1

    .line 955
    :catch_0
    move-exception v0

    .line 956
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 959
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 960
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getShufflePositionByPosition(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 1101
    monitor-enter p0

    .line 1102
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1104
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->getShufflePositionByPosition(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 1109
    :goto_0
    return v1

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1109
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    monitor-exit p0

    goto :goto_0

    .line 1110
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getTrackDetails(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1252
    monitor-enter p0

    .line 1253
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1255
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->getTrackDetails(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1260
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1261
    return-void

    .line 1256
    :catch_0
    move-exception v0

    .line 1257
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1260
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 883
    monitor-enter p0

    .line 884
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 886
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getTrackName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    .line 892
    :goto_0
    return-object v1

    .line 887
    :catch_0
    move-exception v0

    .line 888
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 892
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 893
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isBindingService()Z
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    monitor-exit p0

    return v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isMusicPluginExist()Z
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 767
    monitor-enter p0

    .line 768
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 770
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->isPlaying()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    .line 776
    :goto_0
    return v1

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 776
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 777
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isPluginConnected()Z
    .locals 1

    .prologue
    .line 989
    monitor-enter p0

    .line 990
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 991
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPluginMode()Z
    .locals 2

    .prologue
    .line 1588
    monitor-enter p0

    .line 1589
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->isBindingService()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->isPluginConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mLastPluginClass:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mLastPluginClass:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1591
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    .line 1593
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1595
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isPluginReady()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1270
    monitor-enter p0

    .line 1271
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v2, :cond_0

    .line 1272
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1278
    :goto_0
    return v1

    .line 1275
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/music/IMusicPluginService;->isPluginReady()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 1280
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1276
    :catch_0
    move-exception v0

    .line 1277
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1278
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 831
    monitor-enter p0

    .line 832
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 834
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->next()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 839
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 840
    return-void

    .line 835
    :catch_0
    move-exception v0

    .line 836
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 839
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onAlbumArtPathByShuffleUpdated(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "index"
    .parameter "path"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 676
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    if-gez p1, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    .line 680
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 681
    const-string v3, "[MusicPluginManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentPlugin.mPluginClass: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v3, "[MusicPluginManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "className: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 685
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 686
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 689
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3, p1, p2}, Lcom/htc/music/MediaPlaybackService;->pluginAlbumArtPathByShuffleUpdated(ILjava/lang/String;)V

    .line 692
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    if-eqz v3, :cond_0

    .line 693
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    invoke-virtual {v3, v5}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 694
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, directory:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    invoke-virtual {v3, v5, v0}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 696
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public onAlbumArtPathUpdated(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "index"
    .parameter "path"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 703
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    if-gez p1, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    .line 707
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 708
    const-string v3, "[MusicPluginManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentPlugin.mPluginClass: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v3, "[MusicPluginManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "className: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 712
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 713
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 716
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3, p1, p2}, Lcom/htc/music/MediaPlaybackService;->pluginAlbumArtPathUpdated(ILjava/lang/String;)V

    .line 719
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    if-eqz v3, :cond_0

    .line 720
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    invoke-virtual {v3, v5}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 721
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, directory:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    invoke-virtual {v3, v5, v0}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 723
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "errorMessage"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1568
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1569
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.onerror"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1570
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1571
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1573
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onNowplayingQueueUpdated([Landroid/content/ContentValues;IILjava/lang/String;)V
    .locals 3
    .parameter "values"
    .parameter "start"
    .parameter "end"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 730
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 732
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 733
    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentPlugin.mPluginClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 738
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->pluginNowplayingQueueUpdated([Landroid/content/ContentValues;II)V

    goto :goto_0
.end method

.method public onPluginSelected(I)V
    .locals 4
    .parameter "arg1"

    .prologue
    .line 470
    monitor-enter p0

    .line 471
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 472
    :cond_0
    monitor-exit p0

    .line 499
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 476
    .local v2, plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    if-nez v2, :cond_2

    .line 477
    monitor-exit p0

    goto :goto_0

    .line 498
    .end local v2           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 480
    .restart local v2       #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :cond_2
    :try_start_1
    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, className:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 483
    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin()V

    .line 486
    :cond_3
    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_4

    .line 488
    :try_start_2
    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/music/IMusicPluginService;->startPluginActivity()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 492
    :goto_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 489
    :catch_0
    move-exception v1

    .line 490
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 494
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_4
    if-eqz v0, :cond_5

    .line 495
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;Z)Z

    .line 498
    :cond_5
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public onToastWarning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "errorMessage"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1577
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/music/MediaPlaybackService;->showPluginToast(Ljava/lang/String;I)V

    .line 1579
    :cond_0
    return-void
.end method

.method public onTrackDetailsUpdated(ILandroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .parameter "position"
    .parameter "values"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 742
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-gez p1, :cond_1

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 744
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 745
    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentPlugin.mPluginClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 750
    :cond_2
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->pluginTrackDetailsUpdated(ILandroid/content/ContentValues;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 793
    monitor-enter p0

    .line 794
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 796
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->pause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 801
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 802
    return-void

    .line 797
    :catch_0
    move-exception v0

    .line 798
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 801
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public play()V
    .locals 2

    .prologue
    .line 805
    monitor-enter p0

    .line 806
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 808
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 813
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 814
    return-void

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 813
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "action"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 648
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v0, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pluginNotifyChange action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " class name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 654
    const-string v0, "com.htc.music.plugin.metachanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 655
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.changeart"

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :cond_2
    const-string v0, "com.htc.music.plugin.statechanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 658
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_3
    const-string v0, "com.htc.music.plugin.playbackcomplete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 660
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :cond_4
    const-string v0, "com.htc.music.plugin.queuechanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 663
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 664
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 665
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 667
    :cond_5
    const-string v0, "[MusicPluginManager]"

    const-string v1, "unknown plugin notify action"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 670
    :cond_6
    const-string v0, "[MusicPluginManager]"

    const-string v1, "class name not match."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public position()J
    .locals 3

    .prologue
    .line 857
    monitor-enter p0

    .line 858
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 860
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->position()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    :try_start_2
    monitor-exit p0

    .line 865
    :goto_0
    return-wide v1

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 865
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 866
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public prev()V
    .locals 2

    .prologue
    .line 817
    monitor-enter p0

    .line 818
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 820
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->prev()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 825
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 826
    return-void

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 825
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public refreshPlugins()V
    .locals 10

    .prologue
    .line 108
    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-nez v7, :cond_0

    .line 113
    monitor-exit p0

    .line 188
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "AddMusicPluginServices"

    invoke-static {v7, v8}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getPlugins(Landroid/content/Context;Ljava/lang/String;)[Lcom/htc/opensense/plugin/Plugin;

    move-result-object v6

    .line 117
    .local v6, plugins:[Lcom/htc/opensense/plugin/Plugin;
    if-nez v6, :cond_1

    .line 118
    const-string v7, "[MusicPluginManager]"

    const-string v8, "PluginRegistryHelper.getPlugins return null"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    monitor-exit p0

    goto :goto_0

    .line 187
    .end local v6           #plugins:[Lcom/htc/opensense/plugin/Plugin;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 122
    .restart local v6       #plugins:[Lcom/htc/opensense/plugin/Plugin;
    :cond_1
    const/4 v4, 0x0

    .line 124
    .local v4, pluginChanged:Z
    :try_start_1
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    array-length v8, v6

    if-ne v7, v8, :cond_6

    .line 125
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_2

    .line 126
    aget-object v7, v6, v2

    iget-object v7, v7, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, className:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v7, v7, v2

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-nez v7, :cond_5

    .line 128
    const/4 v4, 0x1

    .line 140
    .end local v0           #className:Ljava/lang/String;
    .end local v2           #i:I
    :cond_2
    :goto_2
    if-eqz v4, :cond_7

    .line 141
    :try_start_2
    array-length v7, v6

    new-array v5, v7, [Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 142
    .local v5, pluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 143
    const-string v7, "[MusicPluginManager]"

    const-string v8, "refreshPlugins: plugin changed since last refresh."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    array-length v7, v6

    if-ge v2, v7, :cond_9

    .line 149
    aget-object v7, v6, v2

    iget-object v7, v7, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/music/MusicPluginManager;->getPluginByClass(Ljava/lang/String;)Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v3

    .line 150
    .local v3, plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    if-eqz v3, :cond_8

    .line 152
    aput-object v3, v5, v2

    .line 155
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v7, :cond_3

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 156
    iput-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 160
    :cond_3
    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 161
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 125
    .end local v3           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .end local v5           #pluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .restart local v0       #className:Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    .end local v0           #className:Ljava/lang/String;
    .end local v2           #i:I
    :cond_6
    const/4 v4, 0x1

    goto :goto_2

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 137
    const-string v7, "[MusicPluginManager]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshPlugins: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 145
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_7
    monitor-exit p0

    goto/16 :goto_0

    .line 165
    .restart local v2       #i:I
    .restart local v3       #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .restart local v5       #pluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :cond_8
    new-instance v7, Lcom/htc/music/MusicPluginManager$MusicPlugin;

    invoke-direct {v7, p0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;-><init>(Lcom/htc/music/MusicPluginManager;)V

    aput-object v7, v5, v2

    .line 166
    aget-object v7, v5, v2

    aget-object v8, v6, v2

    iget-object v8, v8, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginClass(Ljava/lang/String;)V

    .line 167
    aget-object v7, v5, v2

    aget-object v8, v6, v2

    iget-object v8, v8, Lcom/htc/opensense/plugin/Plugin;->description:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginDescription(Ljava/lang/String;)V

    .line 168
    aget-object v7, v5, v2

    aget-object v8, v6, v2

    iget-object v8, v8, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginPackage(Ljava/lang/String;)V

    .line 169
    aget-object v7, v5, v2

    aget-object v8, v6, v2

    iget-object v8, v8, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginName(Ljava/lang/String;)V

    .line 171
    aget-object v7, v5, v2

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    aget-object v7, v5, v2

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 173
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    aget-object v8, v5, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 179
    .end local v3           #plugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :cond_9
    iput-object v5, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 180
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v7, :cond_a

    .line 181
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    array-length v7, v7

    iput v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    .line 185
    :goto_5
    const/4 v6, 0x0

    .line 187
    monitor-exit p0

    goto/16 :goto_0

    .line 183
    :cond_a
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5
.end method

.method public resetMusicPluginManager()V
    .locals 5

    .prologue
    .line 542
    monitor-enter p0

    .line 543
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge v1, v2, :cond_2

    .line 544
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    .line 546
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/music/IMusicPluginService;->unregisterCallback()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 552
    :cond_0
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getConnection()Landroid/content/ServiceConnection;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 553
    const-string v2, "[MusicPluginManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbinding Service of plugin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v4, v4, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getConnection()Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/MediaPlaybackService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 556
    :cond_1
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->reset()V

    .line 557
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 543
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 549
    const-string v2, "[MusicPluginManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetMusicPluginManager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 567
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 560
    :cond_2
    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 561
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    .line 562
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 563
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    .line 564
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 565
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    .line 566
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    .line 567
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 568
    return-void
.end method

.method public seek(J)J
    .locals 3
    .parameter "pos"

    .prologue
    .line 870
    monitor-enter p0

    .line 871
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 873
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/htc/music/IMusicPluginService;->seek(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    :try_start_2
    monitor-exit p0

    .line 878
    :goto_0
    return-wide v1

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 878
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 879
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setLastPluginClass(Ljava/lang/String;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 1582
    monitor-enter p0

    .line 1583
    :try_start_0
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mLastPluginClass:Ljava/lang/String;

    .line 1584
    monitor-exit p0

    .line 1585
    return-void

    .line 1584
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setQueuePosition(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 1005
    monitor-enter p0

    .line 1006
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1008
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->setQueuePosition(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1013
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1014
    return-void

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1013
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setRepeatMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 964
    monitor-enter p0

    .line 965
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 967
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->setRepeatMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 972
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 973
    return-void

    .line 968
    :catch_0
    move-exception v0

    .line 969
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 972
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setShuffleMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 938
    monitor-enter p0

    .line 939
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 941
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->setShuffleMode(I)V

    .line 942
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 947
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 948
    return-void

    .line 943
    :catch_0
    move-exception v0

    .line 944
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 947
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 781
    monitor-enter p0

    .line 782
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 784
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 789
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 790
    return-void

    .line 785
    :catch_0
    move-exception v0

    .line 786
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 789
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stopActivePlugin()V
    .locals 4

    .prologue
    .line 585
    monitor-enter p0

    .line 587
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->pause()V

    .line 590
    :cond_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->unregisterCallback()V

    .line 591
    const-string v1, "[MusicPluginManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbinding Service of plugin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$800(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 593
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1, v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$802(Lcom/htc/music/MusicPluginManager$MusicPlugin;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 594
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1, v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$102(Lcom/htc/music/MusicPluginManager$MusicPlugin;Lcom/htc/music/IMusicPluginService;)Lcom/htc/music/IMusicPluginService;

    .line 595
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 596
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 603
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    .line 605
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 606
    return-void

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 603
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    goto :goto_0

    .line 605
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 599
    :catch_1
    move-exception v0

    .line 600
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 601
    const-string v1, "[MusicPluginManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopActivePlugin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 603
    const/4 v1, 0x0

    :try_start_5
    iput-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public stopHandlerThread()V
    .locals 1

    .prologue
    .line 571
    monitor-enter p0

    .line 572
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    .line 577
    :cond_0
    monitor-exit p0

    .line 578
    return-void

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
