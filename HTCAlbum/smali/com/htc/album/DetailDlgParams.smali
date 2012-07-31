.class public Lcom/htc/album/DetailDlgParams;
.super Ljava/lang/Object;
.source "DetailDlgParams.java"


# static fields
.field public static final BITRATE14:Ljava/lang/String; = "BITRATE"

.field public static final CALLERNAME01:Ljava/lang/String; = "CALLERNAME"

.field public static final DATE05:Ljava/lang/String; = "DATE"

.field public static final DETAILCLASS:Ljava/lang/String; = "com.htc.album.DetailDlgActivity"

.field public static final DURATION12:Ljava/lang/String; = "DURATION"

.field public static final EXTRA99:Ljava/lang/String; = "EXTRA99"

.field public static final FILENAME16:Ljava/lang/String; = "FILENAME"

.field public static final FILEPATH03:Ljava/lang/String; = "FILEPATH"

.field public static final FRAMERATE13:Ljava/lang/String; = "FRAMERATE"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final MANUFACTURE10:Ljava/lang/String; = "MANUFACTURE"

.field public static final MODE04:Ljava/lang/String; = "MODE"

.field public static final MODE04_IMG:Ljava/lang/String; = "image"

.field public static final MODE04_VIDEO:Ljava/lang/String; = "video"

.field public static final MODEL11:Ljava/lang/String; = "MODEL"

.field public static final PACKAGENAME:Ljava/lang/String; = "com.htc.album"

.field public static final PARAMVER00:Ljava/lang/String; = "PARAMVERSION"

.field public static final RESOLUTION07:Ljava/lang/String; = "RESOLUTION"

.field public static final SIZE06:Ljava/lang/String; = "SIZE"

.field public static final SOURCE02:Ljava/lang/String; = "SOURCE"

.field public static final SOURCE02_LOCAL:Ljava/lang/String; = "local"

.field public static final SOURCE02_REMOTE:Ljava/lang/String; = "remote"

.field public static final STATUS09:Ljava/lang/String; = "STATUS"

.field public static final THUMBNAIL15:Ljava/lang/String; = "THUMBNAIL"

.field public static final TYPE08:Ljava/lang/String; = "TYPE"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

.field public static final version:Ljava/lang/String; = "1"


# instance fields
.field public mBitrate14:Ljava/lang/String;

.field public mCallername01:Ljava/lang/String;

.field public mDate05:Ljava/lang/String;

.field public mDuration12:Ljava/lang/String;

.field public final mExternalStart:Ljava/lang/String;

.field public mExtra99:Ljava/lang/String;

.field public mFileName16:Ljava/lang/String;

.field public mFilepath03:Ljava/lang/String;

.field public mFramerate13:Ljava/lang/String;

.field public mManufacture10:Ljava/lang/String;

.field public mMode04:Ljava/lang/String;

.field public mModel11:Ljava/lang/String;

.field public final mPhoneStorageStart:Ljava/lang/String;

.field public mResolution07:Ljava/lang/String;

.field public mSize06:Ljava/lang/String;

.field public mSource02:Ljava/lang/String;

.field public mStatus09:Ljava/lang/String;

.field public mThumbnail15:Ljava/lang/String;

.field public mType08:Ljava/lang/String;

.field public mVersion00:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mVersion00:Ljava/lang/String;

    .line 138
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mCallername01:Ljava/lang/String;

    .line 139
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mSource02:Ljava/lang/String;

    .line 140
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mFilepath03:Ljava/lang/String;

    .line 141
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mMode04:Ljava/lang/String;

    .line 142
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mDate05:Ljava/lang/String;

    .line 143
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mSize06:Ljava/lang/String;

    .line 144
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mResolution07:Ljava/lang/String;

    .line 145
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mType08:Ljava/lang/String;

    .line 146
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mStatus09:Ljava/lang/String;

    .line 147
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mManufacture10:Ljava/lang/String;

    .line 148
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mModel11:Ljava/lang/String;

    .line 149
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mDuration12:Ljava/lang/String;

    .line 150
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mFramerate13:Ljava/lang/String;

    .line 151
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mBitrate14:Ljava/lang/String;

    .line 152
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mThumbnail15:Ljava/lang/String;

    .line 153
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mFileName16:Ljava/lang/String;

    .line 154
    const-string v0, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mExtra99:Ljava/lang/String;

    .line 156
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mExternalStart:Ljava/lang/String;

    .line 157
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/DetailDlgParams;->mPhoneStorageStart:Ljava/lang/String;

    return-void
.end method

