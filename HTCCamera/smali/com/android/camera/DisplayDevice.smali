.class public Lcom/android/camera/DisplayDevice;
.super Ljava/lang/Object;
.source "DisplayDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/DisplayDevice$CustomMMS;,
        Lcom/android/camera/DisplayDevice$CaptureButton;,
        Lcom/android/camera/DisplayDevice$ScreenRatio;,
        Lcom/android/camera/DisplayDevice$Resolution;
    }
.end annotation


# static fields
.field public static BUTTON_SIZE:I

.field public static CAMERA_PIC_SIZE_FOR_SQUARE:I

.field public static CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

.field public static CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

.field public static CAMERA_PREVIEW_WIDTH_FOR_4x3:I

.field public static CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

.field public static CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

.field public static DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

.field public static DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

.field public static DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

.field public static DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

.field public static DEFAULT_3D_CAMERA_CAPTURE_HEIGHT:I

.field public static DEFAULT_3D_CAMERA_CAPTURE_WIDTH:I

.field public static DEFAULT_3D_CAMERA_PREVIEW_HEIGHT:I

.field public static DEFAULT_3D_CAMERA_PREVIEW_WIDTH:I

.field public static DIALOG_HEIGHT:I

.field public static DIALOG_WIDTH:I

.field private static FOCUS_HEIGHT:I

.field private static FOCUS_WIDTH:I

.field public static HINT_LANDSCAPE_LEFT_PADDING:I

.field public static HINT_PORTRAIT_LEFT_PADDING:I

.field public static HINT_TOP_PADDING:I

.field public static INDICATORE_LAYOUT_MARGIN_NO_ZOOM_BAR:I

.field public static INDICATORE_LAYOUT_MARGIN_WITH_ZOOM_BAR:I

.field public static MARKER_HEIGHT:I

.field public static final NOT_SENSE_2_0:Z

.field public static REMAINING_LAYOUT_MARGIN_NO_EFFECT_BAR:I

.field public static REMAINING_LAYOUT_MARGIN_WITH_EFFECT_BAR:I

.field public static REMAINING_TEXT_MARGIN:I

.field public static REMAINING_TEXT_PADDING:I

.field public static final SCREEN_CENTER_X:I

.field public static final SCREEN_CENTER_Y:I

.field public static SCREEN_HEIGHT:I

.field public static SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

.field public static SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

.field public static SCREEN_WIDTH:I

.field public static SELF_PORTRAIT_HINT_MARGIN_DEFAULT:I

.field public static SELF_PORTRAIT_HINT_MARGIN_MAIN_BAR:I

.field public static SELF_PORTRAIT_HINT_WIDTH_FULL_SCREEN:I

.field public static final SUPPORT_FPS:Z

.field public static final SUPPORT_GPS_INDICATOR:Z

.field public static final SUPPORT_PREVIEW_ANIMATION:Z

.field public static SWITCH_BUTTON_MARGIN_NO_ZOOM_BAR:I

.field public static SWITCH_BUTTON_MARGIN_WITH_ZOOM_BAR:I

.field private static TIMER_BASE_RECORDING_PORTRAIT:I

.field public static TIMER_BASE_SELF_TIMER:I

.field public static WHEEL_BOUNCING_PADDING:I

.field public static WHEEL_ROTATE_PADDING:I

