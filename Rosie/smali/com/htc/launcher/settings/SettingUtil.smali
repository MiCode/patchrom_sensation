.class public Lcom/htc/launcher/settings/SettingUtil;
.super Ljava/lang/Object;
.source "SettingUtil.java"


# static fields
.field private static final DEFAULT_SCROLL_DEGREE:F = 1.0f

.field public static ENABLE_G_SENEOR:Z = false

.field public static ENABLE_THUMBNAIL_MODE:Z = false

.field public static final PERFORMANCE_TAG:Ljava/lang/String; = "PREF"

.field public static final SENSE_1_5:F = 1.5f

.field public static final SENSE_2_0:F = 2.0f

.field private static final TAG:Ljava/lang/String; = "SettingUtil"

.field public static final VIBRATE_DURATION:I = 0x23

.field public static htc_sense:F

.field public static isAllProgramButtonBar:Z

.field public static isAllProgramTitle:Z

.field public static isShowButtonBar:Z

.field public static localLOGD:Z

.field private static mSceneRoot:Ljava/lang/String;

.field private static mScreenLongAxisLength:I

.field private static mScreenShortAxisLength:I

.field public static sAutoExitStickyModeTimeOut:I

.field public static sCellHeight:I

.field public static sCellWidth:I

.field private static sCustomizeButtonCount:I

.field public static sDragSensitive:I

