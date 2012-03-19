.class public final Lcom/android/camera/component/PanoramaUI;
.super Lcom/android/camera/component/UIComponent;
.source "PanoramaUI.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEVICE_ORIENTATION_LANDSCAPE:I = 0x0

.field private static final MAX_ORIENTATION_DIFF:I = 0xf

.field public static final MSG_ABORTED:I = 0xb

.field private static final MSG_DEACTIVATE_SPINNER:I = 0x64

.field public static final MSG_DIRECTION_LOCKED:I = 0x8

.field public static final MSG_INTERMEDIATE_CAPTURE_PREPARE:I = 0x2

.field public static final MSG_INTERMEDIATE_CAPTURE_START:I = 0x3

.field public static final MSG_INTERMEDIATE_PHOTO:I = 0x5

.field public static final MSG_INTERMEDIATE_SHUTTER:I = 0x4

.field public static final MSG_PREVIEW_CREATED:I = 0x7

.field public static final MSG_REVIEW_IMAGE_CREATED:I = 0xc

.field public static final MSG_STITCH_COMPLETED:I = 0xa

.field public static final MSG_STITCH_STARTED:I = 0x9

.field public static final MSG_TRACKING:I = 0x6

.field public static final NAME:Ljava/lang/String; = "Panorama UI"

.field private static final SPINNER_ACTIVE_TIMEOUT:I


# instance fields
.field private final m_ActionScreenOpeningEventHandler:Lcom/android/camera/IEventHandler;

.field private m_ArrowsContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_CancelButton:Landroid/widget/ImageView;

.field private m_CenterIndicatorView:Landroid/widget/ImageView;

.field private m_CurrentCaptureIndex:I

.field private m_CurrentDeltaX:F

.field private final m_DeactivateHandler:Lcom/android/camera/IEventHandler;

.field private final m_EffectPanelClosedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_HideThumbBarEventHandler:Lcom/android/camera/IEventHandler;

.field private m_Indicator:Lcom/android/camera/rotate/RotateImageView;

.field private m_IndicatorContainer:Landroid/view/View;

.field private m_IndicatorTopPaddingView:Landroid/view/View;

.field private m_InitDirectionToast:Landroid/view/View;

.field private m_InitDirectionToastTextView:Landroid/widget/TextView;

.field private m_InitToast:Landroid/view/View;

.field private m_IsCaptureUINeeded:Z

.field private m_IsCaptureUIOpen:Z

.field private m_IsCapturing:Z

.field private m_IsCapturingFrame:Z

.field private m_IsModeEntered:Z

.field private m_IsResolutionSyncBackNeeded:Z

.field private m_IsRestartingPreviewNeeded:Z

.field private m_IsSlowArrowShown:Z

.field private m_IsSpinnerActive:Z

.field private m_IsSweepPanorama:Z

.field private m_IsUIInitialized:Z

.field private final m_KeyDownEventHandler:Lcom/android/camera/IEventHandler;

.field private m_LeftArrow:Landroid/widget/ImageView;

.field private final m_MenuClosedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_MenuOpeningEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_OrientationChangedEventHandler:Lcom/android/camera/IEventHandler;

.field private m_PanoramaController:Lcom/android/camera/component/PanoramaController;

.field private m_PanoramaDirection:I

.field private final m_PausingEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_PreviewStartedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_QueryEventHandler:Lcom/android/camera/IEventHandler;

.field private m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

.field private final m_ResolutionSelectedEventHandler:Lcom/android/camera/IEventHandler;

.field private m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_ReviewImageView:Landroid/widget/ImageView;

.field private m_RightArrow:Landroid/widget/ImageView;

.field private final m_RotationChangedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_SelfTimerChangedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_ShowThumbBarEventHandler:Lcom/android/camera/IEventHandler;

.field private m_ShutterBar:Landroid/view/View;

.field private m_Spinner:Landroid/widget/ImageView;

.field private m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

.field private m_SweepIndicatorContainer:Landroid/view/View;

.field private m_Thumb:Landroid/widget/ImageView;

.field private m_ThumbBar:Landroid/view/View;

.field private m_ThumbBarBackground:Landroid/widget/ImageView;

.field private m_ThumbBarContent:Landroid/view/View;

.field private final m_ThumbClickedEventHandler:Lcom/android/camera/IEventHandler;

.field private m_ThumbContainer:Landroid/view/ViewGroup;

.field private m_ThumbnailHeight:I

.field private m_ThumbnailHighlightFrame:Landroid/view/View;

.field private m_ThumbnailShadowBottom:I

.field private m_ThumbnailShadowLeft:I

.field private m_ThumbnailShadowRight:I

.field private m_ThumbnailShadowTop:I

.field private m_ThumbnailWidth:I

.field private m_ThumbnailWidthWide:I

