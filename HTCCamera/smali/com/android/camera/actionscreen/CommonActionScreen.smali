.class public Lcom/android/camera/actionscreen/CommonActionScreen;
.super Lcom/android/camera/actionscreen/ActionScreen;
.source "CommonActionScreen.java"


# static fields
.field private static final MSG_CLOSE:I = 0x1

.field public static final NAME:Ljava/lang/String; = "Common Action Screen"


# instance fields
.field private mSetAsText:Landroid/widget/TextView;

.field private m_BackButton:Landroid/view/View;

.field private m_CurrentAction:Ljava/lang/Runnable;

.field private m_CurrentPopupObject:Ljava/lang/Object;

.field private final m_DeleteAction:Ljava/lang/Runnable;

.field private m_DeleteButton:Landroid/view/View;

.field private m_DeleteButtonContent:Landroid/view/View;

.field private final m_DialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private final m_DialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final m_DialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private m_IsTimeout:Z

.field private m_IsTouchDelegateSet:Z

.field private final m_PlayAction:Ljava/lang/Runnable;

.field private m_PlayButton:Landroid/view/View;

.field private final m_RecaptureAction:Ljava/lang/Runnable;

.field private m_ReviewBar:Landroid/view/View;

.field private m_ReviewContainer:Landroid/view/View;

.field private m_RotateContainer:[Lcom/android/camera/rotate/RotateRelativeLayout;

.field private final m_SetAsAction:Ljava/lang/Runnable;

.field private m_SetAsButton:Landroid/view/View;

.field private m_SetAsButtonAnchor:Landroid/view/View;

.field private m_SetAsButtonContent:Landroid/view/View;

.field private m_SetAsIcon:Landroid/view/View;

.field private final m_ShareAction:Ljava/lang/Runnable;

.field private m_ShareButton:Landroid/view/View;

.field private m_ShareButtonAnchor:Landroid/view/View;

.field private m_ShareButtonContent:Landroid/view/View;

.field private m_Timeout:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    const/4 v2, 0x0

    .line 165
    const-string v1, "Common Action Screen"

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f03000a

    :goto_0
    invoke-direct {p0, v1, p1, v0}, Lcom/android/camera/actionscreen/ActionScreen;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;I)V

    .line 82
    iput-object v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsIcon:Landroid/view/View;

    .line 83
    iput-object v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->mSetAsText:Landroid/widget/TextView;

    .line 89
    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$1;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$1;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteAction:Ljava/lang/Runnable;

    .line 96
    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$2;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$2;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayAction:Ljava/lang/Runnable;

    .line 103
    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$3;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$3;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_RecaptureAction:Ljava/lang/Runnable;

    .line 110
    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$4;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$4;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsAction:Ljava/lang/Runnable;

    .line 117
    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$5;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$5;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareAction:Ljava/lang/Runnable;

    .line 128
    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$6;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$6;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 136
    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$7;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$7;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 144
    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$8;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$8;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 167
    return-void

    .line 165
    :cond_0
    const v0, 0x7f03000b

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onDeleteClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onPlayClicked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/actionscreen/CommonActionScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->resetBackButtonBackground()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onCaptureClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onSetAsClicked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onShareClicked()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/camera/actionscreen/CommonActionScreen;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/camera/actionscreen/CommonActionScreen;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/camera/actionscreen/CommonActionScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/actionscreen/CommonActionScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    return-object v0
.end method

.method private closePopupObjects()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 242
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    .line 243
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/camera/widget/PopupBubble;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v0}, Lcom/android/camera/widget/PopupBubble;->close()V

    goto :goto_0
.end method