.field public static sEaseInBackCoefficients:[F

.field public static sEaseInBackDuration:F

.field public static sEaseOutBackCoefficients:[F

.field public static sEaseOutBackDuration:F

.field public static sEaseOutCoefficientsLong:[F

.field public static sEaseOutCoefficientsShort:[F

.field public static sEaseOutDuration:F

.field public static sEnableThumbnailMode:Z

.field public static sFixedScrollDurationLand:I

.field public static sFixedScrollDurationPort:I

.field public static sFixedScrollVelocity:Z

.field public static sFolderIcon:Landroid/graphics/drawable/Drawable;

.field public static sFullRoundScrollTouchDeltaPort:I

.field public static sFullRoundScrollVelocityLand:I

.field public static sFullRoundScrollVelocityPort:I

.field public static sGLScroll:Z

.field public static sIsCSPackageInstalled:Z

.field public static sIsEnableLoopLog:Z

.field public static sIsEnablePointerLocation:Z

.field public static sIsEnableRearrange:Z

.field public static sIsEnableRearrangeAnimation:Z

.field public static sIsHomeToThumbnail:Z

.field public static sIsRealTimeThumbnailMode:Z

.field public static sIsRingSlide:Z

.field public static sMaxScrollOffset:I

.field public static sMaxScrollRoundDurationLand:I

.field public static sMaxScrollRoundDurationPort:I

.field public static sMediumScrollOffset:I

.field public static sMediumScrollRoundDurationLand:I

.field public static sMediumScrollRoundDurationPort:I

.field public static sMultiPageScrollOnPortrait:Z

.field public static sOverrideDensity:F

.field public static sOverrideDpi:I

.field public static sScrollVelocityFactor:I

.field private static sShouldChangeAppWindowVisibility:Z

.field private static sShouldDrawWallpaper:Z

.field private static sShouldFreezeWallpaper:Z

.field public static sSinglePageScrollVelocityLand:I

.field public static sSinglePageScrollVelocityPort:I

.field public static sSpringboardMode:Z

.field public static sTouchSlop:I

.field public static sWallpaperScreensSpan:I

.field public static sWorkspaceDefaultScreen:I

.field public static sWorkspaceScreenCount:I

.field public static sWorkspaceScrollDegree:F

.field public static scrollThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x7d0

    const/16 v4, 0x28a

    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 18
    sput-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    .line 26
    const/16 v0, 0x8

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    .line 27
    sput v3, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceDefaultScreen:I

    .line 28
    sput v2, Lcom/htc/launcher/settings/SettingUtil;->sWallpaperScreensSpan:I

    .line 32
    sput v3, Lcom/htc/launcher/settings/SettingUtil;->sCustomizeButtonCount:I

    .line 51
    sput-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->sIsEnableLoopLog:Z

    .line 55
    sput-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->sIsCSPackageInstalled:Z

    .line 59
    sput-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->sIsEnablePointerLocation:Z

    .line 67
    const/16 v0, 0x64

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sDragSensitive:I

    .line 71
    const/16 v0, 0x19

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sTouchSlop:I

    .line 73
    sput-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->sIsRingSlide:Z

    .line 75
    sput-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->sShouldFreezeWallpaper:Z

    .line 80
    sput-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollVelocity:Z

    .line 81
    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollDurationPort:I

    .line 82
    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollDurationLand:I

    .line 83
    const/16 v0, 0x1f40

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sFullRoundScrollVelocityLand:I

    .line 84
    const/16 v0, 0xbb8

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sSinglePageScrollVelocityLand:I

    .line 85
    const/16 v0, 0x46

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sFullRoundScrollTouchDeltaPort:I

    .line 86
    const/16 v0, 0x1770

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sFullRoundScrollVelocityPort:I

    .line 87
    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sSinglePageScrollVelocityPort:I

    .line 88
    const/16 v0, 0x9c4

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sScrollVelocityFactor:I

    .line 89
    sget v0, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sMaxScrollOffset:I

    .line 90
    sget v0, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    mul-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sMediumScrollOffset:I

    .line 91
    sput v5, Lcom/htc/launcher/settings/SettingUtil;->sMaxScrollRoundDurationLand:I

    .line 92
    const/16 v0, 0x4b0

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sMediumScrollRoundDurationLand:I

    .line 93
    const/16 v0, 0x898

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sMaxScrollRoundDurationPort:I

    .line 94
    const/16 v0, 0x5dc

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sMediumScrollRoundDurationPort:I

    .line 96
    sput-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->sMultiPageScrollOnPortrait:Z

    .line 98
    new-array v0, v1, [F

    sput-object v0, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsLong:[F

    .line 99
    new-array v0, v1, [F

    sput-object v0, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsShort:[F

    .line 100
    new-array v0, v1, [F

    sput-object v0, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutBackCoefficients:[F

    .line 101
    new-array v0, v1, [F

    sput-object v0, Lcom/htc/launcher/settings/SettingUtil;->sEaseInBackCoefficients:[F

    .line 106
    const/high16 v0, 0x3f80

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScrollDegree:F

    .line 114
    sput-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->sEnableThumbnailMode:Z

    .line 118
    sput-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->sIsHomeToThumbnail:Z

    .line 123
    sput-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->sIsRealTimeThumbnailMode:Z

    .line 130
    sput-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->sIsEnableRearrange:Z

    .line 135
    sput-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->sIsEnableRearrangeAnimation:Z

    .line 143
    const/4 v0, 0x0

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sOverrideDensity:F

    .line 144
    const/16 v0, 0xa0

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sOverrideDpi:I

    .line 147
    sput-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->ENABLE_THUMBNAIL_MODE:Z

    .line 148
    sput-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->sGLScroll:Z

    .line 149
    sput-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->sSpringboardMode:Z

    .line 150
    sput-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->ENABLE_G_SENEOR:Z

    .line 151
    sput-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->isAllProgramTitle:Z

    .line 152
    sput-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->isAllProgramButtonBar:Z

    .line 154
    sput-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->isShowButtonBar:Z

    .line 157
    sput v3, Lcom/htc/launcher/settings/SettingUtil;->sAutoExitStickyModeTimeOut:I

    .line 161
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const/high16 v0, 0x4000

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->htc_sense:F

    .line 163
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "SettingUtil"

    const-string v1, "HTC Sense 2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    :goto_0
    sput-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->sShouldChangeAppWindowVisibility:Z

    .line 425
    sput-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->sShouldDrawWallpaper:Z

    return-void

    .line 165
    :cond_1
    const/high16 v0, 0x3fc0

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->htc_sense:F

    .line 166
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "SettingUtil"

    const-string v1, "HTC Sense 1.5 or 1.6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomizeButtonCount()I
    .locals 1

    .prologue
    .line 390
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    sput v0, Lcom/htc/launcher/settings/SettingUtil;->sCustomizeButtonCount:I

    .line 391
    :cond_0
    sget v0, Lcom/htc/launcher/settings/SettingUtil;->sCustomizeButtonCount:I

    return v0
.end method

.method public static getDefaultScreenIndex()I
    .locals 1

    .prologue
    .line 382
    sget v0, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceDefaultScreen:I

    return v0
.end method

.method public static getSceneRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    sget-object v0, Lcom/htc/launcher/settings/SettingUtil;->mSceneRoot:Ljava/lang/String;

    return-object v0
.end method

.method public static getScreenCount()I
    .locals 1

    .prologue
    .line 374
    sget v0, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    return v0
.end method

.method public static getScreenLongAxisLength()I
    .locals 1

    .prologue
    .line 300
    sget v0, Lcom/htc/launcher/settings/SettingUtil;->mScreenLongAxisLength:I

    return v0
.end method

.method public static getScreenShortAxisLength()I
    .locals 1

    .prologue
    .line 296
    sget v0, Lcom/htc/launcher/settings/SettingUtil;->mScreenShortAxisLength:I

    return v0
.end method

.method public static isBliss()Z
    .locals 2

    .prologue
    .line 350
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 352
    :cond_0
    const/4 v0, 0x1

    .line 355
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDoubleShot()Z
    .locals 2

    .prologue
    .line 342
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    .line 343
    const/4 v0, 0x1

    .line 346
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportLandscape()Z
    .locals 2

    .prologue
    .line 322
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x93

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTabletDevice()Z
    .locals 2

    .prologue
    .line 330
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xab

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xac

    if-ne v0, v1, :cond_1

    .line 335
    :cond_0
    const/4 v0, 0x1

    .line 338
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUAKSupported()Z
    .locals 2

    .prologue
    .line 304
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVigor()Z
    .locals 2

    .prologue
    .line 359
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-ne v0, v1, :cond_0

    .line 360
    const/4 v0, 0x1

    .line 363
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadSettings(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 176
    .local v1, res:Landroid/content/res/Resources;
    const v4, 0x7f0a0028

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sCellWidth:I

    .line 177
    const v4, 0x7f0a0029

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sCellHeight:I

    .line 178
    const v4, 0x7f020063

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/launcher/settings/SettingUtil;->sFolderIcon:Landroid/graphics/drawable/Drawable;

    .line 180
    const/high16 v4, 0x7f0c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    .line 181
    const v4, 0x7f0c0001

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceDefaultScreen:I

    .line 182
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->isCSPackageInstalled(Landroid/content/Context;)Z

    move-result v4

    sput-boolean v4, Lcom/htc/launcher/settings/SettingUtil;->sIsCSPackageInstalled:Z

    .line 184
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 185
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 186
    .local v3, screenWidth:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 187
    .local v2, screenHeight:I
    if-le v3, v2, :cond_4

    .line 188
    sput v3, Lcom/htc/launcher/settings/SettingUtil;->mScreenLongAxisLength:I

    .line 189
    sput v2, Lcom/htc/launcher/settings/SettingUtil;->mScreenShortAxisLength:I

    .line 194
    :goto_0
    sget-boolean v4, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v4, :cond_0

    const-string v4, "SettingUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Screen resolution ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/htc/launcher/settings/SettingUtil;->mScreenShortAxisLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/htc/launcher/settings/SettingUtil;->mScreenLongAxisLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutBackCoefficients:[F

    const/high16 v5, 0x4090

    aput v5, v4, v8

    .line 199
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutBackCoefficients:[F

    const/high16 v5, -0x3f20

    aput v5, v4, v7

    .line 200
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutBackCoefficients:[F

    const/high16 v5, 0x40a0

    aput v5, v4, v9

    .line 201
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutBackCoefficients:[F

    const/high16 v5, -0x4000

    aput v5, v4, v10

    .line 202
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutBackCoefficients:[F

    const/high16 v5, 0x3f00

    aput v5, v4, v11

    .line 204
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->usesRingSlide()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 206
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v5, 0x40b0

    aput v5, v4, v8

    .line 207
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v5, -0x3eb0

    aput v5, v4, v7

    .line 208
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v5, 0x4180

    aput v5, v4, v9

    .line 209
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v5, -0x3ee0

    aput v5, v4, v10

    .line 210
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v5, 0x4020

    aput v5, v4, v11

    .line 212
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsLong:[F

    const v5, 0x3feccccd

    aput v5, v4, v8

    .line 213
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsLong:[F

    const v5, -0x42333333

    aput v5, v4, v7

    .line 214
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsLong:[F

    const v5, -0x40b33333

    aput v5, v4, v9

    .line 215
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsLong:[F

    const v5, -0x40ff5c29

    aput v5, v4, v10

    .line 216
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsLong:[F

    const v5, 0x3f0d70a4

    aput v5, v4, v11

    .line 218
    sput-boolean v7, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollVelocity:Z

    .line 220
    const/16 v4, 0x190

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollDurationPort:I

    .line 221
    const/16 v4, 0x190

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollDurationLand:I

    .line 222
    const/16 v4, 0x1388

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sFullRoundScrollVelocityLand:I

    .line 223
    const/16 v4, 0x7d0

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sSinglePageScrollVelocityLand:I

    .line 225
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 226
    const/16 v4, 0x1194

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sFullRoundScrollVelocityPort:I

    .line 227
    const/16 v4, 0xbb8

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sSinglePageScrollVelocityPort:I

    .line 229
    const/16 v4, 0x9c4

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sMaxScrollRoundDurationPort:I

    .line 230
    const/16 v4, 0x4b0

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sMediumScrollRoundDurationPort:I

    .line 232
    const/16 v4, 0x898

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sMaxScrollRoundDurationLand:I

    .line 233
    const/16 v4, 0x4b0

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sMediumScrollRoundDurationLand:I

    .line 235
    const/high16 v4, 0x3fc0

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sOverrideDensity:F

    .line 236
    const/16 v4, 0xf0

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sOverrideDpi:I

    .line 241
    :goto_1
    sput-boolean v7, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollVelocity:Z

    .line 243
    const-string v4, "SettingUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadSettings: sOverrideDpi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/htc/launcher/settings/SettingUtil;->sOverrideDpi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (high="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xf0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", xhight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x140

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget v4, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    mul-int/lit8 v4, v4, 0x2

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sMaxScrollOffset:I

    .line 245
    sget v4, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    mul-int/lit8 v4, v4, 0x1

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sMediumScrollOffset:I

    .line 247
    const/16 v4, 0x19

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sTouchSlop:I

    .line 248
    const/4 v4, 0x5

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sDragSensitive:I

    .line 249
    sput-boolean v7, Lcom/htc/launcher/settings/SettingUtil;->sMultiPageScrollOnPortrait:Z

    .line 271
    :goto_2
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseInBackCoefficients:[F

    const/high16 v5, -0x4040

    aput v5, v4, v8

    .line 272
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseInBackCoefficients:[F

    const/high16 v5, 0x4130

    aput v5, v4, v7

    .line 273
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseInBackCoefficients:[F

    const/high16 v5, -0x3e78

    aput v5, v4, v9

    .line 274
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseInBackCoefficients:[F

    const/high16 v5, 0x4138

    aput v5, v4, v10

    .line 275
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseInBackCoefficients:[F

    const/high16 v5, -0x3fc0

    aput v5, v4, v11

    .line 276
    const/high16 v4, 0x4040

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseInBackDuration:F

    .line 277
    const/high16 v4, 0x4000

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutBackDuration:F

    .line 278
    const/high16 v4, 0x4080

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutDuration:F

    .line 280
    const/high16 v4, 0x3f80

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScrollDegree:F

    .line 283
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v4

    if-nez v4, :cond_1

    .line 284
    sput-boolean v8, Lcom/htc/launcher/settings/SettingUtil;->sShouldFreezeWallpaper:Z

    .line 287
    :cond_1
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 288
    sput-boolean v8, Lcom/htc/launcher/settings/SettingUtil;->sShouldChangeAppWindowVisibility:Z

    .line 291
    :cond_2
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isVigor()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 292
    sput-boolean v7, Lcom/htc/launcher/settings/SettingUtil;->sShouldDrawWallpaper:Z

    .line 293
    :cond_3
    return-void

    .line 191
    :cond_4
    sput v2, Lcom/htc/launcher/settings/SettingUtil;->mScreenLongAxisLength:I

    .line 192
    sput v3, Lcom/htc/launcher/settings/SettingUtil;->mScreenShortAxisLength:I

    goto/16 :goto_0

    .line 238
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sFullRoundScrollVelocityPort:I

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/htc/launcher/settings/SettingUtil;->sSinglePageScrollVelocityPort:I

    goto/16 :goto_1

    .line 256
    :cond_6
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v5, 0x40a0

    aput v5, v4, v8

    .line 257
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v5, -0x3ee0

    aput v5, v4, v7

    .line 258
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v5, 0x4120

    aput v5, v4, v9

    .line 259
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v5, -0x3f60

    aput v5, v4, v10

    .line 260
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsShort:[F

    const/high16 v5, 0x3f80

    aput v5, v4, v11

    .line 262
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsLong:[F

    const/high16 v5, 0x40a0

    aput v5, v4, v8

    .line 263
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsLong:[F

    const/high16 v5, -0x3ee0

    aput v5, v4, v7

    .line 264
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsLong:[F

    const/high16 v5, 0x4120

    aput v5, v4, v9

    .line 265
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsLong:[F

    const/high16 v5, -0x3f60

    aput v5, v4, v10

    .line 266
    sget-object v4, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsLong:[F

    const/high16 v5, 0x3f80

    aput v5, v4, v11

    .line 268
    sput-boolean v8, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollVelocity:Z

    goto/16 :goto_2
.end method

.method public static setDefaultScreenIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 386
    sput p0, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceDefaultScreen:I

    .line 387
    return-void
.end method

.method public static setSceneRoot(Z)V
    .locals 1
    .parameter "isPortrait"

    .prologue
    .line 309
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isSupportLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 310
    const-string v0, "land/"

    sput-object v0, Lcom/htc/launcher/settings/SettingUtil;->mSceneRoot:Ljava/lang/String;

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    const-string v0, "port/"

    sput-object v0, Lcom/htc/launcher/settings/SettingUtil;->mSceneRoot:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setScreenCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 378
    sput p0, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    .line 379
    return-void
.end method

.method public static shouldChangeAppWindowVisibility()Z
    .locals 1

    .prologue
    .line 420
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->sShouldChangeAppWindowVisibility:Z

    return v0
.end method

.method public static shouldDrawWallpaper()Z
    .locals 1

    .prologue
    .line 414
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->sShouldDrawWallpaper:Z

    return v0
.end method

.method public static shouldFreezeWallpaper()Z
    .locals 1

    .prologue
    .line 401
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->sShouldFreezeWallpaper:Z

    return v0
.end method

.method public static shouldRestartForWallpaperChange()Z
    .locals 1

    .prologue
    .line 408
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->sShouldDrawWallpaper:Z

    return v0
.end method

.method public static supportWDM()Z
    .locals 1

    .prologue
    .line 367
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const/4 v0, 0x1

    .line 370
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static usesRingSlide()Z
    .locals 1

    .prologue
    .line 395
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->sIsRingSlide:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
