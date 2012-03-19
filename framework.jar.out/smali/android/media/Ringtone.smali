.class public Landroid/media/Ringtone;
.super Ljava/lang/Object;
.source "Ringtone.java"


# static fields
.field private static final DRM_COLUMNS:[Ljava/lang/String;

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
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
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Ringtone;->isLooping:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Ringtone;->mDrmUri:Ljava/lang/String;

    .line 70
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 376
    new-instance v0, Landroid/media/Ringtone$1;

    invoke-direct {v0, p0}, Landroid/media/Ringtone$1;-><init>(Landroid/media/Ringtone;)V

    iput-object v0, p0, Landroid/media/Ringtone;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 76
    iput-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    .line 77
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    .line 78
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

.method private static getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "uri"
    .parameter "followSettingsUri"

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 122
    const/4 v9, 0x0

    .line 123
    .local v9, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 125
    .local v0, res:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 127
    .local v10, title:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .line 130
    .local v8, authority:Ljava/lang/String;
    const-string/jumbo v1, "settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    if-eqz p2, :cond_0

    .line 132
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 134
    .local v7, actualUri:Landroid/net/Uri;
    invoke-static {p0, v7, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, actualTitle:Ljava/lang/String;
    const v1, 0x10403d6

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v6, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 162
    .end local v6           #actualTitle:Ljava/lang/String;
    .end local v7           #actualUri:Landroid/net/Uri;
    .end local v8           #authority:Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v10, :cond_1

    .line 163
    const v1, 0x10403d9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 165
    if-nez v10, :cond_1

    .line 166
    const-string v10, ""

    :cond_1
    move-object v1, v10

    .line 170
    :cond_2
    :goto_1
    return-object v1

    .line 141
    .restart local v8       #authority:Ljava/lang/String;
    :cond_3
    const-string v1, "drm"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 142
    sget-object v2, Landroid/media/Ringtone;->DRM_COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 148
    :cond_4
    :goto_2
    if-eqz v9, :cond_6

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v11, :cond_6

    .line 149
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 150
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 155
    if-eqz v9, :cond_2

    .line 156
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 143
    :cond_5
    const-string/jumbo v1, "media"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    sget-object v2, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_2

    .line 152
    :cond_6
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 155
    if-eqz v9, :cond_0

    .line 156
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_7

    .line 156
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_7
    throw v1
.end method

.method private openMediaPlayer()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 177
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    .line 178
    iget-object v0, p0, Landroid/media/Ringtone;->mDrmUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mDrmUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 198
    :goto_0
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 199
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 200
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 201
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Landroid/media/Ringtone;->mFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_3

    .line 183
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 184
    :cond_3
    iget-object v0, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_5

    .line 188
    iget-object v0, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 189
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 191
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

    goto :goto_0

    .line 196
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No data source set."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private wasDRMContent(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, wasDRMContent:Z
    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, authority:Ljava/lang/String;
    const-string v2, "drm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 246
    .end local v0           #authority:Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private wasSystemSettingsValue(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, wasSystemSettingsValue:Z
    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://settings/system/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 233
    :cond_0
    return v0
.end method


# virtual methods
.method getDrmUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 317
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

    .line 326
    .local v2, cols:[Ljava/lang/String;
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 327
    .local v0, res:Landroid/content/ContentResolver;
    const-string/jumbo v5, "title"

    move-object v1, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 331
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 332
    .local v11, drmUri:Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 333
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 334
    const-string v1, "_data"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 335
    .local v10, data:Ljava/lang/String;
    const-string v1, "content_offset"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 336
    .local v7, contentOffset:I
    const-string v1, "content_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 337
    .local v8, contentid:Ljava/lang/String;
    const-string v1, "content_boundary_offset"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 338
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

    .line 343
    .end local v6           #boundaryoffset:Ljava/lang/String;
    .end local v7           #contentOffset:I
    .end local v8           #contentid:Ljava/lang/String;
    .end local v10           #data:Ljava/lang/String;
    :cond_0
    if-eqz v9, :cond_1

    .line 344
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 345
    const/4 v9, 0x0

    .line 348
    :cond_1
    return-object v11
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Landroid/media/Ringtone;->mStreamType:I

    return v0
.end method

.method getSystemSettingsValue(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 290
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "name"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v4, "value"

    aput-object v4, v2, v1

    .line 295
    .local v2, cols:[Ljava/lang/String;
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, res:Landroid/content/ContentResolver;
    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 296
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 300
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 301
    .local v7, settingsuUri:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 302
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 303
    const-string/jumbo v1, "value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 306
    :cond_0
    if-eqz v6, :cond_1

    .line 307
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 308
    const/4 v6, 0x0

    .line 310
    :cond_1
    return-object v7
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 118
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 357
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
    .line 209
    iput-object p1, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 210
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V

    .line 211
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
    .line 214
    iput-object p1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 215
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/Ringtone;->mDrmUri:Ljava/lang/String;

    .line 217
    invoke-direct {p0, p1}, Landroid/media/Ringtone;->wasSystemSettingsValue(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {p0, p1}, Landroid/media/Ringtone;->getSystemSettingsValue(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/Ringtone;->wasDRMContent(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/Ringtone;->getDrmUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/Ringtone;->mDrmUri:Ljava/lang/String;

    .line 224
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V

    .line 225
    return-void

    .line 221
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/Ringtone;->wasDRMContent(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
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
    .line 204
    iput-object p1, p0, Landroid/media/Ringtone;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 205
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V

    .line 206
    return-void
.end method

.method public play()V
    .locals 4

    .prologue
    .line 253
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 255
    :try_start_0
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 264
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "playing a tone with looping : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/Ringtone;->isLooping:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-boolean v2, p0, Landroid/media/Ringtone;->isLooping:Z

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 269
    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 273
    :cond_1
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "play() caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 0
    .parameter "isLooping"

    .prologue
    .line 371
    iput-boolean p1, p0, Landroid/media/Ringtone;->isLooping:Z

    .line 372
    return-void
.end method

.method public setStreamType(I)V
    .locals 3
    .parameter "streamType"

    .prologue
    .line 86
    iput p1, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 88
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 94
    :try_start_0
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
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
    .line 361
    iput-object p1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 362
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 281
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    .line 284
    :cond_0
    return-void
.end method
