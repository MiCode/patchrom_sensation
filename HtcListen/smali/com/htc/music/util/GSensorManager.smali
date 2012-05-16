.class public Lcom/htc/music/util/GSensorManager;
.super Ljava/lang/Object;
.source "GSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;,
        Lcom/htc/music/util/GSensorManager$OrientationListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_TIMEOUT:I = 0x2710

.field private static final MSG_WHAT_CHECKTIMEOUT:I = 0x0

.field public static final ORIENTATION_MODE_DONTCARE:I = 0x4

.field public static final ORIENTATION_MODE_ILANDSCAPE:I = 0x3

.field public static final ORIENTATION_MODE_IPORTRAIT:I = 0x2

.field public static final ORIENTATION_MODE_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_MODE_PORTRAIT:I = 0x0

.field public static final ORIENTATION_MODE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "[GSensorManager]"


# instance fields
.field private final SURFACE_ROTATIONS:[I

.field private mContext:Landroid/content/Context;

.field private mIsEnabled:Z

.field private mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

.field private mOrientationListener:Lcom/htc/music/util/GSensorManager$OrientationListener;

.field private mOrientationMode:I

.field private mTempOrientation:I

.field private mUiHandler:Landroid/os/Handler;

.field private mWaitAnimationEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/htc/music/util/GSensorManager;->mContext:Landroid/content/Context;

    .line 15
    iput-object v0, p0, Lcom/htc/music/util/GSensorManager;->mOrientationListener:Lcom/htc/music/util/GSensorManager$OrientationListener;

    .line 16
    iput v1, p0, Lcom/htc/music/util/GSensorManager;->mOrientationMode:I

    .line 17
    iput v1, p0, Lcom/htc/music/util/GSensorManager;->mTempOrientation:I

    .line 18
    iput-boolean v2, p0, Lcom/htc/music/util/GSensorManager;->mWaitAnimationEnd:Z

    .line 19
    iput-boolean v2, p0, Lcom/htc/music/util/GSensorManager;->mIsEnabled:Z

    .line 20
    iput-object v0, p0, Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    .line 21
    iput-object v0, p0, Lcom/htc/music/util/GSensorManager;->mUiHandler:Landroid/os/Handler;

    .line 134
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/music/util/GSensorManager;->SURFACE_ROTATIONS:[I

    .line 35
    iput-object p1, p0, Lcom/htc/music/util/GSensorManager;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/htc/music/util/GSensorManager$OrientationListener;

    iget-object v1, p0, Lcom/htc/music/util/GSensorManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/htc/music/util/GSensorManager$OrientationListener;-><init>(Lcom/htc/music/util/GSensorManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/util/GSensorManager;->mOrientationListener:Lcom/htc/music/util/GSensorManager$OrientationListener;

    .line 37
    invoke-direct {p0}, Lcom/htc/music/util/GSensorManager;->init()V

    .line 38
    return-void

    .line 134
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/music/util/GSensorManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/htc/music/util/GSensorManager;->mWaitAnimationEnd:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/music/util/GSensorManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/htc/music/util/GSensorManager;->mWaitAnimationEnd:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/music/util/GSensorManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/htc/music/util/GSensorManager;->mIsEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/util/GSensorManager;)Lcom/htc/music/util/GSensorManager$OrientationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mOrientationListener:Lcom/htc/music/util/GSensorManager$OrientationListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/util/GSensorManager;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->SURFACE_ROTATIONS:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/util/GSensorManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/util/GSensorManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget v0, p0, Lcom/htc/music/util/GSensorManager;->mTempOrientation:I

    return v0
.end method

.method static synthetic access$502(Lcom/htc/music/util/GSensorManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput p1, p0, Lcom/htc/music/util/GSensorManager;->mTempOrientation:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/music/util/GSensorManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget v0, p0, Lcom/htc/music/util/GSensorManager;->mOrientationMode:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/music/util/GSensorManager;)Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/util/GSensorManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/htc/music/util/GSensorManager$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/GSensorManager$1;-><init>(Lcom/htc/music/util/GSensorManager;)V

    iput-object v0, p0, Lcom/htc/music/util/GSensorManager;->mUiHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mOrientationListener:Lcom/htc/music/util/GSensorManager$OrientationListener;

    invoke-virtual {v0}, Lcom/htc/music/util/GSensorManager$OrientationListener;->disable()V

    .line 80
    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 81
    iput-boolean v2, p0, Lcom/htc/music/util/GSensorManager;->mWaitAnimationEnd:Z

    .line 82
    iput-boolean v2, p0, Lcom/htc/music/util/GSensorManager;->mIsEnabled:Z

    .line 83
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mOrientationListener:Lcom/htc/music/util/GSensorManager$OrientationListener;

    invoke-virtual {v0}, Lcom/htc/music/util/GSensorManager$OrientationListener;->enable()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/util/GSensorManager;->mIsEnabled:Z

    .line 73
    return-void
.end method

.method public finalize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mOrientationListener:Lcom/htc/music/util/GSensorManager$OrientationListener;

    invoke-virtual {v0}, Lcom/htc/music/util/GSensorManager$OrientationListener;->disable()V

    .line 129
    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 130
    iput-object v1, p0, Lcom/htc/music/util/GSensorManager;->mContext:Landroid/content/Context;

    .line 131
    return-void
.end method

.method public getOrientationMode()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/htc/music/util/GSensorManager;->mOrientationMode:I

    return v0
.end method

.method public onAnimationEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mOrientationListener:Lcom/htc/music/util/GSensorManager$OrientationListener;

    invoke-virtual {v0}, Lcom/htc/music/util/GSensorManager$OrientationListener;->enable()V

    .line 91
    iput-boolean v1, p0, Lcom/htc/music/util/GSensorManager;->mWaitAnimationEnd:Z

    .line 92
    iget v0, p0, Lcom/htc/music/util/GSensorManager;->mTempOrientation:I

    if-nez v0, :cond_1

    .line 93
    iput v1, p0, Lcom/htc/music/util/GSensorManager;->mOrientationMode:I

    .line 94
    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    invoke-interface {v0}, Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;->onPortrait()V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget v0, p0, Lcom/htc/music/util/GSensorManager;->mTempOrientation:I

    if-ne v0, v2, :cond_2

    .line 103
    iput v2, p0, Lcom/htc/music/util/GSensorManager;->mOrientationMode:I

    .line 104
    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    invoke-interface {v0}, Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;->onLandscape()V

    goto :goto_0

    .line 107
    :cond_2
    iget v0, p0, Lcom/htc/music/util/GSensorManager;->mTempOrientation:I

    if-ne v0, v3, :cond_0

    .line 108
    iput v3, p0, Lcom/htc/music/util/GSensorManager;->mOrientationMode:I

    .line 109
    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    invoke-interface {v0}, Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;->onILandscape()V

    goto :goto_0
.end method

.method public setOrientationChangedListener(Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    .line 124
    return-void
.end method