.field private m_Thumbs:[Landroid/widget/ImageView;

.field private m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 420
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/rotate/OrientationConfig;->mapUIOrientationToDegree(I)I

    move-result v0

    sput v0, Lcom/android/camera/component/PanoramaUI;->DEVICE_ORIENTATION_LANDSCAPE:I

    .line 421
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 423
    :cond_0
    const/16 v0, 0x3e8

    sput v0, Lcom/android/camera/component/PanoramaUI;->SPINNER_ACTIVE_TIMEOUT:I

    .line 426
    :goto_0
    return-void

    .line 425
    :cond_1
    const/16 v0, 0x258

    sput v0, Lcom/android/camera/component/PanoramaUI;->SPINNER_ACTIVE_TIMEOUT:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4
    .parameter "cameraActivity"

    .prologue
    const/4 v3, 0x0

    .line 433
    const-string v0, "Panorama UI"

    const/4 v1, 0x1

    const v2, 0x7f080052

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 82
    iput v3, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    .line 141
    new-instance v0, Lcom/android/camera/component/PanoramaUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$1;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ActionScreenOpeningEventHandler:Lcom/android/camera/IEventHandler;

    .line 155
    new-instance v0, Lcom/android/camera/component/PanoramaUI$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$2;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_DeactivateHandler:Lcom/android/camera/IEventHandler;

    .line 163
    new-instance v0, Lcom/android/camera/component/PanoramaUI$3;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$3;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_EffectPanelClosedEventHandler:Lcom/android/camera/IEventHandler;

    .line 180
    new-instance v0, Lcom/android/camera/component/PanoramaUI$4;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$4;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_HideThumbBarEventHandler:Lcom/android/camera/IEventHandler;

    .line 187
    new-instance v0, Lcom/android/camera/component/PanoramaUI$5;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$5;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_KeyDownEventHandler:Lcom/android/camera/IEventHandler;

    .line 204
    new-instance v0, Lcom/android/camera/component/PanoramaUI$6;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$6;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_MenuClosedEventHandler:Lcom/android/camera/IEventHandler;

    .line 221
    new-instance v0, Lcom/android/camera/component/PanoramaUI$7;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$7;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_MenuOpeningEventHandler:Lcom/android/camera/IEventHandler;

    .line 238
    new-instance v0, Lcom/android/camera/component/PanoramaUI$8;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$8;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_OrientationChangedEventHandler:Lcom/android/camera/IEventHandler;

    .line 251
    new-instance v0, Lcom/android/camera/component/PanoramaUI$9;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$9;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_QueryEventHandler:Lcom/android/camera/IEventHandler;

    .line 263
    new-instance v0, Lcom/android/camera/component/PanoramaUI$10;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$10;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PausingEventHandler:Lcom/android/camera/IEventHandler;

    .line 300
    new-instance v0, Lcom/android/camera/component/PanoramaUI$11;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$11;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PreviewStartedEventHandler:Lcom/android/camera/IEventHandler;

    .line 314
    new-instance v0, Lcom/android/camera/component/PanoramaUI$12;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$12;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionSelectedEventHandler:Lcom/android/camera/IEventHandler;

    .line 329
    new-instance v0, Lcom/android/camera/component/PanoramaUI$13;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$13;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_RotationChangedEventHandler:Lcom/android/camera/IEventHandler;

    .line 380
    new-instance v0, Lcom/android/camera/component/PanoramaUI$14;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$14;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SelfTimerChangedEventHandler:Lcom/android/camera/IEventHandler;

    .line 389
    new-instance v0, Lcom/android/camera/component/PanoramaUI$15;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$15;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ShowThumbBarEventHandler:Lcom/android/camera/IEventHandler;

    .line 400
    new-instance v0, Lcom/android/camera/component/PanoramaUI$16;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PanoramaUI$16;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbClickedEventHandler:Lcom/android/camera/IEventHandler;

    .line 434
    new-instance v0, Lcom/android/camera/component/PanoramaResolutionHandler;

    invoke-direct {v0}, Lcom/android/camera/component/PanoramaResolutionHandler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

    .line 435
    invoke-virtual {p0, v3}, Lcom/android/camera/component/PanoramaUI;->autoInflateView(Z)V

    .line 436
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/PanoramaUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/IEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_HideThumbBarEventHandler:Lcom/android/camera/IEventHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/component/PanoramaUI;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/component/PanoramaUI;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaUI;->getVirtualDeviceOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/widget/PanoramaIndicatorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideReviewScreen()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/rotate/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->openCaptureUI()V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/camera/component/PanoramaUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsResolutionSyncBackNeeded:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/component/PanoramaResolutionHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/PanoramaUI;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/component/PanoramaUI;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaUI;->rotateDsInitToast(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/component/PanoramaUI;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaUI;->updateIndicatorOrientation(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/component/PanoramaUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaUI;->updateIndicatorLocation(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/component/PanoramaUI;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/component/PanoramaUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/component/PanoramaUI;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/component/PanoramaUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaUI;->updateCancelButtonImage(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->closeCaptureUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/PanoramaUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/PanoramaUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturingFrame:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/PanoramaUI;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/PanoramaUI;->showIndicator(ZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/component/PanoramaUI;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideThumbnailBar()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/component/PanoramaUI;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/IEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ShowThumbBarEventHandler:Lcom/android/camera/IEventHandler;

    return-object v0
.end method

.method private activateSpinner()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 443
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSpinnerActive:Z

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_Spinner:Landroid/widget/ImageView;

    const v1, 0x7f020159

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 446
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_Spinner:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 447
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    iget v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    move v0, v7

    :goto_0
    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameOffset(FF)V

    .line 449
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v0, v7}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorActivity(Z)V

    .line 450
    iput-boolean v7, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSpinnerActive:Z

    .line 451
    const/16 v2, 0x64

    const/4 v5, 0x0

    sget v6, Lcom/android/camera/component/PanoramaUI;->SPINNER_ACTIVE_TIMEOUT:I

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/PanoramaUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;IZ)Z

    .line 453
    :cond_0
    return-void

    .line 447
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private closeCaptureUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 461
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    .line 471
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 469
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCaptureUINeeded:Z

    .line 470
    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCaptureUIOpen:Z

    goto :goto_0
.end method

.method private deactivateSpinner()V
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner(Z)V

    .line 479
    return-void
.end method

.method private deactivateSpinner(Z)V
    .locals 7
    .parameter "forceDeactivate"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 482
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSpinnerActive:Z

    if-eqz v1, :cond_3

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_Spinner:Landroid/widget/ImageView;

    const v2, 0x7f0200c1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 486
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v1, v4}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorActivity(Z)V

    .line 487
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    if-ge v1, v6, :cond_1

    .line 489
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v1, v4}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorUpdateType(I)V

    .line 490
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    iget v2, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaX:F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameOffset(FF)V

    .line 491
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v1, v5}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorUpdateType(I)V

    .line 493
    :cond_1
    iput-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSpinnerActive:Z

    .line 494
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/camera/component/PanoramaUI;->removeMessages(I)V

    .line 497
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    if-eqz v1, :cond_4

    .line 499
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    if-ge v1, v6, :cond_2

    .line 500
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->showDirectionIndicator()V

    .line 541
    :cond_2
    :goto_0
    iput-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSlowArrowShown:Z

    .line 543
    :cond_3
    return-void

    .line 505
    :cond_4
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 506
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 509
    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    if-eqz v1, :cond_2

    .line 512
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    .line 514
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 515
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 517
    :cond_6
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    .line 519
    :cond_7
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 520
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 524
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 527
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v0

    .line 528
    .local v0, orientation:I
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    instance-of v1, v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_8

    .line 529
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 532
    :cond_8
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToastTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->isUILandscape()Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7f0a0042

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 535
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    invoke-virtual {p0, v1, v5, v5}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 532
    :cond_9
    const v1, 0x7f0a0043

    goto :goto_1
.end method

.method private getVirtualDeviceOrientation()I
    .locals 1

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getLastOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/PanoramaUI;->getVirtualDeviceOrientation(I)I

    move-result v0

    return v0
.end method

.method private getVirtualDeviceOrientation(I)I
    .locals 3
    .parameter "deviceOrientation"

    .prologue
    .line 730
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v0

    .line 731
    .local v0, uiOrientation:I
    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v2, v2, 0x5a

    add-int v1, p1, v2

    .line 732
    .local v1, virtualOrientation:I
    if-gez v1, :cond_0

    .line 733
    add-int/lit16 v1, v1, 0x168

    .line 734
    :cond_0
    return v1
.end method

.method private hideArrows()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 807
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 810
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 817
    :cond_1
    return-void
.end method

.method private hideCenterIndicator()V
    .locals 3

    .prologue
    .line 825
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 830
    .local v0, currentIndicator:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 833
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 834
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .end local v0           #currentIndicator:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method

.method private hideReviewScreen()V
    .locals 4

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v3, Lcom/android/camera/component/PanoramaUI$17;

    invoke-direct {v3, p0}, Lcom/android/camera/component/PanoramaUI$17;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ImageUtility;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 859
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 860
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideSweepIndicator()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 871
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 880
    :goto_0
    return-void

    .line 875
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner()V

    .line 876
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 877
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v0, v3}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorActivity(Z)V

    .line 878
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameOffset(FF)V

    .line 879
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v0, v3}, Lcom/android/camera/widget/PanoramaIndicatorView;->setPanoramaDirection(I)V

    goto :goto_0
