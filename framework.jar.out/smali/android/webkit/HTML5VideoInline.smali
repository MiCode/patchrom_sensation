.class public Landroid/webkit/HTML5VideoInline;
.super Landroid/webkit/HTML5VideoView;
.source "HTML5VideoInline.java"


# static fields
.field private static mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private static mVideoLayerUsingSurfaceTexture:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTextureNames:[I

.field private wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 30
    const/4 v0, -0x1

    sput v0, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 1
    .parameter "videoLayerId"
    .parameter "position"
    .parameter "autoStart"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;-><init>()V

    .line 135
    iput-object v0, p0, Landroid/webkit/HTML5VideoInline;->wl:Landroid/os/PowerManager$WakeLock;

    .line 136
    iput-object v0, p0, Landroid/webkit/HTML5VideoInline;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Landroid/webkit/HTML5VideoInline;->init(IIZ)V

    .line 60
    iput-object v0, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    .line 61
    return-void
.end method

.method private setFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 131
    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 132
    return-void
.end method

.method private wakeLockPermission()I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 139
    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    .line 147
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decideDisplayMode()V
    .locals 3

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoInline;->getVideoLayerId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/webkit/HTML5VideoInline;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 66
    .local v1, surfaceTexture:Landroid/graphics/SurfaceTexture;
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 67
    .local v0, surface:Landroid/view/Surface;
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 68
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 69
    return-void
.end method

.method public deleteSurfaceTexture()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 117
    const/4 v0, -0x1

    sput v0, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    .line 118
    return-void
.end method

.method public getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;
    .locals 3
    .parameter "videoLayerId"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    sget v0, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    if-ne p1, v0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    if-nez v0, :cond_2

    .line 99
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 102
    :cond_1
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    .line 103
    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 104
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    sput-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 106
    :cond_2
    sput p1, Landroid/webkit/HTML5VideoInline;->mVideoLayerUsingSurfaceTexture:I

    .line 107
    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getTextureName()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 123
    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->mTextureNames:[I

    aget v0, v1, v0

    .line 126
    :cond_0
    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/webkit/HTML5VideoView;->pause()V

    .line 154
    invoke-direct {p0}, Landroid/webkit/HTML5VideoInline;->wakeLockPermission()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->wl:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "HTML5VideoInline"

    const-string v1, "-release wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Landroid/webkit/HTML5VideoInline;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 159
    :cond_0
    return-void
.end method

.method public pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 89
    return-void
.end method

.method public prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 3
    .parameter "proxy"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/webkit/HTML5VideoView;->prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 76
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoInline;->setFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 79
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 83
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoInline;->getPauseDuringPreparing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 36
    invoke-super {p0}, Landroid/webkit/HTML5VideoView;->start()V

    .line 39
    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->wl:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 40
    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/HTML5VideoInline;->mContext:Landroid/content/Context;

    .line 41
    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 43
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x2000000a

    const-string v2, "HTML5VideoInline"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/HTML5VideoInline;->wl:Landroid/os/PowerManager$WakeLock;

    .line 44
    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->wl:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 48
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    invoke-direct {p0}, Landroid/webkit/HTML5VideoInline;->wakeLockPermission()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->wl:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    const-string v1, "HTML5VideoInline"

    const-string v2, "+acquire wakelock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v1, p0, Landroid/webkit/HTML5VideoInline;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 55
    :cond_1
    return-void
.end method

.method public surfaceTextureDeleted()Z
    .locals 1

    .prologue
    .line 111
    sget-object v0, Landroid/webkit/HTML5VideoInline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
