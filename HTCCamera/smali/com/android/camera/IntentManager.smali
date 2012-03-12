.class public Lcom/android/camera/IntentManager;
.super Ljava/lang/Object;
.source "IntentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/IntentManager$RequestName;,
        Lcom/android/camera/IntentManager$RequestMode;
    }
.end annotation


# static fields
.field public static final ACTION_CAMCORDER:Ljava/lang/String; = "from_camcorder"

.field public static final ACTION_CAMERA:Ljava/lang/String; = "from_camera"

.field private static final ALBUM_REQUEST:Ljava/lang/String; = "album"

.field private static final CONTACTS_REQUEST:Ljava/lang/String; = "contacts"

.field private static final CU_REQUEST:Ljava/lang/String; = "CU"

.field private static final EXTRAS_SQUARE_LENGTH:Ljava/lang/String; = "output-length"

.field private static final HTC_FACEBOOK_UPLOADER_NAME:Ljava/lang/String; = "com.htc.socialnetwork.facebook.upload.FacebookUploadActivity"

.field private static final HTC_MESSAGES_NAME:Ljava/lang/String; = "com.android.mms.ui.ComposeMessageActivity"

.field private static final KEY_DISABLE_TIMEOUT:Ljava/lang/String; = "htc_disable_timeout"

.field private static final MAIL_REQUEST:Ljava/lang/String; = "mail"

.field public static final MMS_IS_WIDESCREEN_DEFAULT:Z = false

.field private static final MMS_KEY_MAXIMUM_SIZE:Ljava/lang/String; = "maxfilesize"

.field private static final MMS_REQUEST:Ljava/lang/String; = "mms"

.field private static final NOTES_REQUEST:Ljava/lang/String; = "notes"

.field private static final ORANGE_ES_CID:Ljava/lang/String; = "ORANG309"

.field private static final ORANGE_PHOTO_NAME:Ljava/lang/String; = "com.newbay.pixota.Pixota"

.field private static final ORANGE_PL_CID:Ljava/lang/String; = "ORANGB10"

.field private static final REQUESTED:Ljava/lang/String; = "RequestedFrom"

.field public static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SETAS_ACTION_CONTACT:Ljava/lang/String; = "com.android.contacts.action.ATTACH_IMAGE"

.field private static final SETAS_ACTION_LAPUTA:Ljava/lang/String; = "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

.field public static final SETTING_KEY_REQUEST_MODE:Ljava/lang/String; = "request_mode"

.field public static final SETTING_KEY_REQUEST_NAME:Ljava/lang/String; = "request_name"

.field private static final SQUARE_REQUEST:Ljava/lang/String; = "captureSquare"

.field public static final START_CAMCORDER:Ljava/lang/String; = "com.android.camera.CamcorderEntry"

.field public static final START_CAMERA:Ljava/lang/String; = "com.android.camera.CameraEntry"

.field private static final TAG:Ljava/lang/String; = "IntentManager"

.field private static final TMOBILE_PHOTO_NAME:Ljava/lang/String; = "com.htc.tmo.mediauploader.ui.TmoMediaUploadDialogActivity"

.field private static final USC_ONLINE_ALBUM_ACTION:Ljava/lang/String; = "android.intent.action.USCSEND"

.field private static final USC_ONLINE_ALBUM_NAME:Ljava/lang/String; = "com.htc.mmsmediaproxy.MMSMediaProxy"

.field private static final VODAFONE_NAME:Ljava/lang/String; = "com.vodafone.people.engine.contents.photoshare.PhotoShareActivity"

.field private static mCropValue:Ljava/lang/String;

.field private static mHasExtraVideoQuality:Z

.field private static mIsHighVideoQuality:Z

.field private static mMMS_isVideoQVGA:Z

.field private static mMMS_isWideScreen:Z

.field private static mMMS_maximum_size:I

.field private static mSaveUri:Landroid/net/Uri;

.field private static mVideo_maximum_size:J


# instance fields
.field private mCameraThread:Lcom/android/camera/CameraThread;

.field private mHTCCamera:Lcom/android/camera/HTCCamera;

.field private mIsCamcorder:Z

.field public mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