.end method

.method private hideThumbnailBar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 888
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 889
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 892
    :cond_0
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 894
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 896
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    aget-object v2, v3, v1

    .line 897
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 898
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 899
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 900
    invoke-static {v0}, Lcom/android/camera/ImageUtility;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 894
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 903
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #i:I
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 904
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 905
    :cond_2
    return-void
.end method

.method private initializeUI()V
    .locals 8

    .prologue
    const v7, 0x7f08013e

    const v6, 0x7f080147

    const v5, 0x7f080145

    const v3, 0x7f080141

    const/4 v4, 0x1

    .line 948
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->prepareContentLayout()Landroid/view/View;

    move-result-object v0

    .line 951
    .local v0, baseLayout:Landroid/view/View;
    iget-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsUIInitialized:Z

    if-eqz v2, :cond_0

    .line 1062
    :goto_0
    return-void

    .line 955
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v2, :cond_3

    .line 957
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_2

    .line 960
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    .line 961
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 962
    const v2, 0x7f080154

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    .line 963
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    const v3, 0x7f080155

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToastTextView:Landroid/widget/TextView;

    .line 966
    const v2, 0x7f08014d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorContainer:Landroid/view/View;

    .line 967
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorContainer:Landroid/view/View;

    const v3, 0x7f08014e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    .line 968
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorContainer:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    .line 969
    invoke-direct {p0, v4}, Lcom/android/camera/component/PanoramaUI;->updateIndicatorOrientation(I)V

    .line 972
    const v2, 0x7f08014f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    .line 973
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    const v3, 0x7f080151

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/widget/PanoramaIndicatorView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    .line 974
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v2, v4}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorVisibility(Z)V

    .line 975
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    const v3, 0x7f080150

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Spinner:Landroid/widget/ImageView;

    .line 976
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 979
    const v2, 0x7f080152

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 980
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    .line 981
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v3, 0x7f080153

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    .line 982
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    .line 983
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ArrowsContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 986
    const v2, 0x7f080156

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 987
    const v2, 0x7f080157

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    .line 1025
    :cond_1
    :goto_1
    const v2, 0x7f08013f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    .line 1026
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    const v3, 0x7f080140

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    .line 1027
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/camera/component/PanoramaUI$18;

    invoke-direct {v3, p0}, Lcom/android/camera/component/PanoramaUI$18;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1058
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/camera/component/PanoramaUI;->updateCancelButtonImage(Z)V

    .line 1061
    iput-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsUIInitialized:Z

    goto/16 :goto_0

    .line 992
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    .line 993
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/component/PanoramaUI;->rotateDsInitToast(I)V

    .line 996
    const v2, 0x7f080142

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    .line 997
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    const v3, 0x7f08014c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    .line 998
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    .line 999
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    goto :goto_1

    .line 1005
    :cond_3
    const v2, 0x7f08013d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/widget/PanoramaTrackingView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    .line 1006
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    .line 1007
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    invoke-virtual {v2, v4}, Lcom/android/camera/rotate/RotateImageView;->setDefinedOrientation(I)V

    .line 1008
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    .line 1009
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 1012
    const v2, 0x7f080142

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    .line 1013
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    const v3, 0x7f080143

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBarBackground:Landroid/widget/ImageView;

    .line 1014
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    const v3, 0x7f080144

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBarContent:Landroid/view/View;

    .line 1015
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBarContent:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    .line 1016
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBarContent:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    .line 1017
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBarContent:Landroid/view/View;

    const v3, 0x7f080146

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbContainer:Landroid/view/ViewGroup;

    .line 1018
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    const v3, 0x7f080148

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailHighlightFrame:Landroid/view/View;

    .line 1019
    const/4 v2, 0x5

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    .line 1020
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1021
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v1

    .line 1020
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private linkToController()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1077
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    if-eqz v0, :cond_0

    move v0, v1

    .line 1085
    :goto_0
    return v0

    .line 1079
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    const-string v2, "Panorama Controller"

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/PanoramaController;

    iput-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    .line 1080
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    if-eqz v0, :cond_1

    .line 1082
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {v0, p0}, Lcom/android/camera/component/PanoramaController;->link(Lcom/android/camera/component/PanoramaUI;)V

    move v0, v1

    .line 1083
    goto :goto_0

    .line 1085
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAborted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1094
    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->showCancelButton(Z)V

    .line 1097
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PanoramaTrackingView;->setPanoramaDirection(I)V

    .line 1101
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideThumbnailBar()V

    .line 1104
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideCenterIndicator()V

    .line 1110
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->showActionScreen()V

    .line 1112
    return-void
