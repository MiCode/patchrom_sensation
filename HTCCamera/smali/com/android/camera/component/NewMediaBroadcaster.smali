.class public final Lcom/android/camera/component/NewMediaBroadcaster;
.super Lcom/android/camera/component/UIComponent;
.source "NewMediaBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "New Media Broadcaster"


# instance fields
.field private final COUNT:I

.field private counter:I

.field eventArgs:[Lcom/android/camera/MediaEvent;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4
    .parameter "cameraActivity"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 145
    const-string v0, "New Media Broadcaster"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 23
    iput v3, p0, Lcom/android/camera/component/NewMediaBroadcaster;->COUNT:I

    .line 24
    iput v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->counter:I

    .line 25
    new-array v0, v3, [Lcom/android/camera/MediaEvent;

    iput-object v0, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEvent;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/NewMediaBroadcaster;Lcom/android/camera/MediaEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/camera/component/NewMediaBroadcaster;->saveEventArgsinBuffer(Lcom/android/camera/MediaEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/NewMediaBroadcaster;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->checkAndBroadcastIntent()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/NewMediaBroadcaster;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/NewMediaBroadcaster;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private broadcastIntent(Landroid/net/Uri;Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;)V
    .locals 3
    .parameter "uri"
    .parameter "mediatype"

    .prologue
    .line 174
    const-string v0, ""

    .line 175
    .local v0, action:Ljava/lang/String;
    sget-object v2, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;->Picture:Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    if-ne p2, v2, :cond_0

    .line 176
    const-string v0, "android.hardware.action.NEW_PICTURE"

    .line 179
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, captureIntent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    return-void

    .line 178
    .end local v1           #captureIntent:Landroid/content/Intent;
    :cond_0
    const-string v0, "android.hardware.action.NEW_VIDEO"

    goto :goto_0
.end method

.method private checkAndBroadcastIntent()V
    .locals 4

    .prologue
    .line 155
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 156
    iget-object v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEvent;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEvent;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/camera/MediaEvent;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 159
    .local v0, contenturi:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEvent;

    aget-object v2, v2, v1

    instance-of v2, v2, Lcom/android/camera/PictureSavedEvent;

    if-eqz v2, :cond_1

    .line 160
    sget-object v2, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;->Picture:Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    invoke-direct {p0, v0, v2}, Lcom/android/camera/component/NewMediaBroadcaster;->broadcastIntent(Landroid/net/Uri;Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;)V

    .line 165
    :goto_1
    iget-object v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEvent;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 155
    .end local v0           #contenturi:Landroid/net/Uri;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .restart local v0       #contenturi:Landroid/net/Uri;
    :cond_1
    sget-object v2, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;->Video:Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    invoke-direct {p0, v0, v2}, Lcom/android/camera/component/NewMediaBroadcaster;->broadcastIntent(Landroid/net/Uri;Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;)V

    goto :goto_1

    .line 168
    .end local v0           #contenturi:Landroid/net/Uri;
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->counter:I

    .line 169
    return-void
.end method

.method private saveEventArgsinBuffer(Lcom/android/camera/MediaEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEvent;

    iget v1, p0, Lcom/android/camera/component/NewMediaBroadcaster;->counter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->counter:I

    aput-object p1, v0, v1

    .line 151
    return-void
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 8

    .prologue
    .line 35
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 37
    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 38
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 39
    .local v1, cameraThreadHandler:Landroid/os/Handler;
    if-nez v1, :cond_0

    .line 41
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "cameraThreadHandler == null"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v5, Lcom/android/camera/component/NewMediaBroadcaster$1;

    invoke-direct {v5, p0}, Lcom/android/camera/component/NewMediaBroadcaster$1;-><init>(Lcom/android/camera/component/NewMediaBroadcaster;)V

    .line 72
    .local v5, m_MediaSavedFinishedEventHandler:Lcom/android/camera/IEventHandler;
    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v6

    const-string v7, "Media.Saved"

    invoke-virtual {v6, v7, v5}, Lcom/android/camera/EventManager;->addEventHandlerAsync(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 74
    new-instance v3, Lcom/android/camera/component/NewMediaBroadcaster$2;

    invoke-direct {v3, p0}, Lcom/android/camera/component/NewMediaBroadcaster$2;-><init>(Lcom/android/camera/component/NewMediaBroadcaster;)V

    .line 109
    .local v3, m_DeletedFinishedEventHandler:Lcom/android/camera/IEventHandler;
    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v6

    const-string v7, "Media.DeletionCompleted"

    invoke-virtual {v6, v7, v3}, Lcom/android/camera/EventManager;->addEventHandlerAsync(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 111
    new-instance v2, Lcom/android/camera/component/NewMediaBroadcaster$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/NewMediaBroadcaster$3;-><init>(Lcom/android/camera/component/NewMediaBroadcaster;)V

    .line 122
    .local v2, m_ActionScreenCloasedEventHandler:Lcom/android/camera/IEventHandler;
    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v6

    const-string v7, "ActionScreen.Closed"

    invoke-virtual {v6, v7, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 124
    new-instance v4, Lcom/android/camera/component/NewMediaBroadcaster$4;

    invoke-direct {v4, p0}, Lcom/android/camera/component/NewMediaBroadcaster$4;-><init>(Lcom/android/camera/component/NewMediaBroadcaster;)V

    .line 135
    .local v4, m_HideUIHandlerWithSetParam:Lcom/android/camera/IEventHandler;
    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v6

    const-string v7, "CameraActivity.Pausing"

    invoke-virtual {v6, v7, v4}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    goto :goto_0
.end method