.field public mRequestName:Lcom/android/camera/IntentManager$RequestName;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 75
    sput-boolean v2, Lcom/android/camera/IntentManager;->mIsHighVideoQuality:Z

    .line 81
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/IntentManager;->mMMS_maximum_size:I

    .line 83
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/camera/IntentManager;->mVideo_maximum_size:J

    .line 87
    sput-boolean v2, Lcom/android/camera/IntentManager;->mMMS_isWideScreen:Z

    .line 89
    sput-boolean v2, Lcom/android/camera/IntentManager;->mMMS_isVideoQVGA:Z

    .line 114
    sput-object v3, Lcom/android/camera/IntentManager;->mSaveUri:Landroid/net/Uri;

    .line 116
    sput-object v3, Lcom/android/camera/IntentManager;->mCropValue:Ljava/lang/String;

    .line 118
    sput-boolean v2, Lcom/android/camera/IntentManager;->mHasExtraVideoQuality:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter "htccamera"
    .parameter "camerathread"

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 143
    sget-object v0, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v0, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 145
    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Unknown_General:Lcom/android/camera/IntentManager$RequestName;

    iput-object v0, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 147
    iput-object v1, p0, Lcom/android/camera/IntentManager;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 149
    iput-object v1, p0, Lcom/android/camera/IntentManager;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 152
    iput-object p1, p0, Lcom/android/camera/IntentManager;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 153
    iput-object p2, p0, Lcom/android/camera/IntentManager;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 154
    return-void
.end method

.method public static IsHighVideoQuality()Z
    .locals 1

    .prologue
    .line 375
    sget-boolean v0, Lcom/android/camera/IntentManager;->mIsHighVideoQuality:Z

    return v0
.end method

.method private checkExtras(Landroid/os/Bundle;)V
    .locals 9
    .parameter "extras"

    .prologue
    const/4 v3, 0x0

    const v8, 0x1d4c0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 164
    if-nez p1, :cond_0

    .line 165
    sput-object v3, Lcom/android/camera/IntentManager;->mSaveUri:Landroid/net/Uri;

    .line 166
    sput-object v3, Lcom/android/camera/IntentManager;->mCropValue:Ljava/lang/String;

    .line 167
    iget-object v3, p0, Lcom/android/camera/IntentManager;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iput v8, v3, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    .line 168
    const-string v3, "IntentManager"

    const-string v4, "extras == null"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_0
    return-void

    .line 172
    :cond_0
    const-string v3, "output"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    sput-object v3, Lcom/android/camera/IntentManager;->mSaveUri:Landroid/net/Uri;

    .line 173
    const-string v3, "crop"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/camera/IntentManager;->mCropValue:Ljava/lang/String;

    .line 175
    const-string v3, "android.intent.extra.sizeLimit"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v6, v3

    sput-wide v6, Lcom/android/camera/IntentManager;->mVideo_maximum_size:J

    .line 176
    const-string v3, "android.intent.extra.videoQuality"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 177
    .local v1, extraVideoQuality:I
    if-lez v1, :cond_2

    move v3, v4

    :goto_1
    sput-boolean v3, Lcom/android/camera/IntentManager;->mIsHighVideoQuality:Z

    .line 179
    iget-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    sget-object v6, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v6}, Lcom/android/camera/IntentManager$RequestName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    const-string v3, "output-length"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    const-string v3, "output-length"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 184
    .local v2, len:I
    const-string v3, "IntentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Has extras \'output-length\' = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    if-lez v2, :cond_3

    .line 187
    sput v2, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    .line 195
    .end local v2           #len:I
    :cond_1
    :goto_2
    const-string v3, "htc_disable_timeout"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 196
    .local v0, disable:Z
    if-ne v0, v4, :cond_4

    .line 197
    iget-object v3, p0, Lcom/android/camera/IntentManager;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const v4, 0x7fffffff

    iput v4, v3, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    .line 198
    const-string v3, "IntentManager"

    const-string v4, "disable screen timeout !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #disable:Z
    :cond_2
    move v3, v5

    .line 177
    goto :goto_1

    .line 189
    .restart local v2       #len:I
    :cond_3
    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    sput v3, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    goto :goto_2

    .line 200
    .end local v2           #len:I
    .restart local v0       #disable:Z
    :cond_4
    iget-object v3, p0, Lcom/android/camera/IntentManager;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iput v8, v3, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    goto :goto_0
.end method

