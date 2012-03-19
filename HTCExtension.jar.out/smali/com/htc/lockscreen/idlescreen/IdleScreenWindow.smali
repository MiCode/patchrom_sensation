.class public abstract Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;
.super Ljava/lang/Object;
.source "IdleScreenWindow.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field mShow:I

.field mShowLiveWallpaper:Z

.field mVisibility:I

.field mWindowFlags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mVisibility:I

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    .line 18
    const/16 v0, 0x10

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    .line 20
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 27
    return-void
.end method


# virtual methods
.method protected attach()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method protected detach()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method protected doDestroy()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public finishDrawing()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public getSession()Landroid/view/IWindowSession;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShowLiveWallpaper()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    return v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindow()Lcom/android/internal/view/BaseIWindow;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindowFlag()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    return v0
.end method

.method public getWindowLayout()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getWindowShow()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    return v0
.end method

.method public getWindowVisibility()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mVisibility:I

    return v0
.end method

.method setEngine(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V
    .locals 1
    .parameter "engine"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    .line 31
    iget-object v0, p1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method protected setFormat(I)V
    .locals 0
    .parameter "format"

    .prologue
    .line 96
    return-void
.end method

.method public setShowLiveWallpaper(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    if-eq v0, p1, :cond_0

    .line 100
    iput-boolean p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    .line 109
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->requestUpdateSurface()V

    .line 111
    :cond_0
    return-void
.end method

.method protected setSurfaceSize()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public setWindowFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 64
    iput p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    .line 65
    return-void
.end method

.method public setWindowShow(Z)V
    .locals 2
    .parameter "show"

    .prologue
    const/4 v1, 0x0

    .line 50
    if-eqz p1, :cond_0

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    .line 56
    :goto_0
    invoke-virtual {p0, v1, v1, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->updateSurface(ZZZ)V

    .line 57
    return-void

    .line 54
    :cond_0
    iput v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    goto :goto_0
.end method

.method public setWindowVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 72
    iput p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mVisibility:I

    .line 73
    return-void
.end method

.method protected abstract updateSurface(ZZZ)V
.end method
