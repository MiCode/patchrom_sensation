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

.field private static final KEY_LOCKSCREEN_START_ACTIVITY_TYPE:Ljava/lang/String; = "lockscreen_start_activity"

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

.field public static final START_ACTIVITY_HOTKEY:I = 0x2

.field public static final START_ACTIVITY_SHORTCUT:I = 0x1

.field public static final START_ACTIVITY_UNKNOWN:I = 0x0

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

.field private mCameralaunchedBy:I

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

    .line 87
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/IntentManager;->mMMS_maximum_size:I

    .line 89
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/camera/IntentManager;->mVideo_maximum_size:J

    .line 93
    sput-boolean v2, Lcom/android/camera/IntentManager;->mMMS_isWideScreen:Z

    .line 95
    sput-boolean v2, Lcom/android/camera/IntentManager;->mMMS_isVideoQVGA:Z

    .line 120
    sput-object v3, Lcom/android/camera/IntentManager;->mSaveUri:Landroid/net/Uri;

    .line 122
    sput-object v3, Lcom/android/camera/IntentManager;->mCropValue:Ljava/lang/String;

    .line 124
    sput-boolean v2, Lcom/android/camera/IntentManager;->mHasExtraVideoQuality:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter "htccamera"
    .parameter "camerathread"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 157
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput v0, p0, Lcom/android/camera/IntentManager;->mCameralaunchedBy:I

    .line 127
    iput-boolean v0, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 149
    sget-object v0, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v0, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 151
    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Unknown_General:Lcom/android/camera/IntentManager$RequestName;

    iput-object v0, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 153
    iput-object v1, p0, Lcom/android/camera/IntentManager;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 155
    iput-object v1, p0, Lcom/android/camera/IntentManager;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 158
    iput-object p1, p0, Lcom/android/camera/IntentManager;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 159
    iput-object p2, p0, Lcom/android/camera/IntentManager;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 160
    return-void
.end method

.method public static IsHighVideoQuality()Z
    .locals 1

    .prologue
    .line 393
    sget-boolean v0, Lcom/android/camera/IntentManager;->mIsHighVideoQuality:Z

    return v0
.end method

