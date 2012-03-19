.class public final Landroid/provider/DrmStore;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/DrmStore$DrmConstraint;,
        Landroid/provider/DrmStore$UpdateLicense;,
        Landroid/provider/DrmStore$ErrorCode;,
        Landroid/provider/DrmStore$Err;,
        Landroid/provider/DrmStore$Stamp;,
        Landroid/provider/DrmStore$AlbumArt;,
        Landroid/provider/DrmStore$Albums;,
        Landroid/provider/DrmStore$Artists;,
        Landroid/provider/DrmStore$Jar;,
        Landroid/provider/DrmStore$Video;,
        Landroid/provider/DrmStore$Audio;,
        Landroid/provider/DrmStore$Images;,
        Landroid/provider/DrmStore$Columns;
    }
.end annotation


# static fields
.field private static final ACCESS_DRM_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_DRM"

.field public static final ALBUMS_PROJECTION:[Ljava/lang/String; = null

.field public static final ARTISTS_PROJECTION:[Ljava/lang/String; = null

.field public static final AUTHORITY:Ljava/lang/String; = "drm"

.field public static final CONSTRAINT_PROJECTION:[Ljava/lang/String; = null

.field public static final DCFLIST_PROJECTION:[Ljava/lang/String; = null

.field public static final DELIVERY_TYPE_PROJECTION:[Ljava/lang/String; = null

.field public static final DRM_COMBINED_DELIVERY:I = 0x2

.field public static final DRM_DELIVERY_CD:I = 0xf0

.field public static final DRM_DELIVERY_FL:I = 0xf

.field public static final DRM_DELIVERY_SD:I = 0xf00

.field public static final DRM_FORWARD_LOCK:I = 0x1

.field public static final DRM_PERMISSION_DISPLAY:I = 0x2

.field public static final DRM_PERMISSION_EXECUTE:I = 0x3

.field public static final DRM_PERMISSION_PLAY:I = 0x1

.field public static final DRM_PERMISSION_PRINT:I = 0x4

.field public static final DRM_SEPARATE_DELIVERY:I = 0x3

.field public static final DrmUriCollection:[Landroid/net/Uri; = null

.field public static final FILEPATH_PROJECTION:[Ljava/lang/String; = null

.field private static final LOGD:Z = true

.field public static final METADATA_PROJECTION:[Ljava/lang/String; = null

.field public static final MIDLET_PROJECTION:[Ljava/lang/String; = null

.field public static final STAMP_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DrmStore"

.field public static final TITLE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 394
    new-array v0, v7, [Landroid/net/Uri;

    sget-object v1, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v3

    sget-object v1, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v4

    sget-object v1, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v5

    sget-object v1, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v6

    sput-object v0, Landroid/provider/DrmStore;->DrmUriCollection:[Landroid/net/Uri;

    .line 438
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string/jumbo v1, "title"

    aput-object v1, v0, v5

    const-string v1, "content_url"

    aput-object v1, v0, v6

    sput-object v0, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    .line 445
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Landroid/provider/DrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    .line 450
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date_added"

    aput-object v1, v0, v4

    sput-object v0, Landroid/provider/DrmStore;->CONSTRAINT_PROJECTION:[Ljava/lang/String;

    .line 455
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "_size"

    aput-object v1, v0, v5

    const-string/jumbo v1, "title"

    aput-object v1, v0, v6

    const-string/jumbo v1, "mime_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "message_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "delivery_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "existence"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "content_offset"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    .line 468
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "delivery_type"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/DrmStore;->DCFLIST_PROJECTION:[Ljava/lang/String;

    .line 475
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string/jumbo v1, "mime_type"

    aput-object v1, v0, v5

    const-string v1, "content_id"

    aput-object v1, v0, v6

    sput-object v0, Landroid/provider/DrmStore;->METADATA_PROJECTION:[Ljava/lang/String;

    .line 482
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Landroid/provider/DrmStore;->MIDLET_PROJECTION:[Ljava/lang/String;

    .line 487
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "album_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "album_key"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/DrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    .line 493
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "artist_id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    const-string v1, "artist_key"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/DrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    .line 499
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "time_stamp"

    aput-object v1, v0, v4

    const-string v1, "clock_stamp"

    aput-object v1, v0, v5

    const-string/jumbo v1, "timezone_stamp"

    aput-object v1, v0, v6

    const-string/jumbo v1, "time_differential"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "network_sync"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 516
    return-void
.end method

.method public static final acquireRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"
    .parameter "className"

    .prologue
    .line 847
    invoke-static {p0, p1, p2, p3}, Landroid/provider/DrmHelper;->acquireRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final addDrmFile(Landroid/content/ContentResolver;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;
    .locals 8
    .parameter "cr"
    .parameter "file"
    .parameter "title"

    .prologue
    .line 284
    const/4 v1, 0x0

    .line 285
    .local v1, fis:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 288
    .local v4, result:Landroid/content/Intent;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    if-nez p2, :cond_0

    .line 290
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 291
    const/16 v5, 0x2e

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 292
    .local v3, lastDot:I
    if-lez v3, :cond_0

    .line 293
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 296
    .end local v3           #lastDot:I
    :cond_0
    invoke-static {p0, v2, p2}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/ContentResolver;Ljava/io/FileInputStream;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .line 301
    if-eqz v2, :cond_1

    .line 302
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v1, v2

    .line 308
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    return-object v4

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v5, "DrmStore"

    const-string/jumbo v6, "pushing file failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 301
    if-eqz v1, :cond_2

    .line 302
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 303
    :catch_1
    move-exception v0

    .line 304
    .local v0, e:Ljava/io/IOException;
    const-string v5, "DrmStore"

    const-string v6, "IOException in DrmStore.addDrmFile()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 300
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 301
    :goto_3
    if-eqz v1, :cond_3

    .line 302
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 300
    :cond_3
    :goto_4
    throw v5

    .line 303
    :catch_2
    move-exception v0

    .line 304
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "DrmStore"

    const-string v7, "IOException in DrmStore.addDrmFile()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 303
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    .line 304
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "DrmStore"

    const-string v6, "IOException in DrmStore.addDrmFile()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 300
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 297
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static final addDrmFile(Landroid/content/ContentResolver;Ljava/io/FileInputStream;Ljava/lang/String;)Landroid/content/Intent;
    .locals 22
    .parameter "cr"
    .parameter "fis"
    .parameter "title"

    .prologue
    .line 320
    const/4 v10, 0x0

    .line 321
    .local v10, os:Ljava/io/OutputStream;
    const/4 v11, 0x0

    .line 324
    .local v11, result:Landroid/content/Intent;
    :try_start_0
    new-instance v4, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->available()I

    move-result v19

    const-string v20, "application/vnd.oma.drm.message"

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 326
    .local v4, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v4}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v9

    .line 327
    .local v9, mimeType:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v14

    .line 329
    .local v14, size:J
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v8

    .line 330
    .local v8, manager:Landroid/drm/mobile1/DrmRightsManager;
    invoke-virtual {v8, v4}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v13

    .line 331
    .local v13, rights:Landroid/drm/mobile1/DrmRights;
    invoke-virtual {v4, v13}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v16

    .line 333
    .local v16, stream:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 334
    .local v5, contentUri:Landroid/net/Uri;
    const-string v19, "audio/"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 335
    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    .line 342
    :goto_0
    if-eqz v5, :cond_7

    .line 343
    new-instance v18, Landroid/content/ContentValues;

    const/16 v19, 0x3

    invoke-direct/range {v18 .. v19}, Landroid/content/ContentValues;-><init>(I)V

    .line 344
    .local v18, values:Landroid/content/ContentValues;
    const-string/jumbo v19, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v19, "_size"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 346
    const-string/jumbo v19, "mime_type"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    .line 349
    .local v17, uri:Landroid/net/Uri;
    if-eqz v17, :cond_7

    .line 350
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v10

    .line 352
    const/16 v19, 0x3e8

    move/from16 v0, v19

    new-array v3, v0, [B

    .line 355
    .local v3, buffer:[B
    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, count:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_6

    .line 356
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v3, v0, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 363
    .end local v3           #buffer:[B
    .end local v4           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v5           #contentUri:Landroid/net/Uri;
    .end local v6           #count:I
    .end local v8           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v13           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v14           #size:J
    .end local v16           #stream:Ljava/io/InputStream;
    .end local v17           #uri:Landroid/net/Uri;
    .end local v18           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 364
    .local v7, e:Ljava/lang/Exception;
    :goto_2
    :try_start_1
    const-string v19, "DrmStore"

    const-string/jumbo v20, "pushing file failed"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    if-eqz p1, :cond_0

    .line 368
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 369
    :cond_0
    if-eqz v10, :cond_1

    .line 370
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 376
    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    :goto_3
    return-object v11

    .line 336
    .restart local v4       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #contentUri:Landroid/net/Uri;
    .restart local v8       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v9       #mimeType:Ljava/lang/String;
    .restart local v13       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v14       #size:J
    .restart local v16       #stream:Ljava/io/InputStream;
    :cond_2
    :try_start_3
    const-string/jumbo v19, "image/"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 337
    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 339
    :cond_3
    const-string v19, "DrmStore"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "unsupported mime type "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 366
    .end local v4           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v5           #contentUri:Landroid/net/Uri;
    .end local v8           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v13           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v14           #size:J
    .end local v16           #stream:Ljava/io/InputStream;
    :catchall_0
    move-exception v19

    .line 367
    :goto_4
    if-eqz p1, :cond_4

    .line 368
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 369
    :cond_4
    if-eqz v10, :cond_5

    .line 370
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 366
    :cond_5
    :goto_5
    throw v19

    .line 358
    .restart local v3       #buffer:[B
    .restart local v4       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #contentUri:Landroid/net/Uri;
    .restart local v6       #count:I
    .restart local v8       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v9       #mimeType:Ljava/lang/String;
    .restart local v13       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v14       #size:J
    .restart local v16       #stream:Ljava/io/InputStream;
    .restart local v17       #uri:Landroid/net/Uri;
    .restart local v18       #values:Landroid/content/ContentValues;
    :cond_6
    :try_start_5
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 359
    .end local v11           #result:Landroid/content/Intent;
    .local v12, result:Landroid/content/Intent;
    :try_start_6
    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-object v11, v12

    .line 367
    .end local v3           #buffer:[B
    .end local v6           #count:I
    .end local v12           #result:Landroid/content/Intent;
    .end local v17           #uri:Landroid/net/Uri;
    .end local v18           #values:Landroid/content/ContentValues;
    .restart local v11       #result:Landroid/content/Intent;
    :cond_7
    if-eqz p1, :cond_8

    .line 368
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    .line 369
    :cond_8
    if-eqz v10, :cond_1

    .line 370
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 371
    :catch_1
    move-exception v7

    .line 372
    .local v7, e:Ljava/io/IOException;
    const-string v19, "DrmStore"

    const-string v20, "IOException in DrmStore.addDrmFile()"

    .end local v4           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v5           #contentUri:Landroid/net/Uri;
    .end local v8           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v13           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v14           #size:J
    .end local v16           #stream:Ljava/io/InputStream;
    :goto_6
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 371
    .end local v7           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 372
    .restart local v7       #e:Ljava/io/IOException;
    const-string v20, "DrmStore"

    const-string v21, "IOException in DrmStore.addDrmFile()"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 371
    .local v7, e:Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 372
    .local v7, e:Ljava/io/IOException;
    const-string v19, "DrmStore"

    const-string v20, "IOException in DrmStore.addDrmFile()"

    goto :goto_6

    .line 366
    .end local v7           #e:Ljava/io/IOException;
    .end local v11           #result:Landroid/content/Intent;
    .restart local v3       #buffer:[B
    .restart local v4       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #contentUri:Landroid/net/Uri;
    .restart local v6       #count:I
    .restart local v8       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v9       #mimeType:Ljava/lang/String;
    .restart local v12       #result:Landroid/content/Intent;
    .restart local v13       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v14       #size:J
    .restart local v16       #stream:Ljava/io/InputStream;
    .restart local v17       #uri:Landroid/net/Uri;
    .restart local v18       #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v19

    move-object v11, v12

    .end local v12           #result:Landroid/content/Intent;
    .restart local v11       #result:Landroid/content/Intent;
    goto :goto_4

    .line 363
    .end local v11           #result:Landroid/content/Intent;
    .restart local v12       #result:Landroid/content/Intent;
    :catch_4
    move-exception v7

    move-object v11, v12

    .end local v12           #result:Landroid/content/Intent;
    .restart local v11       #result:Landroid/content/Intent;
    goto/16 :goto_2
.end method

.method public static final addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"

    .prologue
    .line 668
    const-string v0, "DrmStore"

    const-string v1, " @@@@@     addDrmFile with url (4)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 7
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"

    .prologue
    .line 695
    const-string v0, "DrmStore"

    const-string v1, " @@@@@     addDrmFile with url and destination (5)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"
    .parameter "targetFolder"

    .prologue
    .line 721
    invoke-static/range {p0 .. p6}, Landroid/provider/DrmHelper;->addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final addDrmFileWithoutRights(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"

    .prologue
    .line 740
    invoke-static/range {p0 .. p5}, Landroid/provider/DrmHelper;->addDrmFileWithoutRights(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final addDrmFileWithoutRightsAndRebuild(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"

    .prologue
    .line 735
    invoke-static/range {p0 .. p5}, Landroid/provider/DrmHelper;->addDrmFileWithoutRightsAndRebuild(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static checkBeforeDownload(Landroid/content/Context;[BLjava/lang/String;)I
    .locals 1
    .parameter "context"
    .parameter "buffer"
    .parameter "mediaType"

    .prologue
    .line 649
    invoke-static {p0, p1, p2}, Landroid/provider/DrmHelper;->checkBeforeDownload(Landroid/content/Context;[BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final checkExpiration(Landroid/content/ContentResolver;Landroid/provider/DrmStore$DrmConstraint;Landroid/net/Uri;)I
    .locals 1
    .parameter "cr"
    .parameter "dcr"
    .parameter "contentUri"

    .prologue
    .line 820
    invoke-static {p0, p1, p2}, Landroid/provider/DrmHelper;->checkExpiration(Landroid/content/ContentResolver;Landroid/provider/DrmStore$DrmConstraint;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static final checkExpiration(Landroid/net/Uri;Landroid/app/Activity;)I
    .locals 1
    .parameter "uri"
    .parameter "activity"

    .prologue
    .line 902
    const/4 v0, 0x0

    return v0
.end method

.method public static final checkExpiration(Ljava/lang/String;Landroid/app/Activity;)I
    .locals 1
    .parameter "fileName"
    .parameter "activity"

    .prologue
    .line 906
    const/4 v0, 0x0

    return v0
.end method

.method public static checkFileExistence(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 1
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 883
    invoke-static {p0, p1}, Landroid/provider/DrmHelper;->checkFileExistence(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static final consumeRights(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 910
    const/4 v0, 0x0

    return v0
.end method

.method public static final consumeRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 1
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"
    .parameter "permissionType"

    .prologue
    .line 832
    invoke-static {p0, p1, p2, p3}, Landroid/provider/DrmHelper;->consumeRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static final consumeRights(Ljava/lang/String;)I
    .locals 1
    .parameter "fileName"

    .prologue
    .line 914
    const/4 v0, 0x0

    return v0
.end method

.method public static final deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 1
    .parameter "cr"
    .parameter "uri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 763
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/DrmStore;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 1
    .parameter "cr"
    .parameter "uri"
    .parameter "filePath"

    .prologue
    .line 751
    invoke-static {p0, p1, p2}, Landroid/provider/DrmHelper;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static enforceAccessDrmPermission(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 386
    const-string v0, "android.permission.ACCESS_DRM"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DRM permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_0
    return-void
.end method

.method public static getDcfFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 1
    .parameter "contentResolver"
    .parameter "uri"

    .prologue
    .line 887
    invoke-static {p0, p1}, Landroid/provider/DrmHelper;->getDcfFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDmFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 1
    .parameter "contentResolver"
    .parameter "uri"

    .prologue
    .line 891
    invoke-static {p0, p1}, Landroid/provider/DrmHelper;->getDmFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1
    .parameter "cr"
    .parameter "uri"
    .parameter "permissionType"

    .prologue
    .line 809
    invoke-static {p0, p1, p2}, Landroid/provider/DrmHelper;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "uri"
    .parameter "strFilePath"

    .prologue
    .line 774
    invoke-static {p0, p1, p2}, Landroid/provider/DrmHelper;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/provider/DrmStore$UpdateLicense;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "uri"
    .parameter "strFilePath"
    .parameter "updateLicense"

    .prologue
    .line 786
    invoke-static {p0, p1, p2, p3}, Landroid/provider/DrmHelper;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/provider/DrmStore$UpdateLicense;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 930
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "uri"
    .parameter "strFilePath"

    .prologue
    .line 869
    invoke-static {p0, p1, p2}, Landroid/provider/DrmHelper;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmContrain(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1
    .parameter "cr"
    .parameter "uri"
    .parameter "permissionType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 798
    invoke-static {p0, p1, p2}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmFileStatus(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 918
    const/4 v0, 0x0

    return v0
.end method

.method public static final getDrmFileStatus(Ljava/lang/String;)I
    .locals 1
    .parameter "fileName"

    .prologue
    .line 922
    const/4 v0, 0x0

    return v0
.end method

.method public static final getDrmLicenseInfo(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 898
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getUTC(Landroid/content/Context;)Ljava/util/Date;
    .locals 1
    .parameter "cx"

    .prologue
    .line 873
    invoke-static {p0}, Landroid/provider/DrmHelper;->getUTC(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static final isDrmContent(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 934
    const/4 v0, 0x1

    return v0
.end method

.method public static final isDrmContent(Ljava/lang/String;)Z
    .locals 1
    .parameter "filePath"

    .prologue
    .line 938
    const/4 v0, 0x1

    return v0
.end method

.method public static final isFLDrmFile(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 726
    invoke-static {p0}, Landroid/provider/DrmHelper;->isFLDrmFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static final isRightsUnlimited(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 946
    const/4 v0, 0x1

    return v0
.end method

.method public static final isRightsValidByResultCode(I)Z
    .locals 1
    .parameter "resultCode"

    .prologue
    .line 942
    const/4 v0, 0x1

    return v0
.end method

.method public static final renewRights(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .parameter "cx"
    .parameter "uri"

    .prologue
    .line 926
    const/4 v0, 0x0

    return v0
.end method

.method public static final renewRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 1
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"

    .prologue
    .line 843
    invoke-static {p0, p1, p2}, Landroid/provider/DrmHelper;->renewRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final renewRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"
    .parameter "className"

    .prologue
    .line 858
    invoke-static {p0, p1, p2, p3}, Landroid/provider/DrmHelper;->renewRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;
    .locals 1
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"
    .parameter "destination"
    .parameter "skipMediaDbUpdate"

    .prologue
    .line 747
    invoke-static/range {p0 .. p6}, Landroid/provider/DrmHelper;->updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method