.end method

.method private onDirectionLocked(I)V
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v7, 0x1

    const/4 v5, -0x2

    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 1120
    iput p1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    .line 1123
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1125
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->updatePreviewThumbnailDirection()V

    .line 1192
    :goto_0
    return-void

    .line 1130
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v2, :cond_2

    .line 1133
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v2, p1}, Lcom/android/camera/widget/PanoramaIndicatorView;->setPanoramaDirection(I)V

    .line 1136
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideArrows()V

    .line 1139
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1140
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 1143
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->showDirectionIndicator()V

    goto :goto_0

    .line 1148
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getThumbnailWidth()I

    move-result v1

    .line 1151
    .local v1, thumbnailWidth:I
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v2, p1}, Lcom/android/camera/widget/PanoramaTrackingView;->setPanoramaDirection(I)V

    .line 1154
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1155
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailHeight:I

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowBottom:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1156
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    array-length v2, v2

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowLeft:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowRight:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1157
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1160
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBarBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1163
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1164
    .restart local v0       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-ne p1, v7, :cond_3

    .line 1167
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1170
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1171
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1172
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    aget-object v2, v2, v6

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1173
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    aget-object v2, v2, v6

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1176
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1177
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1188
    :goto_1
    iget v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowLeft:I

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowTop:I

    iget v4, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowRight:I

    iget v5, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowBottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1189
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBarContent:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1190
    invoke-direct {p0, v6}, Lcom/android/camera/component/PanoramaUI;->updateHighlightFrameLayout(I)V

    goto/16 :goto_0

    .line 1182
    :cond_3
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1185
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1186
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private onIntermediateCapturePrepare(I)V
    .locals 3
    .parameter "captureIndex"

    .prologue
    .line 1200
    if-lez p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 1203
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1204
    .local v0, currentIndicator:Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 1205
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .end local v0           #currentIndicator:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1208
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    const v2, 0x7f020095

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1210
    :cond_1
    return-void
.end method

.method private onIntermediateCaptureStart(I)V
    .locals 2
    .parameter "captureIndex"

    .prologue
    const/4 v1, 0x1

    .line 1218
    if-nez p1, :cond_0

    .line 1220
    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    .line 1221
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    .line 1223
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturingFrame:Z

    .line 1224
    iput p1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    .line 1225
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaX:F

    .line 1239
    if-lez p1, :cond_2

    .line 1240
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->activateSpinner()V

    .line 1248
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 1249
    return-void

    .line 1243
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    if-eqz v0, :cond_1

    .line 1244
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameIndicatorActivity(Z)V

    goto :goto_0
.end method

.method private onIntermediatePhoto(ILandroid/graphics/Bitmap;)V
    .locals 9
    .parameter "captureIndex"
    .parameter "image"

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x2

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1257
    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    if-eq v3, p1, :cond_1

    .line 1259
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current capture index is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but receive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in onIntermediatePhoto()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    :cond_0
    :goto_0
    return-void

    .line 1264
    :cond_1
    iput-boolean v7, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturingFrame:Z

    .line 1267
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 1270
    iget-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v3, :cond_6

    .line 1273
    if-nez p1, :cond_5

    .line 1276
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1278
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Camera is paused or idle, stop capturing panorama picture"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->stopCapture()V

    goto :goto_0

    .line 1284
    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1287
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1288
    .local v2, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1289
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1290
    invoke-direct {p0, v7, v4}, Lcom/android/camera/component/PanoramaUI;->updatePreviewThumbnailSize(IF)V

    .line 1293
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1294
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1295
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1296
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1297
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1298
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    invoke-virtual {p0, v3, v8, v8}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 1299
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/camera/component/PanoramaUI;->onPreviewCreated(Landroid/graphics/Bitmap;)V

    .line 1305
    .end local v2           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    invoke-direct {p0, v8}, Lcom/android/camera/component/PanoramaUI;->showCancelButton(Z)V

    goto :goto_0

    .line 1302
    :cond_4
    invoke-direct {p0, v8}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner(Z)V

    goto :goto_1

    .line 1307
    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1308
    invoke-direct {p0, p1, v4}, Lcom/android/camera/component/PanoramaUI;->updatePreviewThumbnailSize(IF)V

    goto :goto_0

    .line 1313
    :cond_6
    if-lez p1, :cond_a

    .line 1316
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-lt p1, v3, :cond_7

    .line 1319
    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    if-ne v3, v6, :cond_8

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    .line 1320
    .local v0, arrow:Landroid/widget/ImageView;
    :goto_2
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1324
    .end local v0           #arrow:Landroid/widget/ImageView;
    :cond_7
    iget-object v4, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    if-ne v3, v6, :cond_9

    move v3, p1

    :goto_3
    aget-object v1, v4, v3

    .line 1325
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1326
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1329
    invoke-direct {p0, p1}, Lcom/android/camera/component/PanoramaUI;->updateHighlightFrameLayout(I)V

    goto/16 :goto_0

    .line 1319
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_8
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    goto :goto_2

    .line 1324
    :cond_9
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    array-length v3, v3

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 1334
    :cond_a
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    aget-object v3, v3, v7

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1335
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    aget-object v3, v3, v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1338
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1339
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1340
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1341
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1344
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1345
    .restart local v2       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1346
    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowLeft:I

    iget v4, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowTop:I

    iget v5, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowRight:I

    iget v6, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowBottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1347
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBarContent:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1350
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowLeft:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowRight:I

    add-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowTop:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowBottom:I

    add-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1353
    .restart local v2       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1354
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailHighlightFrame:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1357
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBarBackground:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1360
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1363
    invoke-direct {p0, v8}, Lcom/android/camera/component/PanoramaUI;->showCancelButton(Z)V

    goto/16 :goto_0