.method public static CreateExtraParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "callername01"
    .parameter "source02"
    .parameter "filepath03"
    .parameter "mode04"
    .parameter "date05"
    .parameter "size06"
    .parameter "resolution07"
    .parameter "type08"
    .parameter "status09"
    .parameter "manufacture10"
    .parameter "model11"
    .parameter "duration12"
    .parameter "framerate13"
    .parameter "bitrate14"
    .parameter "thumbnail15"
    .parameter "filename16"
    .parameter "extra99"

    .prologue
    .line 87
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    if-eqz p8, :cond_0

    if-eqz p9, :cond_0

    if-eqz p10, :cond_0

    if-eqz p11, :cond_0

    if-eqz p12, :cond_0

    if-eqz p13, :cond_0

    if-eqz p14, :cond_0

    if-eqz p15, :cond_0

    if-nez p16, :cond_1

    .line 105
    :cond_0
    const/4 v1, 0x0

    .line 133
    :goto_0
    return-object v1

    .line 108
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 109
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.album"

    const-string v3, "com.htc.album.DetailDlgActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v2, "PARAMVERSION"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v2, "CALLERNAME"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v2, "SOURCE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v2, "FILEPATH"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v2, "MODE"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v2, "DATE"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v2, "SIZE"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v2, "RESOLUTION"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v2, "TYPE"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v2, "STATUS"

    invoke-virtual {v1, v2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v2, "MANUFACTURE"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v2, "MODEL"

    invoke-virtual {v1, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v2, "DURATION"

    invoke-virtual {v1, v2, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v2, "FRAMERATE"

    move-object/from16 v0, p12

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v2, "BITRATE"

    move-object/from16 v0, p13

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v2, "THUMBNAIL"

    move-object/from16 v0, p14

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v2, "FILENAME"

    move-object/from16 v0, p15

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v2, "EXTRA99"

    move-object/from16 v0, p16

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getBitmapInFD(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "filePath"
    .parameter "ctx"

    .prologue
    const/4 v7, 0x0

    .line 462
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v1, v7

    .line 503
    :goto_0
    return-object v1

    .line 465
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "content://dlna/images"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 469
    .local v2, cpClient:Landroid/content/ContentProviderClient;
    if-nez v2, :cond_2

    move-object v1, v7

    .line 470
    goto :goto_0

    .line 472
    :cond_2
    const/4 v1, 0x0

    .line 475
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 476
    .local v6, uri:Landroid/net/Uri;
    const-string v8, "r"

    invoke-virtual {v2, v6, v8}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 479
    .local v0, aFD:Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_3

    .line 495
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    move-object v1, v7

    goto :goto_0

    .line 482
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 484
    .local v4, fd:Ljava/io/FileDescriptor;
    if-eqz v4, :cond_4

    .line 485
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 486
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x0

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 487
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v7, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 489
    const/4 v7, 0x0

    invoke-static {v4, v7, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 495
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 500
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 495
    .end local v4           #fd:Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v7

    :try_start_3
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 497
    .end local v0           #aFD:Landroid/content/res/AssetFileDescriptor;
    .end local v6           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 498
    .local v3, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v7, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBitmapByFD fail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 500
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .end local v3           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    throw v7
.end method


# virtual methods
.method public GetDataLocation()Lcom/htc/opensense2/album/util/ImageManager$DataLocation;
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/htc/album/DetailDlgParams;->IsLocalFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    .line 277
    :goto_0
    return-object v0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mSource02:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/album/DetailDlgParams;->mExternalStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->EXTERNAL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mSource02:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/album/DetailDlgParams;->mPhoneStorageStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->PHONE:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    goto :goto_0

    .line 277
    :cond_2
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    goto :goto_0
.end method

.method public GetExtraParam(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 224
    :goto_0
    return v0

    .line 166
    :cond_0
    const/4 v0, 0x0

    .line 171
    .local v0, bRet:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 173
    .local v2, extras:Landroid/os/Bundle;
    const-string v3, "PARAMVERSION"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mVersion00:Ljava/lang/String;

    .line 174
    const-string v3, "CALLERNAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mCallername01:Ljava/lang/String;

    .line 175
    const-string v3, "SOURCE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mSource02:Ljava/lang/String;

    .line 176
    const-string v3, "FILEPATH"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mFilepath03:Ljava/lang/String;

    .line 177
    const-string v3, "MODE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mMode04:Ljava/lang/String;

    .line 178
    const-string v3, "DATE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mDate05:Ljava/lang/String;

    .line 179
    const-string v3, "SIZE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mSize06:Ljava/lang/String;

    .line 180
    const-string v3, "RESOLUTION"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mResolution07:Ljava/lang/String;

    .line 181
    const-string v3, "TYPE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mType08:Ljava/lang/String;

    .line 182
    const-string v3, "STATUS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mStatus09:Ljava/lang/String;

    .line 183
    const-string v3, "MANUFACTURE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mManufacture10:Ljava/lang/String;

    .line 184
    const-string v3, "MODEL"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mModel11:Ljava/lang/String;

    .line 185
    const-string v3, "DURATION"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mDuration12:Ljava/lang/String;

    .line 186
    const-string v3, "FRAMERATE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mFramerate13:Ljava/lang/String;

    .line 187
    const-string v3, "BITRATE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mBitrate14:Ljava/lang/String;

    .line 188
    const-string v3, "THUMBNAIL"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mThumbnail15:Ljava/lang/String;

    .line 189
    const-string v3, "FILENAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mFileName16:Ljava/lang/String;

    .line 190
    const-string v3, "EXTRA99"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/DetailDlgParams;->mExtra99:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 217
    .end local v2           #extras:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 218
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DetailDlgParams.GetExtraParam():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 220
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    throw v3
.end method

.method public GetIncludes()I
    .locals 3

    .prologue
    const/16 v0, 0xff

    .line 229
    iget-object v1, p0, Lcom/htc/album/DetailDlgParams;->mMode04:Ljava/lang/String;

    const-string v2, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v0

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/htc/album/DetailDlgParams;->mMode04:Ljava/lang/String;

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    const/4 v0, 0x1

    goto :goto_0

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/htc/album/DetailDlgParams;->mMode04:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public GetWhere()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mFilepath03:Ljava/lang/String;

    const-string v1, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const-string v0, ""

    .line 286
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(_data like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/DetailDlgParams;->mFilepath03:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public IsLocalFile()Z
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mSource02:Ljava/lang/String;

    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const/4 v0, 0x1

    .line 250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsRemoteFile()Z
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mSource02:Ljava/lang/String;

    const-string v1, "remote"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x1

    .line 259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitrate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mBitrate14:Ljava/lang/String;

    const-string v1, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    const-string v0, ""

    .line 458
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mBitrate14:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 321
    iget-object v2, p0, Lcom/htc/album/DetailDlgParams;->mFilepath03:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 323
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/album/DetailDlgParams;->mFilepath03:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, s:Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 327
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDateString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mDate05:Ljava/lang/String;

    const-string v1, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    const-string v0, ""

    .line 403
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mDate05:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 295
    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mFileName16:Ljava/lang/String;

    const-string v6, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 297
    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mFilepath03:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 299
    .local v0, end:I
    iget-object v5, p0, Lcom/htc/album/DetailDlgParams;->mFilepath03:Ljava/lang/String;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, imgName:Ljava/lang/String;
    const-string v2, ""

    .line 302
    .local v2, imgSubName:Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 304
    .local v3, subFileIndex:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 305
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 306
    .local v4, tmpSubName:Ljava/lang/String;
    move-object v2, v4

    .line 307
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 315
    .end local v0           #end:I
    .end local v1           #imgName:Ljava/lang/String;
    .end local v2           #imgSubName:Ljava/lang/String;
    .end local v3           #subFileIndex:I
    .end local v4           #tmpSubName:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 309
    .restart local v0       #end:I
    .restart local v1       #imgName:Ljava/lang/String;
    .restart local v2       #imgSubName:Ljava/lang/String;
    .restart local v3       #subFileIndex:I
    :cond_0
    const-string v2, ""

    goto :goto_0

    .line 315
    .end local v0           #end:I
    .end local v1           #imgName:Ljava/lang/String;
    .end local v2           #imgSubName:Ljava/lang/String;
    .end local v3           #subFileIndex:I
    :cond_1
    iget-object v1, p0, Lcom/htc/album/DetailDlgParams;->mFileName16:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mDuration12:Ljava/lang/String;

    const-string v1, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const-string v0, ""

    .line 440
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mDuration12:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFramerate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mFramerate13:Ljava/lang/String;

    const-string v1, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    const-string v0, ""

    .line 449
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mFramerate13:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mType08:Ljava/lang/String;

    const-string v1, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const-string v0, ""

    .line 336
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mType08:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mFilepath03:Ljava/lang/String;

    const-string v1, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    const-string v0, ""

    .line 412
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mFilepath03:Ljava/lang/String;

    goto :goto_0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mResolution07:Ljava/lang/String;

    const-string v1, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    const-string v0, ""

    .line 376
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mResolution07:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "ctx"

    .prologue
    .line 341
    if-nez p1, :cond_0

    .line 342
    const-string v3, ""

    .line 367
    :goto_0
    return-object v3

    .line 345
    :cond_0
    iget-object v4, p0, Lcom/htc/album/DetailDlgParams;->mSize06:Ljava/lang/String;

    const-string v5, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 346
    const-string v3, ""

    goto :goto_0

    .line 349
    :cond_1
    const-string v3, ""

    .line 353
    .local v3, sRes:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/htc/album/DetailDlgParams;->mSize06:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 355
    .local v0, a:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_2

    .line 356
    const-string v3, ""

    goto :goto_0

    .line 359
    :cond_2
    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 361
    .end local v0           #a:J
    :catch_0
    move-exception v2

    .line 363
    .local v2, e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/album/DetailDlgParams;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DetailDlgParams:getSize():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mThumbnail15:Ljava/lang/String;

    const-string v1, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    const-string v0, ""

    .line 421
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mThumbnail15:Ljava/lang/String;

    goto :goto_0
.end method

.method public isVideio()Z
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/htc/album/DetailDlgParams;->mMode04:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    const/4 v0, 0x1

    .line 430
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
