.class public Lcom/htc/music/util/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;,
        Lcom/htc/music/util/MusicUtils$ServiceBinder;,
        Lcom/htc/music/util/MusicUtils$ServiceOwner;,
        Lcom/htc/music/util/MusicUtils$DrmWarningMode;,
        Lcom/htc/music/util/MusicUtils$DrmStatus;,
        Lcom/htc/music/util/MusicUtils$Defs;
    }
.end annotation


# static fields
.field public static final ATSTAG:Ljava/lang/String; = "MASD"

.field static final DEBUG:Z = true

.field private static final INTERNAL_MEMORY_THRESOLD:J = 0x500000L

.field public static final IS_MUSIC_DRM_FILTER:Ljava/lang/String; = "is_music>1"

.field public static final IS_MUSIC_FILTER:Ljava/lang/String; = "is_music>=1"

.field public static final IS_MUSIC_FILTER_FOR_GENRE:Ljava/lang/String; = "audio_meta.is_music>=1"

.field public static final IS_RINGTONE_FILTER:Ljava/lang/String; = "is_ringtone>=1"

.field private static IsInternalEnough:Z = false

.field private static final PATH:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "[MusicUtils]"

.field public static final YOUTUBE_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.youtube"

.field private static final hexdigits:[C

.field private static mCachedArt:[B

.field private static mCachedBit:Landroid/graphics/Bitmap;

.field private static final mCoverPaint:Landroid/graphics/Paint;

.field public static mPluginManager:Lcom/htc/music/MusicPluginManager;

.field private static final sArtCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static sArtCacheId:I

.field private static sArtId:I

.field private static final sArtworkUri:Landroid/net/Uri;

.field private static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private static final sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/htc/music/util/MusicUtils$ServiceOwner;",
            "Lcom/htc/music/util/MusicUtils$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field public static final sDlColumns:[Ljava/lang/String;

.field private static final sEmptyList:[I

.field private static final sExternalMediaUri:Ljava/lang/String;

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field public static sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

.field public static final sMdColumns:[Ljava/lang/String;

.field public static sService:Lcom/htc/music/IMediaPlaybackService;

.field private static final sTimeArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 160
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "album_key"

    aput-object v1, v0, v3

    const-string v1, "album_art"

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    .line 166
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "dl_album_id"

    aput-object v1, v0, v4

    const-string v1, "dl_album_key"

    aput-object v1, v0, v3

    const-string v1, "dl_data"

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sDlColumns:[Ljava/lang/String;

    .line 222
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/music/util/MusicUtils;->hexdigits:[C

    .line 255
    new-instance v0, Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;-><init>(I)V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    .line 291
    sput-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    .line 294
    sput-object v5, Lcom/htc/music/util/MusicUtils;->mPluginManager:Lcom/htc/music/MusicPluginManager;

    .line 323
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    .line 436
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/music/util/MusicUtils;->PATH:Ljava/lang/String;

    .line 437
    sput-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z

    .line 553
    new-array v0, v4, [I

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    .line 1599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 1601
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sFormatter:Ljava/util/Formatter;

    .line 1603
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 1902
    const/4 v0, -0x2

    sput v0, Lcom/htc/music/util/MusicUtils;->sArtId:I

    .line 1906
    sput-object v5, Lcom/htc/music/util/MusicUtils;->mCachedBit:Landroid/graphics/Bitmap;

    .line 1908
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 1910
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 1912
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    .line 1914
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    .line 1918
    const/4 v0, -0x1

    sput v0, Lcom/htc/music/util/MusicUtils;->sArtCacheId:I

    .line 1925
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1926
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1928
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1929
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 2620
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sExternalMediaUri:Ljava/lang/String;

    .line 4680
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    .line 4681
    sget-object v0, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 4682
    sget-object v0, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 4683
    sget-object v0, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4684
    return-void

    .line 222
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1863
    return-void
.end method

.method public static CheckDLNAMode(Landroid/content/Context;[IIZ)I
    .locals 22
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "playAtGlance"

    .prologue
    .line 3975
    const-string v17, "DLNA"

    const/16 v18, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 3977
    .local v5, Preferences:Landroid/content/SharedPreferences;
    const-string v17, "server"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3978
    .local v4, DMS:Ljava/lang/String;
    const-string v17, "Render"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3979
    .local v3, DMR:Ljava/lang/String;
    const-string v17, "container"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3980
    .local v8, container:Ljava/lang/String;
    const-string v17, "content"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3983
    .local v9, content:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 3984
    const-string v17, "[MusicUtils]"

    const-string v18, "input list != null, clear server and content info"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3985
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "server"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "content"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3987
    const/4 v4, 0x0

    .line 3990
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v10

    .line 3994
    .local v10, dlnaMode:I
    packed-switch v10, :pswitch_data_0

    .line 4147
    const-string v17, "[MusicUtils]"

    const-string v18, "check dlna mode failed"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4148
    const/16 v17, 0x0

    .end local p0
    :goto_0
    return v17

    .line 3996
    .restart local p0
    :pswitch_0
    const-string v17, "[MusicUtils]"

    const-string v18, "DLNA_DMP mode"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3997
    if-nez p3, :cond_2

    .line 3998
    const-string v17, "switchDMP"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 4000
    .local v6, Switch:Z
    if-eqz v6, :cond_1

    .line 4001
    const-string v17, "[MusicUtils]"

    const-string v18, "called from DMC, need to update DMP info"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4017
    :cond_1
    const/16 v17, 0x1

    goto :goto_0

    .line 4019
    .end local v6           #Switch:Z
    :cond_2
    const-string v17, "[MusicUtils]"

    const-string v18, "play at glance, clear dlna info"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4020
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->clearDlnaInfo(Landroid/content/Context;)V

    .line 4021
    const/16 v17, 0x0

    goto :goto_0

    .line 4026
    :pswitch_1
    const-string v17, "[MusicUtils]"

    const-string v18, "DLNA_LOCAL mode"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4027
    const/16 v17, 0x0

    goto :goto_0

    .line 4030
    :pswitch_2
    const-string v17, "[MusicUtils]"

    const-string v18, "DLNA_DMC mode, send intent"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4031
    if-nez p3, :cond_4

    .line 4032
    const-string v17, "[MusicUtils]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "intent Server = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4033
    const-string v17, "[MusicUtils]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "intent Render = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4034
    const-string v17, "[MusicUtils]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "intent container = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "container"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4035
    const-string v17, "[MusicUtils]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "intent content = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "content"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4036
    const-string v17, "[MusicUtils]"

    const-string v18, "intent cookie = 1"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4037
    const-string v17, "[MusicUtils]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "intent filePath = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "filePath"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4038
    const-string v17, "[MusicUtils]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "intent shuffle = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "shuffle"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4039
    const-string v17, "[MusicUtils]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "intent startIdx = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "startIdx"

    const-wide/16 v20, -0x1

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-interface {v5, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4040
    const-string v17, "[MusicUtils]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "intent endIdx = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "endIdx"

    const-wide/16 v20, -0x1

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-interface {v5, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4041
    const-string v17, "[MusicUtils]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "intent direction ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "direction"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4043
    const-string v17, "updateDMC"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 4045
    .local v16, updateDMC:Z
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 4046
    .local v12, intent:Landroid/content/Intent;
    const-string v17, "Server"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4047
    const-string v17, "Render"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4048
    const-string v17, "cookie"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4050
    if-eqz v16, :cond_3

    .line 4051
    const-string v17, "container"

    const-string v18, "container"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4052
    const-string v17, "content"

    const-string v18, "content"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4053
    const-string v17, "filepath"

    const-string v18, "filepath"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4054
    const-string v17, "shuffle"

    const-string v18, "shuffle"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4055
    const-string v17, "startIdx"

    const-string v18, "startIdx"

    const-wide/16 v19, -0x1

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-interface {v5, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v12, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4056
    const-string v17, "endIdx"

    const-string v18, "endIdx"

    const-wide/16 v19, -0x1

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-interface {v5, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v12, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4057
    const-string v17, "direction"

    const-string v18, "direction"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4058
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "updateDMC"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4060
    :cond_3
    const-string v17, "com.htc.dmc"

    const-string v18, "com.htc.dmc.HtcDMC"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4061
    const/high16 v17, 0x400

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4063
    check-cast p0, Landroid/app/Activity;

    .end local p0
    const/16 v17, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4068
    const/16 v17, 0x2

    goto/16 :goto_0

    .line 4070
    .end local v12           #intent:Landroid/content/Intent;
    .end local v16           #updateDMC:Z
    .restart local p0
    :cond_4
    const-string v17, "[MusicUtils]"

    const-string v18, "play at glance, clear dlna info"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4071
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->clearDlnaInfo(Landroid/content/Context;)V

    .line 4072
    if-eqz p0, :cond_5

    .line 4073
    new-instance v13, Landroid/content/Intent;

    const-string v17, "com.htc.dmc.poweroff"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4074
    .local v13, intentOffDmc:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4076
    .end local v13           #intentOffDmc:Landroid/content/Intent;
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 4081
    :pswitch_3
    const-string v17, "[MusicUtils]"

    const-string v18, "DLNA_PUSH mode"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4082
    if-nez p3, :cond_9

    .line 4083
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 4084
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v17, "switch"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 4085
    .local v7, bSwitch:Z
    if-nez p1, :cond_7

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_7

    .line 4086
    sget-object v17, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v17, :cond_6

    .line 4088
    :try_start_0
    const-string v17, "[MusicUtils]"

    const-string v18, "push switch = true"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4090
    sget-object v17, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface/range {v17 .. v17}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object p1

    .line 4091
    sget-object v17, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface/range {v17 .. v17}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result p2

    .line 4093
    const-string v17, "pushlist"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 4094
    const-string v17, "content"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4095
    const-string v17, "[MusicUtils]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "intent position = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4096
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "switch"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4124
    :cond_6
    :goto_1
    const-string v17, "Render"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4125
    const-string v17, "cookie"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4126
    const-string v17, "com.htc.dmc"

    const-string v18, "com.htc.dmc.HtcDMC"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4127
    const/high16 v17, 0x400

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4130
    check-cast p0, Landroid/app/Activity;

    .end local p0
    const/16 v17, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4135
    const/16 v17, 0x3

    goto/16 :goto_0

    .line 4097
    .restart local p0
    :catch_0
    move-exception v11

    .line 4098
    .local v11, e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 4103
    .end local v11           #e:Landroid/os/RemoteException;
    :cond_7
    if-eqz p1, :cond_6

    .line 4104
    const-string v17, "[MusicUtils]"

    const-string v18, "input list != null, send pust list to push controller"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4105
    const-string v17, "pushlist"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 4107
    const-string v17, "shuffle"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 4108
    .local v15, shuffle:I
    const-string v17, "shuffle"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4109
    const-string v17, "[MusicUtils]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "shuffle mode = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4111
    if-eqz v15, :cond_8

    .line 4112
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v17

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v14, v0

    .line 4113
    .local v14, pos:I
    const-string v17, "content"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4114
    const-string v17, "[MusicUtils]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "intent position = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4115
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "shuffle"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 4119
    .end local v14           #pos:I
    :cond_8
    const-string v17, "content"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4120
    const-string v17, "[MusicUtils]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "intent position = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4137
    .end local v7           #bSwitch:Z
    .end local v12           #intent:Landroid/content/Intent;
    .end local v15           #shuffle:I
    :cond_9
    const-string v17, "[MusicUtils]"

    const-string v18, "play at glance, switch to local mode"

    invoke-static/range {v17 .. v18}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4138
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/MusicUtils;->clearDlnaInfo(Landroid/content/Context;)V

    .line 4139
    if-eqz p0, :cond_a

    .line 4140
    new-instance v13, Landroid/content/Intent;

    const-string v17, "com.htc.dmc.poweroff"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4141
    .restart local v13       #intentOffDmc:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4143
    .end local v13           #intentOffDmc:Landroid/content/Intent;
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 3994
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static CheckDLNAStatus(Landroid/content/Context;)I
    .locals 12
    .parameter "context"

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x1

    .line 3889
    const-string v9, "[MusicUtils]"

    const-string v10, "CheckDLNAStatus"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3891
    const-string v9, "DLNA"

    const/4 v10, 0x7

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3894
    .local v2, Preferences:Landroid/content/SharedPreferences;
    const-string v9, "server"

    invoke-interface {v2, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3895
    .local v1, DMS:Ljava/lang/String;
    const-string v9, "Render"

    invoke-interface {v2, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3896
    .local v0, DMR:Ljava/lang/String;
    const-string v9, "initialMusic"

    invoke-interface {v2, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 3898
    .local v3, bInitial:Z
    if-eqz v1, :cond_3

    .line 3899
    if-eqz v0, :cond_2

    .line 3900
    if-eqz v3, :cond_1

    .line 3901
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "content://dlna/music_launch_dmc"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 3902
    .local v4, type:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v7, "true"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3903
    const-string v6, "[MusicUtils]"

    const-string v7, "initial, DLNA mode = DLNA_DMC"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3947
    .end local v4           #type:Ljava/lang/String;
    :goto_0
    return v5

    .line 3909
    .restart local v4       #type:Ljava/lang/String;
    :cond_0
    const-string v5, "[MusicUtils]"

    const-string v7, "type = null, DLNA mode switch to DLNA_LOCAL"

    invoke-static {v5, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3910
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v7, "Render"

    invoke-interface {v5, v7, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v7, "switchDMP"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v5, v6

    .line 3913
    goto :goto_0

    .line 3918
    .end local v4           #type:Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "updateDMC"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3920
    const-string v6, "[MusicUtils]"

    const-string v7, "DLNA mode = DLNA_DMC"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3924
    :cond_2
    const-string v5, "[MusicUtils]"

    const-string v7, "DLNA mode = DLNA_DMP"

    invoke-static {v5, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 3925
    goto :goto_0

    .line 3929
    :cond_3
    if-eqz v0, :cond_6

    .line 3930
    if-eqz v3, :cond_5

    .line 3931
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://dlna/music_launch_dmc"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 3932
    .restart local v4       #type:Ljava/lang/String;
    if-eqz v4, :cond_4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3933
    const-string v5, "[MusicUtils]"

    const-string v6, "initial, DLNA mode = DLNA_PUSH"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v7

    .line 3934
    goto :goto_0

    .line 3937
    :cond_4
    const-string v5, "[MusicUtils]"

    const-string v6, "type = null, DLNA mode = DLNA_LOCAL"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3938
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "Render"

    invoke-interface {v5, v6, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v5, v8

    .line 3939
    goto :goto_0

    .line 3942
    .end local v4           #type:Ljava/lang/String;
    :cond_5
    const-string v5, "[MusicUtils]"

    const-string v6, "DLNA mode = DLNA_PUSH"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v7

    .line 3943
    goto :goto_0

    .line 3946
    :cond_6
    const-string v5, "[MusicUtils]"

    const-string v6, "DLNA mode = DLNA_LOCAL"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v8

    .line 3947
    goto/16 :goto_0
.end method

.method public static IsInternalStorage()Z
    .locals 1

    .prologue
    .line 4832
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v0

    return v0
.end method

.method public static IsOnlyInternalStorage()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4836
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4845
    .local v0, both:Z
    :cond_0
    :goto_0
    return v1

    .line 4840
    .end local v0           #both:Z
    :cond_1
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v0

    .line 4842
    .restart local v0       #both:Z
    if-nez v0, :cond_0

    .line 4845
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static IsReloadAllMusicForQueue(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 4715
    const-string v3, "Music"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4716
    .local v1, pref:Landroid/content/SharedPreferences;
    const/4 v0, 0x1

    .line 4717
    .local v0, IsLaunchBefore:Z
    const-string v3, "LaunchedBefore"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 4719
    if-nez v0, :cond_0

    .line 4720
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "LaunchedBefore"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4724
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static SetDLNASuffleMode(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x3

    .line 4154
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 4156
    .local v0, DlnaMode:I
    if-ne v0, v3, :cond_0

    .line 4157
    const-string v2, "DLNA"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4158
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "shuffle"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4160
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static addToCurrentPlaylist(Landroid/content/Context;[I)V
    .locals 7
    .parameter "context"
    .parameter "list"

    .prologue
    .line 1310
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 1320
    :goto_0
    return-void

    .line 1314
    :cond_0
    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x3

    invoke-interface {v1, p1, v2}, Lcom/htc/music/IMediaPlaybackService;->enqueue([II)V

    .line 1315
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0003

    array-length v3, p1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1317
    .local v0, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1318
    .end local v0           #message:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static addToPlaylist(Landroid/content/Context;[IJ)V
    .locals 1
    .parameter "context"
    .parameter "ids"
    .parameter "playlistid"

    .prologue
    .line 1323
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJZ)V

    .line 1324
    return-void
.end method

.method public static addToPlaylist(Landroid/content/Context;[IJZ)V
    .locals 16
    .parameter "context"
    .parameter "ids"
    .parameter "playlistid"
    .parameter "showToast"

    .prologue
    .line 1327
    if-nez p1, :cond_1

    .line 1330
    const-string v5, "[MusicUtils]"

    const-string v6, "ListSelection null"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    :cond_0
    :goto_0
    return-void

    .line 1332
    :cond_1
    move-object/from16 v0, p1

    array-length v12, v0

    .line 1333
    .local v12, size:I
    new-array v13, v12, [Landroid/content/ContentValues;

    .line 1334
    .local v13, values:[Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1337
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "count(*)"

    aput-object v6, v4, v5

    .line 1340
    .local v4, cols:[Ljava/lang/String;
    const-string v5, "external"

    move-wide/from16 v0, p2

    invoke-static {v5, v0, v1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 1341
    .local v3, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1342
    .local v9, cur:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1343
    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1344
    .local v8, base:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1345
    const/4 v9, 0x0

    .line 1347
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v12, :cond_2

    .line 1348
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v13, v10

    .line 1349
    aget-object v5, v13, v10

    const-string v6, "play_order"

    add-int v7, v8, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1351
    aget-object v5, v13, v10

    const-string v6, "audio_id"

    aget v7, p1, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1347
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1353
    :cond_2
    invoke-virtual {v2, v3, v13}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1354
    if-eqz p4, :cond_0

    .line 1355
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0003

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v7, v14

    invoke-virtual {v5, v6, v12, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1357
    .local v11, message:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v11, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static appExist(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 4528
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 4529
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 4530
    .local v0, appExist:Z
    :cond_0
    return v0
.end method

.method public static appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "where"

    .prologue
    .line 4385
    const-string v0, " (composer ISNULL"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4386
    const-string v0, " OR composer = \'\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4387
    const-string v0, " OR composer = \'<unknown>\' )"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4390
    return-void
.end method

.method public static arrayDeepClone([I[II)V
    .locals 2
    .parameter "src"
    .parameter "dst"
    .parameter "length"

    .prologue
    .line 4357
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 4363
    :cond_0
    return-void

    .line 4358
    :cond_1
    array-length v1, p0

    if-lt v1, p2, :cond_0

    array-length v1, p1

    if-lt v1, p2, :cond_0

    .line 4360
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 4361
    aget v1, p0, v0

    aput v1, p1, v0

    .line 4360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static bindToService(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0
.end method

.method public static bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z
    .locals 7
    .parameter "context"
    .parameter "id"
    .parameter "callback"

    .prologue
    .line 331
    new-instance v3, Lcom/htc/music/util/MusicUtils$ServiceOwner;

    invoke-direct {v3, p1, p0}, Lcom/htc/music/util/MusicUtils$ServiceOwner;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 333
    .local v3, serviceOwner:Lcom/htc/music/util/MusicUtils$ServiceOwner;
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 334
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/MusicUtils$ServiceBinder;

    .line 336
    .local v2, sbRemove:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    if-eqz v2, :cond_0

    .line 338
    :try_start_0
    iget-object v4, v3, Lcom/htc/music/util/MusicUtils$ServiceOwner;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    const-string v4, "[MusicUtils]"

    const-string v5, "Unbind previous binding service"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .end local v2           #sbRemove:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 349
    new-instance v1, Lcom/htc/music/util/MusicUtils$ServiceBinder;

    invoke-direct {v1, p2}, Lcom/htc/music/util/MusicUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 350
    .local v1, sb:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    return v4

    .line 340
    .end local v1           #sb:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    .restart local v2       #sbRemove:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    :catch_0
    move-exception v0

    .line 341
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v4, "[MusicUtils]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mContext unbind service fail => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/htc/music/util/MusicUtils$ServiceOwner;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 11
    .parameter "context"
    .parameter "trackPath"
    .parameter "audioId"

    .prologue
    const/4 v8, 0x0

    .line 4413
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    move v0, v8

    .line 4483
    :goto_0
    return v0

    .line 4416
    :cond_1
    invoke-static {p0, p2}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 4417
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_2

    move v0, v8

    .line 4418
    goto :goto_0

    .line 4420
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_5

    .line 4421
    :cond_3
    if-eqz v1, :cond_4

    .line 4422
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    .line 4423
    goto :goto_0

    .line 4426
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4427
    const/4 v0, 0x0

    .line 4430
    .local v0, canBeShared:I
    const-string v9, "is_music"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 4431
    .local v5, musicType:J
    const-string v9, "_data"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4434
    .local v7, path:Ljava/lang/String;
    const/4 v4, 0x0

    .line 4436
    .local v4, mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 4437
    const-string v9, "mime_type"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4441
    :cond_6
    const-wide/16 v9, 0x1

    cmp-long v9, v5, v9

    if-lez v9, :cond_a

    .line 4443
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    .line 4444
    .local v3, drmCursor:Landroid/database/Cursor;
    if-nez v3, :cond_7

    .line 4445
    const-string v9, "[MusicUtils]"

    const-string v10, "MusicUtils.getDrmCursor return null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4446
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4447
    const/4 v1, 0x0

    move v0, v8

    .line 4448
    goto :goto_0

    .line 4451
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_9

    .line 4452
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4454
    const-string v8, "delivery_type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 4456
    .local v2, deliveryType:I
    const/4 v8, 0x4

    if-eq v8, v2, :cond_8

    const/4 v8, 0x3

    if-ne v8, v2, :cond_9

    .line 4458
    :cond_8
    const/4 v0, 0x2

    .line 4462
    .end local v2           #deliveryType:I
    :cond_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4480
    .end local v3           #drmCursor:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4481
    const/4 v1, 0x0

    .line 4483
    goto :goto_0

    .line 4466
    :cond_a
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v4, :cond_b

    const-string v8, "audio/x-wma-drm"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 4467
    const-string v8, "[MusicUtils]"

    const-string v9, "canShare()....This file is WMDRM...."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4468
    const/4 v0, 0x0

    goto :goto_1

    .line 4473
    :cond_b
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static canRewind(Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 1
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 3764
    const/4 v0, 0x1

    return v0
.end method

.method static declared-synchronized checkInternalMemory()J
    .locals 11

    .prologue
    .line 503
    const-class v8, Lcom/htc/music/util/MusicUtils;

    monitor-enter v8

    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    sget-object v7, Lcom/htc/music/util/MusicUtils;->PATH:Ljava/lang/String;

    invoke-direct {v4, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 504
    .local v4, fileStats:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 505
    .local v0, availableBlocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 506
    .local v2, blockSize:J
    mul-long v5, v0, v2

    .line 507
    .local v5, size:J
    const-string v7, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "internal memory: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    monitor-exit v8

    return-wide v5

    .line 503
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #size:J
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static checkSizeLimit(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 5
    .parameter "context"
    .parameter "path"
    .parameter "audioId"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4513
    const/4 v1, 0x0

    .line 4515
    .local v1, overSizeLimit:Z
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getMaxRingtoneSize(Landroid/content/Context;)I

    move-result v4

    mul-int/lit16 v0, v4, 0x400

    .line 4516
    .local v0, maxRingtoneSize:I
    if-lez v0, :cond_0

    .line 4517
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->wasDRMFilePlaying(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4518
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/htc/music/util/MusicUtils;->getDrmTrackSize(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v4

    if-le v4, v0, :cond_1

    move v1, v2

    .line 4524
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    :goto_1
    return v2

    :cond_1
    move v1, v3

    .line 4518
    goto :goto_0

    .line 4520
    :cond_2
    invoke-static {p0, p2}, Lcom/htc/music/util/MusicUtils;->getTrackSize(Landroid/content/Context;I)I

    move-result v4

    if-le v4, v0, :cond_3

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v2, v3

    .line 4524
    goto :goto_1
.end method

.method public static checkedInternalStorageWhenResume(Landroid/content/Context;)Z
    .locals 3
    .parameter "fromCtx"

    .prologue
    const/4 v1, 0x1

    .line 441
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 443
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 444
    .local v0, targetIntent:Landroid/content/Intent;
    const-class v2, Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 445
    const-string v2, "disablelib"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 447
    const/4 v1, 0x0

    .line 449
    .end local v0           #targetIntent:Landroid/content/Intent;
    :cond_0
    return v1
.end method

.method public static clearAlbumArtCache()V
    .locals 6

    .prologue
    .line 1945
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 1946
    :try_start_0
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1947
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1948
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1949
    .local v0, artIndex:Ljava/lang/Integer;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1950
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #artIndex:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 1951
    .restart local v0       #artIndex:Ljava/lang/Integer;
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;

    .line 1952
    .local v1, bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    if-eqz v1, :cond_0

    .line 1953
    invoke-virtual {v1}, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;->recycle()V

    goto :goto_0

    .line 1958
    .end local v0           #artIndex:Ljava/lang/Integer;
    .end local v1           #bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1957
    .restart local v0       #artIndex:Ljava/lang/Integer;
    .restart local v2       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1958
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1959
    return-void
.end method

.method public static clearDlnaInfo(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3955
    const-string v2, "DLNA"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3956
    .local v0, Preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3957
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_0

    .line 3958
    const-string v2, "container"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3959
    const-string v2, "content"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3960
    const-string v2, "filepath"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3961
    const-string v2, "shuffle"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3962
    const-string v2, "startIdx"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3963
    const-string v2, "endIdx"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3964
    const-string v2, "direction"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3965
    const-string v2, "server"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3966
    const-string v2, "Render"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3967
    const-string v2, "initialMusic"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3968
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3970
    :cond_0
    return-void
.end method

.method public static clearPlaylist(Landroid/content/Context;I)V
    .locals 11
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v3, 0x0

    .line 1125
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 1129
    .local v2, ccols:[Ljava/lang/String;
    const-string v0, "external"

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "play_order"

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1132
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 1146
    :goto_0
    return-void

    .line 1136
    :cond_0
    const-string v0, "external"

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v10

    .line 1137
    .local v10, uri:Landroid/net/Uri;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1138
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1139
    .local v6, colidx:I
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1140
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1141
    .local v8, id:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v10, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1142
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1144
    .end local v8           #id:J
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1145
    const/4 v7, 0x0

    .line 1146
    goto :goto_0
.end method

.method public static clearQueue()V
    .locals 3

    .prologue
    .line 1856
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-interface {v0, v1, v2}, Lcom/htc/music/IMediaPlaybackService;->removeTracks(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1859
    :goto_0
    return-void

    .line 1857
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static createBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "drawable"

    .prologue
    .line 4246
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 4247
    .local v1, width:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 4248
    .local v0, height:I
    invoke-static {p0, v0, v1}, Lcom/htc/music/util/MusicUtils;->createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private static createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "drawable"
    .parameter "height"
    .parameter "width"

    .prologue
    const/4 v5, 0x0

    .line 4252
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 4255
    .local v2, config:Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {p2, p1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4256
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4257
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v5, v5, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4258
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4259
    return-object v0

    .line 4252
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #config:Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static deleteArrayItem([III)V
    .locals 2
    .parameter "list"
    .parameter "length"
    .parameter "position"

    .prologue
    .line 4366
    if-eqz p0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, p1, :cond_0

    array-length v1, p0

    if-ge v1, p1, :cond_1

    .line 4372
    :cond_0
    return-void

    .line 4369
    :cond_1
    move v0, p2

    .local v0, i:I
    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_0

    .line 4370
    add-int/lit8 v1, v0, 0x1

    aget v1, p0, v1

    aput v1, p0, v0

    .line 4369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static deleteDrmTracks(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 6
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 1296
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v4

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "title"

    aput-object v4, v0, v3

    .line 1300
    .local v0, cols:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1301
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070095

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1302
    .local v2, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1303
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://drm"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    .end local v2           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 1304
    :catch_0
    move-exception v1

    .line 1305
    .local v1, ex:Ljava/lang/SecurityException;
    const-string v3, "[MusicUtils]"

    const-string v4, "deleteDrmTracks SecurityException"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deletePlaylistTrack(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "plid"

    .prologue
    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1151
    .local v0, where:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_playlists_map.playlist_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "external"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1153
    return-void
.end method

.method public static deletePlaylistTrack(Landroid/content/Context;J[I)V
    .locals 9
    .parameter "context"
    .parameter "plid"
    .parameter "list"

    .prologue
    const/4 v8, 0x0

    .line 1156
    if-eqz p3, :cond_2

    array-length v4, p3

    if-lez v4, :cond_2

    .line 1157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1158
    .local v3, where:Ljava/lang/StringBuilder;
    const-string v4, "audio_playlists_map._id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    array-length v2, p3

    .line 1160
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1161
    aget v4, p3, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1162
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_0

    .line 1163
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1166
    :cond_1
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "external"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1171
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0006

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1172
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1178
    .end local v0           #i:I
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #size:I
    .end local v3           #where:Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method public static deletePlaylists(Landroid/content/Context;[I)V
    .locals 9
    .parameter "context"
    .parameter "list"

    .prologue
    const/4 v8, 0x0

    .line 1181
    if-eqz p1, :cond_2

    array-length v4, p1

    if-lez v4, :cond_2

    .line 1182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1183
    .local v3, where:Ljava/lang/StringBuilder;
    const-string v4, "_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    array-length v2, p1

    .line 1185
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1186
    aget v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1187
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_0

    .line 1188
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1191
    :cond_1
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1195
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0005

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1197
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1203
    .end local v0           #i:I
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #size:I
    .end local v3           #where:Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method public static deleteTracks(Landroid/content/Context;[I)V
    .locals 18
    .parameter "context"
    .parameter "list"

    .prologue
    .line 1207
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "album_id"

    aput-object v2, v3, v1

    .line 1211
    .local v3, cols:[Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1212
    .local v16, where:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v1, v0

    if-ge v12, v1, :cond_1

    .line 1214
    aget v1, p1, v12

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1215
    move-object/from16 v0, p1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v12, v1, :cond_0

    .line 1216
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1219
    :cond_1
    const-string v1, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1223
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_8

    .line 1227
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_3

    .line 1229
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1230
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1232
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1233
    .local v13, id:I
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, v13}, Lcom/htc/music/IMediaPlaybackService;->removeTrack(I)I

    .line 1235
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1236
    .local v7, artIndex:I
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1237
    :try_start_1
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;

    .line 1238
    .local v8, bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    if-eqz v8, :cond_2

    .line 1239
    invoke-virtual {v8}, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;->recycle()V

    .line 1240
    const/4 v8, 0x0

    .line 1242
    :cond_2
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1244
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1246
    .end local v7           #artIndex:I
    .end local v8           #bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    .end local v13           #id:I
    :catch_0
    move-exception v1

    .line 1251
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1255
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1256
    :cond_4
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1257
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1258
    .local v15, name:Ljava/lang/String;
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete tracks:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    if-eqz v15, :cond_4

    .line 1260
    const-string v1, "content://drm/"

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1261
    const-string v1, "[MusicUtils]"

    const-string v2, "delete drm file"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/DrmStore;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 1263
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1243
    .end local v15           #name:Ljava/lang/String;
    .restart local v7       #artIndex:I
    .restart local v13       #id:I
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1265
    .end local v7           #artIndex:I
    .end local v13           #id:I
    .restart local v15       #name:Ljava/lang/String;
    :cond_5
    const-string v1, "[MusicUtils]"

    const-string v2, "delete local file"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1268
    .local v11, f:Ljava/io/File;
    :try_start_5
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1272
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 1275
    :catch_1
    move-exception v10

    .line 1276
    .local v10, ex:Ljava/lang/SecurityException;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1281
    .end local v10           #ex:Ljava/lang/SecurityException;
    .end local v11           #f:Ljava/io/File;
    .end local v15           #name:Ljava/lang/String;
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1282
    const/4 v9, 0x0

    .line 1285
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0002

    move-object/from16 v0, p1

    array-length v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v5, v6

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1288
    .local v14, message:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v14, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1292
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://media"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1293
    return-void
.end method

.method public static deleteTracksByCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "context"
    .parameter "cursor"
    .parameter "where"

    .prologue
    .line 3432
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-nez v10, :cond_1

    .line 3433
    :cond_0
    const/4 v8, 0x0

    .line 3506
    :goto_0
    return-object v8

    .line 3436
    :cond_1
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    .line 3440
    .local v7, len:I
    :try_start_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3441
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_3

    .line 3443
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 3444
    .local v6, id:I
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10, v6}, Lcom/htc/music/IMediaPlaybackService;->removeTrack(I)I

    .line 3446
    const/4 v10, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 3447
    .local v1, artIndex:I
    sget-object v11, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3448
    :try_start_2
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;

    .line 3449
    .local v2, bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    if-eqz v2, :cond_2

    .line 3450
    invoke-virtual {v2}, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;->recycle()V

    .line 3451
    const/4 v2, 0x0

    .line 3453
    :cond_2
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3454
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3455
    :try_start_3
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 3457
    .end local v1           #artIndex:I
    .end local v2           #bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    .end local v6           #id:I
    :catch_0
    move-exception v10

    .line 3461
    :cond_3
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v10, v11, v0, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 3463
    .local v3, delete_row_number:I
    const-string v10, "[MusicUtils]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deleteTracksByCursor,delete row numbers:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in music db."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3466
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3467
    :cond_4
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_7

    .line 3468
    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3469
    .local v9, name:Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 3470
    const-string v10, "content://drm/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 3471
    const-string v10, "[MusicUtils]"

    const-string v11, "deleteTracksByCursor,delete drm file"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3473
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/provider/DrmStore;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 3474
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 3475
    :catch_1
    move-exception v4

    .line 3476
    .local v4, ex:Ljava/lang/SecurityException;
    :try_start_6
    const-string v10, "[MusicUtils]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to delete file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3477
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 3504
    .end local v3           #delete_row_number:I
    .end local v4           #ex:Ljava/lang/SecurityException;
    .end local v7           #len:I
    .end local v9           #name:Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 3505
    .local v4, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_7
    const-string v10, "[MusicUtils]"

    const-string v11, "UnsupportedOperationException:"

    invoke-static {v10, v11, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3506
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 3454
    .end local v4           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v1       #artIndex:I
    .restart local v6       #id:I
    .restart local v7       #len:I
    :catchall_0
    move-exception v10

    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_9} :catch_2

    .line 3507
    .end local v1           #artIndex:I
    .end local v6           #id:I
    .end local v7           #len:I
    :catchall_1
    move-exception v10

    throw v10

    .line 3480
    .restart local v3       #delete_row_number:I
    .restart local v7       #len:I
    .restart local v9       #name:Ljava/lang/String;
    :cond_5
    :try_start_a
    const-string v10, "[MusicUtils]"

    const-string v11, "deleteTracksByCursor,delete local file"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3481
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_a} :catch_2

    .line 3483
    .local v5, f:Ljava/io/File;
    :try_start_b
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_6

    .line 3487
    const-string v10, "[MusicUtils]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to delete file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3489
    :cond_6
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_2

    .line 3490
    :catch_3
    move-exception v4

    .line 3491
    .local v4, ex:Ljava/lang/SecurityException;
    :try_start_c
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 3497
    .end local v4           #ex:Ljava/lang/SecurityException;
    .end local v5           #f:Ljava/io/File;
    .end local v9           #name:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0002

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v7, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 3502
    .local v8, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "content://media"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_0
.end method

.method public static deleteTracksForAlbum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "albumId"
    .parameter "artistId"
    .parameter "genreId"
    .parameter "composerId"

    .prologue
    .line 3514
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "album_id"

    aput-object v1, v3, v0

    .line 3519
    .local v3, ccols:[Ljava/lang/String;
    invoke-static {p1, p2, p3, p4}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3520
    .local v4, where:Ljava/lang/String;
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query String    :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 3522
    check-cast v0, Lcom/htc/music/widget/MusicListActivity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "track"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicListActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3523
    return-void
.end method

.method public static deleteTracksForArtist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "artistId"
    .parameter "genreId"
    .parameter "composerId"

    .prologue
    const/4 v5, 0x0

    .line 3527
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "album_id"

    aput-object v1, v3, v0

    .line 3532
    .local v3, ccols:[Ljava/lang/String;
    invoke-static {v5, p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3533
    .local v4, where:Ljava/lang/String;
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query String    :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 3535
    check-cast v0, Lcom/htc/music/widget/MusicListActivity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "album_key,track"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicListActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3539
    return-void
.end method

.method public static deleteTracksForComposer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 3566
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "album_id"

    aput-object v1, v3, v0

    .line 3573
    .local v3, ccols:[Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3574
    const-string v0, "<unknown>"

    invoke-static {v5, v5, v5, v0}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3578
    .local v4, where:Ljava/lang/String;
    :goto_0
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query String    :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 3580
    check-cast v0, Lcom/htc/music/widget/MusicListActivity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "track"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicListActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3583
    return-void

    .line 3576
    .end local v4           #where:Ljava/lang/String;
    :cond_0
    invoke-static {v5, v5, v5, p1}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #where:Ljava/lang/String;
    goto :goto_0
.end method

.method public static deleteTracksForGenre(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "genreId"

    .prologue
    const/4 v5, 0x0

    .line 3542
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "album_id"

    aput-object v1, v3, v0

    .line 3547
    .local v3, ccols:[Ljava/lang/String;
    invoke-static {v5, v5, p1, v5}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3548
    .local v4, where:Ljava/lang/String;
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query String    :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3550
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v7, v0

    .line 3552
    .local v7, id:J
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 3553
    check-cast v0, Lcom/htc/music/widget/MusicListActivity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "title_key"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicListActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3563
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 3557
    check-cast v0, Lcom/htc/music/widget/MusicListActivity;

    const-string v1, "external"

    invoke-static {v1, v7, v8}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    const-string v6, "title_key"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicListActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static displayDatabaseError(Landroid/app/Activity;)V
    .locals 11
    .parameter "a"

    .prologue
    const v10, 0x7f0800a3

    const/4 v9, 0x0

    .line 1512
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 1515
    .local v2, status:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1516
    const v3, 0x7f070042

    .line 1521
    .local v3, title:I
    :goto_0
    const v1, 0x20c00a1

    .line 1523
    .local v1, message:I
    const-string v6, "shared"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1524
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1525
    const v3, 0x7f070039

    .line 1526
    const v1, 0x7f07003f

    .line 1551
    :goto_1
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 1552
    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1553
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1554
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1556
    :cond_0
    const v6, 0x7f0800a2

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1557
    if-eqz v5, :cond_1

    .line 1558
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1560
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1561
    const v6, 0x208086b

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1564
    :cond_1
    const v6, 0x102000a

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1565
    if-eqz v5, :cond_2

    .line 1566
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1568
    :cond_2
    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1569
    .local v4, tv:Landroid/widget/TextView;
    if-eqz v4, :cond_3

    .line 1570
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1571
    :cond_3
    return-void

    .line 1518
    .end local v1           #message:I
    .end local v3           #title:I
    .end local v4           #tv:Landroid/widget/TextView;
    .end local v5           #v:Landroid/view/View;
    :cond_4
    const v3, 0x7f070041

    .restart local v3       #title:I
    goto :goto_0

    .line 1528
    .restart local v1       #message:I
    :cond_5
    const v3, 0x7f070038

    .line 1529
    const v1, 0x7f07003e

    goto :goto_1

    .line 1532
    :cond_6
    const-string v6, "removed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1533
    const v3, 0x20c01dd

    .line 1534
    const v1, 0x20c00a1

    goto :goto_1

    .line 1535
    :cond_7
    const-string v6, "unmounted"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1536
    const v3, 0x20c01dd

    .line 1537
    const v1, 0x20c01e2

    goto :goto_1

    .line 1538
    :cond_8
    const-string v6, "mounted"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1543
    const-string v6, ""

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1544
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1545
    .local v0, intent:Landroid/content/Intent;
    const-class v6, Lcom/htc/music/ScanningProgressActivity;

    invoke-virtual {v0, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1546
    const/16 v6, 0xb

    invoke-virtual {p0, v0, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1548
    .end local v0           #intent:Landroid/content/Intent;
    :cond_9
    const-string v6, "[MusicUtils]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sd card: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static ensureFileExists(Ljava/lang/String;)Z
    .locals 8
    .parameter "path"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2595
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2596
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2615
    :goto_0
    return v5

    .line 2602
    :cond_0
    const/16 v7, 0x2f

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2603
    .local v4, secondSlash:I
    if-ge v4, v5, :cond_1

    move v5, v6

    .line 2604
    goto :goto_0

    .line 2605
    :cond_1
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2606
    .local v1, directoryPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2607
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    .line 2608
    goto :goto_0

    .line 2609
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 2611
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 2612
    :catch_0
    move-exception v3

    .line 2613
    .local v3, ioe:Ljava/io/IOException;
    const-string v5, "[MusicUtils]"

    const-string v7, "File creation failed"

    invoke-static {v5, v7, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v5, v6

    .line 2615
    goto :goto_0
.end method

.method public static getAlbumListForArtist(Landroid/content/Context;I)[I
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 837
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "artist_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 840
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 842
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "album COLLATE NOCASE ASC, track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 845
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 846
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 847
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 848
    const/4 v6, 0x0

    .line 851
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getAlbumListForCursor(Landroid/database/Cursor;)[I
    .locals 7
    .parameter "cursor"

    .prologue
    .line 574
    if-nez p0, :cond_1

    .line 575
    const-string v5, "[MusicUtils]"

    const-string v6, "getAlbumListForCursor, cursor is  null, return empty list"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    .line 587
    :cond_0
    return-object v4

    .line 578
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 579
    .local v3, len:I
    new-array v4, v3, [I

    .line 580
    .local v4, list:[I
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 581
    const-string v5, "album_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 582
    .local v0, colidx:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 583
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 584
    .local v2, id:I
    aput v2, v4, v1

    .line 585
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getAlbumListForGenre(Landroid/content/Context;I)[I
    .locals 11
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 918
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "album_id"

    aput-object v0, v2, v1

    .line 921
    .local v2, ccols:[Ljava/lang/String;
    const-string v0, "%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v4, v0, v4}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 922
    .local v8, where:Ljava/lang/String;
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSongListForGenre,Query : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const/4 v6, 0x0

    .line 924
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 925
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 933
    :goto_0
    if-eqz v6, :cond_1

    .line 934
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 935
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 936
    const/4 v6, 0x0

    .line 939
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 928
    :cond_0
    const-string v0, "external"

    int-to-long v9, p1

    invoke-static {v0, v9, v10}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 939
    :cond_1
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getAlbumListForPlaylist(Landroid/content/Context;J)[I
    .locals 8
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v3, 0x0

    .line 1021
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 1024
    .local v2, ccols:[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "play_order"

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1027
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1028
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 1029
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1030
    const/4 v6, 0x0

    .line 1033
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getAlbumListForSong(Landroid/content/Context;I)[I
    .locals 8
    .parameter "context"
    .parameter "audioId"

    .prologue
    .line 873
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 876
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 878
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 881
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 882
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 883
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 884
    const/4 v6, 0x0

    .line 888
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getAllSongs(Landroid/content/Context;)[I
    .locals 10
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1055
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v3, "is_music>=1"

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1059
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 1071
    :cond_0
    if-eqz v6, :cond_1

    .line 1072
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1073
    const/4 v6, 0x0

    :cond_1
    move-object v9, v4

    :cond_2
    :goto_0
    return-object v9

    .line 1062
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1063
    .local v8, len:I
    new-array v9, v8, [I

    .line 1064
    .local v9, list:[I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v8, :cond_4

    .line 1065
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 1066
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v9, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1064
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1071
    :cond_4
    if-eqz v6, :cond_2

    .line 1072
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1073
    const/4 v6, 0x0

    goto :goto_0

    .line 1071
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #list:[I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1072
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1073
    const/4 v6, 0x0

    :cond_5
    throw v0
.end method

.method public static getAllSongsAndPrepare(Landroid/content/Context;)[I
    .locals 11
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 793
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v0, "album_id"

    aput-object v0, v2, v5

    const-string v3, "is_music>=1"

    const-string v5, "title COLLATE NOCASE ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 797
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 811
    :cond_0
    if-eqz v7, :cond_1

    .line 812
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v10, v4

    :cond_2
    :goto_0
    return-object v10

    .line 800
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 801
    .local v9, len:I
    new-array v10, v9, [I

    .line 802
    .local v10, list:[I
    new-array v6, v9, [I

    .line 803
    .local v6, albumlist:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v9, :cond_4

    .line 804
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 805
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v10, v8

    .line 806
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v6, v8

    .line 803
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 808
    :cond_4
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList([I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 811
    if-eqz v7, :cond_2

    .line 812
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 811
    .end local v6           #albumlist:[I
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v10           #list:[I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 812
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 4728
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4729
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4731
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "res"
    .parameter "bmSrc"
    .parameter "nMaskID"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 4214
    if-nez p1, :cond_1

    .line 4215
    const-string v6, "[MusicUtils]"

    const-string v7, "getApplyMaskBitmap()...bmSrc is null..."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 4241
    :cond_0
    :goto_0
    return-object v2

    .line 4219
    :cond_1
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4220
    .local v1, bmMask:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4221
    .local v0, bmAlpha:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4222
    .local v2, bmRet:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4223
    .local v3, c:Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, p1, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4224
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 4225
    .local v4, p:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 4226
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v10, v10, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4227
    if-eqz v1, :cond_2

    .line 4229
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 4230
    const/4 v1, 0x0

    .line 4232
    :cond_2
    if-eqz v0, :cond_3

    .line 4234
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4235
    const/4 v0, 0x0

    .line 4237
    :cond_3
    if-eqz p1, :cond_0

    .line 4239
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static getArtWorkPath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "album_id"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 2070
    if-gez p1, :cond_1

    .line 2101
    :cond_0
    :goto_0
    return-object v3

    .line 2073
    :cond_1
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2074
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 2075
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v7

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2076
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 2077
    .local v7, count:I
    :cond_2
    if-eq v7, v10, :cond_4

    .line 2080
    if-eqz v6, :cond_3

    .line 2081
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2083
    :cond_3
    if-nez v7, :cond_0

    goto :goto_0

    .line 2089
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2090
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2091
    .local v8, i:I
    if-ltz v8, :cond_5

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2092
    .local v9, path:Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2093
    if-eqz v9, :cond_0

    move-object v3, v9

    .line 2097
    goto :goto_0

    .end local v9           #path:Ljava/lang/String;
    :cond_5
    move-object v9, v3

    .line 2091
    goto :goto_1
.end method

.method public static getArtworkQuick(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 2002
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2003
    .local v5, res:Landroid/content/ContentResolver;
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    int-to-long v10, p1

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 2004
    .local v8, uri:Landroid/net/Uri;
    if-eqz v8, :cond_4

    .line 2005
    const/4 v2, 0x0

    .line 2007
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v9, "r"

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 2008
    const/4 v6, 0x1

    .line 2013
    .local v6, sampleSize:I
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2014
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    sget-object v11, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v9, v10, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2016
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v4, v9, 0x1

    .line 2017
    .local v4, nextWidth:I
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v3, v9, 0x1

    .line 2018
    .local v3, nextHeight:I
    :goto_0
    if-le v4, p2, :cond_0

    if-le v3, p3, :cond_0

    .line 2019
    shl-int/lit8 v6, v6, 0x1

    .line 2020
    shr-int/lit8 v4, v4, 0x1

    .line 2021
    shr-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2024
    :cond_0
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput v6, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2025
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2026
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    sget-object v11, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v9, v10, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2029
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 2031
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v9, p2, :cond_1

    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v9, p3, :cond_2

    .line 2032
    :cond_1
    const/4 v9, 0x1

    invoke-static {v0, p2, p3, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2033
    .local v7, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2034
    move-object v0, v7

    .line 2044
    .end local v7           #tmp:Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v2, :cond_3

    .line 2045
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2050
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #nextHeight:I
    .end local v4           #nextWidth:I
    .end local v6           #sampleSize:I
    :cond_3
    :goto_1
    return-object v0

    .line 2039
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v9

    .line 2044
    if-eqz v2, :cond_4

    .line 2045
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 2050
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_4
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 2040
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v1

    .line 2041
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v9, "[MusicUtils]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getArtworkQuick failed album_id= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2044
    if-eqz v2, :cond_4

    .line 2045
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 2046
    :catch_2
    move-exception v9

    goto :goto_2

    .line 2043
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 2044
    if-eqz v2, :cond_5

    .line 2045
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 2047
    :cond_5
    :goto_3
    throw v9

    .line 2046
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v3       #nextHeight:I
    .restart local v4       #nextWidth:I
    .restart local v6       #sampleSize:I
    :catch_3
    move-exception v9

    goto :goto_1

    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v3           #nextHeight:I
    .end local v4           #nextWidth:I
    .end local v6           #sampleSize:I
    :catch_4
    move-exception v9

    goto :goto_2

    :catch_5
    move-exception v10

    goto :goto_3
.end method

.method public static getArtworkQuickWithWrite(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 40
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 2114
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_1

    .line 2116
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 2118
    const/4 v12, 0x0

    .line 2381
    :cond_0
    :goto_0
    return-object v12

    .line 2120
    :catch_0
    move-exception v15

    .line 2122
    .local v15, e:Landroid/os/RemoteException;
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2123
    const/4 v12, 0x0

    goto :goto_0

    .line 2128
    .end local v15           #e:Landroid/os/RemoteException;
    :cond_1
    if-gez p1, :cond_2

    .line 2129
    const/4 v12, 0x0

    goto :goto_0

    .line 2131
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    .line 2132
    .local v30, res:Landroid/content/ContentResolver;
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    move/from16 v0, p1

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    .line 2133
    .local v38, uri:Landroid/net/Uri;
    if-eqz v38, :cond_1b

    .line 2134
    const/16 v19, 0x0

    .line 2136
    .local v19, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_1
    const-string v2, "r"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v19

    .line 2137
    const/16 v31, 0x1

    .line 2142
    .local v31, sampleSize:I
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2145
    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2147
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v25, v2, 0x1

    .line 2148
    .local v25, nextWidth:I
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v24, v2, 0x1

    .line 2149
    .local v24, nextHeight:I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, p2

    if-le v0, v1, :cond_3

    move/from16 v0, v24

    move/from16 v1, p3

    if-le v0, v1, :cond_3

    .line 2150
    shl-int/lit8 v31, v31, 0x1

    .line 2151
    shr-int/lit8 v25, v25, 0x1

    .line 2152
    shr-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 2155
    :cond_3
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    move/from16 v0, v31

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2156
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2157
    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 2160
    .local v12, b:Landroid/graphics/Bitmap;
    if-eqz v12, :cond_6

    .line 2162
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_4

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p3

    if-eq v2, v0, :cond_6

    .line 2163
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v12, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v36

    .line 2166
    .local v36, tmp:Landroid/graphics/Bitmap;
    move-object/from16 v0, v36

    if-eq v0, v12, :cond_5

    .line 2167
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_12

    .line 2168
    :cond_5
    move-object/from16 v12, v36

    .line 2375
    .end local v36           #tmp:Landroid/graphics/Bitmap;
    :cond_6
    if-eqz v19, :cond_0

    .line 2376
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2377
    :catch_1
    move-exception v2

    goto/16 :goto_0

    .line 2173
    .end local v12           #b:Landroid/graphics/Bitmap;
    .end local v24           #nextHeight:I
    .end local v25           #nextWidth:I
    .end local v31           #sampleSize:I
    :catch_2
    move-exception v15

    .line 2174
    .local v15, e:Ljava/io/FileNotFoundException;
    const/4 v13, 0x0

    .line 2175
    .local v13, bm:Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 2176
    .local v9, art:[B
    const/16 v28, 0x0

    .line 2178
    .local v28, path:Ljava/lang/String;
    if-lez p1, :cond_a

    .line 2179
    :try_start_3
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "album"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "_data"

    aput-object v5, v4, v2

    const-string v5, "album_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2186
    .local v14, c:Landroid/database/Cursor;
    if-eqz v14, :cond_a

    .line 2187
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2188
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2189
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 2190
    .local v37, trackid:I
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v37

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    .line 2192
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 2195
    .end local v37           #trackid:I
    :cond_7
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 2196
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2197
    .local v8, album:Ljava/lang/String;
    if-eqz v8, :cond_8

    const-string v2, "<unknown>"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2198
    :cond_8
    const/16 p1, -0x1

    .line 2199
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2200
    const/4 v14, 0x0

    .line 2201
    const/4 v12, 0x0

    .line 2375
    if-eqz v19, :cond_0

    .line 2376
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 2377
    :catch_3
    move-exception v2

    goto/16 :goto_0

    .line 2204
    .end local v8           #album:Ljava/lang/String;
    :cond_9
    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2209
    .end local v14           #c:Landroid/database/Cursor;
    :cond_a
    if-eqz v38, :cond_c

    .line 2210
    new-instance v32, Landroid/media/MediaScanner;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2211
    .local v32, scanner:Landroid/media/MediaScanner;
    const/16 v29, 0x0

    .line 2213
    .local v29, pfd:Landroid/os/ParcelFileDescriptor;
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "r"

    move-object/from16 v0, v38

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v29

    .line 2214
    if-eqz v29, :cond_b

    .line 2215
    invoke-virtual/range {v29 .. v29}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v20

    .line 2216
    .local v20, fds:Ljava/io/FileDescriptor;
    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/media/MediaScanner;->extractAlbumArt(Ljava/io/FileDescriptor;)[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    move-result-object v9

    .line 2224
    .end local v20           #fds:Ljava/io/FileDescriptor;
    :cond_b
    if-eqz v29, :cond_c

    .line 2225
    :try_start_7
    invoke-virtual/range {v29 .. v29}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_14

    .line 2234
    .end local v29           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v32           #scanner:Landroid/media/MediaScanner;
    :cond_c
    :goto_2
    if-nez v9, :cond_f

    if-eqz v28, :cond_f

    .line 2235
    :try_start_8
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sExternalMediaUri:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2237
    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_data"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2240
    .restart local v14       #c:Landroid/database/Cursor;
    if-eqz v14, :cond_e

    .line 2241
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2242
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_d

    .line 2243
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 2245
    :cond_d
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2248
    .end local v14           #c:Landroid/database/Cursor;
    :cond_e
    const/16 v2, 0x2f

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v22

    .line 2249
    .local v22, lastSlash:I
    if-lez v22, :cond_f

    .line 2250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v4, v22, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "AlbumArt.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2251
    .local v10, artPath:Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2252
    .local v21, file:Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2253
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v9, v2, [B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2254
    const/16 v33, 0x0

    .line 2256
    .local v33, stream:Ljava/io/FileInputStream;
    :try_start_9
    new-instance v34, Ljava/io/FileInputStream;

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    .line 2257
    .end local v33           #stream:Ljava/io/FileInputStream;
    .local v34, stream:Ljava/io/FileInputStream;
    :try_start_a
    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/io/FileInputStream;->read([B)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1a

    .line 2262
    if-eqz v34, :cond_f

    .line 2263
    :try_start_b
    invoke-virtual/range {v34 .. v34}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_16

    .line 2274
    .end local v10           #artPath:Ljava/lang/String;
    .end local v21           #file:Ljava/io/File;
    .end local v22           #lastSlash:I
    .end local v34           #stream:Ljava/io/FileInputStream;
    :cond_f
    :goto_3
    if-eqz v9, :cond_11

    .line 2277
    :try_start_c
    new-instance v26, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2278
    .local v26, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v26

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2279
    const/4 v2, 0x1

    move-object/from16 v0, v26

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2280
    const/4 v2, 0x0

    array-length v3, v9

    move-object/from16 v0, v26

    invoke-static {v9, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2284
    :goto_4
    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v3, 0x140

    if-gt v2, v3, :cond_10

    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v3, 0x140

    if-le v2, v3, :cond_1a

    .line 2285
    :cond_10
    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v26

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2286
    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v26

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2287
    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v26

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_4

    .line 2293
    .end local v26           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v2

    .line 2297
    :cond_11
    :goto_5
    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_13

    if-eqz v13, :cond_13

    .line 2299
    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/albumthumbs/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 2301
    .local v21, file:Ljava/lang/String;
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new album will be created album_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2302
    invoke-static/range {v21 .. v21}, Lcom/htc/music/util/MusicUtils;->ensureFileExists(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result v2

    if-eqz v2, :cond_13

    .line 2304
    :try_start_e
    new-instance v27, Ljava/io/FileOutputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 2305
    .local v27, outstream:Ljava/io/OutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x4b

    move-object/from16 v0, v27

    invoke-virtual {v13, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v35

    .line 2307
    .local v35, success:Z
    invoke-virtual/range {v27 .. v27}, Ljava/io/OutputStream;->close()V

    .line 2308
    if-eqz v35, :cond_12

    .line 2309
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 2310
    .local v39, values:Landroid/content/ContentValues;
    const-string v2, "album_id"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2311
    const-string v2, "_data"

    move-object/from16 v0, v39

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2312
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f

    move-result-object v23

    .line 2313
    .local v23, newuri:Landroid/net/Uri;
    if-nez v23, :cond_12

    .line 2329
    :try_start_f
    invoke-virtual/range {v39 .. v39}, Landroid/content/ContentValues;->clear()V

    .line 2330
    const-string v2, "_data"

    move-object/from16 v0, v39

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    move/from16 v0, p1

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 2333
    .local v11, arturi:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f

    .line 2334
    const/16 v35, 0x1

    .line 2344
    .end local v11           #arturi:Landroid/net/Uri;
    .end local v23           #newuri:Landroid/net/Uri;
    .end local v39           #values:Landroid/content/ContentValues;
    :cond_12
    :goto_6
    if-nez v35, :cond_13

    .line 2345
    :try_start_10
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2346
    .local v18, f:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    .line 2357
    .end local v18           #f:Ljava/io/File;
    .end local v21           #file:Ljava/lang/String;
    .end local v27           #outstream:Ljava/io/OutputStream;
    .end local v35           #success:Z
    :cond_13
    :goto_7
    if-eqz v13, :cond_15

    .line 2358
    const/4 v2, 0x1

    :try_start_11
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v13, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v36

    .line 2360
    .restart local v36       #tmp:Landroid/graphics/Bitmap;
    move-object/from16 v0, v36

    if-eq v0, v13, :cond_14

    .line 2361
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 2362
    :cond_14
    move-object/from16 v13, v36

    .line 2375
    .end local v36           #tmp:Landroid/graphics/Bitmap;
    :cond_15
    if-eqz v19, :cond_16

    .line 2376
    :try_start_12
    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_18

    :cond_16
    :goto_8
    move-object v12, v13

    .line 2378
    goto/16 :goto_0

    .line 2218
    .restart local v29       #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v32       #scanner:Landroid/media/MediaScanner;
    :catch_5
    move-exception v2

    .line 2224
    if-eqz v29, :cond_c

    .line 2225
    :try_start_13
    invoke-virtual/range {v29 .. v29}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6

    goto/16 :goto_2

    .line 2227
    :catch_6
    move-exception v2

    goto/16 :goto_2

    .line 2219
    :catch_7
    move-exception v2

    .line 2224
    if-eqz v29, :cond_c

    .line 2225
    :try_start_14
    invoke-virtual/range {v29 .. v29}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    goto/16 :goto_2

    .line 2227
    :catch_8
    move-exception v2

    goto/16 :goto_2

    .line 2220
    :catch_9
    move-exception v17

    .line 2221
    .local v17, ex:Ljava/lang/Exception;
    :try_start_15
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getArtworkQuickWithWrite failed album_id= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 2224
    if-eqz v29, :cond_c

    .line 2225
    :try_start_16
    invoke-virtual/range {v29 .. v29}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a

    goto/16 :goto_2

    .line 2227
    :catch_a
    move-exception v2

    goto/16 :goto_2

    .line 2223
    .end local v17           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 2224
    if-eqz v29, :cond_17

    .line 2225
    :try_start_17
    invoke-virtual/range {v29 .. v29}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_15

    .line 2228
    :cond_17
    :goto_9
    :try_start_18
    throw v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 2374
    .end local v9           #art:[B
    .end local v13           #bm:Landroid/graphics/Bitmap;
    .end local v15           #e:Ljava/io/FileNotFoundException;
    .end local v28           #path:Ljava/lang/String;
    .end local v29           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v32           #scanner:Landroid/media/MediaScanner;
    :catchall_1
    move-exception v2

    .line 2375
    if-eqz v19, :cond_18

    .line 2376
    :try_start_19
    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_19

    .line 2378
    :cond_18
    :goto_a
    throw v2

    .line 2258
    .restart local v9       #art:[B
    .restart local v10       #artPath:Ljava/lang/String;
    .restart local v13       #bm:Landroid/graphics/Bitmap;
    .restart local v15       #e:Ljava/io/FileNotFoundException;
    .local v21, file:Ljava/io/File;
    .restart local v22       #lastSlash:I
    .restart local v28       #path:Ljava/lang/String;
    .restart local v33       #stream:Ljava/io/FileInputStream;
    :catch_b
    move-exception v17

    .line 2259
    .local v17, ex:Ljava/io/IOException;
    :goto_b
    const/4 v9, 0x0

    .line 2262
    if-eqz v33, :cond_f

    .line 2263
    :try_start_1a
    invoke-virtual/range {v33 .. v33}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_c

    goto/16 :goto_3

    .line 2265
    :catch_c
    move-exception v2

    goto/16 :goto_3

    .line 2261
    .end local v17           #ex:Ljava/io/IOException;
    :catchall_2
    move-exception v2

    .line 2262
    :goto_c
    if-eqz v33, :cond_19

    .line 2263
    :try_start_1b
    invoke-virtual/range {v33 .. v33}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_17

    .line 2266
    :cond_19
    :goto_d
    :try_start_1c
    throw v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 2291
    .end local v10           #artPath:Ljava/lang/String;
    .end local v21           #file:Ljava/io/File;
    .end local v22           #lastSlash:I
    .end local v33           #stream:Ljava/io/FileInputStream;
    .restart local v26       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_1a
    const/4 v2, 0x0

    :try_start_1d
    move-object/from16 v0, v26

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2292
    const/4 v2, 0x0

    array-length v3, v9

    move-object/from16 v0, v26

    invoke-static {v9, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_4

    move-result-object v13

    goto/16 :goto_5

    .line 2335
    .end local v26           #opts:Landroid/graphics/BitmapFactory$Options;
    .local v21, file:Ljava/lang/String;
    .restart local v23       #newuri:Landroid/net/Uri;
    .restart local v27       #outstream:Ljava/io/OutputStream;
    .restart local v35       #success:Z
    .restart local v39       #values:Landroid/content/ContentValues;
    :catch_d
    move-exception v16

    .line 2338
    .local v16, err:Ljava/lang/UnsupportedOperationException;
    :try_start_1e
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t update album art for album_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,file= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_f

    .line 2340
    const/16 v35, 0x0

    goto/16 :goto_6

    .line 2348
    .end local v16           #err:Ljava/lang/UnsupportedOperationException;
    .end local v23           #newuri:Landroid/net/Uri;
    .end local v27           #outstream:Ljava/io/OutputStream;
    .end local v35           #success:Z
    .end local v39           #values:Landroid/content/ContentValues;
    :catch_e
    move-exception v16

    .line 2349
    .local v16, err:Ljava/io/FileNotFoundException;
    :try_start_1f
    const-string v2, "[MusicUtils]"

    const-string v3, "error creating file"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 2350
    .end local v16           #err:Ljava/io/FileNotFoundException;
    :catch_f
    move-exception v16

    .line 2351
    .local v16, err:Ljava/io/IOException;
    const-string v2, "[MusicUtils]"

    const-string v3, "error creating file"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 2366
    .end local v9           #art:[B
    .end local v13           #bm:Landroid/graphics/Bitmap;
    .end local v15           #e:Ljava/io/FileNotFoundException;
    .end local v16           #err:Ljava/io/IOException;
    .end local v21           #file:Ljava/lang/String;
    .end local v28           #path:Ljava/lang/String;
    :catch_10
    move-exception v15

    .line 2367
    .local v15, e:Ljava/lang/NullPointerException;
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "faield to get fd from media provider, album_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    .line 2368
    const/4 v12, 0x0

    .line 2375
    if-eqz v19, :cond_0

    .line 2376
    :try_start_20
    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_11

    goto/16 :goto_0

    .line 2377
    :catch_11
    move-exception v2

    goto/16 :goto_0

    .line 2369
    .end local v15           #e:Ljava/lang/NullPointerException;
    :catch_12
    move-exception v15

    .line 2371
    .local v15, e:Ljava/lang/Exception;
    :try_start_21
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    .line 2372
    const/4 v12, 0x0

    .line 2375
    if-eqz v19, :cond_0

    .line 2376
    :try_start_22
    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_13

    goto/16 :goto_0

    .line 2377
    :catch_13
    move-exception v2

    goto/16 :goto_0

    .line 2381
    .end local v15           #e:Ljava/lang/Exception;
    .end local v19           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_1b
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2227
    .restart local v9       #art:[B
    .restart local v13       #bm:Landroid/graphics/Bitmap;
    .local v15, e:Ljava/io/FileNotFoundException;
    .restart local v19       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v28       #path:Ljava/lang/String;
    .restart local v29       #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v32       #scanner:Landroid/media/MediaScanner;
    :catch_14
    move-exception v2

    goto/16 :goto_2

    :catch_15
    move-exception v3

    goto/16 :goto_9

    .line 2265
    .end local v29           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v32           #scanner:Landroid/media/MediaScanner;
    .restart local v10       #artPath:Ljava/lang/String;
    .local v21, file:Ljava/io/File;
    .restart local v22       #lastSlash:I
    .restart local v34       #stream:Ljava/io/FileInputStream;
    :catch_16
    move-exception v2

    goto/16 :goto_3

    .end local v34           #stream:Ljava/io/FileInputStream;
    .restart local v33       #stream:Ljava/io/FileInputStream;
    :catch_17
    move-exception v3

    goto/16 :goto_d

    .line 2377
    .end local v10           #artPath:Ljava/lang/String;
    .end local v21           #file:Ljava/io/File;
    .end local v22           #lastSlash:I
    .end local v33           #stream:Ljava/io/FileInputStream;
    :catch_18
    move-exception v2

    goto/16 :goto_8

    .end local v9           #art:[B
    .end local v13           #bm:Landroid/graphics/Bitmap;
    .end local v15           #e:Ljava/io/FileNotFoundException;
    .end local v28           #path:Ljava/lang/String;
    :catch_19
    move-exception v3

    goto/16 :goto_a

    .line 2261
    .restart local v9       #art:[B
    .restart local v10       #artPath:Ljava/lang/String;
    .restart local v13       #bm:Landroid/graphics/Bitmap;
    .restart local v15       #e:Ljava/io/FileNotFoundException;
    .restart local v21       #file:Ljava/io/File;
    .restart local v22       #lastSlash:I
    .restart local v28       #path:Ljava/lang/String;
    .restart local v34       #stream:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v2

    move-object/from16 v33, v34

    .end local v34           #stream:Ljava/io/FileInputStream;
    .restart local v33       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_c

    .line 2258
    .end local v33           #stream:Ljava/io/FileInputStream;
    .restart local v34       #stream:Ljava/io/FileInputStream;
    :catch_1a
    move-exception v17

    move-object/from16 v33, v34

    .end local v34           #stream:Ljava/io/FileInputStream;
    .restart local v33       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_b
.end method

.method public static getAudioType(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "audioPath"

    .prologue
    .line 4494
    const/4 v0, 0x0

    .line 4497
    .local v0, currentAudioType:I
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->wasDRMFilePlaying(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4498
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getDrmType(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 4509
    :cond_0
    return v0
.end method

.method public static getCachedArtwork(Landroid/content/Context;ILandroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "context"
    .parameter "artIndex"
    .parameter "defaultArtwork"

    .prologue
    .line 1963
    const/4 v2, 0x0

    .line 1964
    .local v2, d:Landroid/graphics/drawable/Drawable;
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v8

    .line 1965
    :try_start_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    .line 1966
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1967
    if-nez v2, :cond_0

    .line 1968
    move-object v2, p2

    .line 1969
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1970
    .local v4, icon:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 1971
    .local v6, w:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1972
    .local v3, h:I
    invoke-static {p0, p1, v6, v3}, Lcom/htc/music/util/MusicUtils;->getArtworkQuick(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1973
    .local v1, b:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 1974
    new-instance v2, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;

    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    invoke-direct {v2, v1}, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1975
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v8

    .line 1977
    :try_start_1
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 1978
    .local v5, value:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_1

    .line 1979
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    :goto_0
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1986
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v3           #h:I
    .end local v4           #icon:Landroid/graphics/Bitmap;
    .end local v5           #value:Landroid/graphics/drawable/Drawable;
    .end local v6           #w:I
    :cond_0
    return-object v2

    .line 1966
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 1981
    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local v3       #h:I
    .restart local v4       #icon:Landroid/graphics/Bitmap;
    .restart local v5       #value:Landroid/graphics/drawable/Drawable;
    .restart local v6       #w:I
    :cond_1
    move-object v2, v5

    goto :goto_0

    .line 1983
    .end local v5           #value:Landroid/graphics/drawable/Drawable;
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7
.end method

.method public static getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;
    .locals 14
    .parameter "context"
    .parameter "drmConstraint"

    .prologue
    const/4 v11, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 3727
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDrmWarning(Landroid/content/Context;)I

    move-result v9

    if-nez v9, :cond_2

    .line 3728
    :cond_0
    const/4 v7, 0x0

    .line 3757
    :cond_1
    :goto_0
    return-object v7

    .line 3730
    :cond_2
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getCount()I

    move-result v8

    .line 3731
    .local v8, nCount:I
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getStartDate()Ljava/util/Date;

    move-result-object v4

    .line 3732
    .local v4, dateStart:Ljava/util/Date;
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getEndDate()Ljava/util/Date;

    move-result-object v3

    .line 3733
    .local v3, dateEnd:Ljava/util/Date;
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getInterval()J

    move-result-wide v5

    .line 3734
    .local v5, lInterval:J
    const/4 v7, 0x0

    .line 3735
    .local v7, message:Ljava/lang/String;
    const-wide/16 v9, -0x1

    cmp-long v9, v5, v9

    if-eqz v9, :cond_3

    .line 3739
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 3740
    .local v1, currentTime:Landroid/text/format/Time;
    if-eqz v1, :cond_1

    .line 3741
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 3742
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    add-long/2addr v9, v5

    invoke-direct {v2, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 3743
    .local v2, date:Ljava/util/Date;
    if-eqz v2, :cond_1

    .line 3744
    const v9, 0x7f0700b6

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 3746
    .end local v1           #currentTime:Landroid/text/format/Time;
    .end local v2           #date:Ljava/util/Date;
    :cond_3
    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 3747
    if-ne v8, v13, :cond_4

    .line 3748
    const v9, 0x7f0700b2

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 3749
    :cond_4
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDrmWarning(Landroid/content/Context;)I

    move-result v9

    if-ne v9, v11, :cond_1

    .line 3750
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3751
    .local v0, count:Ljava/lang/String;
    const v9, 0x7f0700b3

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v0, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3752
    goto :goto_0

    .line 3753
    .end local v0           #count:Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDrmWarning(Landroid/content/Context;)I

    move-result v9

    if-ne v9, v11, :cond_6

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    .line 3754
    const v9, 0x7f0700b4

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {p0, v4}, Lcom/htc/music/util/MusicUtils;->getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {p0, v3}, Lcom/htc/music/util/MusicUtils;->getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 3756
    :cond_6
    const-string v9, "[MusicUtils]"

    const-string v10, "DRM Constraint without Interval, Start Date, End Date and Count."

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected static getContentURIForPath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "path"

    .prologue
    .line 1590
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCurDMR(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 3881
    const-string v1, "[MusicUtils]"

    const-string v2, "getCurDMR"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3883
    const-string v1, "DLNA"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3885
    .local v0, Preferences:Landroid/content/SharedPreferences;
    const-string v1, "Render"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentAlbumId()I
    .locals 1

    .prologue
    .line 394
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 396
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 400
    :goto_0
    return v0

    .line 397
    :catch_0
    move-exception v0

    .line 400
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentArtistId()I
    .locals 1

    .prologue
    .line 404
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 406
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getArtistId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 410
    :goto_0
    return v0

    .line 407
    :catch_0
    move-exception v0

    .line 410
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentAudioId()I
    .locals 1

    .prologue
    .line 414
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 416
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 420
    :goto_0
    return v0

    .line 417
    :catch_0
    move-exception v0

    .line 420
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentPluginDescription()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3830
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 3832
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lcom/htc/music/IMediaPlaybackService;->getPluginDescription(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3839
    .local v0, e:Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-object v1

    .line 3833
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 3834
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3835
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentPluginDescription: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCurrentShuffleMode()I
    .locals 2

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, mode:I
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 427
    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 431
    :cond_0
    :goto_0
    return v0

    .line 428
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getDLNAArtwork(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "filepath"
    .parameter "icon"

    .prologue
    .line 2625
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDLNAThumb(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2628
    .local v2, thumb:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2629
    .local v0, defSize:I
    const/4 v1, 0x0

    .line 2636
    .local v1, fin:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    .line 2637
    const/4 v3, 0x1

    invoke-static {v2, v0, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2644
    :cond_0
    return-object v1
.end method

.method public static getDLNAAssetFileDescriptor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter "context"
    .parameter "filepath"

    .prologue
    const/4 v4, 0x0

    .line 2652
    const/4 v1, 0x0

    .line 2655
    .local v1, cpClient:Landroid/content/ContentProviderClient;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://dlna/images"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v0, v4

    .line 2679
    :cond_0
    :goto_0
    return-object v0

    .line 2660
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2662
    .local v3, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 2665
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string v5, "r"

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2674
    :goto_1
    if-nez v0, :cond_0

    move-object v0, v4

    .line 2679
    goto :goto_0

    .line 2666
    :catch_0
    move-exception v2

    .line 2668
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2669
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2671
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getDLNAThumb(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "filepath"

    .prologue
    const/4 v6, 0x0

    .line 2685
    const/4 v2, 0x0

    .line 2688
    .local v2, cpClient:Landroid/content/ContentProviderClient;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "content://dlna/images"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v1, v6

    .line 2752
    :cond_0
    :goto_0
    return-object v1

    .line 2694
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2700
    .local v5, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 2701
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string v7, "r"

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2713
    const/4 v1, 0x0

    .line 2714
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 2715
    .local v4, pfDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2717
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2718
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2719
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2723
    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2724
    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 2725
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2728
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2738
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2749
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #pfDescriptor:Landroid/os/ParcelFileDescriptor;
    :cond_3
    :goto_1
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 2750
    const/4 v2, 0x0

    move-object v1, v6

    .line 2752
    goto :goto_0

    .line 2744
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "date"

    .prologue
    .line 3709
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3710
    .local v0, format:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3711
    const-string v0, "MM-dd-yyyy"

    .line 3713
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "time_12_24"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3714
    .local v3, setting:Ljava/lang/String;
    const-string v4, "24"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3716
    .local v2, is24Hour:Z
    if-eqz v2, :cond_1

    .line 3717
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kk:mm:ss"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3722
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3723
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 3719
    .end local v1           #formatter:Ljava/text/SimpleDateFormat;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hh:mm:ss a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 3135
    const/16 v0, 0xb

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "content_offset"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "content_id"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "content_boundary_offset"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "delivery_type"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "mime_type"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "message_type"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "existence"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "date_added"

    aput-object v1, v2, v0

    .local v2, cols:[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 3142
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3143
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method public static getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 12
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v11, 0x1

    const/4 v7, -0x1

    .line 3147
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDrmStatus uri= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3148
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 3149
    .local v6, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    .line 3150
    .local v3, drmCursor:Landroid/database/Cursor;
    if-nez v3, :cond_0

    .line 3151
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cursor = null, uri= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3237
    :goto_0
    return v7

    .line 3155
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 3156
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3157
    const/4 v3, 0x0

    .line 3158
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Count = 0, uri= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3162
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3163
    const/4 v7, 0x0

    .line 3165
    .local v7, status:I
    const-string v8, "message_type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3167
    .local v5, messageType:Ljava/lang/String;
    const-string v8, "delivery_type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 3169
    .local v1, deliveryType:I
    const-string v8, "_data"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3170
    .local v0, data:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3171
    .local v2, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deliveryType= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3174
    packed-switch v1, :pswitch_data_0

    .line 3230
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No such Delivery Type= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3231
    const/4 v7, -0x1

    .line 3235
    :goto_1
    :pswitch_0
    :sswitch_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3236
    const/4 v3, 0x0

    .line 3237
    goto :goto_0

    .line 3180
    :pswitch_1
    invoke-static {v6, p1, v11}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v2

    .line 3182
    if-nez v2, :cond_2

    .line 3183
    const-string v8, "[MusicUtils]"

    const-string v9, "COMBINED DELIVERY: No rights"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3184
    const/4 v7, 0x1

    goto :goto_1

    .line 3186
    :cond_2
    invoke-static {v6, v2, p1}, Landroid/provider/DrmStore;->checkExpiration(Landroid/content/ContentResolver;Landroid/provider/DrmStore$DrmConstraint;Landroid/net/Uri;)I

    move-result v4

    .line 3187
    .local v4, error:I
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkExpiration retCode= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3188
    sparse-switch v4, :sswitch_data_0

    .line 3196
    const/4 v7, 0x1

    goto :goto_1

    .line 3192
    :sswitch_1
    const/4 v7, 0x4

    .line 3193
    goto :goto_1

    .line 3204
    .end local v4           #error:I
    :pswitch_2
    invoke-static {v6, p1, v11}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v2

    .line 3206
    if-nez v2, :cond_3

    .line 3207
    const-string v8, "[MusicUtils]"

    const-string v9, "DRM SEPARATE DELIVERY: No rights"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3208
    const/4 v7, 0x3

    goto :goto_1

    .line 3210
    :cond_3
    invoke-static {v6, v2, p1}, Landroid/provider/DrmStore;->checkExpiration(Landroid/content/ContentResolver;Landroid/provider/DrmStore$DrmConstraint;Landroid/net/Uri;)I

    move-result v4

    .line 3211
    .restart local v4       #error:I
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkExpiration retCode= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3212
    packed-switch v4, :pswitch_data_1

    .line 3223
    :pswitch_3
    const/4 v7, 0x2

    goto :goto_1

    .line 3216
    :pswitch_4
    const/4 v7, 0x4

    .line 3217
    goto :goto_1

    .line 3219
    :pswitch_5
    const/4 v7, 0x3

    .line 3220
    goto :goto_1

    .line 3174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 3188
    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch

    .line 3212
    :pswitch_data_1
    .packed-switch -0x5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static getDrmTrackSize(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 3095
    const/4 v8, -0x1

    .line 3096
    .local v8, sizeInBytes:I
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v0, "_size"

    aput-object v0, v2, v9

    const/4 v0, 0x2

    const-string v1, "_data"

    aput-object v1, v2, v0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3099
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v9, :cond_0

    .line 3100
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3101
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 3102
    .local v7, i:I
    if-ltz v7, :cond_0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 3103
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 3106
    .end local v7           #i:I
    :cond_0
    if-eqz v6, :cond_1

    .line 3107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3108
    const/4 v6, 0x0

    .line 3110
    :cond_1
    return v8
.end method

.method public static getDrmType(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 6
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 3241
    const/4 v0, 0x0

    .line 3243
    .local v0, deliveryType:I
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    .line 3244
    .local v2, drmCursor:Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 3245
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cursor = null, uri= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 3264
    .end local v0           #deliveryType:I
    .local v1, deliveryType:I
    :goto_0
    return v1

    .line 3249
    .end local v1           #deliveryType:I
    .restart local v0       #deliveryType:I
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 3250
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3251
    const/4 v2, 0x0

    .line 3252
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Count = 0, uri= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 3253
    .end local v0           #deliveryType:I
    .restart local v1       #deliveryType:I
    goto :goto_0

    .line 3256
    .end local v1           #deliveryType:I
    .restart local v0       #deliveryType:I
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3258
    const-string v3, "delivery_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 3260
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deliveryType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3262
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3263
    const/4 v2, 0x0

    move v1, v0

    .line 3264
    .end local v0           #deliveryType:I
    .restart local v1       #deliveryType:I
    goto :goto_0
.end method

.method public static getDrmType(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 3268
    const/4 v7, 0x0

    .line 3270
    .local v7, deliveryType:I
    const-string v3, "_data=?"

    .line 3271
    .local v3, where:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 3275
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    const-string v0, "delivery_type"

    aput-object v0, v2, v5

    .line 3278
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3279
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 3280
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cursor = null, data= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 3296
    .end local v7           #deliveryType:I
    .local v8, deliveryType:I
    :goto_0
    return v8

    .line 3284
    .end local v8           #deliveryType:I
    .restart local v7       #deliveryType:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 3285
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3286
    const/4 v6, 0x0

    .line 3287
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Count = 0, data= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 3288
    .end local v7           #deliveryType:I
    .restart local v8       #deliveryType:I
    goto :goto_0

    .line 3291
    .end local v8           #deliveryType:I
    .restart local v7       #deliveryType:I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3292
    const-string v0, "delivery_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 3293
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deliveryType= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3294
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3295
    const/4 v6, 0x0

    move v8, v7

    .line 3296
    .end local v7           #deliveryType:I
    .restart local v8       #deliveryType:I
    goto :goto_0
.end method

.method private static getFileSize(Ljava/io/File;)J
    .locals 9
    .parameter "file"

    .prologue
    .line 512
    const-wide/16 v5, 0x0

    .line 514
    .local v5, size:J
    if-nez p0, :cond_0

    .line 515
    const-wide/16 v7, 0x0

    .line 524
    :goto_0
    return-wide v7

    .line 516
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 517
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v7

    goto :goto_0

    .line 519
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 520
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 521
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 522
    .local v1, currentFile:Ljava/io/File;
    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 521
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #currentFile:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    move-wide v7, v5

    .line 524
    goto :goto_0
.end method

.method public static getIntPref(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 2759
    const-string v1, "com.htc.music"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2761
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static declared-synchronized getIsInternalEnough()Z
    .locals 2

    .prologue
    .line 454
    const-class v0, Lcom/htc/music/util/MusicUtils;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getLaunchAmazonIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 4277
    const-string v0, "android.intent.action.MAIN"

    .line 4278
    .local v0, ACTION_LAUNCH:Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.amazon.mp3"

    const-string v5, "com.amazon.mp3.client.activity.LauncherActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4279
    .local v2, Mp3Component:Landroid/content/ComponentName;
    const/high16 v1, 0x1000

    .line 4281
    .local v1, FLAG_ACTIVITY_NEW_TASK:I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 4282
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4283
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4287
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4288
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4290
    return-object v3
.end method

.method public static getLaunchVMMIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 4654
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.vmm.music.ListView"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4655
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method

.method public static getLaunchVerizonMODIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 4266
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pv.verizon.mod.ACTION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4267
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "getContent"

    const-string v2, "wh|track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4269
    return-object v0
.end method

.method public static getMarkedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "context"
    .parameter "text"
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0x21

    const/4 v6, -0x1

    .line 4393
    if-nez p0, :cond_1

    .line 4409
    :cond_0
    :goto_0
    return-object v2

    .line 4394
    :cond_1
    if-eqz p1, :cond_0

    .line 4395
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4396
    .local v2, markedString:Landroid/text/SpannableString;
    if-eqz p2, :cond_0

    .line 4399
    const/4 v1, -0x1

    .line 4400
    .local v1, index:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 4401
    .local v0, filterLength:I
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v6, :cond_0

    .line 4402
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v5, v0, v1

    invoke-virtual {v2, v4, v1, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 4405
    const-string v4, "input_text_selection_highlight"

    const v5, 0x20a001b

    invoke-static {p0, v4, v5}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinColorResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 4406
    .local v3, textviewHightlightColorId:I
    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    add-int v5, v0, v1

    invoke-virtual {v2, v4, v1, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static getPluginArtWorkPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 2055
    :try_start_0
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2056
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2065
    :cond_0
    :goto_0
    return-object v1

    .line 2060
    :catch_0
    move-exception v0

    .line 2061
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2063
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2064
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "albumId"
    .parameter "artistId"
    .parameter "genreId"
    .parameter "composerId"

    .prologue
    .line 3669
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3670
    .local v3, where:Ljava/lang/StringBuilder;
    const-string v4, "title != \'\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3671
    if-eqz p0, :cond_0

    .line 3672
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND album_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3676
    :cond_0
    if-eqz p1, :cond_1

    .line 3677
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND artist_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3680
    :cond_1
    if-eqz p3, :cond_2

    .line 3681
    invoke-static {p3}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v2

    .line 3682
    .local v2, unknown:Z
    if-eqz v2, :cond_4

    .line 3683
    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3684
    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 3691
    .end local v2           #unknown:Z
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 3692
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v0, v4

    .line 3693
    .local v0, gid:J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_5

    .line 3694
    const-string v4, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3700
    .end local v0           #gid:J
    :cond_3
    :goto_1
    const-string v4, " AND is_music>=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3702
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 3686
    .restart local v2       #unknown:Z
    :cond_4
    const-string v4, "\'"

    const-string v5, "\'\'"

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 3687
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND composer = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3696
    .end local v2           #unknown:Z
    .restart local v0       #gid:J
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND _id IN (SELECT audio_id FROM audio_genres_map WHERE genre_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static getReflectionBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "resource"
    .parameter "height"

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 4189
    if-nez p0, :cond_0

    .line 4190
    const-string v0, "[MusicUtils]"

    const-string v1, "getReflectionBitmap()...resource is null..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4204
    :goto_0
    return-object v7

    .line 4194
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 4195
    const-string v0, "[MusicUtils]"

    const-string v1, "resource.getHeight() <= height!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4199
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 4200
    .local v5, matrix:Landroid/graphics/Matrix;
    const/high16 v0, 0x3f80

    const/high16 v2, -0x4080

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 4201
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int v2, v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move-object v0, p0

    move v4, p1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 4204
    .local v7, bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static getReflectionBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Xfermode;Landroid/graphics/Shader;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "art"
    .parameter "reflectionHeight"
    .parameter "mode"
    .parameter "gradient"

    .prologue
    .line 4687
    sget-object v5, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    monitor-enter v5

    .line 4688
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v6, p1

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4690
    .local v2, cleanAlbum:Landroid/graphics/Bitmap;
    const-string v4, "[MusicUtils]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getReflectionBitmap:cleanAlbum size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4692
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 4693
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4694
    sget-object v4, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4695
    const/4 v4, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p0, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 4697
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v4, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 4698
    .local v0, bsh:Landroid/graphics/BitmapShader;
    new-instance v3, Landroid/graphics/ComposeShader;

    invoke-direct {v3, v0, p3, p2}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V

    .line 4699
    .local v3, reflectionShader:Landroid/graphics/ComposeShader;
    const/high16 v4, 0x3f80

    const/high16 v6, -0x4080

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4701
    sget-object v4, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    const/16 v6, 0x40

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4702
    sget-object v4, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4703
    new-instance v4, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, p1

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v6, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4704
    sget-object v4, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4706
    if-eqz p0, :cond_0

    .line 4707
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4710
    :cond_0
    monitor-exit v5

    return-object v2

    .line 4711
    .end local v0           #bsh:Landroid/graphics/BitmapShader;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #cleanAlbum:Landroid/graphics/Bitmap;
    .end local v3           #reflectionShader:Landroid/graphics/ComposeShader;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static getReflectionBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "resource"
    .parameter "height"

    .prologue
    .line 4208
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->createBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4209
    .local v0, photo:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/htc/music/util/MusicUtils;->getReflectionBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4798
    if-nez p0, :cond_0

    .line 4799
    const-string v4, "[MusicUtils]"

    const-string v5, "context can\'t be null!!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4800
    const/4 v3, 0x0

    .line 4828
    :goto_0
    return-object v3

    .line 4803
    :cond_0
    const-string v4, "[MusicUtils]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getShareMusicText:szTrackName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",szAlbumName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",szArtistName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4806
    if-nez p2, :cond_1

    const-string v0, "<unknown>"

    .line 4807
    .local v0, albumName:Ljava/lang/String;
    :goto_1
    if-nez p3, :cond_2

    const-string v1, "<unknown>"

    .line 4809
    .local v1, artistName:Ljava/lang/String;
    :goto_2
    const/4 v3, 0x0

    .line 4811
    .local v3, result:Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 4812
    const v4, 0x7f070109

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4813
    .local v2, f:Ljava/lang/String;
    const-string v4, "%1s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4814
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "%1s"

    invoke-virtual {v4, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%2s"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%3s"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .end local v0           #albumName:Ljava/lang/String;
    .end local v1           #artistName:Ljava/lang/String;
    .end local v2           #f:Ljava/lang/String;
    .end local v3           #result:Ljava/lang/String;
    :cond_1
    move-object v0, p2

    .line 4806
    goto :goto_1

    .restart local v0       #albumName:Ljava/lang/String;
    :cond_2
    move-object v1, p3

    .line 4807
    goto :goto_2

    .line 4817
    .restart local v1       #artistName:Ljava/lang/String;
    .restart local v2       #f:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    aput-object v0, v4, v8

    aput-object v1, v4, v9

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 4820
    .end local v2           #f:Ljava/lang/String;
    :cond_4
    const v4, 0x7f07010a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4821
    .restart local v2       #f:Ljava/lang/String;
    const-string v4, "%2s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4822
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "%2s"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%3s"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 4824
    :cond_5
    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public static getSongListForAlbum(Landroid/content/Context;I)[I
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 855
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 858
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 860
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 863
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 864
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 865
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 866
    const/4 v6, 0x0

    .line 869
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForAlbum(Landroid/content/Context;III)[I
    .locals 12
    .parameter "context"
    .parameter "type"
    .parameter "id"
    .parameter "albumId"

    .prologue
    .line 972
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 976
    .local v2, ccols:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 977
    .local v6, artistId:Ljava/lang/String;
    const/4 v9, 0x0

    .line 978
    .local v9, genreId:Ljava/lang/String;
    const/4 v7, 0x0

    .line 980
    .local v7, composerId:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 989
    :goto_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v9, v7}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 990
    .local v11, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 993
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 994
    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v10

    .line 995
    .local v10, list:[I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 996
    const/4 v8, 0x0

    .line 1000
    .end local v10           #list:[I
    :goto_1
    return-object v10

    .line 982
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v11           #where:Ljava/lang/String;
    :pswitch_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 983
    goto :goto_0

    .line 985
    :pswitch_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 1000
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v11       #where:Ljava/lang/String;
    :cond_0
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1

    .line 980
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSongListForAlbum(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 8
    .parameter "context"
    .parameter "where"

    .prologue
    .line 3586
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 3589
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "album COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    .line 3591
    .local v5, mSortOrder:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3594
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 3595
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 3596
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3597
    const/4 v6, 0x0

    .line 3600
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForAlbumAndPrepare(Landroid/content/Context;I)[I
    .locals 11
    .parameter "context"
    .parameter "id"

    .prologue
    .line 698
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 701
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 703
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 706
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 707
    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v10

    .line 708
    .local v10, list:[I
    array-length v9, v10

    .line 709
    .local v9, len:I
    new-array v6, v9, [I

    .line 710
    .local v6, albumlist:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 711
    aput p1, v6, v8

    .line 710
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 712
    :cond_0
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList([I)V

    .line 713
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 714
    const/4 v7, 0x0

    .line 717
    .end local v6           #albumlist:[I
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v10           #list:[I
    :goto_1
    return-object v10

    :cond_1
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForAlbumAndPrepare(Landroid/content/Context;Ljava/lang/String;I)[I
    .locals 11
    .parameter "context"
    .parameter "where"
    .parameter "id"

    .prologue
    .line 3624
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 3627
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "album COLLATE NOCASE ASC , track COLLATE NOCASE ASC"

    .line 3629
    .local v5, mSortOrder:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3632
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 3633
    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v10

    .line 3634
    .local v10, list:[I
    array-length v9, v10

    .line 3635
    .local v9, len:I
    new-array v6, v9, [I

    .line 3636
    .local v6, albumlist:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 3637
    aput p2, v6, v8

    .line 3636
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3638
    :cond_0
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList([I)V

    .line 3639
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3640
    const/4 v7, 0x0

    .line 3643
    .end local v6           #albumlist:[I
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v10           #list:[I
    :goto_1
    return-object v10

    :cond_1
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method private static getSongListForAllPlaylistAndPrepare(Landroid/content/Context;)[I
    .locals 20
    .parameter "context"

    .prologue
    .line 721
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    .line 724
    .local v3, ccolsPlaylist:[Ljava/lang/String;
    const/4 v1, 0x3

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "audio_id"

    aput-object v2, v10, v1

    const/4 v1, 0x1

    const-string v2, "album_id"

    aput-object v2, v10, v1

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v10, v1

    .line 729
    .local v10, ccols:[Ljava/lang/String;
    const/16 v16, 0x0

    .line 730
    .local v16, playlistCursor:Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 731
    .local v18, result:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 732
    .local v12, cursors:[Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 734
    .local v14, len:I
    :try_start_0
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "name"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 737
    if-eqz v16, :cond_4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 738
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 739
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 740
    const-string v1, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 741
    .local v11, colidx:I
    new-array v12, v14, [Landroid/database/Cursor;

    .line 742
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v14, :cond_0

    .line 743
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 744
    .local v17, plid:I
    const-string v1, "external"

    move/from16 v0, v17

    int-to-long v4, v0

    invoke-static {v1, v4, v5}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "play_order"

    move-object/from16 v4, p0

    move-object v6, v10

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    aput-object v1, v12, v13

    .line 747
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    .line 742
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 749
    .end local v17           #plid:I
    :cond_0
    new-instance v19, Landroid/database/MergeCursor;

    move-object/from16 v0, v19

    invoke-direct {v0, v12}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    .end local v18           #result:Landroid/database/Cursor;
    .local v19, result:Landroid/database/Cursor;
    if-eqz v19, :cond_3

    .line 751
    :try_start_1
    invoke-static/range {v19 .. v19}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v15

    .line 752
    .local v15, list:[I
    invoke-static/range {v19 .. v19}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 757
    if-eqz v16, :cond_1

    .line 758
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 759
    const/16 v16, 0x0

    .line 761
    :cond_1
    if-eqz v19, :cond_e

    .line 762
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 763
    const/16 v18, 0x0

    .line 765
    .end local v19           #result:Landroid/database/Cursor;
    .restart local v18       #result:Landroid/database/Cursor;
    :goto_1
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v14, :cond_d

    .line 766
    aget-object v1, v12, v13

    if-eqz v1, :cond_2

    .line 767
    aget-object v1, v12, v13

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 768
    const/4 v1, 0x0

    aput-object v1, v12, v13

    .line 765
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .end local v15           #list:[I
    .end local v18           #result:Landroid/database/Cursor;
    .restart local v19       #result:Landroid/database/Cursor;
    :cond_3
    move-object/from16 v18, v19

    .line 757
    .end local v11           #colidx:I
    .end local v13           #i:I
    .end local v19           #result:Landroid/database/Cursor;
    .restart local v18       #result:Landroid/database/Cursor;
    :cond_4
    if-eqz v16, :cond_5

    .line 758
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 759
    const/16 v16, 0x0

    .line 761
    :cond_5
    if-eqz v18, :cond_6

    .line 762
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 763
    const/16 v18, 0x0

    .line 765
    :cond_6
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_3
    if-ge v13, v14, :cond_c

    .line 766
    aget-object v1, v12, v13

    if-eqz v1, :cond_7

    .line 767
    aget-object v1, v12, v13

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 768
    const/4 v1, 0x0

    aput-object v1, v12, v13

    .line 765
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 757
    .end local v13           #i:I
    :catchall_0
    move-exception v1

    :goto_4
    if-eqz v16, :cond_8

    .line 758
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 759
    const/16 v16, 0x0

    .line 761
    :cond_8
    if-eqz v18, :cond_9

    .line 762
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 763
    const/16 v18, 0x0

    .line 765
    :cond_9
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_5
    if-ge v13, v14, :cond_b

    .line 766
    aget-object v2, v12, v13

    if-eqz v2, :cond_a

    .line 767
    aget-object v2, v12, v13

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 768
    const/4 v2, 0x0

    aput-object v2, v12, v13

    .line 765
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_b
    throw v1

    .line 772
    :cond_c
    sget-object v15, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    :cond_d
    return-object v15

    .line 757
    .end local v18           #result:Landroid/database/Cursor;
    .restart local v11       #colidx:I
    .restart local v19       #result:Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    move-object/from16 v18, v19

    .end local v19           #result:Landroid/database/Cursor;
    .restart local v18       #result:Landroid/database/Cursor;
    goto :goto_4

    .end local v18           #result:Landroid/database/Cursor;
    .restart local v15       #list:[I
    .restart local v19       #result:Landroid/database/Cursor;
    :cond_e
    move-object/from16 v18, v19

    .end local v19           #result:Landroid/database/Cursor;
    .restart local v18       #result:Landroid/database/Cursor;
    goto :goto_1
.end method

.method public static getSongListForArtist(Landroid/content/Context;I)[I
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 819
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 822
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 824
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "album COLLATE NOCASE ASC,track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 827
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 828
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 829
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 830
    const/4 v6, 0x0

    .line 833
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForArtist(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 8
    .parameter "context"
    .parameter "where"

    .prologue
    .line 3604
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 3608
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "artist COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    .line 3611
    .local v5, mSortOrder:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3614
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 3615
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 3616
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3617
    const/4 v6, 0x0

    .line 3620
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForArtistAndPrepare(Landroid/content/Context;I)[I
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 623
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 626
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 628
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "album COLLATE NOCASE ASC,track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 631
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 632
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 633
    .local v7, list:[I
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 634
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 635
    const/4 v6, 0x0

    .line 638
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForArtistAndPrepare(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 8
    .parameter "context"
    .parameter "where"

    .prologue
    .line 3647
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 3651
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "artist COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    .line 3654
    .local v5, mSortOrder:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3657
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 3658
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 3659
    .local v7, list:[I
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 3660
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3661
    const/4 v6, 0x0

    .line 3664
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForComposer(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 9
    .parameter "context"
    .parameter "name"

    .prologue
    .line 943
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 947
    .local v2, ccols:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 948
    .local v8, where:Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    const-string v0, "is_music>=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 958
    :goto_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 961
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 962
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 963
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 964
    const/4 v6, 0x0

    .line 967
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 953
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "composer = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 967
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_1
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForComposerAndPrepare(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 9
    .parameter "context"
    .parameter "name"

    .prologue
    .line 669
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 673
    .local v2, ccols:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    .local v8, where:Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    const-string v0, "is_music>=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 684
    :goto_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 687
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 688
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 689
    .local v7, list:[I
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 690
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 691
    const/4 v6, 0x0

    .line 694
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 679
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "composer = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 694
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_1
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForCursor(Landroid/database/Cursor;)[I
    .locals 5
    .parameter "cursor"

    .prologue
    .line 556
    if-nez p0, :cond_1

    .line 557
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    .line 570
    :cond_0
    return-object v3

    .line 559
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 560
    .local v2, len:I
    new-array v3, v2, [I

    .line 561
    .local v3, list:[I
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 562
    const-string v4, "audio_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 563
    .local v0, colidx:I
    if-gez v0, :cond_2

    .line 564
    const-string v4, "_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 566
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 567
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v3, v1

    .line 568
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 566
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getSongListForGenre(Landroid/content/Context;I)[I
    .locals 11
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 892
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "album_id"

    aput-object v0, v2, v1

    .line 895
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "album COLLATE NOCASE ASC, track"

    .line 897
    .local v5, sortOrder:Ljava/lang/String;
    const-string v0, "%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v4, v0, v4}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 898
    .local v8, where:Ljava/lang/String;
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSongListForGenre,Query : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const/4 v6, 0x0

    .line 900
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 901
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 908
    :goto_0
    if-eqz v6, :cond_1

    .line 909
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 910
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 911
    const/4 v6, 0x0

    .line 914
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 904
    :cond_0
    const-string v0, "external"

    int-to-long v9, p1

    invoke-static {v0, v9, v10}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 914
    :cond_1
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForGenreAndPrepare(Landroid/content/Context;I)[I
    .locals 11
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 642
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "album_id"

    aput-object v0, v2, v1

    .line 645
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "album COLLATE NOCASE ASC, track"

    .line 647
    .local v5, sortOrder:Ljava/lang/String;
    const-string v0, "%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v4, v0, v4}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 648
    .local v8, where:Ljava/lang/String;
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSongListForGenreAndPrepare,Query : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 651
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 658
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v6, :cond_1

    .line 659
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 660
    .local v7, list:[I
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 661
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 662
    const/4 v6, 0x0

    .line 665
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 654
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    const-string v0, "external"

    int-to-long v9, p1

    invoke-static {v0, v9, v10}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 665
    :cond_1
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForPlaylist(Landroid/content/Context;J)[I
    .locals 8
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v3, 0x0

    .line 1005
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "audio_id"

    aput-object v1, v2, v0

    .line 1008
    .local v2, ccols:[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "play_order"

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1011
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1012
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 1013
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1014
    const/4 v6, 0x0

    .line 1017
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForPlaylistAndPrepare(Landroid/content/Context;J)[I
    .locals 8
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v3, 0x0

    .line 776
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "audio_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 779
    .local v2, ccols:[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "play_order"

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 782
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 783
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 784
    .local v7, list:[I
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 785
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 786
    const/4 v6, 0x0

    .line 789
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 2773
    const-string v1, "com.htc.music"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2775
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTabActivityResult(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "def"

    .prologue
    .line 3357
    const-string v0, "result"

    invoke-static {p0, v0, p1}, Lcom/htc/music/util/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getTabActivitySelectedId(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3385
    const-string v9, "selectedid"

    const-string v10, ""

    invoke-static {p0, v9, v10}, Lcom/htc/music/util/MusicUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3386
    .local v7, q:Ljava/lang/String;
    const/4 v5, 0x0

    .line 3387
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 3388
    const-string v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3389
    .local v1, entries:[Ljava/lang/String;
    array-length v4, v1

    .line 3390
    .local v4, len:I
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3391
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 3393
    aget-object v8, v1, v2

    .line 3394
    .local v8, revhex:Ljava/lang/String;
    const/4 v6, 0x0

    .line 3395
    .local v6, n:I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_2

    .line 3396
    shl-int/lit8 v6, v6, 0x4

    .line 3397
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3398
    .local v0, c:C
    const/16 v9, 0x30

    if-lt v0, v9, :cond_0

    const/16 v9, 0x39

    if-gt v0, v9, :cond_0

    .line 3399
    add-int/lit8 v9, v0, -0x30

    add-int/2addr v6, v9

    .line 3395
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3400
    :cond_0
    const/16 v9, 0x61

    if-lt v0, v9, :cond_1

    const/16 v9, 0x66

    if-gt v0, v9, :cond_1

    .line 3401
    add-int/lit8 v9, v0, 0xa

    add-int/lit8 v9, v9, -0x61

    add-int/2addr v6, v9

    goto :goto_2

    .line 3404
    :cond_1
    const/4 v4, 0x0

    .line 3408
    .end local v0           #c:C
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3391
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3414
    .end local v1           #entries:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #len:I
    .end local v6           #n:I
    .end local v8           #revhex:Ljava/lang/String;
    :cond_3
    return-object v5
.end method

.method public static getTrack(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 3300
    const/4 v7, 0x0

    .line 3301
    .local v7, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3303
    .local v2, cols:[Ljava/lang/String;
    const/16 v0, 0xd

    new-array v2, v0, [Ljava/lang/String;

    .end local v2           #cols:[Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "artist"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "album"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "mime_type"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "album_id"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "artist_id"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "composer"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "year"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "track"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    const-string v1, "is_music"

    aput-object v1, v2, v0

    const/16 v0, 0xc

    const-string v1, "duration"

    aput-object v1, v2, v0

    .line 3324
    .restart local v2       #cols:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 3326
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3327
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 3332
    return-object v6

    .line 3329
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public static getTrackSize(Landroid/content/Context;I)I
    .locals 10
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 3114
    const/4 v8, -0x1

    .line 3115
    .local v8, sizeInBytes:I
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v0, "_data"

    aput-object v0, v2, v9

    const/4 v0, 0x2

    const-string v3, "_size"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3119
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v9, :cond_0

    .line 3120
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3121
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 3122
    .local v7, i:I
    if-ltz v7, :cond_0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 3123
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 3126
    .end local v7           #i:I
    :cond_0
    if-eqz v6, :cond_1

    .line 3127
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3128
    const/4 v6, 0x0

    .line 3130
    :cond_1
    return v8
.end method

.method public static hideDatabaseError(Landroid/app/Activity;)V
    .locals 3
    .parameter "a"

    .prologue
    const/16 v2, 0x8

    .line 1575
    const v1, 0x7f0800a3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1576
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1577
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1579
    :cond_0
    const v1, 0x7f0800a2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1580
    if-eqz v0, :cond_1

    .line 1581
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1583
    :cond_1
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1584
    if-eqz v0, :cond_2

    .line 1585
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1587
    :cond_2
    return-void
.end method

.method public static initAlbumArtCache()V
    .locals 3

    .prologue
    .line 1934
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getMediaMountedCount()I

    move-result v1

    .line 1935
    .local v1, id:I
    sget v2, Lcom/htc/music/util/MusicUtils;->sArtCacheId:I

    if-eq v1, v2, :cond_0

    .line 1936
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->clearAlbumArtCache()V

    .line 1937
    sput v1, Lcom/htc/music/util/MusicUtils;->sArtCacheId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1942
    :cond_0
    :goto_0
    return-void

    .line 1939
    :catch_0
    move-exception v0

    .line 1940
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static intToFloatArray([I)[F
    .locals 3
    .parameter "intArray"

    .prologue
    .line 4607
    if-eqz p0, :cond_0

    array-length v2, p0

    if-gtz v2, :cond_2

    .line 4608
    :cond_0
    const/4 v0, 0x0

    .line 4616
    :cond_1
    return-object v0

    .line 4611
    :cond_2
    array-length v2, p0

    new-array v0, v2, [F

    .line 4612
    .local v0, floatArray:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 4613
    aget v2, p0, v1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 4612
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static intToFloatArray([II)[F
    .locals 4
    .parameter "intArray"
    .parameter "divider"

    .prologue
    .line 4620
    if-eqz p0, :cond_0

    array-length v2, p0

    if-gtz v2, :cond_2

    .line 4621
    :cond_0
    const/4 v0, 0x0

    .line 4629
    :cond_1
    return-object v0

    .line 4624
    :cond_2
    array-length v2, p0

    new-array v0, v2, [F

    .line 4625
    .local v0, floatArray:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 4626
    aget v2, p0, v1

    int-to-float v2, v2

    int-to-float v3, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 4625
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isConnectionFail(Landroid/content/Context;)Z
    .locals 6
    .parameter "cotext"

    .prologue
    .line 4633
    const/4 v2, 0x1

    .line 4634
    .local v2, isConnectionFail:Z
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 4637
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_2

    .line 4638
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 4639
    .local v0, activeNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4640
    :cond_0
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network is not connected : activeNetworkInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4641
    const/4 v2, 0x1

    .line 4649
    .end local v0           #activeNetworkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 4643
    .restart local v0       #activeNetworkInfo:Landroid/net/NetworkInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 4646
    .end local v0           #activeNetworkInfo:Landroid/net/NetworkInfo;
    :cond_2
    const-string v3, "[MusicUtils]"

    const-string v4, "Can\'t get connectivitManager"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isDMPMode(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 3863
    :try_start_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3864
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/htc/music/IMediaPlaybackService;->getPluginClass(I)Ljava/lang/String;

    move-result-object v0

    .line 3865
    .local v0, clsName:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "com.htc.music.DMPMusicPlaybackService"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 3866
    const/4 v2, 0x1

    .line 3876
    .end local v0           #clsName:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 3870
    :catch_0
    move-exception v1

    .line 3871
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDMPMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3873
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 3874
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3875
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDMPMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isExternalPluginExist()Z
    .locals 1

    .prologue
    .line 4185
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isExternalPluginExist(Lcom/htc/music/IMediaPlaybackService;)Z

    move-result v0

    return v0
.end method

.method public static isExternalPluginExist(Lcom/htc/music/IMediaPlaybackService;)Z
    .locals 4
    .parameter "pServicwe"

    .prologue
    .line 4163
    const/4 v1, 0x0

    .line 4165
    .local v1, hasPlugin:Z
    if-nez p0, :cond_0

    .line 4166
    const-string v2, "[MusicUtils]"

    const-string v3, "sService not initialize??"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4167
    const/4 v2, 0x0

    .line 4180
    :goto_0
    return v2

    .line 4172
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->getExternalPluginCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_1

    .line 4174
    const/4 v1, 0x1

    :cond_1
    :goto_1
    move v2, v1

    .line 4180
    goto :goto_0

    .line 4176
    :catch_0
    move-exception v0

    .line 4177
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isExternalStorage(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    .line 490
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, externalStorageOpath:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 493
    .local v0, data:Landroid/net/Uri;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive External storage intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const/4 v2, 0x1

    .line 499
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isExternalStorageUnMount(Landroid/content/Intent;)Z
    .locals 5
    .parameter "UnMountIntent"

    .prologue
    .line 477
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, externalStorageOpath:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 480
    .local v0, data:Landroid/net/Uri;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 483
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive another(External) storage unmount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const/4 v2, 0x1

    .line 486
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized isInternalStorageEnough(Landroid/content/Context;)Z
    .locals 9
    .parameter "ctx"

    .prologue
    const-wide/32 v7, 0x500000

    .line 458
    const-class v4, Lcom/htc/music/util/MusicUtils;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->checkInternalMemory()J

    move-result-wide v1

    .line 460
    .local v1, size:J
    cmp-long v3, v1, v7

    if-lez v3, :cond_0

    .line 461
    const/4 v3, 0x1

    sput-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z

    .line 462
    sget-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :goto_0
    monitor-exit v4

    return v3

    .line 465
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 466
    .local v0, file:Ljava/io/File;
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v5, v1

    cmp-long v3, v5, v7

    if-lez v3, :cond_1

    .line 467
    const/4 v3, 0x1

    sput-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z

    .line 468
    sget-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z

    goto :goto_0

    .line 471
    :cond_1
    const-string v3, "[MusicUtils]"

    const-string v5, "Internal Storage is not Enough."

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const/4 v3, 0x0

    sput-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z

    .line 473
    sget-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 458
    .end local v0           #file:Ljava/io/File;
    .end local v1           #size:J
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 1462
    const/4 v7, 0x0

    .line 1463
    .local v7, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v8

    .line 1464
    .local v8, uri:Landroid/net/Uri;
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v9

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1467
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1468
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 1469
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1470
    const-string v0, "external"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1472
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1473
    const/4 v6, 0x0

    .line 1476
    :cond_1
    return v7
.end method

.method public static isMusicEnhancerEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 4348
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableEnhancer(Landroid/content/Context;)Z

    move-result v0

    .line 4349
    .local v0, projectSetting:Z
    if-nez v0, :cond_0

    .line 4350
    const/4 v1, 0x0

    .line 4353
    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerExist(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0
.end method

.method private static isMusicEnhancerExist(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 4333
    const-string v1, "com.htc.musicenhancer"

    .line 4334
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4336
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v5, "com.htc.musicenhancer"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4337
    .local v2, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 4338
    const/4 v4, 0x1

    .line 4343
    .end local v2           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v4

    .line 4342
    :catch_0
    move-exception v0

    .line 4343
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isMusicLoaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 534
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 536
    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 540
    :cond_0
    :goto_0
    return v0

    .line 537
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isPluginMode()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3815
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 3816
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3825
    :cond_0
    :goto_0
    return v1

    .line 3819
    :catch_0
    move-exception v0

    .line 3820
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPluginMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3822
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3823
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3824
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPluginMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 544
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 546
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isSystemReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 550
    :goto_0
    return v0

    .line 547
    :catch_0
    move-exception v0

    .line 550
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnknownComposer(Ljava/lang/String;)Z
    .locals 1
    .parameter "composer"

    .prologue
    .line 4375
    if-eqz p0, :cond_0

    const-string v0, "<unknown>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4377
    :cond_0
    const/4 v0, 0x1

    .line 4380
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWMDRMSupported()Z
    .locals 1

    .prologue
    .line 3857
    const/4 v0, 0x1

    return v0
.end method

.method public static isYoutubeExist(Landroid/content/Context;)Z
    .locals 7
    .parameter "cxt"

    .prologue
    const/high16 v6, 0x1

    .line 4294
    const/4 v2, 0x0

    .line 4296
    .local v2, retval:Z
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4297
    .local v0, launchYoutubeIntent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4298
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4299
    const-string v4, "android.intent.extra.focus"

    const-string v5, "audio/*"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4300
    const-string v4, "com.google.android.youtube"

    const-string v5, "com.google.android.youtube.VideoListActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4302
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4303
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 4305
    .local v3, shareApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 4306
    const/4 v2, 0x1

    .line 4328
    :cond_0
    :goto_0
    const-string v4, "[MusicUtils]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is youtube exist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4329
    return v2

    .line 4308
    :cond_1
    const-string v4, "com.google.android.youtube"

    const-string v5, "com.google.android.youtube.ResultsActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4310
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 4312
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 4313
    const/4 v2, 0x1

    goto :goto_0

    .line 4319
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4320
    const-string v4, "com.google.android.youtube"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4321
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 4323
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 4324
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static makeAlbumsSongsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "numalbums"
    .parameter "numsongs"
    .parameter "isUnknown"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v2, songs_albums:Ljava/lang/StringBuilder;
    if-ne p2, v7, :cond_0

    .line 273
    const v3, 0x7f070003

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 275
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 276
    .local v1, r:Landroid/content/res/Resources;
    if-nez p3, :cond_1

    .line 277
    const v3, 0x7f0d0001

    invoke-virtual {v1, v3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, f:Ljava/lang/String;
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 279
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 280
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 281
    const v3, 0x7f0701b2

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .end local v0           #f:Ljava/lang/String;
    :cond_1
    const/high16 v3, 0x7f0d

    invoke-virtual {v1, v3, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    .restart local v0       #f:Ljava/lang/String;
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 285
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 286
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V
    .locals 10
    .parameter "context"
    .parameter "sub"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1089
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v8

    const-string v1, "name"

    aput-object v1, v2, v9

    .line 1092
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1093
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 1094
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "resolver = null"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1122
    :cond_0
    :goto_0
    return-void

    .line 1096
    :cond_1
    const-string v3, "name != \'\'"

    .line 1097
    .local v3, whereclause:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1099
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 1101
    const/4 v1, 0x4

    const v4, 0x7f070052

    invoke-interface {p1, v9, v1, v8, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1102
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1104
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1105
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1106
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1107
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "playlist"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v7, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1112
    const/4 v1, 0x3

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v9, v1, v8, v4}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1114
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1117
    .end local v7           #intent:Landroid/content/Intent;
    :cond_2
    if-eqz v6, :cond_0

    .line 1118
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "secs"

    .prologue
    const-wide/16 v8, 0xe10

    const/4 v5, 0x0

    const-wide/16 v6, 0x3c

    .line 1606
    const v3, 0x7f070004

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1607
    .local v0, durationformat:Ljava/lang/String;
    const v3, 0x7f070005

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1612
    .local v1, durationformat_h:Ljava/lang/String;
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1614
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 1615
    .local v2, timeArgs:[Ljava/lang/Object;
    div-long v3, p1, v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1616
    const/4 v3, 0x1

    div-long v4, p1, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1617
    const/4 v3, 0x2

    div-long v4, p1, v6

    rem-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1618
    const/4 v3, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1619
    const/4 v3, 0x4

    rem-long v4, p1, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1621
    div-long v3, p1, v8

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 1622
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v3, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1624
    :goto_0
    return-object v3

    :cond_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v3, v0, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static mergeArtCover(Landroid/content/res/Resources;Landroid/graphics/Bitmap;IIIII)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "resources"
    .parameter "art"
    .parameter "coverResId"
    .parameter "offsetX"
    .parameter "offsetY"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 4660
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4661
    .local v0, albumCover:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4663
    .local v1, canvasBitmap:Landroid/graphics/Bitmap;
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mergeArtCover:canvasBitmap size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4664
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4665
    .local v2, mReflection:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, p5, p3

    add-int v5, p6, p4

    invoke-direct {v3, p3, p4, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, p1, v6, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4666
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v0, v6, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4668
    if-eqz v0, :cond_0

    .line 4669
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4671
    :cond_0
    if-eqz p1, :cond_1

    .line 4672
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 4675
    :cond_1
    return-object v1
.end method

.method public static varargs mergeCursors(Landroid/database/Cursor;Landroid/database/Cursor;[Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 8
    .parameter "c1"
    .parameter "c2"
    .parameter "cursorEtc"

    .prologue
    const/4 v5, 0x0

    .line 4735
    array-length v6, p2

    if-nez v6, :cond_6

    .line 4737
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 4738
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 4739
    new-instance v5, Landroid/database/MergeCursor;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/database/Cursor;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-direct {v5, v6}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object p0, v5

    .line 4791
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 4741
    .restart local p0
    :cond_1
    if-eqz p1, :cond_0

    .line 4742
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4748
    :cond_2
    if-eqz p0, :cond_3

    .line 4749
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 4752
    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_4

    move-object p0, p1

    .line 4753
    goto :goto_0

    .line 4755
    :cond_4
    if-eqz p1, :cond_5

    .line 4756
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object p0, v5

    .line 4759
    goto :goto_0

    .line 4763
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    array-length v6, p2

    add-int/lit8 v6, v6, 0x2

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 4764
    .local v2, cursorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    if-eqz p0, :cond_7

    .line 4765
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_a

    .line 4766
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4771
    :cond_7
    :goto_1
    if-eqz p1, :cond_8

    .line 4772
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_b

    .line 4773
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4778
    :cond_8
    :goto_2
    move-object v0, p2

    .local v0, arr$:[Landroid/database/Cursor;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3
    if-ge v3, v4, :cond_d

    aget-object v1, v0, v3

    .line 4779
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_9

    .line 4780
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_c

    .line 4781
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4778
    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4768
    .end local v0           #arr$:[Landroid/database/Cursor;
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 4775
    :cond_b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 4783
    .restart local v0       #arr$:[Landroid/database/Cursor;
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 4788
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_e

    .line 4789
    new-instance p0, Landroid/database/MergeCursor;

    .end local p0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/database/Cursor;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/database/Cursor;

    invoke-direct {p0, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_0

    .restart local p0
    :cond_e
    move-object p0, v5

    .line 4791
    goto :goto_0
.end method

.method public static mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 12
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1391
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1456
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1395
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1396
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 1400
    const-string v1, "album_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1401
    .local v10, mdAlbumIdIdx:I
    if-gez v10, :cond_2

    .line 1402
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1404
    :cond_2
    if-gez v10, :cond_3

    .line 1405
    const-string v1, "[MusicUtils]"

    const-string v2, "mergeDlAlbumArt: cannot find album id column"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1410
    :cond_3
    :try_start_0
    const-string v1, "album_art"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1416
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1417
    .local v11, selection:Ljava/lang/StringBuilder;
    const-string v1, "dl_album_id IN ("

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1418
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1420
    .local v6, albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 1421
    .local v9, id:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1423
    :cond_4
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1424
    if-gez v9, :cond_8

    .line 1432
    :cond_5
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1434
    :cond_6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1435
    const-string v1, ")"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1441
    :try_start_1
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sDlColumns:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1443
    .local v7, dlCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 1447
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_7

    .line 1449
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mergeDlAlbumArt: dlCursor.getCount() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    :cond_7
    new-instance v1, Lcom/htc/music/util/AlbumArtMergeCursor;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v7, v2}, Lcom/htc/music/util/AlbumArtMergeCursor;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v1

    goto/16 :goto_0

    .line 1411
    .end local v6           #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v7           #dlCursor:Landroid/database/Cursor;
    .end local v9           #id:I
    .end local v11           #selection:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    .line 1412
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "[MusicUtils]"

    const-string v2, "mergeDlAlbumArt: cannot find album art column"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1428
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    .restart local v6       #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v9       #id:I
    .restart local v11       #selection:Ljava/lang/StringBuilder;
    :cond_8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1429
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1430
    const-string v1, ","

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1453
    :catch_1
    move-exception v8

    .line 1454
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "[MusicUtils]"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static varargs playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "position"
    .parameter "npc"
    .parameter "varargs"

    .prologue
    const/4 v3, 0x0

    .line 1673
    const/4 v0, 0x1

    new-array v5, v0, [I

    array-length v0, p4

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    aput v0, v5, v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZLcom/htc/music/NpCategory;[I)V

    .line 1674
    return-void

    .line 1673
    :cond_0
    aget v0, p4, v3

    goto :goto_0
.end method

.method private static varargs playAll(Landroid/content/Context;Landroid/database/Cursor;IZLcom/htc/music/NpCategory;[I)V
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "position"
    .parameter "force_shuffle"
    .parameter "npc"
    .parameter "varargs"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1752
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v1

    .line 1753
    .local v1, list:[I
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 1754
    new-array v6, v4, [I

    array-length v0, p5

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    aput v0, v6, v2

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1755
    return-void

    .line 1754
    :cond_0
    aget v0, p5, v2

    goto :goto_0
.end method

.method private static playAll(Landroid/content/Context;Landroid/database/Cursor;IZZLcom/htc/music/NpCategory;)V
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "position"
    .parameter "force_shuffle"
    .parameter "isPlay"
    .parameter "npc"

    .prologue
    .line 1745
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v1

    .line 1746
    .local v1, list:[I
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 1747
    const/4 v0, 0x0

    new-array v6, v0, [I

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1748
    return-void
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "npc"

    .prologue
    const/4 v2, 0x0

    .line 1633
    new-array v5, v2, [I

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZLcom/htc/music/NpCategory;[I)V

    .line 1634
    return-void
.end method

.method public static playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    .locals 7
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "npc"

    .prologue
    const/4 v3, 0x0

    .line 1687
    const/4 v4, 0x1

    new-array v6, v3, [I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1688
    return-void
.end method

.method public static varargs playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;[I)V
    .locals 7
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "npc"
    .parameter "varargs"

    .prologue
    .line 1691
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1692
    return-void
.end method

.method private static varargs playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z
    .locals 11
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "force_shuffle"
    .parameter "ifrun"
    .parameter "npc"
    .parameter "varargs"

    .prologue
    .line 1759
    array-length v7, p1

    if-eqz v7, :cond_0

    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v7, :cond_1

    .line 1760
    :cond_0
    const-string v7, "[MusicUtils]"

    const-string v8, "attempt to play empty song list"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    const v7, 0x7f070055

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    array-length v10, p1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1763
    .local v5, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1764
    const/4 v7, 0x0

    .line 1851
    .end local v5           #message:Ljava/lang/String;
    :goto_0
    return v7

    .line 1767
    :cond_1
    const/4 v3, -0x1

    .line 1769
    .local v3, dlnaMode:I
    if-eqz p4, :cond_2

    .line 1770
    const/4 v7, 0x0

    invoke-static {p0, p1, p2, v7}, Lcom/htc/music/util/MusicUtils;->CheckDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v3

    .line 1777
    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1778
    if-eqz p4, :cond_3

    .line 1779
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 1783
    :cond_3
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v1

    .line 1784
    .local v1, curid:I
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    .line 1785
    .local v2, curpos:I
    const/4 v7, -0x1

    if-eq p2, v7, :cond_a

    if-ne v2, p2, :cond_a

    aget v7, p1, p2

    if-ne v1, v7, :cond_a

    .line 1789
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v6

    .line 1790
    .local v6, playlist:[I
    invoke-static {p1, v6}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1795
    if-eqz p3, :cond_4

    .line 1796
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1797
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 1798
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1802
    :cond_4
    if-eqz p4, :cond_5

    if-nez v3, :cond_5

    .line 1803
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1805
    :cond_5
    const/4 v8, 0x1

    .line 1837
    if-eqz p4, :cond_9

    move-object/from16 v0, p6

    array-length v7, v0

    if-nez v7, :cond_7

    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_9

    if-nez v3, :cond_9

    .line 1838
    new-instance v7, Landroid/content/Intent;

    const-string v9, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x400

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 1840
    .local v4, intent:Landroid/content/Intent;
    instance-of v7, p0, Lcom/htc/music/HtcMusic;

    if-eqz v7, :cond_6

    .line 1841
    const-string v9, "ShowNowPlaying"

    move-object v7, p0

    check-cast v7, Lcom/htc/music/HtcMusic;

    invoke-virtual {v7}, Lcom/htc/music/HtcMusic;->isShowNowPlaying()Z

    move-result v7

    invoke-virtual {v4, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1844
    :cond_6
    instance-of v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    if-eqz v7, :cond_8

    move-object v7, p0

    check-cast v7, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v7, v7, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v7, :cond_8

    .line 1846
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1837
    .end local v4           #intent:Landroid/content/Intent;
    :cond_7
    const/4 v7, 0x0

    aget v7, p6, v7

    goto :goto_1

    .line 1848
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_8
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .end local v4           #intent:Landroid/content/Intent;
    :cond_9
    move v7, v8

    .line 1849
    goto/16 :goto_0

    .line 1808
    .end local v6           #playlist:[I
    :cond_a
    if-gez p2, :cond_b

    .line 1809
    const/4 p2, 0x0

    .line 1811
    :cond_b
    if-eqz p5, :cond_10

    .line 1812
    :try_start_1
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz p3, :cond_f

    const/4 v7, -0x1

    :goto_2
    move-object/from16 v0, p5

    invoke-interface {v8, p1, v7, v0}, Lcom/htc/music/IMediaPlaybackService;->openWithCategory([IILcom/htc/music/NpCategory;)V

    .line 1817
    :goto_3
    if-eqz p3, :cond_c

    .line 1818
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1819
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    .line 1820
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1824
    :cond_c
    if-eqz p4, :cond_d

    if-nez v3, :cond_d

    .line 1825
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1837
    :cond_d
    if-eqz p4, :cond_15

    move-object/from16 v0, p6

    array-length v7, v0

    if-nez v7, :cond_13

    const/4 v7, 0x0

    :goto_4
    if-nez v7, :cond_15

    if-nez v3, :cond_15

    .line 1838
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x400

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 1840
    .restart local v4       #intent:Landroid/content/Intent;
    instance-of v7, p0, Lcom/htc/music/HtcMusic;

    if-eqz v7, :cond_e

    .line 1841
    const-string v8, "ShowNowPlaying"

    move-object v7, p0

    check-cast v7, Lcom/htc/music/HtcMusic;

    invoke-virtual {v7}, Lcom/htc/music/HtcMusic;->isShowNowPlaying()Z

    move-result v7

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1844
    :cond_e
    instance-of v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    if-eqz v7, :cond_14

    move-object v7, p0

    check-cast v7, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v7, v7, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v7, :cond_14

    .line 1846
    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v4           #intent:Landroid/content/Intent;
    :cond_f
    move v7, p2

    .line 1812
    goto :goto_2

    .line 1814
    :cond_10
    :try_start_2
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz p3, :cond_12

    const/4 v7, -0x1

    :goto_5
    invoke-interface {v8, p1, v7}, Lcom/htc/music/IMediaPlaybackService;->open([II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 1835
    .end local v1           #curid:I
    .end local v2           #curpos:I
    :catch_0
    move-exception v7

    .line 1837
    if-eqz p4, :cond_15

    move-object/from16 v0, p6

    array-length v7, v0

    if-nez v7, :cond_16

    const/4 v7, 0x0

    :goto_6
    if-nez v7, :cond_15

    if-nez v3, :cond_15

    .line 1838
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x400

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 1840
    .restart local v4       #intent:Landroid/content/Intent;
    instance-of v7, p0, Lcom/htc/music/HtcMusic;

    if-eqz v7, :cond_11

    .line 1841
    const-string v8, "ShowNowPlaying"

    move-object v7, p0

    check-cast v7, Lcom/htc/music/HtcMusic;

    invoke-virtual {v7}, Lcom/htc/music/HtcMusic;->isShowNowPlaying()Z

    move-result v7

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1844
    :cond_11
    instance-of v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    if-eqz v7, :cond_17

    move-object v7, p0

    check-cast v7, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v7, v7, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v7, :cond_17

    .line 1846
    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v4           #intent:Landroid/content/Intent;
    .restart local v1       #curid:I
    .restart local v2       #curpos:I
    :cond_12
    move v7, p2

    .line 1814
    goto :goto_5

    .line 1837
    :cond_13
    const/4 v7, 0x0

    aget v7, p6, v7

    goto :goto_4

    .line 1848
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_14
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1851
    .end local v1           #curid:I
    .end local v2           #curpos:I
    .end local v4           #intent:Landroid/content/Intent;
    :cond_15
    :goto_7
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1837
    :cond_16
    const/4 v7, 0x0

    aget v7, p6, v7

    goto :goto_6

    .line 1848
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_17
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 1837
    .end local v4           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v7

    move-object v8, v7

    if-eqz p4, :cond_1b

    move-object/from16 v0, p6

    array-length v7, v0

    if-nez v7, :cond_19

    const/4 v7, 0x0

    :goto_8
    if-nez v7, :cond_1b

    if-nez v3, :cond_1b

    .line 1838
    new-instance v7, Landroid/content/Intent;

    const-string v9, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x400

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 1840
    .restart local v4       #intent:Landroid/content/Intent;
    instance-of v7, p0, Lcom/htc/music/HtcMusic;

    if-eqz v7, :cond_18

    .line 1841
    const-string v9, "ShowNowPlaying"

    move-object v7, p0

    check-cast v7, Lcom/htc/music/HtcMusic;

    invoke-virtual {v7}, Lcom/htc/music/HtcMusic;->isShowNowPlaying()Z

    move-result v7

    invoke-virtual {v4, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1844
    :cond_18
    instance-of v7, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    if-eqz v7, :cond_1a

    move-object v7, p0

    check-cast v7, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v7, v7, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v7, :cond_1a

    .line 1846
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1837
    .end local v4           #intent:Landroid/content/Intent;
    :cond_19
    const/4 v7, 0x0

    aget v7, p6, v7

    goto :goto_8

    .line 1848
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_1a
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1849
    .end local v4           #intent:Landroid/content/Intent;
    :cond_1b
    throw v8
.end method

.method public static playAllAndPrepare(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    .locals 17
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "npc"

    .prologue
    .line 1695
    move-object/from16 v0, p1

    array-length v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_2

    .line 1696
    :cond_0
    const-string v1, "[MusicUtils]"

    const-string v2, "attempt to play empty song list"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    const v1, 0x7f070055

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1699
    .local v13, message:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v13, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1728
    .end local v13           #message:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1704
    :cond_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1705
    .local v16, where:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1706
    move-object/from16 v0, p1

    array-length v15, v0

    .line 1707
    .local v15, size:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v15, :cond_4

    .line 1708
    aget v1, p1, v12

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1709
    add-int/lit8 v1, v15, -0x1

    if-ge v12, v1, :cond_3

    .line 1710
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1707
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1713
    :cond_4
    const-string v1, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "album_id"

    aput-object v2, v3, v1

    .line 1717
    .local v3, ccols:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "track"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1721
    .local v11, cursor:Landroid/database/Cursor;
    invoke-static {v11}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    move-result v14

    .line 1722
    .local v14, result:Z
    if-eqz v11, :cond_5

    .line 1723
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1724
    const/4 v11, 0x0

    .line 1726
    :cond_5
    if-eqz v14, :cond_1

    .line 1727
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    new-array v10, v1, [I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p3

    invoke-static/range {v4 .. v10}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    goto :goto_0
.end method

.method public static varargs playAllNotReShuffle(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "position"
    .parameter "npc"
    .parameter "varargs"

    .prologue
    .line 1681
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v1

    .line 1682
    .local v1, list:[I
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 1683
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x2

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    move-object v0, p0

    move v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1684
    return-void

    .line 1683
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static playAllNotRun(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;)V
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "position"
    .parameter "npc"

    .prologue
    const/4 v3, 0x0

    .line 1677
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZZLcom/htc/music/NpCategory;)V

    .line 1678
    return-void
.end method

.method private static playAllNotRun(Landroid/content/Context;Landroid/database/Cursor;IZLcom/htc/music/NpCategory;)V
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "position"
    .parameter "force_shuffle"
    .parameter "npc"

    .prologue
    const/4 v4, 0x0

    .line 1737
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v1

    .line 1738
    .local v1, list:[I
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 1739
    new-array v6, v4, [I

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1740
    return-void
.end method

.method public static playAllNotRun(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "npc"

    .prologue
    const/4 v0, 0x0

    .line 1637
    invoke-static {p0, p1, v0, v0, p2}, Lcom/htc/music/util/MusicUtils;->playAllNotRun(Landroid/content/Context;Landroid/database/Cursor;IZLcom/htc/music/NpCategory;)V

    .line 1638
    return-void
.end method

.method public static playAllNotRun(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    .locals 7
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "npc"

    .prologue
    const/4 v3, 0x0

    .line 1731
    new-array v6, v3, [I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1732
    return-void
.end method

.method public static playAllPlaylist(Landroid/content/Context;ZLcom/htc/music/NpCategory;)V
    .locals 7
    .parameter "context"
    .parameter "force_shuffle"
    .parameter "npc"

    .prologue
    .line 1048
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getSongListForAllPlaylistAndPrepare(Landroid/content/Context;)[I

    move-result-object v1

    .line 1049
    .local v1, list:[I
    if-eqz v1, :cond_0

    .line 1050
    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v0, 0x0

    new-array v6, v0, [I

    move-object v0, p0

    move v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1052
    :cond_0
    return-void
.end method

.method public static playPlaylist(Landroid/content/Context;JLcom/htc/music/NpCategory;)Z
    .locals 7
    .parameter "context"
    .parameter "plid"
    .parameter "npc"

    .prologue
    const/4 v3, 0x0

    .line 1038
    invoke-static {p0, p1, p2}, Lcom/htc/music/util/MusicUtils;->getSongListForPlaylistAndPrepare(Landroid/content/Context;J)[I

    move-result-object v1

    .line 1040
    .local v1, list:[I
    if-eqz v1, :cond_0

    .line 1041
    const/4 v2, -0x1

    const/4 v4, 0x1

    new-array v6, v3, [I

    move-object v0, p0

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    move-result v3

    .line 1043
    :cond_0
    return v3
.end method

.method public static playQueueNotRun(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1641
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_1

    .line 1670
    :cond_0
    :goto_0
    return-void

    .line 1644
    :cond_1
    const-string v3, "[MusicUtils]"

    const-string v4, "playQueueNotRun"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    const/4 v1, 0x0

    .line 1647
    .local v1, pos:I
    const/4 v0, 0x0

    .line 1648
    .local v0, list:[I
    :try_start_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isSystemReady()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1649
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->reloadQueue()V

    .line 1650
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v2

    .line 1651
    .local v2, queueSize:I
    if-gtz v2, :cond_2

    .line 1652
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAllSongsAndPrepare(Landroid/content/Context;)[I

    move-result-object v0

    .line 1653
    const/4 v1, 0x0

    .line 1663
    .end local v2           #queueSize:I
    :goto_1
    if-eqz v0, :cond_0

    array-length v3, v0

    if-eqz v3, :cond_0

    .line 1666
    new-instance v3, Lcom/htc/music/NpCategory;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-static {p0, v0, v1, v3}, Lcom/htc/music/util/MusicUtils;->playAllNotRun(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1669
    :goto_2
    const-string v3, "[MusicUtils]"

    const-string v4, "playQueueNotRun finished"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1655
    .restart local v2       #queueSize:I
    :cond_2
    :try_start_1
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v1

    .line 1656
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v0

    goto :goto_1

    .line 1660
    .end local v2           #queueSize:I
    :cond_3
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v1

    .line 1661
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 1667
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public static prepareAlbumList([I)V
    .locals 2
    .parameter "albumlist"

    .prologue
    .line 609
    array-length v0, p0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 611
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcom/htc/music/IMediaPlaybackService;->setAlbumQueue([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :goto_0
    return-void

    .line 616
    :cond_0
    const-string v0, "[MusicUtils]"

    const-string v1, "Bad! sService is  null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static prepareAlbumList(Landroid/database/Cursor;)Z
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 592
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v0

    .line 593
    .local v0, albumlist:[I
    array-length v3, v0

    if-lez v3, :cond_0

    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_0

    .line 595
    :try_start_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3, v0}, Lcom/htc/music/IMediaPlaybackService;->setAlbumQueue([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    const/4 v2, 0x1

    .line 603
    :goto_0
    return v2

    .line 597
    :catch_0
    move-exception v1

    .line 598
    .local v1, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 602
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "[MusicUtils]"

    const-string v4, "Bad! sService is  null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 1366
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1367
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 1378
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1370
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    goto :goto_0

    .line 1371
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 1372
    goto :goto_0

    .line 1373
    .end local v6           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v6

    .line 1374
    .local v6, ex:Ljava/lang/IllegalStateException;
    const-string v1, "[MusicUtils]"

    const-string v2, "error IllegalStateException"

    invoke-static {v1, v2, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v7

    .line 1375
    goto :goto_0

    .line 1376
    .end local v6           #ex:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v6

    .line 1377
    .local v6, ex:Landroid/database/sqlite/SQLiteException;
    const-string v1, "[MusicUtils]"

    const-string v2, "error SQLiteException"

    invoke-static {v1, v2, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v7

    .line 1378
    goto :goto_0
.end method

.method public static reGetArtworkFromFile(Landroid/content/Context;I)Ljava/lang/String;
    .locals 34
    .parameter "context"
    .parameter "album_id"

    .prologue
    .line 2386
    const/4 v12, 0x0

    .line 2387
    .local v12, bm:Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 2388
    .local v9, art:[B
    const/16 v24, 0x0

    .line 2391
    .local v24, path:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_1

    .line 2393
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 2394
    const/16 v19, 0x0

    .line 2590
    :cond_0
    :goto_0
    return-object v19

    .line 2396
    :catch_0
    move-exception v14

    .line 2397
    .local v14, e:Landroid/os/RemoteException;
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reGetArtworkFromFile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2398
    const/16 v19, 0x0

    goto :goto_0

    .line 2402
    .end local v14           #e:Landroid/os/RemoteException;
    :cond_1
    if-gez p1, :cond_2

    .line 2403
    const/16 v19, 0x0

    goto :goto_0

    .line 2405
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    .line 2406
    .local v26, res:Landroid/content/ContentResolver;
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    move/from16 v0, p1

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v32

    .line 2409
    .local v32, uri:Landroid/net/Uri;
    if-lez p1, :cond_6

    .line 2410
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "album"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "_data"

    aput-object v5, v4, v2

    const-string v5, "album_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2417
    .local v13, c:Landroid/database/Cursor;
    if-eqz v13, :cond_6

    .line 2418
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2419
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2420
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 2421
    .local v31, trackid:I
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v31

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v32

    .line 2423
    const/4 v2, 0x2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 2426
    .end local v31           #trackid:I
    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 2427
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2428
    .local v8, album:Ljava/lang/String;
    if-eqz v8, :cond_4

    const-string v2, "<unknown>"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2429
    :cond_4
    const/16 p1, -0x1

    .line 2430
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2431
    const/4 v13, 0x0

    .line 2432
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2435
    .end local v8           #album:Ljava/lang/String;
    :cond_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2440
    .end local v13           #c:Landroid/database/Cursor;
    :cond_6
    if-eqz v32, :cond_8

    .line 2441
    new-instance v27, Landroid/media/MediaScanner;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 2442
    .local v27, scanner:Landroid/media/MediaScanner;
    const/16 v25, 0x0

    .line 2444
    .local v25, pfd:Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "r"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v25

    .line 2445
    if-eqz v25, :cond_7

    .line 2446
    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v18

    .line 2447
    .local v18, fds:Ljava/io/FileDescriptor;
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/media/MediaScanner;->extractAlbumArt(Ljava/io/FileDescriptor;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v9

    .line 2455
    .end local v18           #fds:Ljava/io/FileDescriptor;
    :cond_7
    if-eqz v25, :cond_8

    .line 2456
    :try_start_2
    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d

    .line 2465
    .end local v25           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v27           #scanner:Landroid/media/MediaScanner;
    :cond_8
    :goto_1
    if-nez v9, :cond_b

    if-eqz v24, :cond_b

    .line 2466
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sExternalMediaUri:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2468
    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_data"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2471
    .restart local v13       #c:Landroid/database/Cursor;
    if-eqz v13, :cond_a

    .line 2472
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2473
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2474
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 2476
    :cond_9
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2479
    .end local v13           #c:Landroid/database/Cursor;
    :cond_a
    const/16 v2, 0x2f

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    .line 2480
    .local v20, lastSlash:I
    if-lez v20, :cond_b

    .line 2481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v4, v20, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "AlbumArt.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2482
    .local v10, artPath:Ljava/lang/String;
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2483
    .local v19, file:Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2484
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v9, v2, [B

    .line 2485
    const/16 v28, 0x0

    .line 2487
    .local v28, stream:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v29, Ljava/io/FileInputStream;

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 2488
    .end local v28           #stream:Ljava/io/FileInputStream;
    .local v29, stream:Ljava/io/FileInputStream;
    :try_start_4
    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/io/FileInputStream;->read([B)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11

    .line 2493
    if-eqz v29, :cond_b

    .line 2494
    :try_start_5
    invoke-virtual/range {v29 .. v29}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f

    .line 2505
    .end local v10           #artPath:Ljava/lang/String;
    .end local v19           #file:Ljava/io/File;
    .end local v20           #lastSlash:I
    .end local v29           #stream:Ljava/io/FileInputStream;
    :cond_b
    :goto_2
    if-eqz v9, :cond_d

    .line 2508
    :try_start_6
    new-instance v22, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2509
    .local v22, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v22

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2510
    const/4 v2, 0x1

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2511
    const/4 v2, 0x0

    array-length v3, v9

    move-object/from16 v0, v22

    invoke-static {v9, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2515
    :goto_3
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v3, 0x140

    if-gt v2, v3, :cond_c

    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v3, 0x140

    if-le v2, v3, :cond_12

    .line 2516
    :cond_c
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2517
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2518
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 2524
    .end local v22           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v2

    .line 2528
    :cond_d
    :goto_4
    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_f

    if-eqz v12, :cond_f

    .line 2530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/albumthumbs/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2532
    .local v19, file:Ljava/lang/String;
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new album will be created album_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2533
    invoke-static/range {v19 .. v19}, Lcom/htc/music/util/MusicUtils;->ensureFileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2535
    :try_start_7
    new-instance v23, Ljava/io/FileOutputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 2536
    .local v23, outstream:Ljava/io/OutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x4b

    move-object/from16 v0, v23

    invoke-virtual {v12, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v30

    .line 2538
    .local v30, success:Z
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->close()V

    .line 2539
    if-eqz v30, :cond_e

    .line 2540
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 2541
    .local v33, values:Landroid/content/ContentValues;
    const-string v2, "album_id"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2542
    const-string v2, "_data"

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2543
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c

    move-result-object v21

    .line 2544
    .local v21, newuri:Landroid/net/Uri;
    if-nez v21, :cond_e

    .line 2560
    :try_start_8
    invoke-virtual/range {v33 .. v33}, Landroid/content/ContentValues;->clear()V

    .line 2561
    const-string v2, "_data"

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2562
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    move/from16 v0, p1

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 2564
    .local v11, arturi:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c

    .line 2565
    const/16 v30, 0x1

    .line 2575
    .end local v11           #arturi:Landroid/net/Uri;
    .end local v21           #newuri:Landroid/net/Uri;
    .end local v33           #values:Landroid/content/ContentValues;
    :cond_e
    :goto_5
    if-nez v30, :cond_0

    .line 2576
    :try_start_9
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2577
    .local v17, f:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    .line 2590
    .end local v17           #f:Ljava/io/File;
    .end local v19           #file:Ljava/lang/String;
    .end local v23           #outstream:Ljava/io/OutputStream;
    .end local v30           #success:Z
    :cond_f
    :goto_6
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2449
    .restart local v25       #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v27       #scanner:Landroid/media/MediaScanner;
    :catch_2
    move-exception v2

    .line 2455
    if-eqz v25, :cond_8

    .line 2456
    :try_start_a
    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_1

    .line 2458
    :catch_3
    move-exception v2

    goto/16 :goto_1

    .line 2450
    :catch_4
    move-exception v2

    .line 2455
    if-eqz v25, :cond_8

    .line 2456
    :try_start_b
    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_1

    .line 2458
    :catch_5
    move-exception v2

    goto/16 :goto_1

    .line 2451
    :catch_6
    move-exception v16

    .line 2452
    .local v16, ex:Ljava/lang/Exception;
    :try_start_c
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getArtworkQuickWithWrite failed album_id= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2455
    if-eqz v25, :cond_8

    .line 2456
    :try_start_d
    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_1

    .line 2458
    :catch_7
    move-exception v2

    goto/16 :goto_1

    .line 2454
    .end local v16           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 2455
    if-eqz v25, :cond_10

    .line 2456
    :try_start_e
    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e

    .line 2459
    :cond_10
    :goto_7
    throw v2

    .line 2489
    .end local v25           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v27           #scanner:Landroid/media/MediaScanner;
    .restart local v10       #artPath:Ljava/lang/String;
    .local v19, file:Ljava/io/File;
    .restart local v20       #lastSlash:I
    .restart local v28       #stream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v16

    .line 2490
    .local v16, ex:Ljava/io/IOException;
    :goto_8
    const/4 v9, 0x0

    .line 2493
    if-eqz v28, :cond_b

    .line 2494
    :try_start_f
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto/16 :goto_2

    .line 2496
    :catch_9
    move-exception v2

    goto/16 :goto_2

    .line 2492
    .end local v16           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v2

    .line 2493
    :goto_9
    if-eqz v28, :cond_11

    .line 2494
    :try_start_10
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_10

    .line 2497
    :cond_11
    :goto_a
    throw v2

    .line 2522
    .end local v10           #artPath:Ljava/lang/String;
    .end local v19           #file:Ljava/io/File;
    .end local v20           #lastSlash:I
    .end local v28           #stream:Ljava/io/FileInputStream;
    .restart local v22       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_12
    const/4 v2, 0x0

    :try_start_11
    move-object/from16 v0, v22

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2523
    const/4 v2, 0x0

    array-length v3, v9

    move-object/from16 v0, v22

    invoke-static {v9, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    move-result-object v12

    goto/16 :goto_4

    .line 2566
    .end local v22           #opts:Landroid/graphics/BitmapFactory$Options;
    .local v19, file:Ljava/lang/String;
    .restart local v21       #newuri:Landroid/net/Uri;
    .restart local v23       #outstream:Ljava/io/OutputStream;
    .restart local v30       #success:Z
    .restart local v33       #values:Landroid/content/ContentValues;
    :catch_a
    move-exception v15

    .line 2569
    .local v15, err:Ljava/lang/UnsupportedOperationException;
    :try_start_12
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t update album art for album_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,file= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    .line 2571
    const/16 v30, 0x0

    goto/16 :goto_5

    .line 2581
    .end local v15           #err:Ljava/lang/UnsupportedOperationException;
    .end local v21           #newuri:Landroid/net/Uri;
    .end local v23           #outstream:Ljava/io/OutputStream;
    .end local v30           #success:Z
    .end local v33           #values:Landroid/content/ContentValues;
    :catch_b
    move-exception v15

    .line 2582
    .local v15, err:Ljava/io/FileNotFoundException;
    const-string v2, "[MusicUtils]"

    const-string v3, "error creating file"

    invoke-static {v2, v3, v15}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 2583
    .end local v15           #err:Ljava/io/FileNotFoundException;
    :catch_c
    move-exception v15

    .line 2584
    .local v15, err:Ljava/io/IOException;
    const-string v2, "[MusicUtils]"

    const-string v3, "error creating file"

    invoke-static {v2, v3, v15}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 2458
    .end local v15           #err:Ljava/io/IOException;
    .end local v19           #file:Ljava/lang/String;
    .restart local v25       #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v27       #scanner:Landroid/media/MediaScanner;
    :catch_d
    move-exception v2

    goto/16 :goto_1

    :catch_e
    move-exception v3

    goto :goto_7

    .line 2496
    .end local v25           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v27           #scanner:Landroid/media/MediaScanner;
    .restart local v10       #artPath:Ljava/lang/String;
    .local v19, file:Ljava/io/File;
    .restart local v20       #lastSlash:I
    .restart local v29       #stream:Ljava/io/FileInputStream;
    :catch_f
    move-exception v2

    goto/16 :goto_2

    .end local v29           #stream:Ljava/io/FileInputStream;
    .restart local v28       #stream:Ljava/io/FileInputStream;
    :catch_10
    move-exception v3

    goto :goto_a

    .line 2492
    .end local v28           #stream:Ljava/io/FileInputStream;
    .restart local v29       #stream:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v2

    move-object/from16 v28, v29

    .end local v29           #stream:Ljava/io/FileInputStream;
    .restart local v28       #stream:Ljava/io/FileInputStream;
    goto :goto_9

    .line 2489
    .end local v28           #stream:Ljava/io/FileInputStream;
    .restart local v29       #stream:Ljava/io/FileInputStream;
    :catch_11
    move-exception v16

    move-object/from16 v28, v29

    .end local v29           #stream:Ljava/io/FileInputStream;
    .restart local v28       #stream:Ljava/io/FileInputStream;
    goto :goto_8
.end method

.method public static searchViaAlbumName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "albumName"

    .prologue
    .line 4561
    const/4 v2, 0x0

    .line 4562
    .local v2, title:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 4564
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4565
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4567
    if-eqz p1, :cond_0

    const-string v3, "<unknown>"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4568
    :cond_0
    const v3, 0x7f070044

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4569
    :cond_1
    move-object v2, p1

    .line 4571
    move-object v1, p1

    .line 4573
    const-string v3, "android.intent.extra.album"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4574
    const-string v3, "android.intent.extra.focus"

    const-string v4, "audio/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4575
    const v3, 0x7f070061

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4576
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4578
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4579
    return-void
.end method

.method public static searchViaArtistName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "artistName"

    .prologue
    .line 4582
    const/4 v2, 0x0

    .line 4583
    .local v2, title:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 4585
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4586
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4589
    move-object v2, p1

    .line 4590
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 4591
    :cond_0
    const-string p1, "<unknown>"

    .line 4594
    :cond_1
    move-object v1, p1

    .line 4596
    const-string v3, "android.intent.extra.artist"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4597
    const-string v3, "android.intent.extra.focus"

    const-string v4, "audio/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4598
    const v3, 0x7f070061

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4599
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4601
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4602
    return-void
.end method

.method public static searchViaTrackName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "trackName"
    .parameter "artistName"

    .prologue
    .line 4535
    const/4 v2, 0x0

    .line 4536
    .local v2, title:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 4538
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4539
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4542
    move-object v2, p1

    .line 4543
    if-eqz p2, :cond_0

    const-string v3, "<unknown>"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4545
    :cond_0
    move-object v1, p1

    .line 4550
    :goto_0
    const-string v3, "android.intent.extra.title"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4551
    const-string v3, "android.intent.extra.artist"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4553
    const-string v3, "android.intent.extra.focus"

    const-string v4, "audio/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4554
    const v3, 0x7f070061

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4555
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4557
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4558
    return-void

    .line 4547
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static setContactRingtone(Landroid/content/Context;JLjava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2908
    .local p3, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/music/util/MusicUtils;->setContactRingtone(Landroid/content/Context;JLjava/util/ArrayList;Z)V

    .line 2909
    return-void
.end method

.method public static setContactRingtone(Landroid/content/Context;JLjava/util/ArrayList;Z)V
    .locals 17
    .parameter "context"
    .parameter "id"
    .parameter
    .parameter "showToast"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2912
    .local p3, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2978
    :cond_0
    :goto_0
    return-void

    .line 2915
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 2916
    .local v13, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 2917
    .local v14, ringUri:Landroid/net/Uri;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2918
    .local v8, batchwhere:Ljava/lang/StringBuilder;
    const-string v2, "_id IN ("

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2920
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_3

    .line 2927
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set as ringtone for:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2928
    if-lez v11, :cond_2

    .line 2929
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2930
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2920
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2932
    :cond_3
    const-string v2, ")"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2933
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "where= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2934
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 2935
    .local v15, values:Landroid/content/ContentValues;
    const-string v2, "custom_ringtone"

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    const-string v2, "content://com.android.contacts/contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v13, v2, v15, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2945
    :try_start_1
    new-instance v16, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2946
    .end local v15           #values:Landroid/content/ContentValues;
    .local v16, values:Landroid/content/ContentValues;
    :try_start_2
    const-string v2, "is_ringtone"

    const-string v3, "1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2947
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2954
    if-eqz p4, :cond_0

    .line 2955
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "title"

    aput-object v3, v4, v2

    .line 2960
    .local v4, cols:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2961
    .local v5, where:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2963
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_3
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2965
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 2966
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2967
    const v2, 0x7f0700a8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2969
    .local v12, message:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v12, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2972
    .end local v12           #message:Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_0

    .line 2973
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2974
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2937
    .end local v4           #cols:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v16           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    .line 2939
    .local v10, ex:Ljava/lang/UnsupportedOperationException;
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t set contact ringtone flag for id "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2948
    .end local v10           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v15       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v10

    .line 2949
    .restart local v10       #ex:Ljava/lang/UnsupportedOperationException;
    :goto_2
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t set ringtone flag for id "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2972
    .end local v10           #ex:Ljava/lang/UnsupportedOperationException;
    .end local v15           #values:Landroid/content/ContentValues;
    .restart local v4       #cols:[Ljava/lang/String;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v16       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_5

    .line 2973
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2974
    const/4 v9, 0x0

    :cond_5
    throw v2

    .line 2948
    .end local v4           #cols:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :catch_2
    move-exception v10

    move-object/from16 v15, v16

    .end local v16           #values:Landroid/content/ContentValues;
    .restart local v15       #values:Landroid/content/ContentValues;
    goto :goto_2
.end method

.method public static setDRMContactRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3006
    .local p2, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/htc/music/util/MusicUtils;->setDRMContactRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;Z)V

    .line 3007
    return-void
.end method

.method public static setDRMContactRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;Z)V
    .locals 15
    .parameter "context"
    .parameter "uri"
    .parameter
    .parameter "showToast"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 3010
    .local p2, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 3071
    :cond_0
    :goto_0
    return-void

    .line 3013
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 3014
    .local v12, resolver:Landroid/content/ContentResolver;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 3015
    .local v7, batchwhere:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3017
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_3

    .line 3024
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set as ringtone for:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3025
    if-lez v10, :cond_2

    .line 3026
    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3027
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3017
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3029
    :cond_3
    const-string v1, ")"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3030
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "where= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3031
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 3032
    .local v13, values:Landroid/content/ContentValues;
    const-string v1, "custom_ringtone"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3033
    const-string v1, "content://com.android.contacts/contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v12, v1, v13, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3042
    :try_start_1
    new-instance v14, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v14, v1}, Landroid/content/ContentValues;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3043
    .end local v13           #values:Landroid/content/ContentValues;
    .local v14, values:Landroid/content/ContentValues;
    :try_start_2
    const-string v1, "is_ringtone"

    const-string v2, "1"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v14, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3051
    if-eqz p3, :cond_0

    .line 3052
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v3, v1

    .line 3055
    .local v3, cols:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 3057
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    :try_start_3
    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3058
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 3059
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3060
    const v1, 0x7f0700a8

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 3062
    .local v11, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v11, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3065
    .end local v11           #message:Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_0

    .line 3066
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3067
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 3034
    .end local v3           #cols:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v14           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 3036
    .local v9, ex:Ljava/lang/UnsupportedOperationException;
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t set contact ringtone flag for uri, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3045
    .end local v9           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v13       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v9

    .line 3046
    .restart local v9       #ex:Ljava/lang/UnsupportedOperationException;
    :goto_2
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t set ringtone flag for uri, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3065
    .end local v9           #ex:Ljava/lang/UnsupportedOperationException;
    .end local v13           #values:Landroid/content/ContentValues;
    .restart local v3       #cols:[Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v14       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_5

    .line 3066
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3067
    const/4 v8, 0x0

    :cond_5
    throw v1

    .line 3045
    .end local v3           #cols:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    :catch_2
    move-exception v9

    move-object v13, v14

    .end local v14           #values:Landroid/content/ContentValues;
    .restart local v13       #values:Landroid/content/ContentValues;
    goto :goto_2
.end method

.method public static setDRMNotificationRingtone(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 2854
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/htc/music/util/MusicUtils;->setDRMRingtone(Landroid/content/Context;Landroid/net/Uri;ZZ)V

    .line 2855
    return-void
.end method

.method public static setDRMRingtone(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 2850
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/htc/music/util/MusicUtils;->setDRMRingtone(Landroid/content/Context;Landroid/net/Uri;ZZ)V

    .line 2851
    return-void
.end method

.method public static setDRMRingtone(Landroid/content/Context;Landroid/net/Uri;ZZ)V
    .locals 11
    .parameter "context"
    .parameter "uri"
    .parameter "isRingtone"
    .parameter "isNotification"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2858
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "_data"

    aput-object v0, v2, v3

    const-string v0, "title"

    aput-object v0, v2, v4

    .line 2861
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 2867
    .local v9, resolver:Landroid/content/ContentResolver;
    :try_start_0
    new-instance v10, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 2868
    .local v10, values:Landroid/content/ContentValues;
    if-eqz p2, :cond_0

    .line 2869
    const-string v0, "is_ringtone"

    const-string v1, "1"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2873
    :cond_0
    if-eqz p3, :cond_1

    .line 2874
    const-string v0, "is_notification"

    const-string v1, "1"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2875
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v9, p1, v10, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2881
    const/4 v6, 0x0

    .line 2883
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_1
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2884
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2885
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2886
    if-eqz p2, :cond_4

    .line 2887
    const-string v0, "ringtone"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2888
    const v0, 0x7f07004d

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2889
    .local v8, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2900
    .end local v8           #message:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 2901
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2902
    const/4 v6, 0x0

    .line 2905
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_1
    return-void

    .line 2876
    :catch_0
    move-exception v7

    .line 2879
    .local v7, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_1

    .line 2890
    .end local v7           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_4
    if-eqz p3, :cond_2

    .line 2891
    :try_start_2
    const-string v0, "notification_sound"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2893
    const v0, 0x7f0700a7

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2895
    .restart local v8       #message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2900
    .end local v8           #message:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 2901
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2902
    const/4 v6, 0x0

    :cond_5
    throw v0
.end method

.method public static setIntPref(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2765
    const-string v2, "com.htc.music"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2767
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2768
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2769
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2770
    return-void
.end method

.method public static setNotificationRingtone(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 2791
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/htc/music/util/MusicUtils;->setRingtone(Landroid/content/Context;JZZ)V

    .line 2792
    return-void
.end method

.method public static setPlaylist(Landroid/database/Cursor;)Z
    .locals 8
    .parameter "cursor"

    .prologue
    const/4 v5, 0x0

    .line 3783
    if-eqz p0, :cond_0

    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v6, :cond_1

    .line 3784
    :cond_0
    const-string v6, "[MusicUtils]"

    const-string v7, "setPlaylist: attempt to set empty song list"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3809
    :goto_0
    return v5

    .line 3789
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v4

    .line 3790
    .local v4, slist:[I
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v0

    .line 3791
    .local v0, alist:[I
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v3

    .line 3794
    .local v3, playlist:[I
    const/4 v2, 0x1

    .line 3795
    .local v2, newlist:Z
    array-length v6, v4

    array-length v7, v3

    if-ne v6, v7, :cond_2

    .line 3796
    const/4 v2, 0x0

    .line 3798
    :cond_2
    if-nez v2, :cond_3

    .line 3800
    const-string v6, "[MusicUtils]"

    const-string v7, "We don\'t need to set the same list."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3807
    .end local v0           #alist:[I
    .end local v2           #newlist:Z
    .end local v3           #playlist:[I
    .end local v4           #slist:[I
    :catch_0
    move-exception v1

    .line 3808
    .local v1, ex:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3804
    .end local v1           #ex:Landroid/os/RemoteException;
    .restart local v0       #alist:[I
    .restart local v2       #newlist:Z
    .restart local v3       #playlist:[I
    .restart local v4       #slist:[I
    :cond_3
    :try_start_1
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList([I)V

    .line 3805
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6, v4}, Lcom/htc/music/IMediaPlaybackService;->setPlaylist([I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3806
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static setRingtone(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 2787
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/htc/music/util/MusicUtils;->setRingtone(Landroid/content/Context;JZZ)V

    .line 2788
    return-void
.end method

.method public static setRingtone(Landroid/content/Context;JZZ)V
    .locals 12
    .parameter "context"
    .parameter "id"
    .parameter "isRingtone"
    .parameter "isNotification"

    .prologue
    .line 2795
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 2797
    .local v9, resolver:Landroid/content/ContentResolver;
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 2801
    .local v10, ringUri:Landroid/net/Uri;
    :try_start_0
    new-instance v11, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 2802
    .local v11, values:Landroid/content/ContentValues;
    if-eqz p3, :cond_0

    .line 2803
    const-string v0, "is_ringtone"

    const-string v1, "1"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2807
    :cond_0
    if-eqz p4, :cond_1

    .line 2808
    const-string v0, "is_notification"

    const-string v1, "1"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2809
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v9, v10, v11, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2816
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "title"

    aput-object v1, v2, v0

    .line 2821
    .local v2, cols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2822
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2825
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2827
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2828
    if-eqz p3, :cond_4

    .line 2829
    const-string v0, "ringtone"

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2831
    const v0, 0x7f07004d

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2832
    .local v8, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2842
    .end local v8           #message:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 2843
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2844
    const/4 v6, 0x0

    .line 2847
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_1
    return-void

    .line 2810
    :catch_0
    move-exception v7

    .line 2812
    .local v7, ex:Ljava/lang/UnsupportedOperationException;
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t set ringtone flag for id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2833
    .end local v7           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_4
    if-eqz p4, :cond_2

    .line 2834
    :try_start_2
    const-string v0, "notification_sound"

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2836
    const v0, 0x7f0700a7

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2838
    .restart local v8       #message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2842
    .end local v8           #message:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 2843
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2844
    const/4 v6, 0x0

    :cond_5
    throw v0
.end method

.method public static setSpinnerState(Landroid/app/Activity;)V
    .locals 3
    .parameter "a"

    .prologue
    const v2, 0x2020052

    .line 1480
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1482
    instance-of v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    if-eqz v1, :cond_0

    .line 1483
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 1484
    .local v0, pb:Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 1485
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1509
    .end local v0           #pb:Landroid/widget/ProgressBar;
    :cond_0
    :goto_0
    return-void

    .line 1498
    :cond_1
    instance-of v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    if-eqz v1, :cond_0

    .line 1499
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 1500
    .restart local v0       #pb:Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 1501
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2779
    const-string v2, "com.htc.music"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2781
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2782
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2783
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2784
    return-void
.end method

.method public static setTabActivityResult(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "result"

    .prologue
    .line 3353
    const-string v0, "result"

    invoke-static {p0, v0, p1}, Lcom/htc/music/util/MusicUtils;->setIntPref(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3354
    return-void
.end method

.method public static setTabActivitySelectedId(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3365
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3366
    .local v4, q:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3367
    .local v2, len:I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveQueue mPlayListLen : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3368
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 3369
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3370
    .local v3, n:I
    if-nez v3, :cond_0

    .line 3371
    const-string v5, "0;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3368
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3373
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 3374
    and-int/lit8 v0, v3, 0xf

    .line 3375
    .local v0, digit:I
    shr-int/lit8 v3, v3, 0x4

    .line 3376
    sget-object v5, Lcom/htc/music/util/MusicUtils;->hexdigits:[C

    aget-char v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3378
    .end local v0           #digit:I
    :cond_1
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3381
    .end local v3           #n:I
    :cond_2
    const-string v5, "selectedid"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/htc/music/util/MusicUtils;->setStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3382
    return-void
.end method

.method public static showContactRingtoneToast(Landroid/content/Context;J)V
    .locals 9
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 2981
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "_data"

    aput-object v0, v2, v8

    const-string v0, "title"

    aput-object v0, v2, v4

    .line 2986
    .local v2, cols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2987
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2989
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2991
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 2992
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2993
    const v0, 0x7f0700a8

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2995
    .local v7, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v7, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2998
    .end local v7           #message:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 2999
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3000
    const/4 v6, 0x0

    .line 3003
    :cond_1
    return-void

    .line 2998
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 2999
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3000
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method public static showDRMContactRingtoneToast(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 9
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 3074
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "_data"

    aput-object v0, v2, v8

    const-string v0, "title"

    aput-object v0, v2, v3

    .line 3077
    .local v2, cols:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 3079
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3080
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 3081
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3082
    const v0, 0x7f0700a8

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3084
    .local v7, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v7, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3087
    .end local v7           #message:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 3088
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3089
    const/4 v6, 0x0

    .line 3092
    :cond_1
    return-void

    .line 3087
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 3088
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3089
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method public static shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "npc"

    .prologue
    const/4 v2, 0x0

    .line 1629
    const/4 v3, 0x1

    new-array v5, v2, [I

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZLcom/htc/music/NpCategory;[I)V

    .line 1630
    return-void
.end method

.method public static toIntList(Ljava/util/ArrayList;)[I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 3418
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p0, :cond_1

    .line 3419
    const/4 v1, 0x0

    .line 3424
    :cond_0
    return-object v1

    .line 3420
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 3421
    .local v1, result:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3422
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 3421
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static unbindFromService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    .line 355
    new-instance v2, Lcom/htc/music/util/MusicUtils$ServiceOwner;

    invoke-direct {v2, p1, p0}, Lcom/htc/music/util/MusicUtils$ServiceOwner;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 356
    .local v2, serviceOwner:Lcom/htc/music/util/MusicUtils$ServiceOwner;
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/util/MusicUtils$ServiceBinder;

    .line 357
    .local v1, sb:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    if-nez v1, :cond_0

    .line 358
    const-string v3, "[MusicUtils]"

    const-string v4, "Trying to unbind for unknown Context"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :goto_0
    return-void

    .line 363
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "[MusicUtils]"

    const-string v4, "can\'t unbind service"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v3, "[MusicUtils]"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static wasDRMFilePlaying(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 4487
    if-eqz p0, :cond_0

    const-string v0, "content://drm/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4488
    const/4 v0, 0x1

    .line 4490
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