.method private getMediaToShare(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "queryEventName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v1, Lcom/android/camera/QueryEvent;

    invoke-direct {v1, p1}, Lcom/android/camera/QueryEvent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v1, queryEvent:Lcom/android/camera/QueryEvent;,"Lcom/android/camera/QueryEvent<Ljava/util/List<Lcom/android/camera/MediaInfo;>;>;"
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 252
    invoke-virtual {v1}, Lcom/android/camera/QueryEvent;->hasResult()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/camera/QueryEvent;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v0, v2

    .line 253
    .local v0, mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/MediaInfo;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/MediaInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .restart local v0       #mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/MediaInfo;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getLastMediaInfo()Lcom/android/camera/MediaInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_1
    return-object v0

    .line 252
    .end local v0           #mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/MediaInfo;>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCaptureClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 291
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureClicked() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is closed, cancel action"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Another action is performing, cannot re-capture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_RecaptureAction:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 307
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-nez v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Media is not saved yet, close later"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_3
    invoke-virtual {p0, v2, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->close(IZ)V

    .line 314
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureClicked() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDeleteClicked()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 322
    iget-object v5, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v6, "onDeleteClicked() - start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 327
    :cond_0
    iget-object v5, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v6, "Action screen is closed, cancel action"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v5, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v5, :cond_2

    .line 332
    iget-object v5, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v6, "Another action is performing, cannot delete content"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    .line 340
    iget-object v5, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteAction:Ljava/lang/Runnable;

    iput-object v5, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 341
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v5

    if-nez v5, :cond_3

    .line 343
    iget-object v5, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v6, "Media is not saved yet, delete content later"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_3
    new-instance v3, Lcom/android/camera/actionscreen/CommonActionScreen$10;

    invoke-direct {v3, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$10;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    .line 359
    .local v3, positiveListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/camera/actionscreen/CommonActionScreen$11;

    invoke-direct {v2, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$11;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    .line 369
    .local v2, negativeListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Lcom/android/camera/QueryEvent;

    const-string v5, "Query.ConfirmDeletingMediaMessage"

    invoke-direct {v4, v5}, Lcom/android/camera/QueryEvent;-><init>(Ljava/lang/String;)V

    .line 370
    .local v4, queryEvent:Lcom/android/camera/QueryEvent;,"Lcom/android/camera/QueryEvent<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 372
    invoke-virtual {v4}, Lcom/android/camera/QueryEvent;->hasResult()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 373
    invoke-virtual {v4}, Lcom/android/camera/QueryEvent;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 382
    .local v1, message:Ljava/lang/String;
    :goto_1
    new-instance v5, Lcom/android/camera/rotate/RotateDialog$Builder;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateDialog$Builder;->setIcon(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v5

    const v6, 0x20c01fc

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/camera/rotate/RotateDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0051

    invoke-virtual {v5, v6, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v5

    const v6, 0x20c013d

    invoke-virtual {v5, v6, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v0

    .line 390
    .local v0, dialog:Lcom/android/camera/rotate/RotateDialog;
    iget-object v5, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v5}, Lcom/android/camera/rotate/RotateDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 391
    iget-object v5, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v5}, Lcom/android/camera/rotate/RotateDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 392
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/camera/rotate/RotateDialog;->setOrientation(I)V

    .line 395
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->closePopupObjects()V

    .line 396
    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    .line 397
    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateDialog;->show()V

    .line 399
    iget-object v5, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v6, "onDeleteClicked() - end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 376
    .end local v0           #dialog:Lcom/android/camera/rotate/RotateDialog;
    .end local v1           #message:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0142

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getStoredFileName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #message:Ljava/lang/String;
    goto :goto_1
.end method

.method private onPlayClicked()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 451
    iget-object v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v4, "onPlayClicked() - start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 456
    :cond_0
    iget-object v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v4, "Action screen is closed, cancel action"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    .line 461
    iget-object v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v4, "Another action is performing, cannot play video"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    .line 469
    iget-object v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayAction:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 470
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v3

    if-nez v3, :cond_3

    .line 472
    iget-object v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v4, "Media is not saved yet, play video later"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 478
    .local v2, intent:Landroid/content/Intent;
    const/4 v0, 0x1

    .line 482
    .local v0, canPlay:Z
    :try_start_0
    const-string v3, "com.htc.video"

    const-string v4, "com.htc.video.ViewVideo"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string v3, "landscape"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 484
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :goto_1
    if-nez v0, :cond_4

    .line 497
    :try_start_1
    const-string v3, "com.htc.album"

    const-string v4, "com.htc.album.TabPluginDevice.ViewVideo"


    .line 498
    const-string v3, "landscape"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 499
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 507
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v4, "onPlayClicked() - end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 486
    :catch_0
    move-exception v1

    .line 488
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 489
    iget-object v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v4, "com.htc.video - play video fail"

    invoke-static {v3, v4, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 501
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 503
    .restart local v1       #e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v4, "com.htc.album - play video fail"

    invoke-static {v3, v4, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private onSetAsClicked()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 515
    iget-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v10, "onSetAsClicked() - start"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 520
    :cond_0
    iget-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v10, "Action screen is closed, cancel action"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v9, :cond_2

    .line 525
    iget-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v10, "Another action is performing, cannot set media"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 530
    :cond_2
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    .line 533
    iget-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsAction:Ljava/lang/Runnable;

    iput-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 534
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v9

    if-nez v9, :cond_3

    .line 536
    iget-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v10, "Media is not saved yet, set later"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_3
    const-string v9, "Query.MediaToSetAs"

    invoke-direct {p0, v9}, Lcom/android/camera/actionscreen/CommonActionScreen;->getMediaToShare(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 544
    .local v7, mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/MediaInfo;>;"
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    .line 545
    .local v4, cameraActivity:Lcom/android/camera/HTCCamera;
    new-instance v8, Lcom/android/camera/MediaShareRequestEvent;

    const-string v9, "Request.SetMediaAs"

    invoke-direct {v8, v9, v7}, Lcom/android/camera/MediaShareRequestEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 546
    .local v8, requestEvent:Lcom/android/camera/MediaShareRequestEvent;
    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 547
    invoke-virtual {v8}, Lcom/android/camera/MediaShareRequestEvent;->isHandled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 549
    iget-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v10, "Set media as by another object"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 554
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_5

    .line 556
    iget-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v10, "No media information to set as"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iput-object v12, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    goto :goto_0

    .line 560
    :cond_5
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/MediaInfo;

    .line 561
    .local v6, mediaInfo:Lcom/android/camera/MediaInfo;
    if-eqz v6, :cond_6

    iget-object v9, v6, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    if-eqz v9, :cond_6

    iget-object v9, v6, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    if-nez v9, :cond_7

    .line 563
    :cond_6
    iget-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v10, "No media information to set as"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iput-object v12, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    goto :goto_0

    .line 569
    :cond_7
    new-instance v0, Lcom/android/camera/share/MediaSetAsListAdapter;

    invoke-direct {v0, v4, v6}, Lcom/android/camera/share/MediaSetAsListAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/MediaInfo;)V

    .line 570
    .local v0, adapter:Lcom/android/camera/share/MediaSetAsListAdapter;
    new-instance v5, Landroid/widget/ListView;

    invoke-direct {v5, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 571
    .local v5, listView:Landroid/widget/ListView;
    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 572
    invoke-virtual {v5, v11}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 573
    invoke-virtual {v5, v11}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 574
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x20807eb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 577
    new-instance v1, Lcom/android/camera/widget/PopupBubble;

    invoke-direct {v1, v4}, Lcom/android/camera/widget/PopupBubble;-><init>(Landroid/content/Context;)V

    .line 578
    .local v1, bubble:Lcom/android/camera/widget/PopupBubble;
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0024

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 579
    .local v3, bubbleWidth:I
    const/4 v2, -0x2

    .line 580
    .local v2, bubbleHeight:I
    new-instance v9, Lcom/android/camera/actionscreen/CommonActionScreen$12;

    invoke-direct {v9, p0, v4}, Lcom/android/camera/actionscreen/CommonActionScreen$12;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v1, v9}, Lcom/android/camera/widget/PopupBubble;->setOnClosedListener(Lcom/android/camera/widget/PopupBubble$OnClosedListener;)V

    .line 590
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v9}, Lcom/android/camera/widget/PopupBubble;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/android/camera/widget/PopupBubble;->setContentOrientation(I)V

    .line 592
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->isUILandscape()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 593
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/widget/PopupBubble;->setSize(II)V

    .line 598
    :goto_1
    new-instance v9, Lcom/android/camera/actionscreen/CommonActionScreen$13;

    invoke-direct {v9, p0, v1, v4, v0}, Lcom/android/camera/actionscreen/CommonActionScreen$13;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;Lcom/android/camera/widget/PopupBubble;Lcom/android/camera/HTCCamera;Lcom/android/camera/share/MediaSetAsListAdapter;)V

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 618
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->closePopupObjects()V

    .line 619
    iget-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButtonAnchor:Landroid/view/View;

    invoke-virtual {v1, v9}, Lcom/android/camera/widget/PopupBubble;->open(Landroid/view/View;)V

    .line 620
    iput-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    .line 621
    iget-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    const v10, 0x7f0a001c

    const v11, 0x7f020179

    invoke-static {v4, v10, v11}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 623
    iget-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v10, "onSetAsClicked() - end"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 595
    :cond_8
    invoke-virtual {v1, v3, v2}, Lcom/android/camera/widget/PopupBubble;->setSize(II)V

    goto :goto_1
.end method

.method private onShareClicked()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 631
    iget-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v10, "onShareClicked() - start"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 636
    :cond_0
    iget-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v10, "Action screen is closed, cancel action"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :goto_0
    return-void

    .line 639
    :cond_1
    iget-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v9, :cond_2

    .line 641
    iget-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v10, "Another action is performing, cannot share content"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 646
    :cond_2
    invoke-virtual {p0, v12}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    .line 649
    iget-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareAction:Ljava/lang/Runnable;

    iput-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 650
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v9

    if-nez v9, :cond_3

    .line 652
    iget-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v10, "Media is not saved yet, share content later"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :cond_3
    const-string v9, "Query.MediaToShare"

    invoke-direct {p0, v9}, Lcom/android/camera/actionscreen/CommonActionScreen;->getMediaToShare(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 660
    .local v7, mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/MediaInfo;>;"
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    .line 661
    .local v4, cameraActivity:Lcom/android/camera/HTCCamera;
    new-instance v8, Lcom/android/camera/MediaShareRequestEvent;

    const-string v9, "Request.ShareMedia"

    invoke-direct {v8, v9, v7}, Lcom/android/camera/MediaShareRequestEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 662
    .local v8, requestEvent:Lcom/android/camera/MediaShareRequestEvent;
    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    .line 663
    invoke-virtual {v8}, Lcom/android/camera/MediaShareRequestEvent;->isHandled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 665
    iget-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v10, "Share media by another object"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0, v11, v12}, Lcom/android/camera/actionscreen/CommonActionScreen;->close(IZ)V

    goto :goto_0

    .line 671
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_5

    .line 673
    iget-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v10, "No media information to share"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    goto :goto_0

    .line 679
    :cond_5
    const-string v9, "pref_capture_last_share"

    invoke-static {v4, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 680
    .local v5, lastShareApp:Ljava/lang/String;
    new-instance v0, Lcom/android/camera/share/MediaShareListAdapter;

    invoke-direct {v0, v4, v7, v5}, Lcom/android/camera/share/MediaShareListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 681
    .local v0, adapter:Lcom/android/camera/share/MediaShareListAdapter;
    new-instance v6, Landroid/widget/ListView;

    invoke-direct {v6, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 682
    .local v6, listView:Landroid/widget/ListView;
    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 683
    invoke-virtual {v6, v11}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 684
    invoke-virtual {v6, v11}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 685
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x20807eb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 688
    new-instance v1, Lcom/android/camera/widget/PopupBubble;

    invoke-direct {v1, v4}, Lcom/android/camera/widget/PopupBubble;-><init>(Landroid/content/Context;)V

    .line 689
    .local v1, bubble:Lcom/android/camera/widget/PopupBubble;
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0029

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 690
    .local v3, bubbleWidth:I
    const/4 v2, -0x2

    .line 691
    .local v2, bubbleHeight:I
    new-instance v9, Lcom/android/camera/actionscreen/CommonActionScreen$14;

    invoke-direct {v9, p0, v4}, Lcom/android/camera/actionscreen/CommonActionScreen$14;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v1, v9}, Lcom/android/camera/widget/PopupBubble;->setOnClosedListener(Lcom/android/camera/widget/PopupBubble$OnClosedListener;)V

    .line 701
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v9}, Lcom/android/camera/widget/PopupBubble;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 702
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/android/camera/widget/PopupBubble;->setContentOrientation(I)V

    .line 703
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->isUILandscape()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 705
    const/4 v2, -0x1

    .line 706
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/widget/PopupBubble;->setSize(II)V

    .line 712
    :goto_1
    new-instance v9, Lcom/android/camera/actionscreen/CommonActionScreen$15;

    invoke-direct {v9, p0, v1, v4, v0}, Lcom/android/camera/actionscreen/CommonActionScreen$15;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;Lcom/android/camera/widget/PopupBubble;Lcom/android/camera/HTCCamera;Lcom/android/camera/share/MediaShareListAdapter;)V

    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 735
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->closePopupObjects()V

    .line 736
    iget-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButtonAnchor:Landroid/view/View;

    invoke-virtual {v1, v9}, Lcom/android/camera/widget/PopupBubble;->open(Landroid/view/View;)V

    .line 737
    iput-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    .line 738
    iget-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    const v10, 0x7f0a001c

    const v11, 0x7f020179

    invoke-static {v4, v10, v11}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 740
    iget-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v10, "onShareClicked() - end"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 709
    :cond_6
    invoke-virtual {v1, v3, v2}, Lcom/android/camera/widget/PopupBubble;->setSize(II)V

    goto :goto_1
.end method

.method private onTimeout()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 748
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "onTimeout() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is closed, cancel action"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :goto_0
    return-void

    .line 758
    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_IsTimeout:Z

    .line 759
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-nez v0, :cond_2

    .line 761
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Media is not saved yet, close later"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 764
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->close(IZ)V

    .line 766
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "onTimeout() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareDoubleShotActionScreen()V
    .locals 13

    .prologue
    const v12, 0x7f080073

    const v11, 0x7f080072

    const v10, 0x7f020102

    .line 850
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    if-nez v7, :cond_0

    .line 852
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getLayout()Landroid/view/View;

    move-result-object v1

    .line 853
    .local v1, baseLayout:Landroid/view/View;
    const v7, 0x7f08000f

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    .line 855
    const/4 v7, 0x4

    new-array v8, v7, [Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v9, 0x0

    const v7, 0x7f08007c

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/rotate/RotateRelativeLayout;

    aput-object v7, v8, v9

    const/4 v9, 0x1

    const v7, 0x7f080078

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/rotate/RotateRelativeLayout;

    aput-object v7, v8, v9

    const/4 v9, 0x2

    const v7, 0x7f080074

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/rotate/RotateRelativeLayout;

    aput-object v7, v8, v9

    const/4 v9, 0x3

    const v7, 0x7f080070

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/rotate/RotateRelativeLayout;

    aput-object v7, v8, v9

    iput-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_RotateContainer:[Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 862
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v8, 0x7f080011

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    .line 863
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    new-instance v8, Lcom/android/camera/actionscreen/CommonActionScreen$16;

    invoke-direct {v8, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$16;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 872
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v8, 0x7f080012

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    .line 873
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    new-instance v8, Lcom/android/camera/actionscreen/CommonActionScreen$17;

    invoke-direct {v8, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$17;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 882
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v8, 0x7f080013

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    .line 883
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    new-instance v8, Lcom/android/camera/actionscreen/CommonActionScreen$18;

    invoke-direct {v8, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$18;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 891
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v8, 0x7f080010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    .line 895
    .end local v1           #baseLayout:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v7

    if-nez v7, :cond_1

    .line 897
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsIcon:Landroid/view/View;

    .line 898
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsIcon:Landroid/view/View;

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f020077

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 899
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->mSetAsText:Landroid/widget/TextView;

    .line 900
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->mSetAsText:Landroid/widget/TextView;

    const v8, 0x7f0a0155

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 901
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    new-instance v8, Lcom/android/camera/actionscreen/CommonActionScreen$19;

    invoke-direct {v8, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$19;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 927
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    .line 928
    .local v2, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    const v8, 0x7f0a0006

    invoke-static {v2, v8, v10}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 929
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    const v8, 0x7f0a0007

    invoke-static {v2, v8, v10}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 930
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    const v8, 0x7f0a0008

    invoke-static {v2, v8, v10}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 931
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    const v8, 0x7f0a0009

    invoke-static {v2, v8, v10}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 934
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v6

    .line 935
    .local v6, orientation:I
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_RotateContainer:[Lcom/android/camera/rotate/RotateRelativeLayout;

    .local v0, arr$:[Lcom/android/camera/rotate/RotateRelativeLayout;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, v0, v4

    .line 936
    .local v3, container:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-virtual {v3, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 935
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 911
    .end local v0           #arr$:[Lcom/android/camera/rotate/RotateRelativeLayout;
    .end local v2           #cameraActivity:Lcom/android/camera/HTCCamera;
    .end local v3           #container:Lcom/android/camera/rotate/RotateRelativeLayout;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #orientation:I
    :cond_1
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsIcon:Landroid/view/View;

    .line 912
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsIcon:Landroid/view/View;

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f0200de

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 913
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->mSetAsText:Landroid/widget/TextView;

    .line 914
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->mSetAsText:Landroid/widget/TextView;

    const v8, 0x7f0a0156

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 916
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    new-instance v8, Lcom/android/camera/actionscreen/CommonActionScreen$20;

    invoke-direct {v8, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$20;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 937
    .restart local v0       #arr$:[Lcom/android/camera/rotate/RotateRelativeLayout;
    .restart local v2       #cameraActivity:Lcom/android/camera/HTCCamera;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #orientation:I
    :cond_2
    return-void
.end method

.method private prepareHtcActionScreen()V
    .locals 12

    .prologue
    .line 945
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    if-nez v8, :cond_0

    .line 948
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getLayout()Landroid/view/View;

    move-result-object v1

    .line 949
    .local v1, baseLayout:Landroid/view/View;
    const v8, 0x7f080022

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    .line 950
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    const v9, 0x7f080091

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    .line 951
    const/4 v8, 0x5

    new-array v9, v8, [Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v10, 0x0

    const v8, 0x7f080085

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/camera/rotate/RotateRelativeLayout;

    aput-object v8, v9, v10

    const/4 v10, 0x1

    const v8, 0x7f08008c

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/camera/rotate/RotateRelativeLayout;

    aput-object v8, v9, v10

    const/4 v10, 0x2

    const v8, 0x7f08008a

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/camera/rotate/RotateRelativeLayout;

    aput-object v8, v9, v10

    const/4 v10, 0x3

    const v8, 0x7f080087

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/camera/rotate/RotateRelativeLayout;

    aput-object v8, v9, v10

    const/4 v10, 0x4

    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    check-cast v8, Lcom/android/camera/rotate/RotateRelativeLayout;

    aput-object v8, v9, v10

    iput-object v9, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_RotateContainer:[Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 958
    const v8, 0x7f080080

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    .line 959
    const v8, 0x7f080086

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    .line 962
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    new-instance v9, Lcom/android/camera/actionscreen/CommonActionScreen$21;

    invoke-direct {v9, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$21;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 971
    const v8, 0x7f08008b

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButtonContent:Landroid/view/View;

    .line 972
    const v8, 0x7f080083

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    .line 973
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    new-instance v9, Lcom/android/camera/actionscreen/CommonActionScreen$22;

    invoke-direct {v9, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$22;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 980
    const v8, 0x7f08008e

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButtonAnchor:Landroid/view/View;

    .line 983
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    new-instance v9, Lcom/android/camera/actionscreen/CommonActionScreen$23;

    invoke-direct {v9, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$23;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1030
    const v8, 0x7f080088

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButtonContent:Landroid/view/View;

    .line 1031
    const v8, 0x7f080082

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    .line 1032
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    new-instance v9, Lcom/android/camera/actionscreen/CommonActionScreen$24;

    invoke-direct {v9, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$24;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1041
    const v8, 0x7f08008d

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButtonContent:Landroid/view/View;

    .line 1042
    const v8, 0x7f080084

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    .line 1043
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    new-instance v9, Lcom/android/camera/actionscreen/CommonActionScreen$25;

    invoke-direct {v9, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$25;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1050
    const v8, 0x7f08008f

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButtonAnchor:Landroid/view/View;

    .line 1054
    .end local v1           #baseLayout:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1057
    .local v6, res:Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->resetBackButtonBackground()V

    .line 1058
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v8

    if-nez v8, :cond_1

    .line 1061
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v9, 0x7f080081

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f020178

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1064
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1067
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1068
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButtonAnchor:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    const v9, 0x7f0b00b6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    .line 1074
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v9, 0x7f080089

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0b00b9

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    .line 1079
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v9, 0x7f08008a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1082
    const v8, 0x7f0b00b8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1083
    .local v7, width:I
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v9, 0x7f08008c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    .line 1086
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButtonAnchor:Landroid/view/View;

    invoke-static {v8, v7}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    .line 1120
    :goto_0
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v9

    const v10, 0x7f0a001d

    const v11, 0x7f020176

    invoke-static {v9, v10, v11}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1121
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v9

    const v10, 0x7f0a001d

    const v11, 0x7f020176

    invoke-static {v9, v10, v11}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1122
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v9

    const v10, 0x7f0a001d

    const v11, 0x7f020176

    invoke-static {v9, v10, v11}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1125
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v5

    .line 1126
    .local v5, orientation:I
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_RotateContainer:[Lcom/android/camera/rotate/RotateRelativeLayout;

    .local v0, arr$:[Lcom/android/camera/rotate/RotateRelativeLayout;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 1127
    .local v2, container:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-virtual {v2, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 1126
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1091
    .end local v0           #arr$:[Lcom/android/camera/rotate/RotateRelativeLayout;
    .end local v2           #container:Lcom/android/camera/rotate/RotateRelativeLayout;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #orientation:I
    .end local v7           #width:I
    :cond_1
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v9, 0x7f080081

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f020177

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1094
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1097
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1098
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButtonAnchor:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1101
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    const v9, 0x7f0b00b4

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    .line 1104
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v9, 0x7f080089

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0b00b3

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    .line 1109
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v9, 0x7f08008a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    const v8, 0x7f0b00b7

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1113
    .restart local v7       #width:I
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const v9, 0x7f08008c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    .line 1116
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButtonAnchor:Landroid/view/View;

    invoke-static {v8, v7}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 1128
    .restart local v0       #arr$:[Lcom/android/camera/rotate/RotateRelativeLayout;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #orientation:I
    :cond_2
    return-void
.end method

.method private resetBackButtonBackground()V
    .locals 2

    .prologue
    .line 1135
    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f02000a

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1138
    return-void

    .line 1135
    :cond_0
    const v0, 0x7f02000c

    goto :goto_0
.end method

.method private setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V
    .locals 3
    .parameter "button"
    .parameter "content"
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1160
    if-eqz p3, :cond_3

    .line 1162
    if-eqz p1, :cond_0

    .line 1163
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1164
    :cond_0
    instance-of v0, p2, Lcom/android/camera/widget/ImageTextView;

    if-eqz v0, :cond_2

    .line 1165
    check-cast p2, Lcom/android/camera/widget/ImageTextView;

    .end local p2
    invoke-virtual {p2, v2}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    .line 1181
    :cond_1
    :goto_0
    return-void

    .line 1166
    .restart local p2
    :cond_2
    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1167
    check-cast p2, Landroid/widget/ImageView;

    .end local p2
    invoke-static {p2}, Lcom/android/camera/ViewUtil;->enableImageView(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 1171
    .restart local p2
    :cond_3
    if-eqz p1, :cond_4

    .line 1173
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1174
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1176
    :cond_4
    instance-of v0, p2, Lcom/android/camera/widget/ImageTextView;

    if-eqz v0, :cond_5

    .line 1177
    check-cast p2, Lcom/android/camera/widget/ImageTextView;

    .end local p2
    invoke-virtual {p2, v1}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    goto :goto_0

    .line 1178
    .restart local p2
    :cond_5
    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1179
    check-cast p2, Landroid/widget/ImageView;

    .end local p2
    invoke-static {p2}, Lcom/android/camera/ViewUtil;->disableImageView(Landroid/widget/ImageView;)V

    goto :goto_0
.end method


# virtual methods
.method public final clearAction()V
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 176
    :cond_0
    return-void
.end method

.method protected closeActionScreen(Z)V
    .locals 8
    .parameter "animation"

    .prologue
    const-wide/16 v4, 0x12c

    const-wide/16 v2, 0x0

    const/4 v7, 0x4

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    .line 188
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->closePopupObjects()V

    .line 191
    if-eqz p1, :cond_3

    .line 194
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const/4 v1, 0x2

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideOut(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    move-result-object v6

    .line 198
    .local v6, closeAnimation:Landroid/view/animation/Animation;
    :goto_0
    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$9;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$9;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 216
    .end local v6           #closeAnimation:Landroid/view/animation/Animation;
    :goto_1
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 220
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_Timeout:Ljava/lang/Integer;

    .line 225
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "ActionScreen=>close=>triggerAutoUpload"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0}, Lcom/android/camera/AutoUploader;->triggerAutoUpload()V

    .line 231
    :cond_1
    return-void

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const/4 v1, 0x3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideOut(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    move-result-object v6

    .restart local v6       #closeAnimation:Landroid/view/animation/Animation;
    goto :goto_0

    .line 213
    .end local v6           #closeAnimation:Landroid/view/animation/Animation;
    :cond_3
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 266
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 273
    invoke-super {p0, p1}, Lcom/android/camera/actionscreen/ActionScreen;->handleMessage(Landroid/os/Message;)V

    .line 276
    :goto_0
    return-void

    .line 269
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onTimeout()V

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final hasAction()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    .line 408
    sparse-switch p1, :sswitch_data_0

    .line 415
    invoke-super {p0, p1, p2}, Lcom/android/camera/actionscreen/ActionScreen;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 412
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onCaptureClicked()V

    .line 413
    const/4 v0, 0x1

    goto :goto_0

    .line 408
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMediaSaveCompleted(Lcom/android/camera/MediaEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 425
    invoke-super {p0, p1}, Lcom/android/camera/actionscreen/ActionScreen;->onMediaSaveCompleted(Lcom/android/camera/MediaEvent;)V

    .line 428
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    instance-of v1, p1, Lcom/android/camera/MediaSaveFailedEvent;

    if-eqz v1, :cond_2

    .line 433
    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v2, "Media save failed"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_IsTimeout:Z

    if-eqz v1, :cond_3

    .line 437
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 441
    .local v0, prevAction:Ljava/lang/Runnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 442
    if-eqz v0, :cond_0

    .line 443
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected openActionScreen()V
    .locals 7

    .prologue
    const-wide/16 v4, 0x12c

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    .line 776
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 779
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 780
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const/4 v1, 0x2

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideIn(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    .line 785
    :goto_0
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v6, v6}, Lcom/android/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZ)V

    .line 793
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    .line 796
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_IsTouchDelegateSet:Z

    if-nez v0, :cond_1

    .line 798
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    const v1, 0x7f080090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->setTouchDelegate(Landroid/view/View;Landroid/view/View;)V

    .line 799
    iput-boolean v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_IsTouchDelegateSet:Z

    .line 801
    :cond_1
    return-void

    .line 782
    :cond_2
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewBar:Landroid/view/View;

    const/4 v1, 0x3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideIn(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method public final performAction(Ljava/lang/Runnable;)Z
    .locals 3
    .parameter "action"

    .prologue
    const/4 v0, 0x0

    .line 809
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 823
    :cond_0
    :goto_0
    return v0

    .line 811
    :cond_1
    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 813
    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v2, "Another action is performing, cannot perform action"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 818
    :cond_2
    iput-object p1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 819
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 820
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 823
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 822
    :cond_3
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->TAG:Ljava/lang/String;

    const-string v1, "Media is not saved yet, perform action later"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected prepareActionScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 833
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->prepareDoubleShotActionScreen()V

    .line 839
    :goto_0
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButtonContent:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    .line 840
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButtonContent:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    .line 841
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButtonContent:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    .line 842
    return-void

    .line 836
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->prepareHtcActionScreen()V

    goto :goto_0
.end method

.method public final setAutoCloseTimeout(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1150
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_Timeout:Ljava/lang/Integer;

    .line 1151
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1152
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    goto :goto_0
.end method

.method public final setDeleteButtonEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1189
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1194
    :goto_0
    return-void

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButtonContent:Landroid/view/View;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public final setSetAsButtonEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1207
    :goto_0
    return-void

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButtonContent:Landroid/view/View;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public final setShareButtonEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1215
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1220
    :goto_0
    return-void

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButtonContent:Landroid/view/View;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public final startAutoCloseTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1228
    invoke-virtual {p0, v4}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    .line 1229
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_IsTimeout:Z

    .line 1232
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpening()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1257
    :cond_0
    :goto_0
    return-void

    .line 1236
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "pref_camera_review_duration"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1238
    .local v0, review:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_Timeout:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 1240
    iget-object v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_Timeout:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1241
    .local v1, timeout:I
    if-ltz v1, :cond_0

    .line 1256
    :goto_1
    invoke-virtual {p0, p0, v4, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->sendMessage(Lcom/android/camera/component/Component;II)Z

    goto :goto_0

    .line 1244
    .end local v1           #timeout:I
    :cond_2
    const-string v2, "2s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1245
    const/16 v1, 0x7d0

    .restart local v1       #timeout:I
    goto :goto_1

    .line 1246
    .end local v1           #timeout:I
    :cond_3
    const-string v2, "3s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1247
    const/16 v1, 0xbb8

    .restart local v1       #timeout:I
    goto :goto_1

    .line 1248
    .end local v1           #timeout:I
    :cond_4
    const-string v2, "5s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1249
    const/16 v1, 0x1388

    .restart local v1       #timeout:I
    goto :goto_1

    .line 1250
    .end local v1           #timeout:I
    :cond_5
    const-string v2, "10s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1251
    const/16 v1, 0x2710

    .restart local v1       #timeout:I
    goto :goto_1
.end method