.field public static WHEEL_VSIBLE_AREA_PADDING:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x2d0

    const/16 v5, 0xf0

    const/4 v4, 0x2

    const/16 v3, 0x1e0

    const/4 v1, 0x0

    .line 26
    sget-object v0, Lcom/android/camera/DisplayDevice$Resolution;->HVGA:Lcom/android/camera/DisplayDevice$Resolution;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    .line 28
    sget-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_3_2:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    .line 30
    sget-object v0, Lcom/android/camera/DisplayDevice$CaptureButton;->Other:Lcom/android/camera/DisplayDevice$CaptureButton;

    sput-object v0, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    .line 32
    sget-object v0, Lcom/android/camera/DisplayDevice$CustomMMS;->Default:Lcom/android/camera/DisplayDevice$CustomMMS;

    sput-object v0, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    .line 34
    sput v1, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 36
    sput v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 41
    sput v1, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    .line 43
    sput v1, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    .line 45
    sput v1, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    .line 47
    sput v1, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    .line 49
    const/16 v0, 0x280

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    .line 51
    const/16 v0, 0x180

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    .line 53
    const/16 v0, 0x780

    sput v0, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_CAPTURE_WIDTH:I

    .line 55
    const/16 v0, 0x438

    sput v0, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_CAPTURE_HEIGHT:I

    .line 57
    const/16 v0, 0x500

    sput v0, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_PREVIEW_WIDTH:I

    .line 59
    sput v6, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_PREVIEW_HEIGHT:I

    .line 61
    sput v1, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    .line 63
    sput v1, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    .line 65
    sput v1, Lcom/android/camera/DisplayDevice;->BUTTON_SIZE:I

    .line 67
    sput v1, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_PADDING:I

    .line 69
    sput v1, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_MARGIN:I

    .line 71
    const/16 v0, 0x12c

    sput v0, Lcom/android/camera/DisplayDevice;->DIALOG_HEIGHT:I

    .line 73
    const/16 v0, 0x140

    sput v0, Lcom/android/camera/DisplayDevice;->DIALOG_WIDTH:I

    .line 76
    const/16 v0, 0x1c

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_VSIBLE_AREA_PADDING:I

    .line 78
    const/4 v0, 0x4

    sput v0, Lcom/android/camera/DisplayDevice;->MARKER_HEIGHT:I

    .line 80
    sput v4, Lcom/android/camera/DisplayDevice;->WHEEL_BOUNCING_PADDING:I

    .line 84
    const/16 v0, 0x64

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_TOP_PADDING:I

    .line 86
    const/16 v0, 0xa0

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_LANDSCAPE_LEFT_PADDING:I

    .line 88
    const/16 v0, 0x14

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_PORTRAIT_LEFT_PADDING:I

    .line 91
    const/16 v0, 0x3c

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_LAYOUT_MARGIN_WITH_EFFECT_BAR:I

    .line 93
    sput v1, Lcom/android/camera/DisplayDevice;->REMAINING_LAYOUT_MARGIN_NO_EFFECT_BAR:I

    .line 95
    const/16 v0, 0x3c

    sput v0, Lcom/android/camera/DisplayDevice;->INDICATORE_LAYOUT_MARGIN_WITH_ZOOM_BAR:I

    .line 97
    sput v1, Lcom/android/camera/DisplayDevice;->INDICATORE_LAYOUT_MARGIN_NO_ZOOM_BAR:I

    .line 99
    const/16 v0, 0x1f

    sput v0, Lcom/android/camera/DisplayDevice;->SWITCH_BUTTON_MARGIN_WITH_ZOOM_BAR:I

    .line 101
    sput v1, Lcom/android/camera/DisplayDevice;->SWITCH_BUTTON_MARGIN_NO_ZOOM_BAR:I

    .line 103
    const/16 v0, 0xac

    sput v0, Lcom/android/camera/DisplayDevice;->TIMER_BASE_SELF_TIMER:I

    .line 112
    sput v4, Lcom/android/camera/DisplayDevice;->SELF_PORTRAIT_HINT_MARGIN_DEFAULT:I

    .line 114
    const/16 v0, 0x2ce

    sput v0, Lcom/android/camera/DisplayDevice;->SELF_PORTRAIT_HINT_MARGIN_MAIN_BAR:I

    .line 116
    const/16 v0, 0x2e4

    sput v0, Lcom/android/camera/DisplayDevice;->SELF_PORTRAIT_HINT_WIDTH_FULL_SCREEN:I

    .line 119
    sput v1, Lcom/android/camera/DisplayDevice;->WHEEL_ROTATE_PADDING:I

    .line 128
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "2.0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/camera/DisplayDevice;->NOT_SENSE_2_0:Z

    .line 130
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x90

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x39

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x18

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x58

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x59

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x62

    if-ne v0, v2, :cond_2

    .line 141
    :cond_0
    sget-object v0, Lcom/android/camera/DisplayDevice$Resolution;->HVGA:Lcom/android/camera/DisplayDevice$Resolution;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    .line 142
    sget-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_3_2:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    .line 143
    sput v3, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 144
    const/16 v0, 0x140

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 145
    sput v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    .line 146
    const/16 v0, 0x140

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    .line 147
    const/16 v0, 0x180

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    .line 148
    const/16 v0, 0x120

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    .line 149
    const/16 v0, 0x110

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    .line 151
    const/16 v0, 0x280

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    .line 152
    const/16 v0, 0x1a0

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    .line 154
    const/16 v0, 0x34

    sput v0, Lcom/android/camera/DisplayDevice;->BUTTON_SIZE:I

    .line 157
    sput v1, Lcom/android/camera/DisplayDevice;->INDICATORE_LAYOUT_MARGIN_NO_ZOOM_BAR:I

    .line 158
    const/16 v0, 0x23

    sput v0, Lcom/android/camera/DisplayDevice;->INDICATORE_LAYOUT_MARGIN_WITH_ZOOM_BAR:I

    .line 159
    const/16 v0, 0xa

    sput v0, Lcom/android/camera/DisplayDevice;->SELF_PORTRAIT_HINT_MARGIN_DEFAULT:I

    .line 160
    const/16 v0, 0x19a

    sput v0, Lcom/android/camera/DisplayDevice;->SELF_PORTRAIT_HINT_MARGIN_MAIN_BAR:I

    .line 162
    const/4 v0, -0x2

    sput v0, Lcom/android/camera/DisplayDevice;->DIALOG_HEIGHT:I

    .line 163
    const/16 v0, 0x140

    sput v0, Lcom/android/camera/DisplayDevice;->DIALOG_WIDTH:I

    .line 164
    const/16 v0, 0xa

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_PADDING:I

    .line 165
    const/16 v0, 0x46

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_MARGIN:I

    .line 168
    const/4 v0, 0x3

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_VSIBLE_AREA_PADDING:I

    .line 169
    const/4 v0, 0x4

    sput v0, Lcom/android/camera/DisplayDevice;->MARKER_HEIGHT:I

    .line 170
    sput v4, Lcom/android/camera/DisplayDevice;->WHEEL_BOUNCING_PADDING:I

    .line 173
    const/16 v0, 0xa0

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_TOP_PADDING:I

    .line 174
    const/16 v0, 0x32

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_LANDSCAPE_LEFT_PADDING:I

    .line 175
    const/16 v0, 0x14

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_PORTRAIT_LEFT_PADDING:I

    .line 179
    const/16 v0, 0xe

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_ROTATE_PADDING:I

    .line 429
    :goto_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    .line 430
    sget-object v0, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    sput-object v0, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    .line 458
    :goto_2
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v4, :cond_10

    .line 459
    sget-object v0, Lcom/android/camera/DisplayDevice$CustomMMS;->ATT:Lcom/android/camera/DisplayDevice$CustomMMS;

    sput-object v0, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    .line 479
    :goto_3
    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_X:I

    .line 480
    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_CENTER_Y:I

    .line 491
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/DisplayDevice;->FOCUS_WIDTH:I

    .line 513
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/DisplayDevice;->FOCUS_HEIGHT:I

    .line 535
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/DisplayDevice;->TIMER_BASE_RECORDING_PORTRAIT:I

    return-void

    :cond_1
    move v0, v1

    .line 128
    goto/16 :goto_0

    .line 183
    :cond_2
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    .line 186
    :cond_3
    sget-object v0, Lcom/android/camera/DisplayDevice$Resolution;->QVGA:Lcom/android/camera/DisplayDevice$Resolution;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    .line 187
    sget-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_4_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    .line 188
    const/16 v0, 0x140

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 189
    sput v5, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 190
    const/16 v0, 0x120

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    .line 191
    const/16 v0, 0xc0

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    .line 192
    const/16 v0, 0x140

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    .line 193
    sput v5, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    .line 194
    sput v5, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    .line 196
    const/16 v0, 0x24

    sput v0, Lcom/android/camera/DisplayDevice;->BUTTON_SIZE:I

    .line 198
    const/4 v0, -0x2

    sput v0, Lcom/android/camera/DisplayDevice;->DIALOG_HEIGHT:I

    .line 199
    sput v5, Lcom/android/camera/DisplayDevice;->DIALOG_WIDTH:I

    .line 200
    const/16 v0, 0x8

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_PADDING:I

    .line 201
    const/16 v0, 0x32

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_MARGIN:I

    .line 204
    const/16 v0, 0x8

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_VSIBLE_AREA_PADDING:I

    .line 205
    const/4 v0, 0x3

    sput v0, Lcom/android/camera/DisplayDevice;->MARKER_HEIGHT:I

    .line 206
    sput v4, Lcom/android/camera/DisplayDevice;->WHEEL_BOUNCING_PADDING:I

    .line 209
    const/16 v0, 0x64

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_TOP_PADDING:I

    .line 210
    const/16 v0, 0x1e

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_LANDSCAPE_LEFT_PADDING:I

    .line 211
    const/16 v0, 0x14

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_PORTRAIT_LEFT_PADDING:I

    goto/16 :goto_1

    .line 214
    :cond_4
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x78

    if-ne v0, v1, :cond_5

    .line 215
    sget-object v0, Lcom/android/camera/DisplayDevice$Resolution;->WQVGA:Lcom/android/camera/DisplayDevice$Resolution;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    .line 216
    sget-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    .line 217
    const/16 v0, 0x190

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 218
    sput v5, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 219
    const/16 v0, 0x190

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    .line 220
    sput v5, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    .line 221
    const/16 v0, 0x140

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    .line 222
    sput v5, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    .line 223
    sput v5, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    .line 225
    const/16 v0, 0x24

    sput v0, Lcom/android/camera/DisplayDevice;->BUTTON_SIZE:I

    .line 227
    const/4 v0, -0x2

    sput v0, Lcom/android/camera/DisplayDevice;->DIALOG_HEIGHT:I

    .line 228
    sput v5, Lcom/android/camera/DisplayDevice;->DIALOG_WIDTH:I

    .line 229
    const/16 v0, 0x8

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_PADDING:I

    .line 230
    const/16 v0, 0x32

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_MARGIN:I

    .line 233
    const/16 v0, 0x8

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_VSIBLE_AREA_PADDING:I

    .line 234
    const/4 v0, 0x3

    sput v0, Lcom/android/camera/DisplayDevice;->MARKER_HEIGHT:I

    .line 235
    sput v4, Lcom/android/camera/DisplayDevice;->WHEEL_BOUNCING_PADDING:I

    .line 238
    const/16 v0, 0x64

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_TOP_PADDING:I

    .line 239
    const/16 v0, 0x32

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_LANDSCAPE_LEFT_PADDING:I

    .line 240
    const/16 v0, 0x14

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_PORTRAIT_LEFT_PADDING:I

    goto/16 :goto_1

    .line 243
    :cond_5
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-eq v0, v1, :cond_6

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-eq v0, v1, :cond_6

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-ne v0, v1, :cond_7

    .line 247
    :cond_6
    sget-object v0, Lcom/android/camera/DisplayDevice$Resolution;->WSVGA:Lcom/android/camera/DisplayDevice$Resolution;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    .line 248
    sget-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Tablet_Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    .line 249
    const/16 v0, 0x400

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 250
    const/16 v0, 0x260

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 251
    const/16 v0, 0x400

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    .line 252
    const/16 v0, 0x260

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    .line 254
    const/16 v0, 0x3c0

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    .line 255
    sput v6, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    .line 256
    const/16 v0, 0x110

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    .line 258
    const/16 v0, 0x4d0

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    .line 259
    sput v6, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    .line 261
    const/16 v0, 0x4c

    sput v0, Lcom/android/camera/DisplayDevice;->BUTTON_SIZE:I

    .line 263
    const/4 v0, -0x2

    sput v0, Lcom/android/camera/DisplayDevice;->DIALOG_HEIGHT:I

    .line 264
    sput v3, Lcom/android/camera/DisplayDevice;->DIALOG_WIDTH:I

    .line 265
    const/16 v0, 0xa

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_PADDING:I

    .line 266
    const/16 v0, 0x64

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_MARGIN:I

    .line 269
    const/16 v0, 0xf

    sput v0, Lcom/android/camera/DisplayDevice;->INDICATORE_LAYOUT_MARGIN_NO_ZOOM_BAR:I

    .line 270
    const/16 v0, 0xf

    sput v0, Lcom/android/camera/DisplayDevice;->INDICATORE_LAYOUT_MARGIN_WITH_ZOOM_BAR:I

    .line 273
    const/4 v0, 0x3

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_VSIBLE_AREA_PADDING:I

    .line 274
    const/4 v0, 0x4

    sput v0, Lcom/android/camera/DisplayDevice;->MARKER_HEIGHT:I

    .line 275
    sput v4, Lcom/android/camera/DisplayDevice;->WHEEL_BOUNCING_PADDING:I

    .line 278
    const/16 v0, 0xd0

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_TOP_PADDING:I

    .line 279
    const/16 v0, 0x46

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_LANDSCAPE_LEFT_PADDING:I

    .line 280
    const/16 v0, 0x30

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_PORTRAIT_LEFT_PADDING:I

    .line 284
    const/4 v0, 0x6

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_ROTATE_PADDING:I

    goto/16 :goto_1

    .line 287
    :cond_7
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-eq v0, v1, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x96

    if-eq v0, v1, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x97

    if-eq v0, v1, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdc

    if-eq v0, v1, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x88

    if-eq v0, v1, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x89

    if-eq v0, v1, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x50

    if-eq v0, v1, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_9

    .line 298
    :cond_8
    sget-object v0, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    .line 299
    sget-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    .line 300
    const/16 v0, 0x3c0

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 301
    const/16 v0, 0x220

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 302
    const/16 v0, 0x3c0

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    .line 303
    const/16 v0, 0x220

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    .line 305
    const/16 v0, 0x280

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    .line 306
    sput v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    .line 307
    const/16 v0, 0x110

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    .line 310
    const/16 v0, 0x500

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    .line 311
    sput v6, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    .line 313
    const/16 v0, 0x4c

    sput v0, Lcom/android/camera/DisplayDevice;->BUTTON_SIZE:I

    .line 315
    const/4 v0, -0x2

    sput v0, Lcom/android/camera/DisplayDevice;->DIALOG_HEIGHT:I

    .line 316
    sput v3, Lcom/android/camera/DisplayDevice;->DIALOG_WIDTH:I

    .line 317
    const/16 v0, 0xa

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_PADDING:I

    .line 318
    const/16 v0, 0x64

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_MARGIN:I

    .line 321
    const/4 v0, 0x3

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_VSIBLE_AREA_PADDING:I

    .line 322
    const/4 v0, 0x4

    sput v0, Lcom/android/camera/DisplayDevice;->MARKER_HEIGHT:I

    .line 323
    sput v4, Lcom/android/camera/DisplayDevice;->WHEEL_BOUNCING_PADDING:I

    .line 326
    const/16 v0, 0xd0

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_TOP_PADDING:I

    .line 327
    const/16 v0, 0x46

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_LANDSCAPE_LEFT_PADDING:I

    .line 328
    const/16 v0, 0x30

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_PORTRAIT_LEFT_PADDING:I

    .line 332
    const/4 v0, 0x6

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_ROTATE_PADDING:I

    goto/16 :goto_1

    .line 336
    :cond_9
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-ne v0, v1, :cond_a

    .line 338
    sget-object v0, Lcom/android/camera/DisplayDevice$Resolution;->HD:Lcom/android/camera/DisplayDevice$Resolution;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    .line 339
    sget-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    .line 340
    const/16 v0, 0x500

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 341
    sput v6, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 342
    const/16 v0, 0x500

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    .line 343
    sput v6, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    .line 345
    const/16 v0, 0x280

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    .line 346
    sput v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    .line 347
    const/16 v0, 0x110

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    .line 350
    const/16 v0, 0x500

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    .line 351
    sput v6, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    .line 353
    const/16 v0, 0x4c

    sput v0, Lcom/android/camera/DisplayDevice;->BUTTON_SIZE:I

    .line 355
    const/4 v0, -0x2

    sput v0, Lcom/android/camera/DisplayDevice;->DIALOG_HEIGHT:I

    .line 356
    sput v3, Lcom/android/camera/DisplayDevice;->DIALOG_WIDTH:I

    .line 357
    const/16 v0, 0xa

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_PADDING:I

    .line 358
    const/16 v0, 0x64

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_MARGIN:I

    .line 361
    const/4 v0, 0x3

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_VSIBLE_AREA_PADDING:I

    .line 362
    const/4 v0, 0x4

    sput v0, Lcom/android/camera/DisplayDevice;->MARKER_HEIGHT:I

    .line 363
    sput v4, Lcom/android/camera/DisplayDevice;->WHEEL_BOUNCING_PADDING:I

    .line 366
    const/16 v0, 0xd0

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_TOP_PADDING:I

    .line 367
    const/16 v0, 0x46

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_LANDSCAPE_LEFT_PADDING:I

    .line 368
    const/16 v0, 0x30

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_PORTRAIT_LEFT_PADDING:I

    .line 372
    const/4 v0, 0x6

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_ROTATE_PADDING:I

    goto/16 :goto_1

    .line 379
    :cond_a
    sget-object v0, Lcom/android/camera/DisplayDevice$Resolution;->WVGA:Lcom/android/camera/DisplayDevice$Resolution;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    .line 380
    sget-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    .line 381
    const/16 v0, 0x320

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 382
    sput v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 383
    const/16 v0, 0x320

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    .line 384
    sput v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    .line 387
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x30

    if-eq v0, v1, :cond_b

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_c

    .line 390
    :cond_b
    sget-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    .line 391
    const/16 v0, 0x500

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    .line 392
    sput v6, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    .line 396
    :cond_c
    const/16 v0, 0x280

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    .line 397
    const/16 v0, 0x180

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    .line 399
    const/16 v0, 0x280

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    .line 400
    sput v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    .line 401
    const/16 v0, 0x110

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    .line 403
    const/16 v0, 0x4c

    sput v0, Lcom/android/camera/DisplayDevice;->BUTTON_SIZE:I

    .line 405
    const/4 v0, -0x2

    sput v0, Lcom/android/camera/DisplayDevice;->DIALOG_HEIGHT:I

    .line 406
    sput v3, Lcom/android/camera/DisplayDevice;->DIALOG_WIDTH:I

    .line 407
    const/16 v0, 0xa

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_PADDING:I

    .line 408
    const/16 v0, 0x64

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_MARGIN:I

    .line 411
    const/4 v0, 0x3

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_VSIBLE_AREA_PADDING:I

    .line 412
    const/4 v0, 0x4

    sput v0, Lcom/android/camera/DisplayDevice;->MARKER_HEIGHT:I

    .line 413
    sput v4, Lcom/android/camera/DisplayDevice;->WHEEL_BOUNCING_PADDING:I

    .line 416
    const/16 v0, 0xd0

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_TOP_PADDING:I

    .line 417
    const/16 v0, 0x46

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_LANDSCAPE_LEFT_PADDING:I

    .line 418
    const/16 v0, 0x30

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_PORTRAIT_LEFT_PADDING:I

    .line 422
    const/4 v0, 0x6

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_ROTATE_PADDING:I

    goto/16 :goto_1

    .line 431
    :cond_d
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x20

    if-eq v0, v1, :cond_e

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_e

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x30

    if-eq v0, v1, :cond_e

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x42

    if-eq v0, v1, :cond_e

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_e

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-eq v0, v1, :cond_e

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x96

    if-eq v0, v1, :cond_e

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x97

    if-eq v0, v1, :cond_e

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdc

    if-eq v0, v1, :cond_e

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x88

    if-eq v0, v1, :cond_e

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x89

    if-eq v0, v1, :cond_e

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8a

    if-ne v0, v1, :cond_f

    .line 444
    :cond_e
    sget-object v0, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    sput-object v0, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    goto/16 :goto_2

    .line 446
    :cond_f
    sget-object v0, Lcom/android/camera/DisplayDevice$CaptureButton;->Other:Lcom/android/camera/DisplayDevice$CaptureButton;

    sput-object v0, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    goto/16 :goto_2

    .line 460
    :cond_10
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-ne v0, v1, :cond_11

    .line 461
    sget-object v0, Lcom/android/camera/DisplayDevice$CustomMMS;->Sprint:Lcom/android/camera/DisplayDevice$CustomMMS;

    sput-object v0, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    goto/16 :goto_3

    .line 462
    :cond_11
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_12

    .line 463
    sget-object v0, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    sput-object v0, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    goto/16 :goto_3

    .line 465
    :cond_12
    sget-object v0, Lcom/android/camera/DisplayDevice$CustomMMS;->Default:Lcom/android/camera/DisplayDevice$CustomMMS;

    sput-object v0, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    goto/16 :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DisablePen()Z
    .locals 2

    .prologue
    .line 1160
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    .line 1163
    :cond_0
    const/4 v0, 0x1

    .line 1165
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static EnableGeoTagByDefault()Z
    .locals 2

    .prologue
    .line 1221
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1223
    :cond_0
    const/4 v0, 0x0

    .line 1225
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static NoResolutionChoiceIn2ndCam()Z
    .locals 2

    .prologue
    .line 1053
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

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 1058
    :cond_0
    const/4 v0, 0x1

    .line 1060
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static apply720PPreview()Z
    .locals 2

    .prologue
    .line 1044
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    .line 1047
    :cond_0
    const/4 v0, 0x1

    .line 1049
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canCancelFocus()Z
    .locals 1

    .prologue
    .line 635
    const/4 v0, 0x1

    return v0
