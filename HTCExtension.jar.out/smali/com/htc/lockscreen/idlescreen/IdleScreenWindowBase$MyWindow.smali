.class final Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;
.super Lcom/android/internal/view/BaseIWindow;
.source "IdleScreenWindowBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyWindow"
.end annotation


# instance fields
.field public mConfig:Landroid/content/res/Configuration;

.field public mCoveredInsets:Landroid/graphics/Rect;

.field public mHeight:I

.field public mVisibleInsets:Landroid/graphics/Rect;

.field public mWidth:I

.field final synthetic this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;->this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;

    invoke-direct {p0}, Lcom/android/internal/view/BaseIWindow;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchAppVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;->this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;

    iget-object v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->isPreview()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;->this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;

    iget-object v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->reportWindowVisible(Z)V

    .line 459
    :cond_0
    return-void
.end method

.method public onDispatchPointer(Landroid/view/MotionEvent;JZ)Z
    .locals 1
    .parameter "event"
    .parameter "eventTime"
    .parameter "callWhenDone"

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "coveredInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"
    .parameter "newConfig"

    .prologue
    .line 434
    iput p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;->mWidth:I

    .line 435
    iput p2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;->mHeight:I

    .line 436
    iput-object p3, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;->mCoveredInsets:Landroid/graphics/Rect;

    .line 437
    iput-object p4, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;->mVisibleInsets:Landroid/graphics/Rect;

    .line 438
    iput-object p6, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;->mConfig:Landroid/content/res/Configuration;

    .line 439
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;->this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;

    iget-object v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v0, p5}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->reportWindowResized(Z)V

    .line 445
    return-void
.end method