.method private determineStartMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 328
    iget-object v1, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    sget-object v2, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    if-ne v1, v2, :cond_1

    .line 329
    iget-boolean v1, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    if-nez v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/android/camera/IntentManager;->mCameraThread:Lcom/android/camera/CameraThread;

    iput v3, v1, Lcom/android/camera/CameraThread;->mMode:I

    .line 348
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/android/camera/IntentManager;->mCameraThread:Lcom/android/camera/CameraThread;

    iput v4, v1, Lcom/android/camera/CameraThread;->mMode:I

    goto :goto_0

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    sget-object v2, Lcom/android/camera/IntentManager$RequestMode;->Camera:Lcom/android/camera/IntentManager$RequestMode;

    if-ne v1, v2, :cond_2

    .line 335
    iget-object v1, p0, Lcom/android/camera/IntentManager;->mCameraThread:Lcom/android/camera/CameraThread;

    iput v3, v1, Lcom/android/camera/CameraThread;->mMode:I

    goto :goto_0

    .line 336
    :cond_2
    iget-object v1, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    sget-object v2, Lcom/android/camera/IntentManager$RequestMode;->Video:Lcom/android/camera/IntentManager$RequestMode;

    if-ne v1, v2, :cond_3

    .line 337
    iget-object v1, p0, Lcom/android/camera/IntentManager;->mCameraThread:Lcom/android/camera/CameraThread;

    iput v4, v1, Lcom/android/camera/CameraThread;->mMode:I

    goto :goto_0

    .line 339
    :cond_3
    iget-object v1, p0, Lcom/android/camera/IntentManager;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "camera_capture_mode"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, mode:Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string v1, "null"

    if-eq v0, v1, :cond_4

    const-string v1, "camera_capture_mode_photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 343
    :cond_4
    iget-object v1, p0, Lcom/android/camera/IntentManager;->mCameraThread:Lcom/android/camera/CameraThread;

    iput v3, v1, Lcom/android/camera/CameraThread;->mMode:I

    goto :goto_0

    .line 345
    :cond_5
    iget-object v1, p0, Lcom/android/camera/IntentManager;->mCameraThread:Lcom/android/camera/CameraThread;

    iput v4, v1, Lcom/android/camera/CameraThread;->mMode:I

    goto :goto_0
.end method

.method public static getCropValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lcom/android/camera/IntentManager;->mCropValue:Ljava/lang/String;

    return-object v0
.end method

.method public static getMMS_MaximumSize()I
    .locals 1

    .prologue
    .line 351
    sget v0, Lcom/android/camera/IntentManager;->mMMS_maximum_size:I

    return v0
.end method

.method public static getMMS_isVideoQVGA()Z
    .locals 1

    .prologue
    .line 367
    sget-boolean v0, Lcom/android/camera/IntentManager;->mMMS_isVideoQVGA:Z

    return v0
.end method

.method public static getMMS_isWideScreen()Z
    .locals 1

    .prologue
    .line 359
    sget-boolean v0, Lcom/android/camera/IntentManager;->mMMS_isWideScreen:Z

    return v0
.end method

.method public static getSaveUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 382
    sget-object v0, Lcom/android/camera/IntentManager;->mSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getVideoMaximum_Size()J
    .locals 2

    .prologue
    .line 371
    sget-wide v0, Lcom/android/camera/IntentManager;->mVideo_maximum_size:J

    return-wide v0
.end method

.method public static hasVideoQuality()Z
    .locals 1

    .prologue
    .line 388
    sget-boolean v0, Lcom/android/camera/IntentManager;->mHasExtraVideoQuality:Z

    return v0
.end method

.method public static setMMS_isVideoQVGA(Z)V
    .locals 0
    .parameter "isQVGA"

    .prologue
    .line 363
    sput-boolean p0, Lcom/android/camera/IntentManager;->mMMS_isVideoQVGA:Z

    .line 364
    return-void
.end method

.method public static setMMS_isWideScreen(Z)V
    .locals 0
    .parameter "isWide"

    .prologue
    .line 355
    sput-boolean p0, Lcom/android/camera/IntentManager;->mMMS_isWideScreen:Z

    .line 356
    return-void
.end method