.end method

.method private onIntermediateShutter(I)V
    .locals 0
    .parameter "captureIndex"

    .prologue
    .line 1372
    return-void
.end method

.method private onPreviewCreated(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "previewThumb"

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1383
    iget v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaX:F

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/PanoramaUI;->updatePreviewThumbnailSize(IF)V

    .line 1384
    return-void
.end method

.method private onReviewImageCreated(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v0, :cond_2

    .line 1394
    :cond_0
    if-eqz p1, :cond_1

    .line 1395
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1401
    :cond_1
    :goto_0
    return-void

    .line 1400
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private onStitchCompleted()V
    .locals 2

    .prologue
    .line 1409
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 1410
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1418
    :goto_0
    return-void

    .line 1414
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/component/PanoramaUI;->showProcessingDialog(Z)V

    .line 1417
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->showActionScreen()V

    goto :goto_0
.end method

.method private onStitchStarted(Z)V
    .locals 4
    .parameter "isErrorHandling"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1426
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v0

    .line 1429
    .local v0, isIdleOrPaused:Z
    iput-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    .line 1430
    iput-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSlowArrowShown:Z

    .line 1433
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideThumbnailBar()V

    .line 1436
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideArrows()V

    .line 1439
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1440
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_InitDirectionToast:Landroid/view/View;

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 1443
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideCenterIndicator()V

    .line 1446
    if-nez v0, :cond_2

    move v1, v2

    :goto_0
    invoke-direct {p0, v3, v1}, Lcom/android/camera/component/PanoramaUI;->showIndicator(ZZ)V

    .line 1449
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    if-eqz v1, :cond_1

    .line 1450
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v1, v3}, Lcom/android/camera/widget/PanoramaTrackingView;->setPanoramaDirection(I)V

    .line 1453
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideSweepIndicator()V

    .line 1456
    if-nez v0, :cond_4

    .line 1457
    if-nez p1, :cond_3

    const v1, 0x7f0a0045

    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/android/camera/component/PanoramaUI;->showProcessingDialog(ZI)V

    .line 1462
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/camera/component/PanoramaUI;->showCancelButton(Z)V

    .line 1463
    return-void

    :cond_2
    move v1, v3

    .line 1446
    goto :goto_0

    .line 1457
    :cond_3
    const v1, 0x7f0a0046

    goto :goto_1

    .line 1459
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Camera is paused or idle, will not show processing dialog"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onTracking(FF)V
    .locals 5
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v4, 0x2

    .line 1471
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1498
    :cond_0
    :goto_0
    return-void

    .line 1475
    :cond_1
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentCaptureIndex:I

    if-ge v1, v4, :cond_0

    .line 1479
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v1, :cond_4

    .line 1481
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSpinnerActive:Z

    if-nez v1, :cond_2

    .line 1482
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    const/high16 v2, -0x4080

    const/high16 v3, 0x3f80

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameOffset(FF)V

    .line 1488
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSlowArrowShown:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    if-eqz v1, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f00

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 1490
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    if-ne v1, v4, :cond_5

    const v0, 0x7f020158

    .line 1491
    .local v0, resId:I
    :goto_2
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1492
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1493
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSlowArrowShown:Z

    .line 1497
    .end local v0           #resId:I
    :cond_3
    iput p1, p0, Lcom/android/camera/component/PanoramaUI;->m_CurrentDeltaX:F

    goto :goto_0

    .line 1485
    :cond_4
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_TrackingBox:Lcom/android/camera/widget/PanoramaTrackingView;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/widget/PanoramaTrackingView;->setDeltaXY(FF)V

    goto :goto_1

    .line 1490
    :cond_5
    const v0, 0x7f020156

    goto :goto_2
.end method

.method private openCaptureUI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1506
    iget-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-nez v2, :cond_1

    .line 1547
    :cond_0
    :goto_0
    return-void

    .line 1508
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCaptureUIOpen:Z

    if-nez v2, :cond_0

    .line 1512
    iput-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCaptureUINeeded:Z

    .line 1513
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 1514
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPreviewStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1518
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isMenuClosed()Z

    move-result v1

    .line 1519
    .local v1, isMenuClosed:Z
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isEffectPanelOpen()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1521
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1522
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 1525
    :goto_1
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 1529
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isEffectPanelOpen()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1530
    invoke-direct {p0, v4, v4}, Lcom/android/camera/component/PanoramaUI;->showIndicator(ZZ)V

    .line 1533
    :cond_3
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 1534
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbBar:Landroid/view/View;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    .line 1537
    :cond_4
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 1539
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideSweepIndicator()V

    .line 1540
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-virtual {v2, v5, v5}, Lcom/android/camera/widget/PanoramaIndicatorView;->setFrameOffset(FF)V

    .line 1541
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicator:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->getVirtualDeviceOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/widget/PanoramaIndicatorView;->setDeviceOrientation(I)V

    .line 1542
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1546
    :cond_5
    iput-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCaptureUIOpen:Z

    goto :goto_0

    .line 1524
    :cond_6
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/component/PanoramaUI;->rotateDsInitToast(I)V

    goto :goto_1
.end method

.method private registerEventListeners()V
    .locals 3

    .prologue
    .line 1609
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    .line 1612
    .local v0, eventManager:Lcom/android/camera/EventManager;
    const-string v1, "ActionScreen.Open"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ActionScreenOpeningEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 1615
    const-string v1, "CaptureUI.Closed"

    new-instance v2, Lcom/android/camera/component/PanoramaUI$19;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$19;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 1624
    const-string v1, "CaptureUI.Open"

    new-instance v2, Lcom/android/camera/component/PanoramaUI$20;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$20;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 1633
    const-string v1, "CameraActivity.Deactivate"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_DeactivateHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 1636
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1637
    const-string v1, "DeviceOrientation.Changed"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_OrientationChangedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 1640
    :cond_0
    const-string v1, "EffectPanel.Closed"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_EffectPanelClosedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 1643
    const-string v1, "EffectPanel.Opening"

    new-instance v2, Lcom/android/camera/component/PanoramaUI$21;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PanoramaUI$21;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 1654
    const-string v1, "Key.Down"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_KeyDownEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 1657
    const-string v1, "Menu.Opening"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_MenuOpeningEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 1658
    const-string v1, "Menu.Closed"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_MenuClosedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 1661
    const-string v1, "CameraActivity.Pausing"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_PausingEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 1664
    const-string v1, "Query.IsZoomLockNeeded"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_QueryEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 1667
    const-string v1, "Resolution.Selected"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionSelectedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 1670
    const-string v1, "CameraActivity.PreviewStarted"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_PreviewStartedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 1673
    invoke-static {}, Lcom/android/camera/component/PanoramaController;->isNonLandscapeSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1674
    const-string v1, "CameraActivity.RotateChanged"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_RotationChangedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 1677
    :cond_1
    const-string v1, "ThumbnailButton.Clicked"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbClickedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 1680
    const-string v1, "SelfTimer.Changed"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_SelfTimerChangedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 1681
    return-void
.end method

.method private rotateDsInitToast(I)V
    .locals 7
    .parameter "orientation"

    .prologue
    const/16 v6, 0x2a

    const/4 v5, -0x2

    const/16 v4, 0xa

    .line 1689
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1692
    .local v1, toast:Landroid/view/View;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1693
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 1714
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1715
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_InitToast:Landroid/view/View;

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 1716
    return-void

    .line 1698
    :pswitch_0
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1699
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1700
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1701
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 1707
    :pswitch_1
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1708
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1709
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1710
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 1693
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private showCancelButton(Z)V
    .locals 8
    .parameter "visible"

    .prologue
    const-wide/16 v4, 0x12c

    const-wide/16 v2, 0x0

    const/4 v1, 0x3

    const/4 v7, 0x0

    .line 1723
    if-eqz p1, :cond_1

    .line 1725
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1727
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideIn(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/android/camera/component/PanoramaUI$22;

    invoke-direct {v1, p0}, Lcom/android/camera/component/PanoramaUI$22;-><init>(Lcom/android/camera/component/PanoramaUI;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1751
    :cond_0
    :goto_0
    return-void

    .line 1744
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1746
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1747
    invoke-direct {p0, v7}, Lcom/android/camera/component/PanoramaUI;->updateCancelButtonImage(Z)V

    .line 1748
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideOut(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method private showDirectionIndicator()V
    .locals 2

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    if-nez v0, :cond_1

    .line 1775
    :cond_0
    :goto_0
    return-void

    .line 1763
    :cond_1
    iget v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1769
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    const v1, 0x7f020155

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1774
    :goto_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 1766
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CenterIndicatorView:Landroid/widget/ImageView;

    const v1, 0x7f020157

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1763
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showIndicator(ZZ)V
    .locals 0
    .parameter "visible"
    .parameter "animation"

    .prologue
    .line 1784
    return-void
.end method

.method private syncResolutionBack()V
    .locals 4

    .prologue
    .line 1815
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 1816
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v1

    .line 1817
    .local v1, modeHandler:Lcom/android/camera/PhotoModeHandler;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoModeHandler;->setResolutionHandler(Lcom/android/camera/IResolutionHandler;)V

    .line 1820
    iget-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsResolutionSyncBackNeeded:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

    if-eqz v2, :cond_0

    .line 1822
    invoke-virtual {v1, v0}, Lcom/android/camera/PhotoModeHandler;->getResolutionPreferenceKey(Lcom/android/camera/HTCCamera;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

    invoke-virtual {v3, v0}, Lcom/android/camera/component/PanoramaResolutionHandler;->getResolution(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1826
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsResolutionSyncBackNeeded:Z

    .line 1828
    :cond_0
    return-void
.end method

.method private updateCancelButtonImage(Z)V
    .locals 4
    .parameter "pressed"

    .prologue
    .line 1835
    if-eqz p1, :cond_0

    .line 1836
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const v2, 0x7f0a0001

    const v3, 0x7f02019a

    invoke-static {v1, v2, v3}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1839
    :goto_0
    return-void

    .line 1838
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;

    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateHighlightFrameLayout(I)V
    .locals 5
    .parameter "captureIndex"

    .prologue
    .line 1847
    iget-boolean v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-eqz v2, :cond_0

    .line 1858
    .end local p1
    :goto_0
    return-void

    .line 1851
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getThumbnailWidth()I

    move-result v1

    .line 1852
    .local v1, thumbnailWidth:I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailHeight:I

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowBottom:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowTop:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowLeft:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowRight:I

    add-int/2addr v3, v4

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1855
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1856
    iget v2, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .end local p1
    :goto_1
    mul-int v2, p1, v1

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1857
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailHighlightFrame:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1856
    .restart local p1
    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumbs:[Landroid/widget/ImageView;

    array-length v2, v2

    sub-int/2addr v2, p1

    add-int/lit8 p1, v2, -0x1

    goto :goto_1
.end method

.method private updateIndicatorLocation(Z)V
    .locals 4
    .parameter "isSelfTimerOn"

    .prologue
    .line 1866
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    if-nez v2, :cond_1

    .line 1880
    :cond_0
    :goto_0
    return-void

    .line 1870
    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1872
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v0

    .line 1873
    .local v0, orientation:I
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1874
    .local v1, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 1875
    :cond_2
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    const v3, 0x7f0b005f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    .line 1878
    :goto_1
    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    if-eqz p1, :cond_4

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1877
    :cond_3
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorTopPaddingView:Landroid/view/View;

    const v3, 0x7f0b005e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    goto :goto_1

    .line 1878
    :cond_4
    const/16 v2, 0x8

    goto :goto_2
.end method

.method private updateIndicatorOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 1888
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    if-nez v2, :cond_0

    .line 1911
    :goto_0
    return-void

    .line 1892
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1893
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1894
    .local v0, layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1896
    :cond_1
    const v2, 0x7f0b005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1897
    const v2, 0x7f0b005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1904
    :goto_1
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_IndicatorContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1907
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isSelfTimerOn()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/component/PanoramaUI;->updateIndicatorLocation(Z)V

    .line 1910
    iget-object v2, p0, Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;

    invoke-virtual {v2, p1}, Lcom/android/camera/rotate/RotateImageView;->setDefinedOrientation(I)V

    goto :goto_0

    .line 1901
    :cond_2
    const v2, 0x7f0b005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1902
    const v2, 0x7f0b005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method private updatePreviewThumbnailDirection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1919
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-nez v1, :cond_0

    .line 1947
    :goto_0
    return-void

    .line 1923
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1924
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    packed-switch v1, :pswitch_data_0

    .line 1943
    :goto_1
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1946
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideArrows()V

    goto :goto_0

    .line 1927
    :pswitch_0
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1928
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 1931
    :pswitch_1
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1932
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 1935
    :pswitch_2
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1936
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 1939
    :pswitch_3
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1940
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 1924
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updatePreviewThumbnailSize(IF)V
    .locals 3
    .parameter "captureIndex"
    .parameter "delta"

    .prologue
    .line 1955
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaDirection:I

    packed-switch v1, :pswitch_data_0

    .line 1962
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 1963
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getThumbnailWidth()I

    move-result v1

    int-to-float v1, v1

    add-int/lit8 v2, p1, 0x1

    int-to-float v2, v2

    add-float/2addr v2, p2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1966
    .local v0, height:I
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_Thumb:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    .line 1967
    return-void

    .line 1959
    .end local v0           #height:I
    :pswitch_1
    neg-float p2, p2

    goto :goto_0

    .line 1955
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 552
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->syncResolutionBack()V

    .line 556
    :cond_0
    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    .line 557
    iput-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

    .line 560
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 561
    return-void
.end method

.method public enterPanoramaMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 568
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "enterPanoramaMode() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-eqz v1, :cond_0

    .line 572
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Re-enter panorama mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    .line 576
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->linkToController()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 577
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {p0, v1, v3}, Lcom/android/camera/component/PanoramaUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 582
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsRestartingPreviewNeeded:Z

    if-eqz v1, :cond_2

    .line 584
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/CameraThread;->restartPreview(I)V

    .line 585
    iput-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsRestartingPreviewNeeded:Z

    .line 586
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Waiting for re-starting preview"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "enterPanoramaMode() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :goto_1
    return-void

    .line 579
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot link to panorama controller"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 592
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 593
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {}, Lcom/android/camera/component/PanoramaController;->isNonLandscapeSupported()Z

    move-result v1

    if-nez v1, :cond_3

    .line 594
    invoke-virtual {v0, v3}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    .line 597
    :cond_3
    invoke-static {}, Lcom/android/camera/component/PanoramaController;->isZoomingSupported()Z

    move-result v1

    if-nez v1, :cond_4

    .line 598
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->lockZoom()V

    .line 601
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->initializeUI()V

    .line 604
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->openCaptureUI()V

    .line 607
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableFlash()V

    .line 610
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableSelfTimer()V

    .line 612
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "enterPanoramaMode() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public exitPanoramaMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 620
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "exitPanoramaMode() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-nez v1, :cond_0

    .line 625
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Re-exit panorama mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsRestartingPreviewNeeded:Z

    if-eqz v1, :cond_1

    .line 632
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraThread;->restartPreview(I)V

    .line 633
    iput-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsRestartingPreviewNeeded:Z

    .line 637
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 639
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 640
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner()V

    .line 641
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/camera/component/PanoramaUI;->removeMessages(I)V

    .line 645
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->closeCaptureUI()V

    .line 648
    const/4 v1, 0x1

    invoke-direct {p0, v3, v1}, Lcom/android/camera/component/PanoramaUI;->showIndicator(ZZ)V

    .line 651
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideThumbnailBar()V

    .line 654
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 655
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    .line 658
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableSelfTimer()V

    .line 661
    iput-boolean v3, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    .line 662
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    if-eqz v1, :cond_5

    .line 663
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/component/PanoramaUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 668
    :goto_1
    invoke-static {}, Lcom/android/camera/component/PanoramaController;->isZoomingSupported()Z

    move-result v1

    if-nez v1, :cond_3

    .line 669
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->unlockZoom()V

    .line 672
    :cond_3
    invoke-static {}, Lcom/android/camera/component/PanoramaController;->isNonLandscapeSupported()Z

    move-result v1

    if-nez v1, :cond_4

    .line 673
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    .line 676
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->collapseContentLayout()V

    .line 678
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "exitPanoramaMode() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 665
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Cannot exit panorama mode because there is no panorama controller"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected getContentLayoutID()I
    .locals 1

    .prologue
    .line 687
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 689
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    if-nez v0, :cond_0

    .line 690
    const v0, 0x7f03002d

    .line 693
    :goto_0
    return v0

    .line 691
    :cond_0
    const v0, 0x7f03002f

    goto :goto_0

    .line 693
    :cond_1
    const v0, 0x7f03002e

    goto :goto_0
.end method

.method public final getResolutionHandler()Lcom/android/camera/IResolutionHandler;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

    return-object v0
.end method

.method public getThumbnailHeight()I
    .locals 1

    .prologue
    .line 709
    iget v0, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailHeight:I

    return v0
.end method

.method public getThumbnailWidth()I
    .locals 3

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const-string v2, "pref_camera_image_ratio"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 718
    .local v0, isWideScreenPhoto:Z
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidthWide:I

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidth:I

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 743
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 797
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 800
    :goto_0
    return-void

    .line 746
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->onAborted()V

    goto :goto_0

    .line 750
    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->deactivateSpinner()V

    goto :goto_0

    .line 754
    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onDirectionLocked(I)V

    goto :goto_0

    .line 758
    :sswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onIntermediateCapturePrepare(I)V

    goto :goto_0

    .line 762
    :sswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onIntermediateCaptureStart(I)V

    goto :goto_0

    .line 766
    :sswitch_5
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v1}, Lcom/android/camera/component/PanoramaUI;->onIntermediatePhoto(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 770
    :sswitch_6
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onIntermediateShutter(I)V

    goto :goto_0

    .line 774
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onPreviewCreated(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 778
    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onReviewImageCreated(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 782
    :sswitch_9
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->onStitchCompleted()V

    goto :goto_0

    .line 786
    :sswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->onStitchStarted(Z)V

    goto :goto_0

    .line 791
    :sswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 792
    .local v0, array:[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/android/camera/component/PanoramaUI;->onTracking(FF)V

    goto :goto_0

    .line 743
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_6
        0x5 -> :sswitch_5
        0x6 -> :sswitch_b
        0x7 -> :sswitch_7
        0x8 -> :sswitch_2
        0x9 -> :sswitch_a
        0xa -> :sswitch_9
        0xb -> :sswitch_0
        0xc -> :sswitch_8
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 914
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 917
    invoke-static {}, Lcom/android/camera/component/PanoramaController;->getPanoramaType()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsSweepPanorama:Z

    .line 920
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 921
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-nez v1, :cond_1

    .line 923
    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidth:I

    .line 924
    const v1, 0x7f0b0067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidthWide:I

    .line 925
    const v1, 0x7f0b0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailHeight:I

    .line 926
    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowLeft:I

    .line 927
    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowTop:I

    .line 928
    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowRight:I

    .line 929
    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailShadowBottom:I

    .line 939
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->registerEventListeners()V

    .line 940
    return-void

    .line 917
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 933
    .restart local v0       #res:Landroid/content/res/Resources;
    :cond_1
    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidth:I

    .line 934
    iget v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidth:I

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailWidthWide:I

    .line 935
    const v1, 0x7f0b006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/PanoramaUI;->m_ThumbnailHeight:I

    goto :goto_1
.end method

.method public isPanoramaModeEntered()Z
    .locals 1

    .prologue
    .line 1069
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    return v0
.end method

.method public final prepareEnteringPanoramaMode(Z)V
    .locals 7
    .parameter "restartPreview"

    .prologue
    .line 1554
    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareEnteringPanoramaMode("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    iget-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-eqz v4, :cond_0

    .line 1578
    :goto_0
    return-void

    .line 1561
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 1562
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    .line 1563
    .local v1, cameraThread:Lcom/android/camera/CameraThread;
    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v3

    .line 1564
    .local v3, modeHandler:Lcom/android/camera/PhotoModeHandler;
    iget-object v4, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1565
    iget-object v4, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

    invoke-virtual {v3, v0}, Lcom/android/camera/PhotoModeHandler;->getResolution(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/android/camera/component/PanoramaResolutionHandler;->syncFromCurrentResolution(Lcom/android/camera/HTCCamera;Lcom/android/camera/Resolution;)V

    .line 1566
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/camera/component/PanoramaUI;->m_IsResolutionSyncBackNeeded:Z

    .line 1569
    iget-object v4, p0, Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;

    invoke-virtual {v3, v4}, Lcom/android/camera/PhotoModeHandler;->setResolutionHandler(Lcom/android/camera/IResolutionHandler;)V

    .line 1572
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getMenuHandler()Lcom/android/camera/MenuHandler;

    move-result-object v2

    .line 1573
    .local v2, menuHandler:Lcom/android/camera/MenuHandler;
    if-eqz v2, :cond_2

    .line 1574
    invoke-virtual {v2}, Lcom/android/camera/MenuHandler;->updateResolutionList()V

    .line 1577
    :cond_2
    iput-boolean p1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsRestartingPreviewNeeded:Z

    goto :goto_0
.end method

.method public final prepareExitingPanoramaMode(Z)V
    .locals 4
    .parameter "restartPreview"

    .prologue
    .line 1585
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareExitingPanoramaMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    iget-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-nez v1, :cond_0

    .line 1601
    :goto_0
    return-void

    .line 1592
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->syncResolutionBack()V

    .line 1595
    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getMenuHandler()Lcom/android/camera/MenuHandler;

    move-result-object v0

    .line 1596
    .local v0, menuHandler:Lcom/android/camera/MenuHandler;
    if-eqz v0, :cond_1

    .line 1597
    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->updateResolutionList()V

    .line 1600
    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsRestartingPreviewNeeded:Z

    goto :goto_0
.end method

.method public final stopCapture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1792
    iget-boolean v0, p0, Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    .line 1807
    :goto_0
    return-void

    .line 1796
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/component/PanoramaUI;->showCancelButton(Z)V

    .line 1799
    invoke-direct {p0}, Lcom/android/camera/component/PanoramaUI;->hideSweepIndicator()V

    .line 1802
    iput-boolean v1, p0, Lcom/android/camera/component/PanoramaUI;->m_IsCapturing:Z

    .line 1803
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    if-eqz v0, :cond_1

    .line 1804
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI;->m_PanoramaController:Lcom/android/camera/component/PanoramaController;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/PanoramaUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0

    .line 1806
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot stop capturing because there is no panorama controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