.end method

.method public static canChangeFrameRate()Z
    .locals 2

    .prologue
    .line 1283
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    .line 1284
    const/4 v0, 0x1

    .line 1286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static captrueFullSize()Z
    .locals 1

    .prologue
    .line 802
    const/4 v0, 0x1

    return v0
.end method

.method public static contactsNoStorage()Z
    .locals 1

    .prologue
    .line 798
    const/4 v0, 0x1

    return v0
.end method

.method public static forceFocusSound()Z
    .locals 2

    .prologue
    .line 767
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd1

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x88

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9f

    if-ne v0, v1, :cond_1

    .line 773
    :cond_0
    const/4 v0, 0x1

    .line 775
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static forceSutterSound()Z
    .locals 2

    .prologue
    .line 779
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd1

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9f

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x88

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    .line 787
    :cond_0
    const/4 v0, 0x1

    .line 789
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFocusHeight(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 517
    sget v1, Lcom/android/camera/DisplayDevice;->FOCUS_HEIGHT:I

    if-gez v1, :cond_0

    .line 519
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020193

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 520
    .local v0, image:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sput v1, Lcom/android/camera/DisplayDevice;->FOCUS_WIDTH:I

    .line 521
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sput v1, Lcom/android/camera/DisplayDevice;->FOCUS_HEIGHT:I

    .line 525
    .end local v0           #image:Landroid/graphics/drawable/Drawable;
    :cond_0
    sget v1, Lcom/android/camera/DisplayDevice;->FOCUS_HEIGHT:I

    return v1
.end method

.method public static getFocusWidth(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 495
    sget v1, Lcom/android/camera/DisplayDevice;->FOCUS_WIDTH:I

    if-gez v1, :cond_0

    .line 497
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020193

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 498
    .local v0, image:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sput v1, Lcom/android/camera/DisplayDevice;->FOCUS_WIDTH:I

    .line 499
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sput v1, Lcom/android/camera/DisplayDevice;->FOCUS_HEIGHT:I

    .line 503
    .end local v0           #image:Landroid/graphics/drawable/Drawable;
    :cond_0
    sget v1, Lcom/android/camera/DisplayDevice;->FOCUS_WIDTH:I

    return v1
.end method

.method public static getRecordingTimerBaseHeight(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "orientation"

    .prologue
    .line 539
    sget v1, Lcom/android/camera/DisplayDevice;->TIMER_BASE_RECORDING_PORTRAIT:I

    if-gez v1, :cond_0

    .line 541
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 542
    .local v0, image:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sput v1, Lcom/android/camera/DisplayDevice;->TIMER_BASE_RECORDING_PORTRAIT:I

    .line 547
    .end local v0           #image:Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 548
    :cond_1
    sget v1, Lcom/android/camera/DisplayDevice;->TIMER_BASE_RECORDING_PORTRAIT:I

    .line 549
    :goto_0
    return v1

    :cond_2
    sget v1, Lcom/android/camera/DisplayDevice;->TIMER_BASE_RECORDING_PORTRAIT:I

    add-int/lit8 v1, v1, 0xa

    goto :goto_0
.end method

.method public static hasAutoFocus()Z
    .locals 2

    .prologue
    .line 624
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 625
    const/4 v0, 0x0

    .line 627
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasLimit250KB()Z
    .locals 2

    .prologue
    .line 759
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x71

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 761
    const/4 v0, 0x1

    .line 763
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDefaultQuality1080pMainCam()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 944
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support1080p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 945
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd0

    if-ne v1, v2, :cond_0

    .line 946
    const/4 v0, 0x1

    .line 950
    :cond_0
    return v0
.end method

.method public static isDefaultQuality720p()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 929
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p()Z

    move-result v1

    if-nez v1, :cond_1

    .line 940
    :cond_0
    :goto_0
    return v0

    .line 932
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa9

    if-eq v1, v2, :cond_3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x8a

    if-ne v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9b

    if-eq v1, v2, :cond_3

    :cond_2
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x28

    if-eq v1, v2, :cond_3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x21

    if-eq v1, v2, :cond_3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x22

    if-eq v1, v2, :cond_3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xad

    if-ne v1, v2, :cond_0

    .line 938
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isDelayCreateImageThumb()Z
    .locals 2

    .prologue
    .line 1008
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 1009
    const/4 v0, 0x1

    .line 1011
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDelayRecording()Z
    .locals 2

    .prologue
    .line 1020
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xaa

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x9d

    if-ne v0, v1, :cond_1

    .line 1024
    :cond_0
    const/4 v0, 0x1

    .line 1026
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDisplayGPSindicator()Z
    .locals 1

    .prologue
    .line 1015
    const/4 v0, 0x1

    return v0
.end method

.method public static isDoubleShot()Z
    .locals 2

    .prologue
    .line 589
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    .line 590
    const/4 v0, 0x1

    .line 592
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHalfPCB()Z
    .locals 1

    .prologue
    .line 969
    const/4 v0, 0x1

    return v0
.end method

.method public static isShowFlashLightHint()Z
    .locals 2

    .prologue
    .line 1307
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd2

    if-ne v0, v1, :cond_0

    .line 1308
    const/4 v0, 0x0

    .line 1310
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isVirtualHWKeyRotated()Z
    .locals 2

    .prologue
    .line 1092
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    .line 1095
    :cond_0
    const/4 v0, 0x1

    .line 1097
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWideScreen()Z
    .locals 2

    .prologue
    .line 555
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_4_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_0

    .line 556
    const/4 v0, 0x0

    .line 558
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static ishtcChina()Z
    .locals 2

    .prologue
    .line 1299
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1300
    const/4 v0, 0x1

    .line 1302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final needDelayZooming()Z
    .locals 2

    .prologue
    .line 1232
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x62

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static notSupportH264()Z
    .locals 1

    .prologue
    .line 921
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT7x27()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    const/4 v0, 0x1

    .line 924
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeMMS()Z
    .locals 2

    .prologue
    .line 752
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_0

    .line 753
    const/4 v0, 0x1

    .line 755
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showEffectInMenu()Z
    .locals 2

    .prologue
    .line 715
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    .line 717
    :cond_0
    const/4 v0, 0x1

    .line 719
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showFocusWithoutDelay()Z
    .locals 1

    .prologue
    .line 988
    const/4 v0, 0x1

    return v0
.end method

.method public static showISOInMenu()Z
    .locals 2

    .prologue
    .line 706
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 707
    const/4 v0, 0x1

    .line 709
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showSceneInMenu()Z
    .locals 2

    .prologue
    .line 725
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

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

    const/16 v1, 0x95

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x97

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdc

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    .line 734
    :cond_0
    const/4 v0, 0x0

    .line 736
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static support1080p()Z
    .locals 2

    .prologue
    .line 889
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x88

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x89

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x97

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdc

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-ne v0, v1, :cond_1

    .line 900
    :cond_0
    const/4 v0, 0x1

    .line 902
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static support128kBitrate()Z
    .locals 1

    .prologue
    .line 1040
    const/4 v0, 0x1

    return v0
.end method

.method public static support1M2ndCam()Z
    .locals 1

    .prologue
    .line 1065
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSpecific2ndCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    const/4 v0, 0x0

    .line 1068
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static support2M2ndCam()Z
    .locals 2

    .prologue
    .line 1072
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x89

    if-ne v0, v1, :cond_1

    .line 1074
    :cond_0
    const/4 v0, 0x1

    .line 1076
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static support2ndCamAutoEnhance()Z
    .locals 2

    .prologue
    .line 1274
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x89

    if-ne v0, v1, :cond_0

    .line 1276
    const/4 v0, 0x1

    .line 1278
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static support2ndCamNoneMirror()Z
    .locals 1

    .prologue
    .line 1176
    const/4 v0, 0x1

    return v0
.end method

.method public static support3DCamera()Z
    .locals 2

    .prologue
    .line 1102
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x97

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdc

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xab

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xac

    if-ne v0, v1, :cond_1

    .line 1109
    :cond_0
    const/4 v0, 0x1

    .line 1111
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static support3DHWSwitch()Z
    .locals 2

    .prologue
    .line 1115
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x97

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdc

    if-ne v0, v1, :cond_1

    .line 1119
    :cond_0
    const/4 v0, 0x1

    .line 1121
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static support720p()Z
    .locals 1

    .prologue
    .line 907
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x50()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT7x30()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x60()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    :cond_0
    const/4 v0, 0x1

    .line 910
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static support720p2ndCam()Z
    .locals 2

    .prologue
    .line 1080
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x88

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x89

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8a

    if-ne v0, v1, :cond_1

    .line 1085
    :cond_0
    const/4 v0, 0x1

    .line 1087
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportAutoUpload()Z
    .locals 1

    .prologue
    .line 1182
    invoke-static {}, Lcom/android/camera/DisplayDevice;->ishtcChina()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1183
    const/4 v0, 0x0

    .line 1185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportAutoUploadDialog()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1195
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportAutoUpload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1199
    :cond_0
    return v1
.end method

.method public static supportCamcorderHWButton()Z
    .locals 2

    .prologue
    .line 1290
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x89

    if-ne v0, v1, :cond_0

    .line 1292
    const/4 v0, 0x1

    .line 1294
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportCamcorderHWSwitch()Z
    .locals 2

    .prologue
    .line 1125
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x88

    if-ne v0, v1, :cond_0

    .line 1126
    const/4 v0, 0x1

    .line 1128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportCamcorderRotate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1000
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 1002
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportIconRotate()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportFaceDetection()Z
    .locals 1

    .prologue
    .line 964
    const/4 v0, 0x1

    return v0
.end method

.method public static supportFastFrameRecording()Z
    .locals 2

    .prologue
    .line 1260
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x89

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x88

    if-ne v0, v1, :cond_1

    .line 1268
    :cond_0
    const/4 v0, 0x1

    .line 1270
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportGpuEffect()Z
    .locals 2

    .prologue
    .line 613
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x62

    if-ne v0, v1, :cond_1

    .line 617
    :cond_0
    const/4 v0, 0x0

    .line 619
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportH264()Z
    .locals 1

    .prologue
    .line 914
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x50()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT7x30()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 915
    :cond_0
    const/4 v0, 0x1

    .line 917
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportHTCMediaUploader()Z
    .locals 2

    .prologue
    .line 742
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    :cond_0
    const/4 v0, 0x1

    .line 747
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportHVGARecording()Z
    .locals 2

    .prologue
    .line 1213
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x62

    if-ne v0, v1, :cond_0

    .line 1214
    const/4 v0, 0x0

    .line 1216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportHWShareButton()Z
    .locals 2

    .prologue
    .line 1204
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 1206
    :cond_0
    const/4 v0, 0x1

    .line 1208
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportISO()Z
    .locals 2

    .prologue
    .line 697
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x90

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    .line 699
    :cond_0
    const/4 v0, 0x0

    .line 701
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportISO1250()Z
    .locals 2

    .prologue
    .line 954
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x91

    if-ne v0, v1, :cond_1

    .line 958
    :cond_0
    const/4 v0, 0x1

    .line 960
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportIconRotate()Z
    .locals 2

    .prologue
    .line 993
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 994
    const/4 v0, 0x0

    .line 996
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportMMSVedioRecording()Z
    .locals 2

    .prologue
    .line 1030
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9b

    if-ne v0, v1, :cond_0

    .line 1033
    const/4 v0, 0x0

    .line 1036
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportOnlyMP4VideoFormat()Z
    .locals 1

    .prologue
    .line 1246
    const/4 v0, 0x1

    return v0
.end method

.method public static supportQCT7201()Z
    .locals 2

    .prologue
    .line 807
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x39

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    .line 810
    :cond_0
    const/4 v0, 0x1

    .line 812
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportQCT7225()Z
    .locals 2

    .prologue
    .line 816
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 820
    :cond_0
    const/4 v0, 0x1

    .line 822
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportQCT7x27()Z
    .locals 2

    .prologue
    .line 862
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x62

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 865
    :cond_0
    const/4 v0, 0x1

    .line 867
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportQCT7x30()Z
    .locals 2

    .prologue
    .line 838
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eqz v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x93

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xaa

    if-eq v0, v1, :cond_0

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

    const/16 v1, 0x94

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x9d

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8a

    if-ne v0, v1, :cond_1

    .line 855
    :cond_0
    const/4 v0, 0x1

    .line 857
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportQCT8x50()Z
    .locals 2

    .prologue
    .line 828
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x91

    if-ne v0, v1, :cond_1

    .line 832
    :cond_0
    const/4 v0, 0x1

    .line 834
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportQCT8x60()Z
    .locals 2

    .prologue
    .line 872
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x88

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x89

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x97

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdc

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-ne v0, v1, :cond_1

    .line 883
    :cond_0
    const/4 v0, 0x1

    .line 885
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportScalado()Z
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x1

    return v0
.end method

.method public static supportSecondCamera()Z
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x1

    return v0
.end method

.method public static supportSensor()Z
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x1

    return v0
.end method

.method public static supportSensorFocus()Z
    .locals 2

    .prologue
    .line 596
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 597
    const/4 v0, 0x0

    .line 599
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportSharpSensor()Z
    .locals 2

    .prologue
    .line 1133
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x97

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdc

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xab

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xac

    if-ne v0, v1, :cond_1

    .line 1140
    :cond_0
    const/4 v0, 0x1

    .line 1142
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportSharpSensorResolution()Z
    .locals 2

    .prologue
    .line 1147
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x97

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdc

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xab

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xac

    if-ne v0, v1, :cond_1

    .line 1154
    :cond_0
    const/4 v0, 0x1

    .line 1156
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportShowWhenLock()Z
    .locals 1

    .prologue
    .line 1313
    const/4 v0, 0x1

    return v0
.end method

.method public static supportSpecific2ndCamera()Z
    .locals 2

    .prologue
    .line 650
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x9d

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 661
    :cond_0
    const/4 v0, 0x1

    .line 663
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportStereoRecord()Z
    .locals 2

    .prologue
    .line 1170
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-ne v0, v1, :cond_0

    .line 1171
    const/4 v0, 0x0

    .line 1172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportSwitchButton()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 679
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v1

    if-nez v1, :cond_1

    .line 685
    :cond_0
    :goto_0
    return v0

    .line 682
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    .line 683
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportTapScreenCapture()Z
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x0

    return v0
.end method

.method public static supportThumbnailAlbumButton()Z
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x0

    return v0
.end method

.method public static supportTrackBallFocus()Z
    .locals 2

    .prologue
    .line 689
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_1

    .line 691
    :cond_0
    const/4 v0, 0x1

    .line 693
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportVideoFormatChoosing()Z
    .locals 1

    .prologue
    .line 1256
    const/4 v0, 0x0

    return v0
.end method

.method public static supportWideScreen2ndCamera()Z
    .locals 2

    .prologue
    .line 667
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 673
    :cond_0
    const/4 v0, 0x0

    .line 675
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