# virtual methods
.method public checkIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 210
    if-nez p1, :cond_0

    .line 211
    const-string v3, "IntentManager"

    const-string v4, "intent = null!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v0, ""

    .line 218
    :cond_1
    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 219
    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Camera:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 220
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Camera"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :goto_1
    const-string v3, "RequestedFrom"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, request:Ljava/lang/String;
    if-nez v2, :cond_c

    .line 261
    iget-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    sget-object v4, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    if-ne v3, v4, :cond_a

    .line 262
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Unknown_General:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 263
    const-string v3, "IntentManager"

    const-string v4, "request name = null - RequestName.Unknown_General"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    .end local v2           #request:Ljava/lang/String;
    :cond_2
    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 222
    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Video:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 223
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Video"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 224
    :cond_3
    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 225
    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 226
    iput-boolean v6, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 227
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Main, from action STILL_IMAGE_CAMERA"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 228
    :cond_4
    const-string v3, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 229
    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 230
    iput-boolean v7, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 231
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Main, from action VIDEO_CAMERA"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 232
    :cond_5
    const-string v3, "from_camera"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 233
    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 234
    iput-boolean v6, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 235
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Main, from Camera"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 236
    :cond_6
    const-string v3, "from_camcorder"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 237
    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 238
    iput-boolean v7, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 239
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Main, from Camcorder"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 241
    :cond_7
    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 242
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, componentName:Ljava/lang/String;
    const-string v3, "IntentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "from class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v3, "com.android.camera.CameraEntry"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 246
    iput-boolean v6, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 247
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Main, from Camera"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 248
    :cond_8
    const-string v3, "com.android.camera.CamcorderEntry"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 249
    iput-boolean v7, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 250
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Main, from Camcorder"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 252
    :cond_9
    iput-boolean v6, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 253
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Main, from unknown"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 265
    .end local v1           #componentName:Ljava/lang/String;
    .restart local v2       #request:Ljava/lang/String;
    :cond_a
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 267
    const-string v3, "android.intent.extra.videoQuality"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 268
    sput-boolean v7, Lcom/android/camera/IntentManager;->mHasExtraVideoQuality:Z

    .line 271
    :goto_2
    const-string v3, "IntentManager"

    const-string v4, "request name = null - RequestName.Unknown_Service"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 270
    :cond_b
    sput-boolean v6, Lcom/android/camera/IntentManager;->mHasExtraVideoQuality:Z

    goto :goto_2

    .line 273
    :cond_c
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 274
    iget-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    sget-object v4, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    if-ne v3, v4, :cond_d

    .line 275
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Unknown_General:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 276
    const-string v3, "IntentManager"

    const-string v4, "no request name - RequestName.Unknown_General"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 278
    :cond_d
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 279
    const-string v3, "IntentManager"

    const-string v4, "no request name - RequestName.Unknown_Service"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 281
    :cond_e
    const-string v3, "mms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 282
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 283
    const-string v3, "maxfilesize"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/camera/IntentManager;->mMMS_maximum_size:I

    .line 284
    const-string v3, "IntentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRequestName = RequestName.Mms, maximum file size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/camera/IntentManager;->mMMS_maximum_size:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sput-boolean v6, Lcom/android/camera/IntentManager;->mMMS_isWideScreen:Z

    .line 286
    const-string v3, "IntentManager"

    const-string v4, "mRequestName = RequestName.Mms, default image ratio is 4:3, 640*480"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    sget-object v3, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v4, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v3, v4, :cond_f

    .line 288
    sput-boolean v7, Lcom/android/camera/IntentManager;->mMMS_isVideoQVGA:Z

    .line 289
    const-string v3, "IntentManager"

    const-string v4, "mRequestName = RequestName.Mms, video is QVGA for custom request"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    :cond_f
    sput-boolean v6, Lcom/android/camera/IntentManager;->mMMS_isVideoQVGA:Z

    goto/16 :goto_0

    .line 294
    :cond_10
    const-string v3, "CU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 296
    const-string v3, "IntentManager"

    const-string v4, "mRequestName = RequestName.CU"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    goto/16 :goto_0

    .line 299
    :cond_11
    const-string v3, "album"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 300
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 301
    const-string v3, "IntentManager"

    const-string v4, "mRequestName = RequestName.Album"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 302
    :cond_12
    const-string v3, "contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 303
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 304
    const-string v3, "IntentManager"

    const-string v4, "mRequestName = RequestName.Contacts"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 305
    :cond_13
    const-string v3, "mail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 306
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Mail:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 307
    const-string v3, "IntentManager"

    const-string v4, "mRequestName = RequestName.Mail"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 308
    :cond_14
    const-string v3, "captureSquare"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 309
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 310
    const-string v3, "IntentManager"

    const-string v4, "mRequestName = RequestName.Square"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 311
    :cond_15
    const-string v3, "notes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 312
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 313
    const-string v3, "IntentManager"

    const-string v4, "mRequestName = RequestName.Notes"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 315
    :cond_16
    iget-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    sget-object v4, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    if-ne v3, v4, :cond_17

    .line 316
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Unknown_General:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 317
    const-string v3, "IntentManager"

    const-string v4, "other request name - RequestName.Unknown_General"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    :cond_17
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 320
    const-string v3, "IntentManager"

    const-string v4, "other request name - RequestName.Unknown_Service"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public initManager(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/android/camera/IntentManager;->checkIntent(Landroid/content/Intent;)V

    .line 158
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/IntentManager;->checkExtras(Landroid/os/Bundle;)V

    .line 159
    invoke-direct {p0}, Lcom/android/camera/IntentManager;->determineStartMode()V

    .line 160
    return-void
.end method

.method public isFromCamcorder()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    return v0
.end method

.method public releaseIntentManager()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/android/camera/IntentManager;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 206
    iput-object v0, p0, Lcom/android/camera/IntentManager;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 207
    return-void
.end method
