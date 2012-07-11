.class public Landroid/media/Ringtone;
.super Ljava/lang/Object;
.source "Ringtone.java"


# static fields
.field private static final DRM_COLUMNS:[Ljava/lang/String; = null

.field private static final KEY_PARAMETER_RINGTONE_USAGE:I = 0x3ea

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private defaultAlarmName:Ljava/lang/String;

.field private defaultAlarmUri:Ljava/lang/String;

.field private defaultNotificationName:Ljava/lang/String;

.field private defaultNotificationUri:Ljava/lang/String;

.field private defaultPrefix:Ljava/lang/String;

.field private defaultRingtoneName:Ljava/lang/String;

.field private defaultRingtoneUri:Ljava/lang/String;

.field errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private isLooping:Z

.field private mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private mAudio:Landroid/media/MediaPlayer;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDrmUri:Ljava/lang/String;

.field private mFileDescriptor:Ljava/io/FileDescriptor;

.field private mStreamType:I

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    const-string v0, "Ringtone"

    sput-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    .line 46
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 52
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/Ringtone;->DRM_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Ringtone;->isLooping:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Ringtone;->mDrmUri:Ljava/lang/String;

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 76
    const-string v0, "/system/media/audio/ringtones/QuietlyBrilliant.mp3"

    iput-object v0, p0, Landroid/media/Ringtone;->defaultRingtoneUri:Ljava/lang/String;

    .line 77
    const-string v0, "/system/media/audio/notifications/Zeta.mp3"

    iput-object v0, p0, Landroid/media/Ringtone;->defaultNotificationUri:Ljava/lang/String;

    .line 78
    const-string v0, "/system/media/audio/alarms/NewDay.mp3"

    iput-object v0, p0, Landroid/media/Ringtone;->defaultAlarmUri:Ljava/lang/String;

    .line 80
    const-string v0, "/system/media/audio/"

    iput-object v0, p0, Landroid/media/Ringtone;->defaultPrefix:Ljava/lang/String;

    .line 81
    const-string v0, "Quietly Brilliant"

    iput-object v0, p0, Landroid/media/Ringtone;->defaultRingtoneName:Ljava/lang/String;

    .line 82
    const-string v0, "Zeta"

    iput-object v0, p0, Landroid/media/Ringtone;->defaultNotificationName:Ljava/lang/String;

    .line 83
    const-string v0, "New Day"

    iput-object v0, p0, Landroid/media/Ringtone;->defaultAlarmName:Ljava/lang/String;

    .line 424
    new-instance v0, Landroid/media/Ringtone$1;

    invoke-direct {v0, p0}, Landroid/media/Ringtone$1;-><init>(Landroid/media/Ringtone;)V

    iput-object v0, p0, Landroid/media/Ringtone;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 86
    iput-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    .line 87
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    .line 88
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Landroid/media/Ringtone;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private getDefaultTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "actualTitle"

    .prologue
    .line 154
    const v0, 0x10403d6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "uri"
    .parameter "followSettingsUri"

    .prologue
    const/4 v3, 0x0

    .line 158
    const/4 v9, 0x0

    .line 159
    .local v9, cursor:Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 161
    .local v0, res:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 163
    .local v10, title:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Ringtone;->defaultPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    packed-switch v1, :pswitch_data_0

    .line 173
    :goto_0
    iget-object v10, p0, Landroid/media/Ringtone;->defaultRingtoneName:Ljava/lang/String;

    move-object v1, v10

    .line 215
    :cond_0
    :goto_1
    return-object v1

    .line 167
    :pswitch_0
    iget-object v10, p0, Landroid/media/Ringtone;->defaultAlarmName:Ljava/lang/String;

    .line 170
    :pswitch_1
    iget-object v10, p0, Landroid/media/Ringtone;->defaultNotificationName:Ljava/lang/String;

    goto :goto_0

    .line 177
    :cond_1
    if-eqz p2, :cond_8

    .line 178
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, authority:Ljava/lang/String;
    const-string/jumbo v1, "settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 181
    if-eqz p3, :cond_2

    .line 182
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    invoke-static {p1, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 183
    .local v7, actualUri:Landroid/net/Uri;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v7, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, actualTitle:Ljava/lang/String;
    invoke-direct {p0, p1, v6}, Landroid/media/Ringtone;->getDefaultTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .end local v6           #actualTitle:Ljava/lang/String;
    .end local v7           #actualUri:Landroid/net/Uri;
    .end local v8           #authority:Ljava/lang/String;
    :cond_2
    :goto_2
    move-object v1, v10

    .line 215
    goto :goto_1

    .line 188
    .restart local v8       #authority:Ljava/lang/String;
    :cond_3
    const-string v1, "drm"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 189
    sget-object v2, Landroid/media/Ringtone;->DRM_COLUMNS:[Ljava/lang/String;

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 195
    :cond_4
    :goto_3
    if-eqz v9, :cond_6

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 196
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 197
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 202
    if-eqz v9, :cond_0

    .line 203
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 190
    :cond_5
    const-string/jumbo v1, "media"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 191
    sget-object v2, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_3

    .line 199
    :cond_6
    :try_start_1
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 202
    if-eqz v9, :cond_2

    .line 203
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 202
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_7

    .line 203
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 202
    :cond_7
    throw v1

    .line 207
    .end local v8           #authority:Ljava/lang/String;
    :cond_8
    if-nez v10, :cond_2

    .line 208
    const v1, 0x10403d9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 210
    if-nez v10, :cond_2

    .line 211
    const-string v10, ""

    goto :goto_2

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private openMediaPlayer()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 222
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    .line 223
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setParameter(II)Z

    .line 224
    iget-object v0, p0, Landroid/media/Ringtone;->mDrmUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mDrmUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 256
    :goto_0
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 257
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 258
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 259
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 228
    :try_start_0
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v6

    .line 230
    .local v6, e:Ljava/lang/Exception;
    iget v0, p0, Landroid/media/Ringtone;->mStreamType:I

    packed-switch v0, :pswitch_data_0

    .line 236
    :goto_1
    iget-object v0, p0, Landroid/media/Ringtone;->defaultRingtoneUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 238
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 232
    :pswitch_0
    iget-object v0, p0, Landroid/media/Ringtone;->defaultNotificationUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 234
    :pswitch_1
    iget-object v0, p0, Landroid/media/Ringtone;->defaultAlarmUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    goto :goto_1

    .line 240
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v0, p0, Landroid/media/Ringtone;->mFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_3

    .line 241
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 242
    :cond_3
    iget-object v0, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_5

    .line 246
    iget-object v0, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 247
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 249
    :cond_4
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v4, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto/16 :goto_0

    .line 254
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No data source set."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private wasDRMContent(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 298
    const/4 v1, 0x0

    .line 299
    .local v1, wasDRMContent:Z
    if-eqz p1, :cond_0

    .line 300
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, authority:Ljava/lang/String;
    const-string v2, "drm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 304
    .end local v0           #authority:Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private wasSystemSettingsValue(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, wasSystemSettingsValue:Z
    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://settings/system/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 291
    :cond_0
    return v0
.end method


# virtual methods
.method getDrmUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 365
    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v4, "title"

    aput-object v4, v2, v1

    const/4 v1, 0x2

    const-string v4, "_data"

    aput-object v4, v2, v1

    const/4 v1, 0x3

    const-string v4, "content_offset"

    aput-object v4, v2, v1

    const/4 v1, 0x4

    const-string v4, "content_id"

    aput-object v4, v2, v1

    const/4 v1, 0x5

    const-string v4, "content_boundary_offset"

    aput-object v4, v2, v1

    .line 374
    .local v2, cols:[Ljava/lang/String;
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 375
    .local v0, res:Landroid/content/ContentResolver;
    const-string/jumbo v5, "title"

    move-object v1, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 379
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 380
    .local v11, drmUri:Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 381
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 382
    const-string v1, "_data"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 383
    .local v10, data:Ljava/lang/String;
    const-string v1, "content_offset"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 384
    .local v7, contentOffset:I
    const-string v1, "content_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 385
    .local v8, contentid:Ljava/lang/String;
    const-string v1, "content_boundary_offset"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 386
    .local v6, boundaryoffset:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/htcfs/oma-drm1-fs"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&drm_header_len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&drm_trailor_len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&sd_content_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 391
    .end local v6           #boundaryoffset:Ljava/lang/String;
    .end local v7           #contentOffset:I
    .end local v8           #contentid:Ljava/lang/String;
    .end local v10           #data:Ljava/lang/String;
    :cond_0
    if-eqz v9, :cond_1

    .line 392
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 393
    const/4 v9, 0x0

    .line 396
    :cond_1
    return-object v11
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Landroid/media/Ringtone;->mStreamType:I

    return v0
.end method

.method getSystemSettingsValue(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 338
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "name"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v4, "value"

    aput-object v4, v2, v1

    .line 343
    .local v2, cols:[Ljava/lang/String;
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, res:Landroid/content/ContentResolver;
    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 344
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 348
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 349
    .local v7, settingsuUri:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 350
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 351
    const-string/jumbo v1, "value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 354
    :cond_0
    if-eqz v6, :cond_1

    .line 355
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 356
    const/4 v6, 0x0

    .line 358
    :cond_1
    return-object v7
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 128
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method open(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    iput-object p1, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 268
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V

    .line 269
    return-void
.end method

.method open(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    iput-object p1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 273
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/Ringtone;->mDrmUri:Ljava/lang/String;

    .line 275
    invoke-direct {p0, p1}, Landroid/media/Ringtone;->wasSystemSettingsValue(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    invoke-virtual {p0, p1}, Landroid/media/Ringtone;->getSystemSettingsValue(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/Ringtone;->wasDRMContent(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/Ringtone;->getDrmUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/Ringtone;->mDrmUri:Ljava/lang/String;

    .line 282
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V

    .line 283
    return-void

    .line 279
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/Ringtone;->wasDRMContent(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {p0, p1}, Landroid/media/Ringtone;->getDrmUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/Ringtone;->mDrmUri:Ljava/lang/String;

    goto :goto_0
.end method

.method open(Ljava/io/FileDescriptor;)V
    .locals 0
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    iput-object p1, p0, Landroid/media/Ringtone;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 263
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V

    .line 264
    return-void
.end method

.method public play()V
    .locals 3

    .prologue
    .line 312
    :try_start_0
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V

    .line 313
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-boolean v2, p0, Landroid/media/Ringtone;->isLooping:Z

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 316
    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 0
    .parameter "isLooping"

    .prologue
    .line 419
    iput-boolean p1, p0, Landroid/media/Ringtone;->isLooping:Z

    .line 420
    return-void
.end method

.method public setStreamType(I)V
    .locals 3
    .parameter "streamType"

    .prologue
    .line 96
    iput p1, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 98
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 104
    :try_start_0
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t set the stream type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 409
    iput-object p1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 329
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    .line 332
    :cond_0
    return-void
.end method