.method private checkExtras(Landroid/os/Bundle;)V
    .locals 11
    .parameter "extras"

    .prologue
    const/4 v4, 0x0

    const v10, 0x1d4c0

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 170
    if-nez p1, :cond_0

    .line 171
    sput-object v4, Lcom/android/camera/IntentManager;->mSaveUri:Landroid/net/Uri;

    .line 172
    sput-object v4, Lcom/android/camera/IntentManager;->mCropValue:Ljava/lang/String;

    .line 173
    iget-object v4, p0, Lcom/android/camera/IntentManager;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iput v10, v4, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    .line 174
    const-string v4, "IntentManager"

    const-string v5, "extras == null"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_0
    return-void

    .line 178
    :cond_0
    const-string v4, "output"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    sput-object v4, Lcom/android/camera/IntentManager;->mSaveUri:Landroid/net/Uri;

    .line 179
    const-string v4, "crop"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/camera/IntentManager;->mCropValue:Ljava/lang/String;

    .line 181
    const-string v4, "android.intent.extra.sizeLimit"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-long v7, v4

    sput-wide v7, Lcom/android/camera/IntentManager;->mVideo_maximum_size:J

    .line 182
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 183
    .local v1, extraVideoQuality:I
    if-lez v1, :cond_2

    move v4, v5

    :goto_1
    sput-boolean v4, Lcom/android/camera/IntentManager;->mIsHighVideoQuality:Z

    .line 185
    iget-object v4, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    sget-object v7, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v4, v7}, Lcom/android/camera/IntentManager$RequestName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    const-string v4, "output-length"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 188
    const-string v4, "output-length"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 190
    .local v3, len:I
    const-string v4, "IntentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Has extras \'output-length\' = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    if-lez v3, :cond_3

    .line 193
    sput v3, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    .line 201
    .end local v3           #len:I
    :cond_1
    :goto_2
    const-string v4, "htc_disable_timeout"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 202
    .local v0, disable:Z
    if-ne v0, v5, :cond_4

    .line 203
    iget-object v4, p0, Lcom/android/camera/IntentManager;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const v7, 0x7fffffff

    iput v7, v4, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    .line 204
    const-string v4, "IntentManager"

    const-string v7, "disable screen timeout !!!"

    invoke-static {v4, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :goto_3
    const-string v4, "lockscreen_start_activity"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 210
    .local v2, iLaunchedBy:I
    if-ne v5, v2, :cond_5

    .line 211
    iput v5, p0, Lcom/android/camera/IntentManager;->mCameralaunchedBy:I

    .line 212
    const-string v4, "IntentManager"

    const-string v5, "extras: camera lauched by START_ACTIVITY_SHORTCUT"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #disable:Z
    .end local v2           #iLaunchedBy:I
    :cond_2
    move v4, v6

    .line 183
    goto :goto_1

    .line 195
    .restart local v3       #len:I
    :cond_3
    sget v4, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    sput v4, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    goto :goto_2

    .line 206
    .end local v3           #len:I
    .restart local v0       #disable:Z
    :cond_4
    iget-object v4, p0, Lcom/android/camera/IntentManager;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iput v10, v4, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    goto :goto_3

    .line 213
    .restart local v2       #iLaunchedBy:I
    :cond_5
    if-ne v9, v2, :cond_6

    .line 214
    iput v9, p0, Lcom/android/camera/IntentManager;->mCameralaunchedBy:I

    .line 215
    const-string v4, "IntentManager"

    const-string v5, "extras: camera lauched by START_ACTIVITY_HOTKEY"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    :cond_6
    iput v6, p0, Lcom/android/camera/IntentManager;->mCameralaunchedBy:I

    .line 218
    const-string v4, "IntentManager"

    const-string v5, "extras: camera lauched by other type!!"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private determineStartMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 346
    iget-object v1, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    sget-object v2, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    if-ne v1, v2, :cond_1

    .line 347
    iget-boolean v1, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    if-nez v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/android/camera/IntentManager;->mCameraThread:Lcom/android/camera/CameraThread;

    iput v3, v1, Lcom/android/camera/CameraThread;->mMode:I

    .line 366
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/android/camera/IntentManager;->mCameraThread:Lcom/android/camera/CameraThread;

    iput v4, v1, Lcom/android/camera/CameraThread;->mMode:I

    goto :goto_0

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    sget-object v2, Lcom/android/camera/IntentManager$RequestMode;->Camera:Lcom/android/camera/IntentManager$RequestMode;

    if-ne v1, v2, :cond_2

    .line 353
    iget-object v1, p0, Lcom/android/camera/IntentManager;->mCameraThread:Lcom/android/camera/CameraThread;

    iput v3, v1, Lcom/android/camera/CameraThread;->mMode:I

    goto :goto_0

    .line 354
    :cond_2
    iget-object v1, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    sget-object v2, Lcom/android/camera/IntentManager$RequestMode;->Video:Lcom/android/camera/IntentManager$RequestMode;

    if-ne v1, v2, :cond_3

    .line 355
    iget-object v1, p0, Lcom/android/camera/IntentManager;->mCameraThread:Lcom/android/camera/CameraThread;

    iput v4, v1, Lcom/android/camera/CameraThread;->mMode:I

    goto :goto_0

    .line 357
    :cond_3
    iget-object v1, p0, Lcom/android/camera/IntentManager;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "camera_capture_mode"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, mode:Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string v1, "null"

    if-eq v0, v1, :cond_4

    const-string v1, "camera_capture_mode_photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 361
    :cond_4
    iget-object v1, p0, Lcom/android/camera/IntentManager;->mCameraThread:Lcom/android/camera/CameraThread;

    iput v3, v1, Lcom/android/camera/CameraThread;->mMode:I

    goto :goto_0

    .line 363
    :cond_5
    iget-object v1, p0, Lcom/android/camera/IntentManager;->mCameraThread:Lcom/android/camera/CameraThread;

    iput v4, v1, Lcom/android/camera/CameraThread;->mMode:I

    goto :goto_0
.end method

.method public static getCropValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    sget-object v0, Lcom/android/camera/IntentManager;->mCropValue:Ljava/lang/String;

    return-object v0
.end method

.method public static getMMS_MaximumSize()I
    .locals 1

    .prologue
    .line 369
    sget v0, Lcom/android/camera/IntentManager;->mMMS_maximum_size:I

    return v0
.end method

.method public static getMMS_isVideoQVGA()Z
    .locals 1

    .prologue
    .line 385
    sget-boolean v0, Lcom/android/camera/IntentManager;->mMMS_isVideoQVGA:Z

    return v0
.end method

.method public static getMMS_isWideScreen()Z
    .locals 1

    .prologue
    .line 377
    sget-boolean v0, Lcom/android/camera/IntentManager;->mMMS_isWideScreen:Z

    return v0
.end method

.method public static getSaveUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 400
    sget-object v0, Lcom/android/camera/IntentManager;->mSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getVideoMaximum_Size()J
    .locals 2

    .prologue
    .line 389
    sget-wide v0, Lcom/android/camera/IntentManager;->mVideo_maximum_size:J

    return-wide v0
.end method

.method public static hasVideoQuality()Z
    .locals 1

    .prologue
    .line 406
    sget-boolean v0, Lcom/android/camera/IntentManager;->mHasExtraVideoQuality:Z

    return v0
.end method

.method public static setMMS_isVideoQVGA(Z)V
    .locals 0
    .parameter "isQVGA"

    .prologue
    .line 381
    sput-boolean p0, Lcom/android/camera/IntentManager;->mMMS_isVideoQVGA:Z

    .line 382
    return-void
.end method

.method public static setMMS_isWideScreen(Z)V
    .locals 0
    .parameter "isWide"

    .prologue
    .line 373
    sput-boolean p0, Lcom/android/camera/IntentManager;->mMMS_isWideScreen:Z

    .line 374
    return-void
.end method


# virtual methods
.method public checkIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 228
    if-nez p1, :cond_0

    .line 229
    const-string v3, "IntentManager"

    const-string v4, "intent = null!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v0, ""

    .line 236
    :cond_1
    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 237
    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Camera:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 238
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Camera"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :goto_1
    const-string v3, "RequestedFrom"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, request:Ljava/lang/String;
    if-nez v2, :cond_c

    .line 279
    iget-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    sget-object v4, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    if-ne v3, v4, :cond_a

    .line 280
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Unknown_General:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 281
    const-string v3, "IntentManager"

    const-string v4, "request name = null - RequestName.Unknown_General"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    .end local v2           #request:Ljava/lang/String;
    :cond_2
    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 240
    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Video:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 241
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Video"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 242
    :cond_3
    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 243
    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 244
    iput-boolean v6, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 245
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Main, from action STILL_IMAGE_CAMERA"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 246
    :cond_4
    const-string v3, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 247
    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 248
    iput-boolean v7, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 249
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Main, from action VIDEO_CAMERA"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 250
    :cond_5
    const-string v3, "from_camera"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 251
    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 252
    iput-boolean v6, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 253
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Main, from Camera"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 254
    :cond_6
    const-string v3, "from_camcorder"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 255
    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 256
    iput-boolean v7, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 257
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Main, from Camcorder"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 259
    :cond_7
    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    .line 260
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 261
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

    .line 263
    const-string v3, "com.android.camera.CameraEntry"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 264
    iput-boolean v6, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 265
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Main, from Camera"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 266
    :cond_8
    const-string v3, "com.android.camera.CamcorderEntry"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 267
    iput-boolean v7, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 268
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Main, from Camcorder"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 270
    :cond_9
    iput-boolean v6, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    .line 271
    const-string v3, "IntentManager"

    const-string v4, "mRequestMode = RequestMode.Main, from unknown"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 283
    .end local v1           #componentName:Ljava/lang/String;
    .restart local v2       #request:Ljava/lang/String;
    :cond_a
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 285
    const-string v3, "android.intent.extra.videoQuality"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 286
    sput-boolean v7, Lcom/android/camera/IntentManager;->mHasExtraVideoQuality:Z

    .line 289
    :goto_2
    const-string v3, "IntentManager"

    const-string v4, "request name = null - RequestName.Unknown_Service"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    :cond_b
    sput-boolean v6, Lcom/android/camera/IntentManager;->mHasExtraVideoQuality:Z

    goto :goto_2

    .line 291
    :cond_c
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 292
    iget-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    sget-object v4, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    if-ne v3, v4, :cond_d

    .line 293
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Unknown_General:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 294
    const-string v3, "IntentManager"

    const-string v4, "no request name - RequestName.Unknown_General"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 296
    :cond_d
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 297
    const-string v3, "IntentManager"

    const-string v4, "no request name - RequestName.Unknown_Service"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 299
    :cond_e
    const-string v3, "mms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 300
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 301
    const-string v3, "maxfilesize"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/camera/IntentManager;->mMMS_maximum_size:I

    .line 302
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

    .line 303
    sput-boolean v6, Lcom/android/camera/IntentManager;->mMMS_isWideScreen:Z

    .line 304
    const-string v3, "IntentManager"

    const-string v4, "mRequestName = RequestName.Mms, default image ratio is 4:3, 640*480"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    sget-object v3, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v4, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v3, v4, :cond_f

    .line 306
    sput-boolean v7, Lcom/android/camera/IntentManager;->mMMS_isVideoQVGA:Z

    .line 307
    const-string v3, "IntentManager"

    const-string v4, "mRequestName = RequestName.Mms, video is QVGA for custom request"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 309
    :cond_f
    sput-boolean v6, Lcom/android/camera/IntentManager;->mMMS_isVideoQVGA:Z

    goto/16 :goto_0

    .line 312
    :cond_10
    const-string v3, "CU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 314
    const-string v3, "IntentManager"

    const-string v4, "mRequestName = RequestName.CU"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    goto/16 :goto_0

    .line 317
    :cond_11
    const-string v3, "album"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 318
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 319
    const-string v3, "IntentManager"

    const-string v4, "mRequestName = RequestName.Album"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 320
    :cond_12
    const-string v3, "contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 321
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 322
    const-string v3, "IntentManager"

    const-string v4, "mRequestName = RequestName.Contacts"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    :cond_13
    const-string v3, "mail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 324
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Mail:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 325
    const-string v3, "IntentManager"

    const-string v4, "mRequestName = RequestName.Mail"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 326
    :cond_14
    const-string v3, "captureSquare"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 327
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 328
    const-string v3, "IntentManager"

    const-string v4, "mRequestName = RequestName.Square"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 329
    :cond_15
    const-string v3, "notes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 330
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 331
    const-string v3, "IntentManager"

    const-string v4, "mRequestName = RequestName.Notes"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    :cond_16
    iget-object v3, p0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    sget-object v4, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    if-ne v3, v4, :cond_17

    .line 334
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Unknown_General:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 335
    const-string v3, "IntentManager"

    const-string v4, "other request name - RequestName.Unknown_General"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 337
    :cond_17
    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    iput-object v3, p0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    .line 338
    const-string v3, "IntentManager"

    const-string v4, "other request name - RequestName.Unknown_Service"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getLaunchedby()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/android/camera/IntentManager;->mCameralaunchedBy:I

    return v0
.end method

.method public initManager(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/android/camera/IntentManager;->checkIntent(Landroid/content/Intent;)V

    .line 164
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/IntentManager;->checkExtras(Landroid/os/Bundle;)V

    .line 165
    invoke-direct {p0}, Lcom/android/camera/IntentManager;->determineStartMode()V

    .line 166
    return-void
.end method

.method public isFromCamcorder()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/android/camera/IntentManager;->mIsCamcorder:Z

    return v0
.end method

.method public releaseIntentManager()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/android/camera/IntentManager;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 224
    iput-object v0, p0, Lcom/android/camera/IntentManager;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 225
    return-void
.end method

.method public resetLaunchedby()V
    .locals 2

    .prologue
    .line 412
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/IntentManager;->mCameralaunchedBy:I

    .line 413
    const-string v0, "IntentManager"

    const-string v1, "extras: resetLaunchedby camera START_ACTIVITY_UNKNOWN"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    return-void
.end method
