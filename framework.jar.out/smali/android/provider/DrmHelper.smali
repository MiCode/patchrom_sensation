.class public final Landroid/provider/DrmHelper;
.super Ljava/lang/Object;
.source "DrmHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/DrmHelper$DrmContentType;,
        Landroid/provider/DrmHelper$DrmStatus;,
        Landroid/provider/DrmHelper$RightsObject;
    }
.end annotation


# static fields
.field private static CMD_CHMOD:[Ljava/lang/String; = null

.field private static final DELIVERY_TYPE_PROJECTION:[Ljava/lang/String; = null

.field private static DISABLE_COMBINED_DELIVERY:Z = false

.field private static DISABLE_FORWORD_LOCK:Z = false

.field private static DISABLE_SEPARATE_DELIVERY:Z = false

.field private static final DRM_FIND_BASE64_PATTERN:Ljava/lang/String; = "Content-Transfer-Encoding: base64"

.field public static final DRM_HTC_RIGHTS_DIRECTORY_PATH:Ljava/lang/String; = "/data/data/com.android.providers.drm/rights"

.field public static final DRM_HTC_TMP_DIRECTORY:Ljava/lang/String; = "tmp"

.field private static final DRM_REPLACE_PATTERN:Ljava/lang/String; = "Content-Transfer-Encoding: binary"

.field private static final GARBAGE_FILE:Ljava/lang/String; = "garbage"

.field private static final INSTALL_FOLDER:Ljava/lang/String; = "/download/"

.field private static final LOGD:Z = true

.field private static final PLATFORM_7x27:Ljava/lang/String; = "7x27"

.field private static final PLATFORM_MSM7K:Ljava/lang/String; = "msm7k"

.field private static REBUILD_DATABASE:Z = false

.field private static final REPEAT_COUNT:I = 0x3

.field public static final SUPPORTS_EXTERNAL_STORAGE:I = 0x1

.field public static final SUPPORTS_PHONE_STORAGE:I = 0x2

.field private static SWITCH_TO_CID:Z = false

.field private static final TAG:Ljava/lang/String; = "DrmHelper"

.field public static final VERSION:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 364
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "delivery_type"

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/DrmHelper;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    .line 641
    sput-boolean v2, Landroid/provider/DrmHelper;->REBUILD_DATABASE:Z

    .line 658
    sput-boolean v2, Landroid/provider/DrmHelper;->DISABLE_FORWORD_LOCK:Z

    .line 659
    sput-boolean v2, Landroid/provider/DrmHelper;->DISABLE_COMBINED_DELIVERY:Z

    .line 660
    sput-boolean v2, Landroid/provider/DrmHelper;->DISABLE_SEPARATE_DELIVERY:Z

    .line 661
    sput-boolean v2, Landroid/provider/DrmHelper;->SWITCH_TO_CID:Z

    .line 664
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "chmod"

    aput-object v1, v0, v2

    const-string v1, "666"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/DrmHelper;->CMD_CHMOD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    return-void
.end method

.method public static final CommitRights(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/DrmHelper$DrmStatus;
    .locals 4
    .parameter "context"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-static {p0}, Landroid/provider/DrmStore;->enforceAccessDrmPermission(Landroid/content/Context;)V

    .line 224
    const-string v3, "content://drm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 226
    .local v2, uri:Landroid/net/Uri;
    invoke-static {p0, v2}, Landroid/provider/DrmHelper;->getContentPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, filePath:Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/DrmHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 228
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 231
    .end local v0           #filePath:Ljava/lang/String;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 232
    .restart local v0       #filePath:Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/DrmHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 233
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    :cond_1
    invoke-static {p0, v0}, Landroid/provider/DrmHelper;->getContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 241
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_2
    if-nez v2, :cond_3

    .line 242
    sget-object v3, Landroid/provider/DrmHelper$DrmStatus;->NO_RECORD:Landroid/provider/DrmHelper$DrmStatus;

    .line 259
    :goto_0
    return-object v3

    .line 249
    :cond_3
    const/4 v3, 0x3

    invoke-static {p0, v2, v0, v3}, Landroid/provider/DrmStore;->consumeRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v1

    .line 251
    .local v1, result:I
    packed-switch v1, :pswitch_data_0

    .line 259
    :pswitch_0
    sget-object v3, Landroid/provider/DrmHelper$DrmStatus;->UNKNOWN_ERROR:Landroid/provider/DrmHelper$DrmStatus;

    goto :goto_0

    .line 253
    :pswitch_1
    sget-object v3, Landroid/provider/DrmHelper$DrmStatus;->SUCCESS:Landroid/provider/DrmHelper$DrmStatus;

    goto :goto_0

    .line 255
    :pswitch_2
    sget-object v3, Landroid/provider/DrmHelper$DrmStatus;->CONSTRAINT_EXPIRED:Landroid/provider/DrmHelper$DrmStatus;

    goto :goto_0

    .line 257
    :pswitch_3
    sget-object v3, Landroid/provider/DrmHelper$DrmStatus;->NO_RIGHTS_INSTALLED:Landroid/provider/DrmHelper$DrmStatus;

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static final DeleteContent(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/DrmHelper$DrmStatus;
    .locals 3
    .parameter "context"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-static {p0}, Landroid/provider/DrmStore;->enforceAccessDrmPermission(Landroid/content/Context;)V

    .line 332
    const-string v2, "content://drm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 334
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p0, v1}, Landroid/provider/DrmHelper;->getContentPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, filePath:Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/DrmHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 336
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 339
    .end local v0           #filePath:Ljava/lang/String;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 340
    .restart local v0       #filePath:Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/DrmHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 341
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 343
    :cond_1
    invoke-static {p0, v0}, Landroid/provider/DrmHelper;->getContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 349
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_2
    if-nez v1, :cond_3

    .line 350
    sget-object v2, Landroid/provider/DrmHelper$DrmStatus;->NO_RECORD:Landroid/provider/DrmHelper$DrmStatus;

    .line 361
    :goto_0
    return-object v2

    .line 357
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/provider/DrmStore;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    .line 358
    sget-object v2, Landroid/provider/DrmHelper$DrmStatus;->SUCCESS:Landroid/provider/DrmHelper$DrmStatus;

    goto :goto_0

    .line 361
    :cond_4
    sget-object v2, Landroid/provider/DrmHelper$DrmStatus;->UNKNOWN_ERROR:Landroid/provider/DrmHelper$DrmStatus;

    goto :goto_0
.end method

.method public static final GetContentStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .parameter "context"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p0}, Landroid/provider/DrmStore;->enforceAccessDrmPermission(Landroid/content/Context;)V

    .line 78
    const-string v2, "content://drm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 80
    .local v1, uri:Landroid/net/Uri;
    invoke-static {p0, v1}, Landroid/provider/DrmHelper;->getContentPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, filePath:Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/DrmHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 82
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    .end local v0           #filePath:Ljava/lang/String;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 86
    .restart local v0       #filePath:Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/DrmHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_1
    invoke-static {p0, v0}, Landroid/provider/DrmHelper;->getContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 95
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_2
    if-nez v1, :cond_3

    .line 96
    const-string v2, "DrmHelper"

    const-string v3, "Can\'t find such record."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v2, 0x0

    .line 104
    :goto_0
    return-object v2

    :cond_3
    invoke-static {p0, v1, v0}, Landroid/provider/DrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0
.end method

.method public static final GetRightsObject(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/DrmHelper$RightsObject;
    .locals 6
    .parameter "context"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 172
    invoke-static {p0}, Landroid/provider/DrmStore;->enforceAccessDrmPermission(Landroid/content/Context;)V

    .line 176
    const-string v4, "content://drm"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 178
    .local v2, uri:Landroid/net/Uri;
    invoke-static {p0, v2}, Landroid/provider/DrmHelper;->getContentPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, filePath:Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/DrmHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 180
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 183
    .end local v1           #filePath:Ljava/lang/String;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 184
    .restart local v1       #filePath:Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/DrmHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 185
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 187
    :cond_1
    invoke-static {p0, v1}, Landroid/provider/DrmHelper;->getContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 193
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_2
    if-nez v2, :cond_3

    .line 207
    :goto_0
    return-object v3

    .line 201
    :cond_3
    invoke-static {p0, v2, v1}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    .line 202
    .local v0, constraint:Landroid/provider/DrmStore$DrmConstraint;
    if-nez v0, :cond_4

    .line 203
    const-string v4, "DrmHelper"

    const-string v5, "There is no rights installed."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :cond_4
    new-instance v3, Landroid/provider/DrmHelper$RightsObject;

    invoke-direct {v3, v0}, Landroid/provider/DrmHelper$RightsObject;-><init>(Landroid/provider/DrmStore$DrmConstraint;)V

    goto :goto_0
.end method

.method public static final GetUTC(Landroid/content/Context;)Ljava/util/Date;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 493
    invoke-static {p0}, Landroid/provider/DrmStore;->enforceAccessDrmPermission(Landroid/content/Context;)V

    .line 495
    invoke-static {p0}, Landroid/provider/DrmStore;->getUTC(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static final NeedToEncrypt(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 6905
    const-string v0, "application/java-archive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 6908
    const/4 v0, 0x1

    .line 6910
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final RenewRights(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/provider/DrmHelper$DrmStatus;
    .locals 4
    .parameter "context"
    .parameter "path"
    .parameter "notifyClassName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-static {p0}, Landroid/provider/DrmStore;->enforceAccessDrmPermission(Landroid/content/Context;)V

    .line 279
    const-string v3, "content://drm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 280
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 281
    .local v2, uri:Landroid/net/Uri;
    invoke-static {p0, v2}, Landroid/provider/DrmHelper;->getContentPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, filePath:Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/DrmHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 283
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 286
    .end local v0           #filePath:Ljava/lang/String;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 287
    .restart local v0       #filePath:Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/DrmHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 288
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 290
    :cond_1
    invoke-static {p0, v0}, Landroid/provider/DrmHelper;->getContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 296
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_2
    if-nez v2, :cond_3

    .line 297
    sget-object v3, Landroid/provider/DrmHelper$DrmStatus;->NO_RECORD:Landroid/provider/DrmHelper$DrmStatus;

    .line 313
    :goto_0
    return-object v3

    .line 304
    :cond_3
    invoke-static {p0, v2, v0, p2}, Landroid/provider/DrmStore;->renewRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 305
    .local v1, result:I
    sparse-switch v1, :sswitch_data_0

    .line 313
    sget-object v3, Landroid/provider/DrmHelper$DrmStatus;->UNKNOWN_ERROR:Landroid/provider/DrmHelper$DrmStatus;

    goto :goto_0

    .line 307
    :sswitch_0
    sget-object v3, Landroid/provider/DrmHelper$DrmStatus;->NO_RIGHT_ISSUER:Landroid/provider/DrmHelper$DrmStatus;

    goto :goto_0

    .line 309
    :sswitch_1
    sget-object v3, Landroid/provider/DrmHelper$DrmStatus;->INVALID_CONTENT:Landroid/provider/DrmHelper$DrmStatus;

    goto :goto_0

    .line 311
    :sswitch_2
    sget-object v3, Landroid/provider/DrmHelper$DrmStatus;->SUCCESS:Landroid/provider/DrmHelper$DrmStatus;

    goto :goto_0

    .line 305
    :sswitch_data_0
    .sparse-switch
        -0x9 -> :sswitch_0
        -0x2 -> :sswitch_1
        0x0 -> :sswitch_2
    .end sparse-switch
.end method

.method private static final SupportForwardLockOnly()Z
    .locals 2

    .prologue
    .line 6738
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9e

    if-ne v0, v1, :cond_1

    .line 6763
    :cond_0
    const/4 v0, 0x1

    .line 6765
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final VerifyRights(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/DrmHelper$DrmStatus;
    .locals 5
    .parameter "context"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {p0}, Landroid/provider/DrmStore;->enforceAccessDrmPermission(Landroid/content/Context;)V

    .line 120
    const-string v4, "content://drm"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 122
    .local v3, uri:Landroid/net/Uri;
    invoke-static {p0, v3}, Landroid/provider/DrmHelper;->getContentPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, filePath:Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/DrmHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 124
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 127
    .end local v1           #filePath:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 128
    .restart local v1       #filePath:Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/DrmHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 129
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 131
    :cond_1
    invoke-static {p0, v1}, Landroid/provider/DrmHelper;->getContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 137
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_2
    if-nez v3, :cond_3

    .line 138
    sget-object v4, Landroid/provider/DrmHelper$DrmStatus;->NO_RECORD:Landroid/provider/DrmHelper$DrmStatus;

    .line 158
    :goto_0
    return-object v4

    .line 145
    :cond_3
    invoke-static {p0, v3, v1}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    .line 146
    .local v0, constraint:Landroid/provider/DrmStore$DrmConstraint;
    if-nez v0, :cond_4

    .line 147
    sget-object v4, Landroid/provider/DrmHelper$DrmStatus;->NO_RIGHTS_INSTALLED:Landroid/provider/DrmHelper$DrmStatus;

    goto :goto_0

    .line 150
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0, v3}, Landroid/provider/DrmStore;->checkExpiration(Landroid/content/ContentResolver;Landroid/provider/DrmStore$DrmConstraint;Landroid/net/Uri;)I

    move-result v2

    .line 152
    .local v2, result:I
    sparse-switch v2, :sswitch_data_0

    .line 158
    sget-object v4, Landroid/provider/DrmHelper$DrmStatus;->GENERAL_FAILURE:Landroid/provider/DrmHelper$DrmStatus;

    goto :goto_0

    .line 154
    :sswitch_0
    sget-object v4, Landroid/provider/DrmHelper$DrmStatus;->CONSTRAINT_EXPIRED:Landroid/provider/DrmHelper$DrmStatus;

    goto :goto_0

    .line 156
    :sswitch_1
    sget-object v4, Landroid/provider/DrmHelper$DrmStatus;->SUCCESS:Landroid/provider/DrmHelper$DrmStatus;

    goto :goto_0

    .line 152
    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method public static final acquireRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 18
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"
    .parameter "className"

    .prologue
    .line 6028
    const-string v2, "DrmHelper"

    const-string v3, "********acquireRights"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6030
    const/16 v16, 0x0

    .line 6032
    .local v16, uri:Landroid/net/Uri;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 6034
    :cond_0
    const-string v2, "DrmHelper"

    const-string v3, "acquireRights : -2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6036
    const/4 v2, 0x0

    .line 6151
    :goto_0
    return-object v2

    .line 6039
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v5, "_data=?"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v6, v3

    const-string v7, "_id"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 6041
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_2

    .line 6043
    const-string v2, "DrmHelper"

    const-string v3, "acquireRights : -6"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6045
    const/4 v2, 0x0

    goto :goto_0

    .line 6046
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 6048
    const-string v2, "DrmHelper"

    const-string v3, "acquireRights no record."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6050
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 6051
    const/4 v2, 0x0

    goto :goto_0

    .line 6054
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6055
    const-string/jumbo v2, "message_type"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 6056
    .local v15, messageTypeColumnId:I
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 6057
    .local v14, messageType:Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 6059
    const-string v2, "application/vnd.oma.drm.content"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 6061
    const-string v2, "DrmHelper"

    const-string v3, "acquireRights : -2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6063
    const/4 v2, 0x0

    goto :goto_0

    .line 6066
    :cond_4
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6068
    .local v11, file:Ljava/io/File;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6069
    .local v12, fis:Ljava/io/InputStream;
    new-instance v9, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v12}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-direct {v9, v12, v2, v14}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 6070
    .local v9, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v9}, Landroid/drm/mobile1/DrmRawContent;->getRightsAddress()Ljava/lang/String;

    move-result-object v13

    .line 6071
    .local v13, issuer:Ljava/lang/String;
    if-nez v13, :cond_5

    .line 6073
    const-string v2, "DrmHelper"

    const-string v3, "Null issuer : -9"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6075
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 6076
    const/4 v2, 0x0

    goto :goto_0

    .line 6077
    :cond_5
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 6079
    const-string v2, "DrmHelper"

    const-string v3, "Empty issuer : -9"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6081
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 6082
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 6084
    :cond_6
    const-string v2, "\\"

    const-string v3, "/"

    invoke-virtual {v13, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 6086
    const-string v2, "DrmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Right Issure = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6090
    :try_start_1
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 6092
    .local v17, values:Landroid/content/ContentValues;
    const-string/jumbo v2, "uri"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6094
    const-string v2, "entity"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6096
    const-string/jumbo v2, "notificationpackage"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6098
    const-string/jumbo v2, "notificationclass"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6100
    const-string/jumbo v2, "visibility"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6102
    const-string/jumbo v2, "is_visible_in_downloads_ui"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6107
    const-string/jumbo v2, "restriction"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6137
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    move-object/from16 v2, v16

    .line 6151
    goto/16 :goto_0

    .line 6138
    .end local v17           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    .line 6140
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "DrmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireRights : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6142
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 6143
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 6145
    .end local v9           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v10           #e:Ljava/lang/Exception;
    .end local v12           #fis:Ljava/io/InputStream;
    .end local v13           #issuer:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 6147
    .restart local v10       #e:Ljava/lang/Exception;
    const-string v2, "DrmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireRights : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6149
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static final addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 110
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"
    .parameter "targetFolder"

    .prologue
    .line 885
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6) -BEGIN"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 895
    :cond_0
    const-string v3, "DrmHelper"

    const-string v5, "ERROR: addDrmFile input error."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/16 v71, 0x0

    .line 2296
    :cond_1
    :goto_0
    return-object v71

    .line 910
    :cond_2
    const/4 v3, 0x7

    move/from16 v0, p5

    if-eq v0, v3, :cond_3

    .line 913
    const/16 p5, 0x0

    .line 916
    :cond_3
    const/16 v71, 0x0

    .line 917
    .local v71, intent:Landroid/content/Intent;
    const/16 v61, 0x0

    .line 920
    .local v61, fin:Ljava/io/FileInputStream;
    const-string v3, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 924
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/provider/DrmHelper;->installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v107

    .line 926
    .local v107, uid:Ljava/lang/String;
    if-eqz v107, :cond_6

    .line 930
    const-string v3, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Install rights : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v107

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->METADATA_PROJECTION:[Ljava/lang/String;

    const-string v6, "content_id=?"

    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v107, v7, v9

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v38

    .line 939
    .local v38, cursor:Landroid/database/Cursor;
    if-nez v38, :cond_5

    .line 943
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(1) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 948
    :cond_5
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_7

    .line 955
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    .line 1107
    :goto_1
    new-instance v71, Landroid/content/Intent;

    .end local v71           #intent:Landroid/content/Intent;
    invoke-direct/range {v71 .. v71}, Landroid/content/Intent;-><init>()V

    .line 1108
    .restart local v71       #intent:Landroid/content/Intent;
    const-string v3, "DRM Rights"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v71

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1114
    .end local v38           #cursor:Landroid/database/Cursor;
    :cond_6
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(3) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 964
    .restart local v38       #cursor:Landroid/database/Cursor;
    :cond_7
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->moveToFirst()Z

    .line 966
    const-string v3, "_data"

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 967
    .local v40, dataColumnIndext:I
    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v59

    .line 969
    .local v59, filepath:Ljava/lang/String;
    const-string/jumbo v3, "mime_type"

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v78

    .line 970
    .local v78, mimeTypeColumnIndex:I
    move-object/from16 v0, v38

    move/from16 v1, v78

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 972
    .local v6, mimeType:Ljava/lang/String;
    const-string v3, "_id"

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v70

    .line 973
    .local v70, idColumnIndex:I
    move-object/from16 v0, v38

    move/from16 v1, v70

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v69

    .line 975
    .local v69, id:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v69

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 977
    .local v7, contentUri:Landroid/net/Uri;
    if-eqz v59, :cond_b

    .line 979
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v59

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 984
    .local v4, parseFile:Ljava/io/File;
    move/from16 v8, p5

    .line 985
    .local v8, newDestination:I
    const/16 v29, 0x0

    .line 986
    .local v29, checked:Z
    invoke-static {}, Landroid/provider/DrmHelper;->getSupportedStorages()I

    move-result v97

    .line 989
    .local v97, supportedStorages:I
    and-int/lit8 v3, v97, 0x1

    if-eqz v3, :cond_9

    .line 996
    invoke-virtual/range {v59 .. v59}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v60

    .line 997
    .local v60, filepathUpperCase:Ljava/lang/String;
    const/16 v48, 0x0

    .line 999
    .local v48, downloadPathUpperCase:Ljava/lang/String;
    if-eqz p6, :cond_8

    const-string v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1002
    :cond_8
    invoke-static {}, Landroid/provider/DrmHelper;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v48

    .line 1010
    :goto_2
    move-object/from16 v0, v60

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1011
    const/4 v8, 0x0

    .line 1012
    const/16 v29, 0x1

    .line 1028
    .end local v48           #downloadPathUpperCase:Ljava/lang/String;
    .end local v60           #filepathUpperCase:Ljava/lang/String;
    :cond_9
    if-nez v29, :cond_a

    and-int/lit8 v3, v97, 0x2

    if-eqz v3, :cond_a

    .line 1047
    invoke-static {}, Landroid/provider/DrmHelper;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v47

    .line 1050
    .local v47, downloadPath:Ljava/lang/String;
    move-object/from16 v0, v59

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1051
    const/4 v8, 0x7

    .line 1068
    .end local v47           #downloadPath:Ljava/lang/String;
    :cond_a
    sparse-switch v8, :sswitch_data_0

    .line 1077
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     rights\' download destination is unknown!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :goto_3
    const-string v5, "application/vnd.oma.drm.content"

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Landroid/provider/DrmHelper;->updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;

    move-result-object v109

    .line 1097
    .local v109, values:Landroid/content/ContentValues;
    if-eqz v109, :cond_b

    .line 1099
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v109

    invoke-virtual {v3, v7, v0, v5, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1103
    .end local v4           #parseFile:Ljava/io/File;
    .end local v8           #newDestination:I
    .end local v29           #checked:Z
    .end local v97           #supportedStorages:I
    .end local v109           #values:Landroid/content/ContentValues;
    :cond_b
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1007
    .restart local v4       #parseFile:Ljava/io/File;
    .restart local v8       #newDestination:I
    .restart local v29       #checked:Z
    .restart local v48       #downloadPathUpperCase:Ljava/lang/String;
    .restart local v60       #filepathUpperCase:Ljava/lang/String;
    .restart local v97       #supportedStorages:I
    :cond_c
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v48

    goto :goto_2

    .line 1071
    .end local v48           #downloadPathUpperCase:Ljava/lang/String;
    .end local v60           #filepathUpperCase:Ljava/lang/String;
    :sswitch_0
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     rights\' download destination is in external."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1074
    :sswitch_1
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     rights\' download destination is in internal."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1121
    .end local v4           #parseFile:Ljava/io/File;
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v8           #newDestination:I
    .end local v29           #checked:Z
    .end local v38           #cursor:Landroid/database/Cursor;
    .end local v40           #dataColumnIndext:I
    .end local v59           #filepath:Ljava/lang/String;
    .end local v69           #id:I
    .end local v70           #idColumnIndex:I
    .end local v78           #mimeTypeColumnIndex:I
    .end local v97           #supportedStorages:I
    .end local v107           #uid:Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1124
    .local v11, cr:Landroid/content/ContentResolver;
    const/16 v56, 0x0

    .line 1126
    .local v56, fileName:Ljava/lang/String;
    if-nez p2, :cond_f

    .line 1128
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v56

    .line 1142
    :goto_4
    const-string v3, "."

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v45

    .line 1144
    .local v45, dot:I
    const/4 v3, -0x1

    move/from16 v0, v45

    if-ne v0, v3, :cond_11

    .line 1147
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".dm"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    .line 1170
    :cond_e
    :goto_5
    const-string v3, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add DRM file : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :try_start_0
    new-instance v62, Ljava/io/FileInputStream;

    move-object/from16 v0, v62

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_13

    .line 1177
    .end local v61           #fin:Ljava/io/FileInputStream;
    .local v62, fin:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v32, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v32

    move-object/from16 v1, v62

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 1183
    .local v32, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual/range {v32 .. v32}, Landroid/drm/mobile1/DrmRawContent;->getTransferEncoding()I

    move-result v105

    .line 1185
    .local v105, transferEncoding:I
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x3

    move/from16 v0, v105

    if-ne v0, v3, :cond_17

    .line 1190
    const-string v3, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " @@@@@  Handle specific transfer-encoding="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v105

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const-string v83, "/data/data/com.android.providers.drm/rights/tmp"

    .line 1196
    .local v83, outputBinaryFilePath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v83

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/provider/DrmHelper;->checkAndCreateFolder(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1197
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@ ERROR: cannot create file!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(3)-(1) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1204
    const/16 v71, 0x0

    .line 2279
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2280
    :try_start_2
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2282
    :catch_0
    move-exception v52

    .line 2284
    .local v52, e:Ljava/lang/Exception;
    const-string v3, "DrmHelper"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v11           #cr:Landroid/content/ContentResolver;
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v62           #fin:Ljava/io/FileInputStream;
    .end local v83           #outputBinaryFilePath:Ljava/lang/String;
    .end local v105           #transferEncoding:I
    :goto_6
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1134
    .end local v45           #dot:I
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_f
    const-string v3, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Title is "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    move-object/from16 v56, p2

    goto/16 :goto_4

    .line 1151
    .restart local v45       #dot:I
    :cond_10
    const-string v3, "application/vnd.oma.drm.content"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".dcf"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_5

    .line 1158
    :cond_11
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".dm"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_5

    .line 1162
    :cond_12
    const-string v3, "application/vnd.oma.drm.content"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".dcf"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_5

    .line 1207
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v83       #outputBinaryFilePath:Ljava/lang/String;
    .restart local v105       #transferEncoding:I
    :cond_13
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v83

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v83

    .line 1209
    const/4 v3, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v83

    invoke-static {v0, v1, v2}, Landroid/provider/DrmHelper;->saveFileFromBase64ToBinary(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I

    move-result v5

    if-ne v3, v5, :cond_14

    .line 1212
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@ ERROR: convert base64 file Fail!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(3)-(2) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1219
    const/16 v71, 0x0

    .line 2279
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2280
    :try_start_4
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 2282
    :catch_1
    move-exception v52

    .line 2284
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmHelper"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1222
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_14
    :try_start_5
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v83

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1224
    .local v10, binaryFile:Ljava/io/File;
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1225
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1226
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    move-object/from16 v9, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    .line 1228
    invoke-static/range {v9 .. v15}, Landroid/provider/DrmHelper;->addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .end local v11           #cr:Landroid/content/ContentResolver;
    move-result-object v89

    .line 1232
    .local v89, resultIntent:Landroid/content/Intent;
    :try_start_6
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1233
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2279
    :cond_15
    :goto_7
    if-eqz v62, :cond_16

    .line 2280
    :try_start_7
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1d

    :cond_16
    :goto_8
    move-object/from16 v71, v89

    .line 1241
    goto/16 :goto_0

    .line 1235
    :catch_2
    move-exception v52

    .line 1236
    .restart local v52       #e:Ljava/lang/Exception;
    :try_start_8
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@  ERROR: delete temp files FAILED!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    const-string v3, "DrmHelper"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_7

    .line 2261
    .end local v10           #binaryFile:Ljava/io/File;
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v83           #outputBinaryFilePath:Ljava/lang/String;
    .end local v89           #resultIntent:Landroid/content/Intent;
    .end local v105           #transferEncoding:I
    :catch_3
    move-exception v52

    move-object/from16 v61, v62

    .line 2267
    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v52       #e:Ljava/lang/Exception;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    :goto_9
    :try_start_9
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->printStackTrace()V

    .line 2272
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(12) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 2275
    const/16 v71, 0x0

    .line 2279
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v61, :cond_1

    .line 2280
    :try_start_a
    invoke-virtual/range {v61 .. v61}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 2282
    :catch_4
    move-exception v52

    .line 2284
    const-string v3, "DrmHelper"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1246
    .end local v52           #e:Ljava/lang/Exception;
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v105       #transferEncoding:I
    :cond_17
    :try_start_b
    invoke-virtual/range {v32 .. v32}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 1248
    .restart local v6       #mimeType:Ljava/lang/String;
    const-string v3, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mimeType = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    invoke-virtual/range {v32 .. v32}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v77

    .line 1253
    .local v77, method:I
    const-string v3, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "method = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v77

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    const/4 v3, 0x1

    move/from16 v0, v77

    if-ne v0, v3, :cond_26

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x91

    if-eq v3, v5, :cond_1a

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x93

    if-ne v3, v5, :cond_18

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x94

    if-eq v3, v5, :cond_1a

    :cond_18
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x3a

    if-ne v3, v5, :cond_19

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x94

    if-eq v3, v5, :cond_1a

    :cond_19
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa1

    if-eq v3, v5, :cond_1a

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x63

    if-ne v3, v5, :cond_26

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x66

    if-ne v3, v5, :cond_26

    .line 1279
    :cond_1a
    const/16 v18, 0x1

    .line 1285
    .local v18, flRingtone:Z
    :goto_a
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v33

    .line 1292
    .local v33, contentOffset:I
    const-string/jumbo v3, "video"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "audio"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    :cond_1b
    const/4 v3, 0x1

    move/from16 v0, v77

    if-eq v0, v3, :cond_1c

    const/4 v3, 0x2

    move/from16 v0, v77

    if-ne v0, v3, :cond_30

    .line 1295
    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Landroid/media/MediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    .line 1300
    .local v54, extention:Ljava/lang/String;
    new-instance v82, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/DRM"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v82

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 1307
    .local v82, outFile:Ljava/io/File;
    const/16 v63, 0x0

    .line 1308
    .local v63, fis:Ljava/io/FileInputStream;
    const/16 v65, 0x0

    .line 1310
    .local v65, fis2:Ljava/io/FileInputStream;
    const/16 v67, 0x0

    .line 1311
    .local v67, fos:Ljava/io/FileOutputStream;
    const/16 v73, 0x0

    .line 1312
    .local v73, is:Ljava/io/InputStream;
    const/16 v74, 0x0

    .line 1319
    .local v74, isTerminated:Z
    :try_start_c
    new-instance v64, Ljava/io/FileInputStream;

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 1328
    .end local v63           #fis:Ljava/io/FileInputStream;
    .local v64, fis:Ljava/io/FileInputStream;
    :try_start_d
    new-instance v98, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v64 .. v64}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v98

    move-object/from16 v1, v64

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 1332
    .local v98, tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v75

    .line 1333
    .local v75, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v75

    move-object/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v91

    .line 1338
    .local v91, rights:Landroid/drm/mobile1/DrmRights;
    const/16 v41, 0x0

    .line 1339
    .local v41, deleteRights:Z
    if-nez v91, :cond_76

    const/4 v3, 0x2

    move/from16 v0, v77

    if-ne v0, v3, :cond_76

    .line 1368
    if-eqz v64, :cond_1d

    .line 1369
    invoke-virtual/range {v64 .. v64}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_20

    .line 1370
    const/16 v63, 0x0

    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    move-object/from16 v64, v63

    .line 1372
    .end local v63           #fis:Ljava/io/FileInputStream;
    .restart local v64       #fis:Ljava/io/FileInputStream;
    :try_start_e
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 1375
    :cond_1d
    :try_start_f
    new-instance v63, Ljava/io/FileInputStream;

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_20

    .line 1381
    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    :try_start_10
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v75

    move-object/from16 v1, v63

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v91

    .line 1383
    const/16 v41, 0x1

    .line 1389
    :goto_b
    if-eqz v63, :cond_1e

    .line 1390
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->close()V

    .line 1391
    const/16 v63, 0x0

    .line 1395
    :cond_1e
    if-eqz v91, :cond_28

    .line 1402
    new-instance v66, Ljava/io/FileInputStream;

    move-object/from16 v0, v66

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    .line 1403
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .local v66, fis2:Ljava/io/FileInputStream;
    :try_start_11
    new-instance v98, Landroid/drm/mobile1/DrmRawContent;

    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual/range {v66 .. v66}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v98

    move-object/from16 v1, v66

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 1407
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v98

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v73

    .line 1408
    new-instance v68, Ljava/io/FileOutputStream;

    move-object/from16 v0, v68

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_21

    .line 1410
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .local v68, fos:Ljava/io/FileOutputStream;
    :try_start_12
    move-object/from16 v0, v73

    move-object/from16 v1, v68

    invoke-static {v0, v1}, Landroid/provider/DrmHelper;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I

    .line 1412
    if-eqz v41, :cond_1f

    .line 1413
    move-object/from16 v0, v75

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->deleteRights(Landroid/drm/mobile1/DrmRights;)V

    .line 1418
    :cond_1f
    sget-object v3, Landroid/provider/DrmHelper;->CMD_CHMOD:[Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v5

    .line 1419
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    sget-object v5, Landroid/provider/DrmHelper;->CMD_CHMOD:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 1421
    new-instance v76, Landroid/media/MediaInfo;

    move-object/from16 v0, v76

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/MediaInfo;-><init>(Landroid/content/Context;)V

    .line 1422
    .local v76, mediaInfo:Landroid/media/MediaInfo;
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v76

    invoke-virtual {v0, v3}, Landroid/media/MediaInfo;->getFileType(Ljava/lang/String;)I

    move-result v106

    .line 1423
    .local v106, type:I
    const/4 v3, 0x1

    move/from16 v0, v106

    if-ne v0, v3, :cond_27

    .line 1424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audio/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1433
    :cond_20
    :goto_c
    const-string v3, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MIME type by MediaInfo: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_22

    move-object/from16 v67, v68

    .end local v68           #fos:Ljava/io/FileOutputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v65, v66

    .line 1442
    .end local v66           #fis2:Ljava/io/FileInputStream;
    .end local v76           #mediaInfo:Landroid/media/MediaInfo;
    .end local v106           #type:I
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    :goto_d
    if-eqz v67, :cond_21

    .line 1443
    :try_start_13
    invoke-virtual/range {v67 .. v67}, Ljava/io/FileOutputStream;->close()V

    .line 1444
    const/16 v67, 0x0

    .line 1446
    :cond_21
    if-eqz v73, :cond_22

    .line 1447
    invoke-virtual/range {v73 .. v73}, Ljava/io/InputStream;->close()V

    .line 1448
    const/16 v73, 0x0

    .line 1457
    :cond_22
    if-eqz v63, :cond_23

    .line 1458
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->close()V

    .line 1459
    const/16 v63, 0x0

    .line 1461
    :cond_23
    if-eqz v65, :cond_24

    .line 1462
    invoke-virtual/range {v65 .. v65}, Ljava/io/FileInputStream;->close()V

    .line 1463
    const/16 v65, 0x0

    .line 1466
    :cond_24
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1467
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->delete()Z

    .line 1469
    :cond_25
    if-eqz v74, :cond_30

    .line 1473
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(4) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    .line 1475
    const/16 v71, 0x0

    .line 2279
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2280
    :try_start_14
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5

    goto/16 :goto_0

    .line 2282
    :catch_5
    move-exception v52

    .line 2284
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmHelper"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1281
    .end local v18           #flRingtone:Z
    .end local v33           #contentOffset:I
    .end local v41           #deleteRights:Z
    .end local v52           #e:Ljava/lang/Exception;
    .end local v54           #extention:Ljava/lang/String;
    .end local v63           #fis:Ljava/io/FileInputStream;
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .end local v73           #is:Ljava/io/InputStream;
    .end local v74           #isTerminated:Z
    .end local v75           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v82           #outFile:Ljava/io/File;
    .end local v91           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_26
    const/16 v18, 0x0

    .restart local v18       #flRingtone:Z
    goto/16 :goto_a

    .line 1426
    .restart local v33       #contentOffset:I
    .restart local v41       #deleteRights:Z
    .restart local v54       #extention:Ljava/lang/String;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v68       #fos:Ljava/io/FileOutputStream;
    .restart local v73       #is:Ljava/io/InputStream;
    .restart local v74       #isTerminated:Z
    .restart local v75       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v76       #mediaInfo:Landroid/media/MediaInfo;
    .restart local v82       #outFile:Ljava/io/File;
    .restart local v91       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v106       #type:I
    :cond_27
    const/4 v3, 0x2

    move/from16 v0, v106

    if-ne v0, v3, :cond_20

    .line 1427
    :try_start_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "video/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_22

    move-result-object v6

    goto/16 :goto_c

    .line 1436
    .end local v66           #fis2:Ljava/io/FileInputStream;
    .end local v68           #fos:Ljava/io/FileOutputStream;
    .end local v76           #mediaInfo:Landroid/media/MediaInfo;
    .end local v106           #type:I
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    :cond_28
    :try_start_16
    const-string v3, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MIME type from DRM header: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    goto/16 :goto_d

    .line 1438
    .end local v41           #deleteRights:Z
    .end local v63           #fis:Ljava/io/FileInputStream;
    .end local v75           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v91           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catch_6
    move-exception v52

    .line 1439
    .restart local v52       #e:Ljava/lang/Exception;
    :goto_e
    :try_start_17
    const-string v3, "DrmHelper"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    .line 1440
    const/16 v74, 0x1

    .line 1442
    if-eqz v67, :cond_29

    .line 1443
    :try_start_18
    invoke-virtual/range {v67 .. v67}, Ljava/io/FileOutputStream;->close()V

    .line 1444
    const/16 v67, 0x0

    .line 1446
    :cond_29
    if-eqz v73, :cond_2a

    .line 1447
    invoke-virtual/range {v73 .. v73}, Ljava/io/InputStream;->close()V

    .line 1448
    const/16 v73, 0x0

    .line 1457
    :cond_2a
    if-eqz v63, :cond_2b

    .line 1458
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->close()V

    .line 1459
    const/16 v63, 0x0

    .line 1461
    :cond_2b
    if-eqz v65, :cond_2c

    .line 1462
    invoke-virtual/range {v65 .. v65}, Ljava/io/FileInputStream;->close()V

    .line 1463
    const/16 v65, 0x0

    .line 1466
    :cond_2c
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1467
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->delete()Z

    .line 1469
    :cond_2d
    if-eqz v74, :cond_30

    .line 1473
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(4) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3

    .line 1475
    const/16 v71, 0x0

    .line 2279
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2280
    :try_start_19
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7

    goto/16 :goto_0

    .line 2282
    :catch_7
    move-exception v52

    .line 2284
    const-string v3, "DrmHelper"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1442
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_2e
    :try_start_1a
    throw v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3

    .line 2278
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v11           #cr:Landroid/content/ContentResolver;
    .end local v18           #flRingtone:Z
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v33           #contentOffset:I
    .end local v54           #extention:Ljava/lang/String;
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .end local v73           #is:Ljava/io/InputStream;
    .end local v74           #isTerminated:Z
    .end local v77           #method:I
    .end local v82           #outFile:Ljava/io/File;
    .end local v105           #transferEncoding:I
    :catchall_0
    move-exception v3

    move-object/from16 v61, v62

    .line 2279
    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    :goto_f
    if-eqz v61, :cond_2f

    .line 2280
    :try_start_1b
    invoke-virtual/range {v61 .. v61}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1c

    .line 2278
    :cond_2f
    :goto_10
    throw v3

    .line 1482
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    .restart local v18       #flRingtone:Z
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v33       #contentOffset:I
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v77       #method:I
    .restart local v105       #transferEncoding:I
    :cond_30
    :try_start_1c
    const-string v34, ""

    .line 1484
    .local v34, contentUid:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1487
    .restart local v7       #contentUri:Landroid/net/Uri;
    const-string v3, "audio/"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1488
    sget-object v7, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    .line 1510
    :goto_11
    const/16 v50, 0x0

    .line 1511
    .local v50, duplicate:Z
    const/16 v84, 0x0

    .line 1512
    .local v84, overwrite:Z
    const/16 v108, 0x0

    .line 1514
    .local v108, uri:Landroid/net/Uri;
    sget-object v13, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const-string v14, "content_url=?"

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p4, v15, v3

    const-string v16, "_id"

    move-object v12, v7

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 1515
    .local v26, c:Landroid/database/Cursor;
    if-eqz v26, :cond_75

    .line 1516
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_74

    .line 1520
    const-string v3, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " duplicated."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1523
    const-string v3, "_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 1524
    .local v31, columnIdIndex:I
    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 1525
    .local v30, columnId:I
    const-string v3, "_data"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v58

    .line 1526
    .local v58, filePathIndex:I
    move-object/from16 v0, v26

    move/from16 v1, v58

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 1527
    .local v57, filePath:Ljava/lang/String;
    const-string/jumbo v3, "title"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v104

    .line 1528
    .local v104, titleInddex:I
    move-object/from16 v0, v26

    move/from16 v1, v104

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 1529
    .local v49, dup_title:Ljava/lang/String;
    const/16 v47, 0x0

    .line 1531
    .restart local v47       #downloadPath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v108

    .line 1532
    new-instance v72, Landroid/content/Intent;

    invoke-direct/range {v72 .. v72}, Landroid/content/Intent;-><init>()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_3

    .line 1533
    .end local v71           #intent:Landroid/content/Intent;
    .local v72, intent:Landroid/content/Intent;
    :try_start_1d
    move-object/from16 v0, v72

    move-object/from16 v1, v108

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1535
    const-string v3, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dup_title:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    const-string/jumbo v3, "title"

    move-object/from16 v0, v72

    move-object/from16 v1, v49

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1538
    const/16 v50, 0x1

    .line 1543
    const-string v3, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check file path: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    new-instance v55, Ljava/io/File;

    move-object/from16 v0, v55

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1547
    .local v55, f:Ljava/io/File;
    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v56

    .line 1548
    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1549
    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->delete()Z

    .line 1553
    :cond_31
    const/4 v3, 0x7

    move/from16 v0, p5

    if-ne v0, v3, :cond_39

    .line 1563
    invoke-static {}, Landroid/provider/DrmHelper;->getInternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v47

    .line 1565
    if-eqz v47, :cond_32

    const-string v3, ""

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1566
    :cond_32
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@ internal download path doesn\'t exist!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c

    .line 1569
    const/16 v71, 0x0

    .line 2279
    if-eqz v62, :cond_1

    .line 2280
    :try_start_1e
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_8

    goto/16 :goto_0

    .line 2282
    :catch_8
    move-exception v52

    .line 2284
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmHelper"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1489
    .end local v26           #c:Landroid/database/Cursor;
    .end local v30           #columnId:I
    .end local v31           #columnIdIndex:I
    .end local v47           #downloadPath:Ljava/lang/String;
    .end local v49           #dup_title:Ljava/lang/String;
    .end local v50           #duplicate:Z
    .end local v52           #e:Ljava/lang/Exception;
    .end local v55           #f:Ljava/io/File;
    .end local v57           #filePath:Ljava/lang/String;
    .end local v58           #filePathIndex:I
    .end local v72           #intent:Landroid/content/Intent;
    .end local v84           #overwrite:Z
    .end local v104           #titleInddex:I
    .end local v108           #uri:Landroid/net/Uri;
    .restart local v71       #intent:Landroid/content/Intent;
    :cond_33
    :try_start_1f
    const-string/jumbo v3, "image/"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1490
    sget-object v7, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_11

    .line 1491
    :cond_34
    const-string/jumbo v3, "video/"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1492
    sget-object v7, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_11

    .line 1493
    :cond_35
    const-string v3, "application/java-archive"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1494
    sget-object v7, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_11

    .line 1497
    :cond_36
    const-string v3, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported mime type "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 1503
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(5) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_3

    .line 1506
    const/16 v71, 0x0

    .line 2279
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2280
    :try_start_20
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_9

    goto/16 :goto_0

    .line 2282
    :catch_9
    move-exception v52

    .line 2284
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmHelper"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1572
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v30       #columnId:I
    .restart local v31       #columnIdIndex:I
    .restart local v47       #downloadPath:Ljava/lang/String;
    .restart local v49       #dup_title:Ljava/lang/String;
    .restart local v50       #duplicate:Z
    .restart local v55       #f:Ljava/io/File;
    .restart local v57       #filePath:Ljava/lang/String;
    .restart local v58       #filePathIndex:I
    .restart local v72       #intent:Landroid/content/Intent;
    .restart local v84       #overwrite:Z
    .restart local v104       #titleInddex:I
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_37
    :try_start_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    .line 1610
    :goto_12
    const-string v3, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Saved file path: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    new-instance v55, Ljava/io/File;

    .end local v55           #f:Ljava/io/File;
    move-object/from16 v0, v55

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1617
    .restart local v55       #f:Ljava/io/File;
    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1619
    const-string v3, "DrmHelper"

    const-string v5, "File exists, use a new name"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    const-string v3, "."

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v53

    .line 1622
    .local v53, ext:I
    const/16 v87, 0x0

    .line 1623
    .local v87, prefix:Ljava/lang/String;
    const/16 v96, 0x0

    .line 1624
    .local v96, suffix:Ljava/lang/String;
    if-lez v53, :cond_3e

    .line 1625
    const/4 v3, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v53

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v87

    .line 1626
    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v56

    move/from16 v1, v53

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v96

    .line 1631
    :goto_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v87

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "---"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v55 .. v55}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    move-object/from16 v0, v96

    invoke-static {v3, v0, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v79

    .line 1633
    .local v79, newFile:Ljava/io/File;
    invoke-virtual/range {v79 .. v79}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v57

    .line 1635
    const-string v3, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New file path: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    .end local v53           #ext:I
    .end local v79           #newFile:Ljava/io/File;
    .end local v87           #prefix:Ljava/lang/String;
    .end local v96           #suffix:Ljava/lang/String;
    :cond_38
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 1642
    .local v39, cv:Landroid/content/ContentValues;
    sget-object v12, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v13, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "_id"

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v93

    .line 1644
    .local v93, stampCursor:Landroid/database/Cursor;
    if-eqz v93, :cond_40

    .line 1645
    invoke-interface/range {v93 .. v93}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1651
    const-string/jumbo v3, "time_differential"

    move-object/from16 v0, v93

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 1653
    .local v44, differentialColumnId:I
    move-object/from16 v0, v93

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 1654
    .local v42, differential:J
    const-string/jumbo v3, "timezone_stamp"

    move-object/from16 v0, v93

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v102

    .line 1656
    .local v102, timeZoneColumnIndex:I
    move-object/from16 v0, v93

    move/from16 v1, v102

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v100

    .line 1657
    .local v100, timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 1658
    .local v36, currentClock:J
    const-string v3, "date_modified"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1659
    const-string v3, "date_added"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1664
    .end local v36           #currentClock:J
    .end local v42           #differential:J
    .end local v44           #differentialColumnId:I
    .end local v100           #timeZone:J
    .end local v102           #timeZoneColumnIndex:I
    :goto_14
    invoke-interface/range {v93 .. v93}, Landroid/database/Cursor;->close()V

    .line 1670
    :goto_15
    const/16 v84, 0x1

    .line 1672
    const-string v3, "existence"

    const-string v5, "exist"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    const-string v3, "_data"

    move-object/from16 v0, v39

    move-object/from16 v1, v57

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    const-string v3, "/"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v92

    .line 1682
    .local v92, slashPos:I
    add-int/lit8 v3, v92, 0x1

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v46

    .line 1684
    .local v46, downloadName:Ljava/lang/String;
    const-string v3, "bucket_display_name"

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v108

    move-object/from16 v1, v39

    invoke-virtual {v11, v0, v1, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_c

    move-object/from16 v16, v108

    .end local v108           #uri:Landroid/net/Uri;
    .local v16, uri:Landroid/net/Uri;
    move-object/from16 v71, v72

    .line 1689
    .end local v30           #columnId:I
    .end local v31           #columnIdIndex:I
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v46           #downloadName:Ljava/lang/String;
    .end local v47           #downloadPath:Ljava/lang/String;
    .end local v49           #dup_title:Ljava/lang/String;
    .end local v55           #f:Ljava/io/File;
    .end local v57           #filePath:Ljava/lang/String;
    .end local v58           #filePathIndex:I
    .end local v72           #intent:Landroid/content/Intent;
    .end local v92           #slashPos:I
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v104           #titleInddex:I
    .restart local v71       #intent:Landroid/content/Intent;
    :goto_16
    :try_start_22
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 1691
    if-eqz v50, :cond_41

    if-nez v84, :cond_41

    .line 1693
    const-string v3, "DrmHelper"

    const-string v5, "File is duplicated and exist."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_3

    .line 2279
    if-eqz v62, :cond_1

    .line 2280
    :try_start_23
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_a

    goto/16 :goto_0

    .line 2282
    :catch_a
    move-exception v52

    .line 2284
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmHelper"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1592
    .end local v16           #uri:Landroid/net/Uri;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v71           #intent:Landroid/content/Intent;
    .restart local v30       #columnId:I
    .restart local v31       #columnIdIndex:I
    .restart local v47       #downloadPath:Ljava/lang/String;
    .restart local v49       #dup_title:Ljava/lang/String;
    .restart local v55       #f:Ljava/io/File;
    .restart local v57       #filePath:Ljava/lang/String;
    .restart local v58       #filePathIndex:I
    .restart local v72       #intent:Landroid/content/Intent;
    .restart local v104       #titleInddex:I
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_39
    if-eqz p6, :cond_3a

    :try_start_24
    const-string v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1593
    :cond_3a
    invoke-static {}, Landroid/provider/DrmHelper;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v47

    .line 1599
    :goto_17
    if-eqz v47, :cond_3b

    const-string v3, ""

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1600
    :cond_3b
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@ external download path doesn\'t exist!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_c

    .line 1603
    const/16 v71, 0x0

    .line 2279
    if-eqz v62, :cond_1

    .line 2280
    :try_start_25
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_b

    goto/16 :goto_0

    .line 2282
    :catch_b
    move-exception v52

    .line 2284
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmHelper"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1596
    .end local v52           #e:Ljava/lang/Exception;
    :cond_3c
    move-object/from16 v47, p6

    goto :goto_17

    .line 1606
    :cond_3d
    :try_start_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    goto/16 :goto_12

    .line 1628
    .restart local v53       #ext:I
    .restart local v87       #prefix:Ljava/lang/String;
    .restart local v96       #suffix:Ljava/lang/String;
    :cond_3e
    move-object/from16 v87, v56

    .line 1629
    const-string v96, ""

    goto/16 :goto_13

    .line 1661
    .end local v53           #ext:I
    .end local v87           #prefix:Ljava/lang/String;
    .end local v96           #suffix:Ljava/lang/String;
    .restart local v39       #cv:Landroid/content/ContentValues;
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    :cond_3f
    const-string v3, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1662
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_14

    .line 2261
    .end local v30           #columnId:I
    .end local v31           #columnIdIndex:I
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v47           #downloadPath:Ljava/lang/String;
    .end local v49           #dup_title:Ljava/lang/String;
    .end local v55           #f:Ljava/io/File;
    .end local v57           #filePath:Ljava/lang/String;
    .end local v58           #filePathIndex:I
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v104           #titleInddex:I
    .end local v108           #uri:Landroid/net/Uri;
    :catch_c
    move-exception v52

    move-object/from16 v61, v62

    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    move-object/from16 v71, v72

    .end local v72           #intent:Landroid/content/Intent;
    .restart local v71       #intent:Landroid/content/Intent;
    goto/16 :goto_9

    .line 1666
    .end local v61           #fin:Ljava/io/FileInputStream;
    .end local v71           #intent:Landroid/content/Intent;
    .restart local v30       #columnId:I
    .restart local v31       #columnIdIndex:I
    .restart local v39       #cv:Landroid/content/ContentValues;
    .restart local v47       #downloadPath:Ljava/lang/String;
    .restart local v49       #dup_title:Ljava/lang/String;
    .restart local v55       #f:Ljava/io/File;
    .restart local v57       #filePath:Ljava/lang/String;
    .restart local v58       #filePathIndex:I
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v72       #intent:Landroid/content/Intent;
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    .restart local v104       #titleInddex:I
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_40
    const-string v3, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1667
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_c

    goto/16 :goto_15

    .line 2278
    .end local v30           #columnId:I
    .end local v31           #columnIdIndex:I
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v47           #downloadPath:Ljava/lang/String;
    .end local v49           #dup_title:Ljava/lang/String;
    .end local v55           #f:Ljava/io/File;
    .end local v57           #filePath:Ljava/lang/String;
    .end local v58           #filePathIndex:I
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v104           #titleInddex:I
    .end local v108           #uri:Landroid/net/Uri;
    :catchall_1
    move-exception v3

    move-object/from16 v61, v62

    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    move-object/from16 v71, v72

    .end local v72           #intent:Landroid/content/Intent;
    .restart local v71       #intent:Landroid/content/Intent;
    goto/16 :goto_f

    .line 1697
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    :cond_41
    if-eqz v50, :cond_54

    if-eqz v84, :cond_54

    .line 1699
    :try_start_27
    const-string v3, "DrmHelper"

    const-string v5, "Overwrite the file."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/DrmHelper;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v51

    .line 1705
    .local v51, duplicatePath:Ljava/lang/String;
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1706
    .local v28, checkFile:Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_42

    .line 1707
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1712
    :cond_42
    invoke-static {v6}, Landroid/provider/DrmHelper;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_43

    const/4 v3, 0x3

    move/from16 v0, v77

    if-ne v0, v3, :cond_48

    .line 1715
    :cond_43
    new-instance v94, Ljava/io/FileInputStream;

    move-object/from16 v0, v94

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_3

    .line 1721
    .local v94, stream:Ljava/io/FileInputStream;
    :try_start_28
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_28} :catch_e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_3

    .line 1739
    .local v81, os:Ljava/io/FileOutputStream;
    :goto_18
    if-nez v81, :cond_47

    .line 1740
    :try_start_29
    invoke-virtual/range {v94 .. v94}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_3

    .line 1884
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v94           #stream:Ljava/io/FileInputStream;
    :cond_44
    :goto_19
    :try_start_2a
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_12

    move-object/from16 v61, v62

    .line 1894
    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    :goto_1a
    :try_start_2b
    const-string v3, "audio"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object v15, v6

    move/from16 v17, p5

    .line 1906
    invoke-static/range {v12 .. v18}, Landroid/provider/DrmHelper;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_14

    .line 2279
    :cond_45
    :goto_1b
    if-eqz v61, :cond_1

    .line 2280
    :try_start_2c
    invoke-virtual/range {v61 .. v61}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_d

    goto/16 :goto_0

    .line 2282
    :catch_d
    move-exception v52

    .line 2284
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmHelper"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1722
    .end local v52           #e:Ljava/lang/Exception;
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v94       #stream:Ljava/io/FileInputStream;
    :catch_e
    move-exception v52

    .line 1723
    .local v52, e:Ljava/io/FileNotFoundException;
    :try_start_2d
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, v35

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1724
    .local v35, createFile:Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1725
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .restart local v81       #os:Ljava/io/FileOutputStream;
    goto :goto_18

    .line 1727
    .end local v81           #os:Ljava/io/FileOutputStream;
    :cond_46
    const-string v3, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create new file:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " failed."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 1732
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(6) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_3

    .line 1735
    const/16 v71, 0x0

    .line 2279
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2280
    :try_start_2e
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_f

    goto/16 :goto_0

    .line 2282
    :catch_f
    move-exception v52

    .line 2284
    .local v52, e:Ljava/lang/Exception;
    const-string v3, "DrmHelper"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1743
    .end local v35           #createFile:Ljava/io/File;
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v81       #os:Ljava/io/FileOutputStream;
    :cond_47
    :try_start_2f
    move-object/from16 v0, v94

    move-object/from16 v1, v81

    invoke-static {v0, v1}, Landroid/provider/DrmHelper;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2

    .line 1745
    :try_start_30
    invoke-virtual/range {v94 .. v94}, Ljava/io/FileInputStream;->close()V

    .line 1746
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_19

    .line 1745
    :catchall_2
    move-exception v3

    invoke-virtual/range {v94 .. v94}, Ljava/io/FileInputStream;->close()V

    .line 1746
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    .line 1745
    throw v3

    .line 1749
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v94           #stream:Ljava/io/FileInputStream;
    :cond_48
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 1751
    const/4 v3, 0x2

    move/from16 v0, v77

    if-ne v0, v3, :cond_49

    .line 1752
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/provider/DrmHelper;->installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 1761
    :cond_49
    const-string/jumbo v3, "ro.board.platform"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 1764
    .local v85, platform:Ljava/lang/String;
    if-eqz v85, :cond_4a

    const-string v3, ""

    move-object/from16 v0, v85

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1765
    :cond_4a
    const/16 v86, 0x0

    .line 1770
    .local v86, platformLowerCase:Ljava/lang/String;
    :goto_1c
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x62

    if-eq v3, v5, :cond_4b

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x42

    if-eq v3, v5, :cond_4b

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x10

    if-eq v3, v5, :cond_4b

    if-eqz v86, :cond_51

    const-string v3, ""

    move-object/from16 v0, v86

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    const-string/jumbo v3, "msm7k"

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-string v3, "7x27"

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 1785
    :cond_4b
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@ save duplicate File for MSM7K case."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_3

    .line 1789
    :try_start_31
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, v35

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1791
    .restart local v35       #createFile:Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->exists()Z
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_4

    move-result v3

    if-nez v3, :cond_4c

    .line 1793
    :try_start_32
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->createNewFile()Z
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_19

    .line 1796
    const/16 v35, 0x0

    .line 1797
    :try_start_33
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1801
    :cond_4c
    :goto_1d
    const/16 v88, 0x0

    .line 1802
    .local v88, repeat:I
    const/16 v95, 0x0

    .line 1803
    .local v95, success:Z
    const/16 v90, 0x0

    .line 1805
    .local v90, resultSaveFile:I
    :goto_1e
    const/4 v3, 0x3

    move/from16 v0, v88

    if-ge v0, v3, :cond_50

    .line 1807
    if-ltz v88, :cond_4e

    .line 1808
    new-instance v99, Ljava/io/FileInputStream;

    move-object/from16 v0, v99

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1809
    .local v99, tempFin:Ljava/io/FileInputStream;
    new-instance v98, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v99 .. v99}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v98

    move-object/from16 v1, v99

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 1812
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, p1

    move-object/from16 v1, v98

    move-object/from16 v2, v51

    invoke-static {v0, v1, v2}, Landroid/provider/DrmHelper;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_4

    move-result v90

    .line 1815
    :try_start_34
    invoke-virtual/range {v99 .. v99}, Ljava/io/FileInputStream;->close()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_1a

    .line 1824
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    :goto_1f
    const/4 v3, -0x1

    move/from16 v0, v90

    if-ne v0, v3, :cond_4f

    .line 1825
    add-int/lit8 v88, v88, 0x1

    goto :goto_1e

    .line 1767
    .end local v35           #createFile:Ljava/io/File;
    .end local v86           #platformLowerCase:Ljava/lang/String;
    .end local v88           #repeat:I
    .end local v90           #resultSaveFile:I
    .end local v95           #success:Z
    :cond_4d
    :try_start_35
    invoke-virtual/range {v85 .. v85}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_3

    move-result-object v86

    .restart local v86       #platformLowerCase:Ljava/lang/String;
    goto/16 :goto_1c

    .line 1796
    .restart local v35       #createFile:Ljava/io/File;
    :catchall_3
    move-exception v3

    const/16 v35, 0x0

    .line 1797
    :try_start_36
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1796
    throw v3
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_4

    .line 1836
    .end local v35           #createFile:Ljava/io/File;
    :catchall_4
    move-exception v3

    :try_start_37
    throw v3
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_3

    .line 1817
    .restart local v35       #createFile:Ljava/io/File;
    .restart local v88       #repeat:I
    .restart local v90       #resultSaveFile:I
    .restart local v95       #success:Z
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v99       #tempFin:Ljava/io/FileInputStream;
    :catchall_5
    move-exception v3

    :try_start_38
    throw v3

    .line 1821
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    :cond_4e
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v51

    invoke-static {v0, v1, v2}, Landroid/provider/DrmHelper;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_4

    move-result v90

    goto :goto_1f

    .line 1828
    :cond_4f
    const/16 v88, 0x3

    .line 1829
    const/16 v95, 0x1

    goto :goto_1e

    .line 1833
    :cond_50
    if-nez v95, :cond_44

    .line 1834
    const/16 v71, 0x0

    goto/16 :goto_19

    .line 1845
    .end local v35           #createFile:Ljava/io/File;
    .end local v88           #repeat:I
    .end local v90           #resultSaveFile:I
    .end local v95           #success:Z
    :cond_51
    :try_start_39
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_39} :catch_10
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_3

    .line 1863
    .restart local v81       #os:Ljava/io/FileOutputStream;
    :goto_20
    if-eqz v81, :cond_44

    .line 1869
    const/4 v3, -0x1

    :try_start_3a
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v81

    invoke-static {v0, v1, v2}, Landroid/provider/DrmHelper;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_6

    move-result v5

    if-ne v3, v5, :cond_52

    .line 1871
    const/16 v71, 0x0

    .line 1875
    :cond_52
    :try_start_3b
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_19

    .line 1846
    .end local v81           #os:Ljava/io/FileOutputStream;
    :catch_10
    move-exception v52

    .line 1847
    .local v52, e:Ljava/io/FileNotFoundException;
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, v35

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1848
    .restart local v35       #createFile:Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1849
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .restart local v81       #os:Ljava/io/FileOutputStream;
    goto :goto_20

    .line 1851
    .end local v81           #os:Ljava/io/FileOutputStream;
    :cond_53
    const-string v3, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create new file:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " failed."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 1856
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(7) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_3

    .line 1859
    const/16 v71, 0x0

    .line 2279
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2280
    :try_start_3c
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_11

    goto/16 :goto_0

    .line 2282
    :catch_11
    move-exception v52

    .line 2284
    .local v52, e:Ljava/lang/Exception;
    const-string v3, "DrmHelper"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1875
    .end local v35           #createFile:Ljava/io/File;
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v81       #os:Ljava/io/FileOutputStream;
    :catchall_6
    move-exception v3

    :try_start_3d
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    throw v3

    .line 1885
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v85           #platform:Ljava/lang/String;
    .end local v86           #platformLowerCase:Ljava/lang/String;
    :catch_12
    move-exception v52

    .line 1886
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@  ERROR: close file failed!!! (6)-(7)-(1)"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    const-string v3, "DrmHelper"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_3

    .line 1890
    const/16 v61, 0x0

    .line 1891
    .end local v62           #fin:Ljava/io/FileInputStream;
    .restart local v61       #fin:Ljava/io/FileInputStream;
    :try_start_3e
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_1a

    .line 2261
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v18           #flRingtone:Z
    .end local v26           #c:Landroid/database/Cursor;
    .end local v28           #checkFile:Ljava/io/File;
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v33           #contentOffset:I
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v50           #duplicate:Z
    .end local v51           #duplicatePath:Ljava/lang/String;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v77           #method:I
    .end local v84           #overwrite:Z
    .end local v105           #transferEncoding:I
    :catch_13
    move-exception v52

    goto/16 :goto_9

    .line 1910
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v18       #flRingtone:Z
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v28       #checkFile:Ljava/io/File;
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v33       #contentOffset:I
    .restart local v34       #contentUid:Ljava/lang/String;
    .restart local v50       #duplicate:Z
    .restart local v51       #duplicatePath:Ljava/lang/String;
    .restart local v77       #method:I
    .restart local v84       #overwrite:Z
    .restart local v105       #transferEncoding:I
    :catch_14
    move-exception v52

    .line 1912
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File duplicate parse Media: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_13

    goto/16 :goto_1b

    .line 2278
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v11           #cr:Landroid/content/ContentResolver;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v18           #flRingtone:Z
    .end local v26           #c:Landroid/database/Cursor;
    .end local v28           #checkFile:Ljava/io/File;
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v33           #contentOffset:I
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v50           #duplicate:Z
    .end local v51           #duplicatePath:Ljava/lang/String;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v77           #method:I
    .end local v84           #overwrite:Z
    .end local v105           #transferEncoding:I
    :catchall_7
    move-exception v3

    goto/16 :goto_f

    .line 1918
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v18       #flRingtone:Z
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v33       #contentOffset:I
    .restart local v34       #contentUid:Ljava/lang/String;
    .restart local v50       #duplicate:Z
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v77       #method:I
    .restart local v84       #overwrite:Z
    .restart local v105       #transferEncoding:I
    :cond_54
    :try_start_3f
    const-string v3, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Prepare to install: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_3

    move-object/from16 v72, v71

    .line 1924
    .end local v71           #intent:Landroid/content/Intent;
    .restart local v72       #intent:Landroid/content/Intent;
    :goto_21
    :try_start_40
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 1926
    .restart local v39       #cv:Landroid/content/ContentValues;
    const-string v3, "_size"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1928
    const-string/jumbo v3, "title"

    move-object/from16 v0, v39

    move-object/from16 v1, v56

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    const-string/jumbo v3, "mime_type"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    const-string/jumbo v3, "message_type"

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    const-string v3, "delivery_type"

    invoke-static/range {v77 .. v77}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1933
    const-string v3, "content_offset"

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1934
    const-string v3, "content_url"

    move-object/from16 v0, v39

    move-object/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    sget-object v20, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v21, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "_id"

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v24}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v93

    .line 1938
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    if-eqz v93, :cond_57

    .line 1939
    invoke-interface/range {v93 .. v93}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 1945
    const-string/jumbo v3, "time_differential"

    move-object/from16 v0, v93

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 1947
    .restart local v44       #differentialColumnId:I
    move-object/from16 v0, v93

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 1948
    .restart local v42       #differential:J
    const-string/jumbo v3, "timezone_stamp"

    move-object/from16 v0, v93

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v102

    .line 1950
    .restart local v102       #timeZoneColumnIndex:I
    move-object/from16 v0, v93

    move/from16 v1, v102

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v100

    .line 1951
    .restart local v100       #timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 1952
    .restart local v36       #currentClock:J
    const-string v3, "date_added"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1956
    .end local v36           #currentClock:J
    .end local v42           #differential:J
    .end local v44           #differentialColumnId:I
    .end local v100           #timeZone:J
    .end local v102           #timeZoneColumnIndex:I
    :goto_22
    invoke-interface/range {v93 .. v93}, Landroid/database/Cursor;->close()V

    .line 1968
    :goto_23
    if-eqz p6, :cond_55

    const-string v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 1970
    :cond_55
    const-string v3, "Destination"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2019
    :goto_24
    move-object/from16 v0, v39

    invoke-virtual {v11, v7, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 2020
    if-nez v16, :cond_5b

    .line 2022
    const-string v3, "DrmHelper"

    const-string v5, "Insert to DRM db failed."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 2028
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(8) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_c

    .line 2031
    const/16 v71, 0x0

    .line 2279
    if-eqz v62, :cond_1

    .line 2280
    :try_start_41
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_15

    goto/16 :goto_0

    .line 2282
    :catch_15
    move-exception v52

    .line 2284
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmHelper"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 1954
    .end local v52           #e:Ljava/lang/Exception;
    :cond_56
    :try_start_42
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_22

    .line 1958
    :cond_57
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_23

    .line 1974
    :cond_58
    move/from16 v8, p5

    .line 1975
    .restart local v8       #newDestination:I
    const/16 v29, 0x0

    .line 1976
    .restart local v29       #checked:Z
    invoke-static {}, Landroid/provider/DrmHelper;->getSupportedStorages()I

    move-result v97

    .line 1978
    .restart local v97       #supportedStorages:I
    and-int/lit8 v3, v97, 0x1

    if-eqz v3, :cond_59

    .line 1980
    invoke-static {}, Landroid/provider/DrmHelper;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 1983
    const/4 v8, 0x0

    .line 1984
    const/16 v29, 0x1

    .line 1988
    :cond_59
    if-nez v29, :cond_5a

    and-int/lit8 v3, v97, 0x2

    if-eqz v3, :cond_5a

    .line 1990
    invoke-static {}, Landroid/provider/DrmHelper;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 1993
    const/4 v8, 0x7

    .line 1997
    :cond_5a
    const-string v3, "Destination"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1998
    const-string v3, "_data"

    move-object/from16 v0, v39

    move-object/from16 v1, p6

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    sparse-switch v8, :sswitch_data_1

    .line 2011
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     rights\' download destination is unknown!!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 2005
    :sswitch_2
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     rights\' download destination is in external."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 2008
    :sswitch_3
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     rights\' download destination is in internal."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 2037
    .end local v8           #newDestination:I
    .end local v29           #checked:Z
    .end local v97           #supportedStorages:I
    :cond_5b
    const-string v3, "_data"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2040
    const/16 v25, 0x0

    .line 2043
    .local v25, boundary_length:I
    invoke-static {v6}, Landroid/provider/DrmHelper;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5c

    const/4 v3, 0x3

    move/from16 v0, v77

    if-ne v0, v3, :cond_5e

    .line 2045
    :cond_5c
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/drm/mobile1/DrmRawContent;->getContentId(Landroid/drm/mobile1/DrmRights;)Ljava/lang/String;

    move-result-object v34

    .line 2046
    new-instance v94, Ljava/io/FileInputStream;

    move-object/from16 v0, v94

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2049
    .restart local v94       #stream:Ljava/io/FileInputStream;
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/DrmHelper;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v81

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_c

    .line 2050
    .restart local v81       #os:Ljava/io/FileOutputStream;
    if-eqz v81, :cond_5d

    .line 2052
    :try_start_43
    move-object/from16 v0, v94

    move-object/from16 v1, v81

    invoke-static {v0, v1}, Landroid/provider/DrmHelper;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_8

    .line 2054
    :try_start_44
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    .line 2183
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v94           #stream:Ljava/io/FileInputStream;
    :cond_5d
    :goto_25
    const/4 v3, -0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_68

    .line 2186
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(11) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_c

    .line 2189
    const/16 v71, 0x0

    .line 2279
    if-eqz v62, :cond_1

    .line 2280
    :try_start_45
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_16

    goto/16 :goto_0

    .line 2282
    :catch_16
    move-exception v52

    .line 2284
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmHelper"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 2054
    .end local v52           #e:Ljava/lang/Exception;
    .restart local v81       #os:Ljava/io/FileOutputStream;
    .restart local v94       #stream:Ljava/io/FileInputStream;
    :catchall_8
    move-exception v3

    :try_start_46
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    throw v3

    .line 2057
    .end local v81           #os:Ljava/io/FileOutputStream;
    .end local v94           #stream:Ljava/io/FileInputStream;
    :cond_5e
    const/4 v3, 0x1

    move/from16 v0, v77

    if-ne v0, v3, :cond_5f

    .line 2059
    new-instance v81, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/DrmHelper;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v81

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_c

    .line 2060
    .restart local v81       #os:Ljava/io/FileOutputStream;
    if-eqz v81, :cond_5d

    .line 2062
    :try_start_47
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v81

    invoke-static {v0, v1, v2}, Landroid/provider/DrmHelper;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_9

    move-result v25

    .line 2064
    :try_start_48
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    goto :goto_25

    :catchall_9
    move-exception v3

    invoke-virtual/range {v81 .. v81}, Ljava/io/FileOutputStream;->close()V

    throw v3

    .line 2067
    .end local v81           #os:Ljava/io/FileOutputStream;
    :cond_5f
    const/4 v3, 0x2

    move/from16 v0, v77

    if-ne v0, v3, :cond_67

    .line 2068
    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/provider/DrmHelper;->installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_60

    .line 2070
    const-string v3, "DrmHelper"

    const-string v5, "Install rights of combine delivery failed."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 2076
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(9) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_c

    .line 2079
    const/16 v71, 0x0

    .line 2279
    if-eqz v62, :cond_1

    .line 2280
    :try_start_49
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_17

    goto/16 :goto_0

    .line 2282
    :catch_17
    move-exception v52

    .line 2284
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmHelper"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 2087
    .end local v52           #e:Ljava/lang/Exception;
    :cond_60
    :try_start_4a
    const-string/jumbo v3, "ro.board.platform"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 2090
    .restart local v85       #platform:Ljava/lang/String;
    if-eqz v85, :cond_61

    const-string v3, ""

    move-object/from16 v0, v85

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 2091
    :cond_61
    const/16 v86, 0x0

    .line 2096
    .restart local v86       #platformLowerCase:Ljava/lang/String;
    :goto_26
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x62

    if-eq v3, v5, :cond_62

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x42

    if-eq v3, v5, :cond_62

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x10

    if-eq v3, v5, :cond_62

    if-eqz v86, :cond_66

    const-string v3, ""

    move-object/from16 v0, v86

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    const-string/jumbo v3, "msm7k"

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_62

    const-string v3, "7x27"

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 2111
    :cond_62
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@ saveFile for MSM7K case."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    const/16 v88, 0x0

    .line 2116
    .restart local v88       #repeat:I
    :goto_27
    const/4 v3, 0x3

    move/from16 v0, v88

    if-ge v0, v3, :cond_5d

    .line 2118
    if-ltz v88, :cond_64

    .line 2119
    new-instance v99, Ljava/io/FileInputStream;

    move-object/from16 v0, v99

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2120
    .restart local v99       #tempFin:Ljava/io/FileInputStream;
    new-instance v98, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v99 .. v99}, Ljava/io/FileInputStream;->available()I

    move-result v3

    move-object/from16 v0, v98

    move-object/from16 v1, v99

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 2123
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/DrmHelper;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v98

    invoke-static {v0, v1, v3}, Landroid/provider/DrmHelper;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_c

    move-result v25

    .line 2126
    :try_start_4b
    invoke-virtual/range {v99 .. v99}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_a
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_1b

    .line 2135
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    :goto_28
    const/4 v3, -0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_65

    .line 2136
    add-int/lit8 v88, v88, 0x1

    goto :goto_27

    .line 2093
    .end local v86           #platformLowerCase:Ljava/lang/String;
    .end local v88           #repeat:I
    :cond_63
    :try_start_4c
    invoke-virtual/range {v85 .. v85}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v86

    .restart local v86       #platformLowerCase:Ljava/lang/String;
    goto :goto_26

    .line 2128
    .restart local v88       #repeat:I
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v99       #tempFin:Ljava/io/FileInputStream;
    :catchall_a
    move-exception v3

    throw v3

    .line 2132
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    :cond_64
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/DrmHelper;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-static {v0, v1, v3}, Landroid/provider/DrmHelper;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I

    move-result v25

    goto :goto_28

    .line 2139
    :cond_65
    const/16 v88, 0x3

    goto :goto_27

    .line 2148
    .end local v88           #repeat:I
    :cond_66
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@ saveFile for NORMAL case."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_c

    .line 2155
    :try_start_4d
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/DrmHelper;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-static {v0, v3, v1}, Landroid/provider/DrmHelper;->saveFile(Ljava/io/File;Ljava/lang/String;Landroid/drm/mobile1/DrmRawContent;)I
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_b

    move-result v25

    goto/16 :goto_25

    .line 2157
    :catchall_b
    move-exception v3

    :try_start_4e
    throw v3

    .line 2167
    .end local v85           #platform:Ljava/lang/String;
    .end local v86           #platformLowerCase:Ljava/lang/String;
    :cond_67
    const-string v3, "DrmHelper"

    const-string v5, "Unknown method."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V

    .line 2173
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(10) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_c

    .line 2176
    const/16 v71, 0x0

    .line 2279
    if-eqz v62, :cond_1

    .line 2280
    :try_start_4f
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_18

    goto/16 :goto_0

    .line 2282
    :catch_18
    move-exception v52

    .line 2284
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmHelper"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 2193
    .end local v52           #e:Ljava/lang/Exception;
    :cond_68
    :try_start_50
    new-instance v71, Landroid/content/Intent;

    invoke-direct/range {v71 .. v71}, Landroid/content/Intent;-><init>()V
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_c

    .line 2194
    .end local v72           #intent:Landroid/content/Intent;
    .restart local v71       #intent:Landroid/content/Intent;
    :try_start_51
    move-object/from16 v0, v71

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2196
    sget-object v21, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "_id"

    move-object/from16 v19, v11

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v24}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 2197
    .local v27, c_title:Landroid/database/Cursor;
    if-eqz v27, :cond_6a

    .line 2198
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_69

    .line 2199
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2200
    const-string/jumbo v3, "title"

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v103

    .line 2201
    .local v103, titleIdIndex:I
    move-object/from16 v0, v27

    move/from16 v1, v103

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v80

    .line 2203
    .local v80, newTitle:Ljava/lang/String;
    const-string v3, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "newTitle:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v80

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    if-eqz v80, :cond_69

    .line 2206
    const-string/jumbo v3, "title"

    move-object/from16 v0, v71

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2207
    const-string/jumbo v3, "title"

    move-object/from16 v0, v39

    move-object/from16 v1, v80

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    .end local v80           #newTitle:Ljava/lang/String;
    .end local v103           #titleIdIndex:I
    :cond_69
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 2214
    :cond_6a
    const-string v3, "audio"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object v15, v6

    move/from16 v17, p5

    .line 2227
    invoke-static/range {v12 .. v18}, Landroid/provider/DrmHelper;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;

    move-result-object v109

    .line 2229
    .restart local v109       #values:Landroid/content/ContentValues;
    if-eqz v109, :cond_6b

    .line 2230
    const-string v3, "album_id"

    const-string v5, "album_id"

    move-object/from16 v0, v109

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2231
    const-string v3, "artist_id"

    const-string v5, "artist_id"

    move-object/from16 v0, v109

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2233
    const-string/jumbo v3, "title"

    move-object/from16 v0, v109

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6b

    const-string/jumbo v3, "title"

    move-object/from16 v0, v109

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 2234
    const-string/jumbo v3, "title"

    const-string/jumbo v5, "title"

    move-object/from16 v0, v109

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    :cond_6b
    if-eqz v18, :cond_6e

    .line 2245
    const-string/jumbo v3, "is_ringtone"

    const-string v5, "1"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2256
    .end local v109           #values:Landroid/content/ContentValues;
    :cond_6c
    :goto_29
    const-string v3, "content_id"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    const-string v3, "content_boundary_offset"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2259
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-virtual {v11, v0, v1, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_3

    .line 2279
    if-eqz v62, :cond_6d

    .line 2280
    :try_start_52
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_1f

    .line 2293
    :cond_6d
    :goto_2a
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(20) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2246
    .restart local v109       #values:Landroid/content/ContentValues;
    :cond_6e
    :try_start_53
    invoke-static {}, Landroid/provider/DrmHelper;->SupportForwardLockOnly()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 2247
    const/4 v3, 0x1

    move/from16 v0, v77

    if-ne v0, v3, :cond_6c

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/32 v14, 0x4b000

    cmp-long v3, v12, v14

    if-gez v3, :cond_6c

    .line 2248
    const-string/jumbo v3, "is_ringtone"

    const-string v5, "1"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_3

    goto :goto_29

    .line 1794
    .end local v25           #boundary_length:I
    .end local v27           #c_title:Landroid/database/Cursor;
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v109           #values:Landroid/content/ContentValues;
    .restart local v28       #checkFile:Ljava/io/File;
    .restart local v35       #createFile:Ljava/io/File;
    .restart local v51       #duplicatePath:Ljava/lang/String;
    .restart local v85       #platform:Ljava/lang/String;
    .restart local v86       #platformLowerCase:Ljava/lang/String;
    :catch_19
    move-exception v3

    .line 1796
    const/16 v35, 0x0

    .line 1797
    :try_start_54
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_4

    goto/16 :goto_1d

    .line 1816
    .restart local v88       #repeat:I
    .restart local v90       #resultSaveFile:I
    .restart local v95       #success:Z
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v99       #tempFin:Ljava/io/FileInputStream;
    :catch_1a
    move-exception v3

    goto/16 :goto_1f

    .line 2127
    .end local v28           #checkFile:Ljava/io/File;
    .end local v35           #createFile:Ljava/io/File;
    .end local v51           #duplicatePath:Ljava/lang/String;
    .end local v71           #intent:Landroid/content/Intent;
    .end local v90           #resultSaveFile:I
    .end local v95           #success:Z
    .restart local v25       #boundary_length:I
    .restart local v39       #cv:Landroid/content/ContentValues;
    .restart local v72       #intent:Landroid/content/Intent;
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    :catch_1b
    move-exception v3

    goto/16 :goto_28

    .line 2282
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v11           #cr:Landroid/content/ContentResolver;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v18           #flRingtone:Z
    .end local v25           #boundary_length:I
    .end local v26           #c:Landroid/database/Cursor;
    .end local v32           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v33           #contentOffset:I
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v50           #duplicate:Z
    .end local v62           #fin:Ljava/io/FileInputStream;
    .end local v72           #intent:Landroid/content/Intent;
    .end local v77           #method:I
    .end local v84           #overwrite:Z
    .end local v85           #platform:Ljava/lang/String;
    .end local v86           #platformLowerCase:Ljava/lang/String;
    .end local v88           #repeat:I
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v99           #tempFin:Ljava/io/FileInputStream;
    .end local v105           #transferEncoding:I
    .restart local v61       #fin:Ljava/io/FileInputStream;
    .restart local v71       #intent:Landroid/content/Intent;
    :catch_1c
    move-exception v52

    .line 2284
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v5, "DrmHelper"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 2282
    .end local v52           #e:Ljava/lang/Exception;
    .end local v61           #fin:Ljava/io/FileInputStream;
    .restart local v10       #binaryFile:Ljava/io/File;
    .restart local v32       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v62       #fin:Ljava/io/FileInputStream;
    .restart local v83       #outputBinaryFilePath:Ljava/lang/String;
    .restart local v89       #resultIntent:Landroid/content/Intent;
    .restart local v105       #transferEncoding:I
    :catch_1d
    move-exception v52

    .line 2284
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmHelper"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1442
    .end local v10           #binaryFile:Ljava/io/File;
    .end local v52           #e:Ljava/lang/Exception;
    .end local v83           #outputBinaryFilePath:Ljava/lang/String;
    .end local v89           #resultIntent:Landroid/content/Intent;
    .restart local v6       #mimeType:Ljava/lang/String;
    .restart local v11       #cr:Landroid/content/ContentResolver;
    .restart local v18       #flRingtone:Z
    .restart local v33       #contentOffset:I
    .restart local v54       #extention:Ljava/lang/String;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    .restart local v73       #is:Ljava/io/InputStream;
    .restart local v74       #isTerminated:Z
    .restart local v77       #method:I
    .restart local v82       #outFile:Ljava/io/File;
    :catchall_c
    move-exception v3

    :goto_2b
    if-eqz v67, :cond_6f

    .line 1443
    :try_start_55
    invoke-virtual/range {v67 .. v67}, Ljava/io/FileOutputStream;->close()V

    .line 1444
    const/16 v67, 0x0

    .line 1446
    :cond_6f
    if-eqz v73, :cond_70

    .line 1447
    invoke-virtual/range {v73 .. v73}, Ljava/io/InputStream;->close()V

    .line 1448
    const/16 v73, 0x0

    .line 1457
    :cond_70
    if-eqz v63, :cond_71

    .line 1458
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileInputStream;->close()V

    .line 1459
    const/16 v63, 0x0

    .line 1461
    :cond_71
    if-eqz v65, :cond_72

    .line 1462
    invoke-virtual/range {v65 .. v65}, Ljava/io/FileInputStream;->close()V

    .line 1463
    const/16 v65, 0x0

    .line 1466
    :cond_72
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 1467
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->delete()Z

    .line 1469
    :cond_73
    if-eqz v74, :cond_2e

    .line 1473
    const-string v3, "DrmHelper"

    const-string v5, " @@@@@     addDrmFile with url, destination and target (6)-(4) -END"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_3

    .line 1475
    const/16 v71, 0x0

    .line 2279
    .end local v71           #intent:Landroid/content/Intent;
    if-eqz v62, :cond_1

    .line 2280
    :try_start_56
    invoke-virtual/range {v62 .. v62}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_1e

    goto/16 :goto_0

    .line 2282
    :catch_1e
    move-exception v52

    .line 2284
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmHelper"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 2282
    .end local v52           #e:Ljava/lang/Exception;
    .end local v54           #extention:Ljava/lang/String;
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .end local v73           #is:Ljava/io/InputStream;
    .end local v74           #isTerminated:Z
    .end local v82           #outFile:Ljava/io/File;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v25       #boundary_length:I
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v27       #c_title:Landroid/database/Cursor;
    .restart local v34       #contentUid:Ljava/lang/String;
    .restart local v39       #cv:Landroid/content/ContentValues;
    .restart local v50       #duplicate:Z
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v84       #overwrite:Z
    .restart local v93       #stampCursor:Landroid/database/Cursor;
    :catch_1f
    move-exception v52

    .line 2284
    .restart local v52       #e:Ljava/lang/Exception;
    const-string v3, "DrmHelper"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 1442
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v25           #boundary_length:I
    .end local v26           #c:Landroid/database/Cursor;
    .end local v27           #c_title:Landroid/database/Cursor;
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v39           #cv:Landroid/content/ContentValues;
    .end local v50           #duplicate:Z
    .end local v52           #e:Ljava/lang/Exception;
    .end local v84           #overwrite:Z
    .end local v93           #stampCursor:Landroid/database/Cursor;
    .restart local v54       #extention:Ljava/lang/String;
    .restart local v64       #fis:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    .restart local v73       #is:Ljava/io/InputStream;
    .restart local v74       #isTerminated:Z
    .restart local v82       #outFile:Ljava/io/File;
    :catchall_d
    move-exception v3

    move-object/from16 v63, v64

    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    goto :goto_2b

    .end local v65           #fis2:Ljava/io/FileInputStream;
    .restart local v41       #deleteRights:Z
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v75       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v91       #rights:Landroid/drm/mobile1/DrmRights;
    :catchall_e
    move-exception v3

    move-object/from16 v65, v66

    .end local v66           #fis2:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    goto :goto_2b

    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v68       #fos:Ljava/io/FileOutputStream;
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catchall_f
    move-exception v3

    move-object/from16 v67, v68

    .end local v68           #fos:Ljava/io/FileOutputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v65, v66

    .end local v66           #fis2:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    goto :goto_2b

    .line 1438
    .end local v41           #deleteRights:Z
    .end local v63           #fis:Ljava/io/FileInputStream;
    .end local v75           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v91           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v64       #fis:Ljava/io/FileInputStream;
    :catch_20
    move-exception v52

    move-object/from16 v63, v64

    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_e

    .end local v65           #fis2:Ljava/io/FileInputStream;
    .restart local v41       #deleteRights:Z
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v75       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v91       #rights:Landroid/drm/mobile1/DrmRights;
    :catch_21
    move-exception v52

    move-object/from16 v65, v66

    .end local v66           #fis2:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    goto/16 :goto_e

    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .restart local v66       #fis2:Ljava/io/FileInputStream;
    .restart local v68       #fos:Ljava/io/FileOutputStream;
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catch_22
    move-exception v52

    move-object/from16 v67, v68

    .end local v68           #fos:Ljava/io/FileOutputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v65, v66

    .end local v66           #fis2:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    goto/16 :goto_e

    .end local v41           #deleteRights:Z
    .end local v54           #extention:Ljava/lang/String;
    .end local v63           #fis:Ljava/io/FileInputStream;
    .end local v65           #fis2:Ljava/io/FileInputStream;
    .end local v67           #fos:Ljava/io/FileOutputStream;
    .end local v73           #is:Ljava/io/InputStream;
    .end local v74           #isTerminated:Z
    .end local v75           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v82           #outFile:Ljava/io/File;
    .end local v91           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v98           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v26       #c:Landroid/database/Cursor;
    .restart local v34       #contentUid:Ljava/lang/String;
    .restart local v50       #duplicate:Z
    .restart local v84       #overwrite:Z
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_74
    move-object/from16 v16, v108

    .end local v108           #uri:Landroid/net/Uri;
    .restart local v16       #uri:Landroid/net/Uri;
    goto/16 :goto_16

    .end local v16           #uri:Landroid/net/Uri;
    .restart local v108       #uri:Landroid/net/Uri;
    :cond_75
    move-object/from16 v16, v108

    .end local v108           #uri:Landroid/net/Uri;
    .restart local v16       #uri:Landroid/net/Uri;
    move-object/from16 v72, v71

    .end local v71           #intent:Landroid/content/Intent;
    .restart local v72       #intent:Landroid/content/Intent;
    goto/16 :goto_21

    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v16           #uri:Landroid/net/Uri;
    .end local v26           #c:Landroid/database/Cursor;
    .end local v34           #contentUid:Ljava/lang/String;
    .end local v50           #duplicate:Z
    .end local v72           #intent:Landroid/content/Intent;
    .end local v84           #overwrite:Z
    .restart local v41       #deleteRights:Z
    .restart local v54       #extention:Ljava/lang/String;
    .restart local v64       #fis:Ljava/io/FileInputStream;
    .restart local v65       #fis2:Ljava/io/FileInputStream;
    .restart local v67       #fos:Ljava/io/FileOutputStream;
    .restart local v71       #intent:Landroid/content/Intent;
    .restart local v73       #is:Ljava/io/InputStream;
    .restart local v74       #isTerminated:Z
    .restart local v75       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v82       #outFile:Ljava/io/File;
    .restart local v91       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v98       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :cond_76
    move-object/from16 v63, v64

    .end local v64           #fis:Ljava/io/FileInputStream;
    .restart local v63       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_b

    .line 1068
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch

    .line 2002
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x7 -> :sswitch_3
    .end sparse-switch
.end method

.method public static final addDrmFileWithoutRights(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 91
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"

    .prologue
    .line 2407
    const-string v4, "DrmHelper"

    const-string v8, "********addDrmFileWithoutRights"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 2412
    :cond_0
    const-string v4, "DrmHelper"

    const-string v8, "addDrmFile input error."

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    const/16 v53, 0x0

    .line 3462
    :cond_1
    :goto_0
    return-object v53

    .line 2424
    :cond_2
    const/4 v4, 0x7

    move/from16 v0, p5

    if-eq v0, v4, :cond_3

    .line 2427
    const/16 p5, 0x0

    .line 2430
    :cond_3
    const/16 v53, 0x0

    .line 2431
    .local v53, intent:Landroid/content/Intent;
    const/16 v45, 0x0

    .line 2434
    .local v45, fin:Ljava/io/FileInputStream;
    const-string v4, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2437
    :cond_4
    const-string v4, "DrmHelper"

    const-string v8, "Rights object installation is not supported via this method"

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    const/16 v53, 0x0

    goto :goto_0

    .line 2478
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2480
    .local v6, cr:Landroid/content/ContentResolver;
    const/16 v42, 0x0

    .line 2481
    .local v42, fileName:Ljava/lang/String;
    if-nez p2, :cond_7

    .line 2482
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v42

    .line 2491
    :goto_1
    const-string v4, "."

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v32

    .line 2492
    .local v32, dot:I
    const/4 v4, -0x1

    move/from16 v0, v32

    if-ne v0, v4, :cond_9

    .line 2494
    const-string v4, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2495
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".dm"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 2508
    :cond_6
    :goto_2
    const-string v4, "DrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Add DRM file : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    :try_start_0
    new-instance v46, Ljava/io/FileInputStream;

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f

    .line 2514
    .end local v45           #fin:Ljava/io/FileInputStream;
    .local v46, fin:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v20, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v20

    move-object/from16 v1, v46

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 2518
    .local v20, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual/range {v20 .. v20}, Landroid/drm/mobile1/DrmRawContent;->getTransferEncoding()I

    move-result v87

    .line 2520
    .local v87, transferEncoding:I
    const-string v4, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x3

    move/from16 v0, v87

    if-ne v0, v4, :cond_f

    .line 2525
    const-string v4, "DrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " @@@@@  Handle specific transfer-encoding="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v87

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    const-string v65, "/data/data/com.android.providers.drm/rights/tmp"

    .line 2531
    .local v65, outputBinaryFilePath:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v65

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    invoke-static {v4, v8}, Landroid/provider/DrmHelper;->checkAndCreateFolder(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2532
    const-string v4, "DrmHelper"

    const-string v8, " @@@@@ ERROR: cannot create file!!!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    const-string v4, "DrmHelper"

    const-string v8, " @@@@@     addDrmFileWithoutRights (1)-(3)-(1) -END"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 2539
    const/16 v53, 0x0

    .line 3453
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 3454
    :try_start_2
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 3456
    :catch_0
    move-exception v38

    .line 3458
    .local v38, e:Ljava/lang/Exception;
    const-string v4, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v46           #fin:Ljava/io/FileInputStream;
    .end local v65           #outputBinaryFilePath:Ljava/lang/String;
    .end local v87           #transferEncoding:I
    :goto_3
    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2485
    .end local v32           #dot:I
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    :cond_7
    const-string v4, "DrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Title is "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    move-object/from16 v42, p2

    goto/16 :goto_1

    .line 2496
    .restart local v32       #dot:I
    :cond_8
    const-string v4, "application/vnd.oma.drm.content"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2497
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".dcf"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_2

    .line 2500
    :cond_9
    const-string v4, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2501
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v32

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".dm"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_2

    .line 2502
    :cond_a
    const-string v4, "application/vnd.oma.drm.content"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2503
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v32

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".dcf"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_2

    .line 2542
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v65       #outputBinaryFilePath:Ljava/lang/String;
    .restart local v87       #transferEncoding:I
    :cond_b
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v65

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    .line 2544
    const/4 v4, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v65

    invoke-static {v0, v1, v2}, Landroid/provider/DrmHelper;->saveFileFromBase64ToBinary(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I

    move-result v8

    if-ne v4, v8, :cond_c

    .line 2547
    const-string v4, "DrmHelper"

    const-string v8, " @@@@@ ERROR: convert base64 file Fail!!!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    const-string v4, "DrmHelper"

    const-string v8, " @@@@@     addDrmFileWithoutRights (1)-(3)-(2) -END"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2554
    const/16 v53, 0x0

    .line 3453
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 3454
    :try_start_4
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 3456
    :catch_1
    move-exception v38

    .line 3458
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 2557
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v53       #intent:Landroid/content/Intent;
    :cond_c
    :try_start_5
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v65

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2559
    .local v5, binaryFile:Ljava/io/File;
    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 2560
    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2561
    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 2563
    invoke-static/range {v4 .. v9}, Landroid/provider/DrmHelper;->addDrmFileWithoutRights(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .end local v6           #cr:Landroid/content/ContentResolver;
    move-result-object v71

    .line 2567
    .local v71, resultIntent:Landroid/content/Intent;
    :try_start_6
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2568
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 3453
    :cond_d
    :goto_4
    if-eqz v46, :cond_e

    .line 3454
    :try_start_7
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1c

    :cond_e
    :goto_5
    move-object/from16 v53, v71

    .line 2576
    goto/16 :goto_0

    .line 2570
    :catch_2
    move-exception v38

    .line 2571
    .restart local v38       #e:Ljava/lang/Exception;
    :try_start_8
    const-string v4, "DrmHelper"

    const-string v8, " @@@@@  ERROR: delete temp files FAILED!!!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    const-string v4, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    .line 3441
    .end local v5           #binaryFile:Ljava/io/File;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v65           #outputBinaryFilePath:Ljava/lang/String;
    .end local v71           #resultIntent:Landroid/content/Intent;
    .end local v87           #transferEncoding:I
    :catch_3
    move-exception v38

    move-object/from16 v45, v46

    .line 3447
    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v38       #e:Ljava/lang/Exception;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    :goto_6
    :try_start_9
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 3449
    const/16 v53, 0x0

    .line 3453
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v45, :cond_1

    .line 3454
    :try_start_a
    invoke-virtual/range {v45 .. v45}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 3456
    :catch_4
    move-exception v38

    .line 3458
    const-string v4, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 2580
    .end local v38           #e:Ljava/lang/Exception;
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    .restart local v87       #transferEncoding:I
    :cond_f
    :try_start_b
    invoke-virtual/range {v20 .. v20}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v60

    .line 2582
    .local v60, mimeType:Ljava/lang/String;
    const-string v4, "DrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mimeType = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v60

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    invoke-virtual/range {v20 .. v20}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v59

    .line 2587
    .local v59, method:I
    const-string v4, "DrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "method = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v59

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v21

    .line 2597
    .local v21, contentOffset:I
    const-string/jumbo v4, "video"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "audio"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_10
    const/4 v4, 0x1

    move/from16 v0, v59

    if-eq v0, v4, :cond_11

    const/4 v4, 0x2

    move/from16 v0, v59

    if-ne v0, v4, :cond_24

    .line 2600
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x2e

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v60 .. v60}, Landroid/media/MediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 2605
    .local v40, extention:Ljava/lang/String;
    new-instance v64, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/com.android.providers.drm/rights/DRM"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v64

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 2612
    .local v64, outFile:Ljava/io/File;
    const/16 v47, 0x0

    .line 2613
    .local v47, fis:Ljava/io/FileInputStream;
    const/16 v49, 0x0

    .line 2615
    .local v49, fis2:Ljava/io/FileInputStream;
    const/16 v51, 0x0

    .line 2616
    .local v51, fos:Ljava/io/FileOutputStream;
    const/16 v55, 0x0

    .line 2617
    .local v55, is:Ljava/io/InputStream;
    const/16 v56, 0x0

    .line 2624
    .local v56, isTerminated:Z
    :try_start_c
    new-instance v48, Ljava/io/FileInputStream;

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 2633
    .end local v47           #fis:Ljava/io/FileInputStream;
    .local v48, fis:Ljava/io/FileInputStream;
    :try_start_d
    new-instance v80, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v48 .. v48}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v80

    move-object/from16 v1, v48

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 2637
    .local v80, tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v57

    .line 2638
    .local v57, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v57

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v73

    .line 2643
    .local v73, rights:Landroid/drm/mobile1/DrmRights;
    const/16 v27, 0x0

    .line 2644
    .local v27, deleteRights:Z
    if-nez v73, :cond_65

    const/4 v4, 0x2

    move/from16 v0, v59

    if-ne v0, v4, :cond_65

    .line 2662
    if-eqz v48, :cond_12

    .line 2663
    invoke-virtual/range {v48 .. v48}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1f

    .line 2664
    const/16 v47, 0x0

    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    move-object/from16 v48, v47

    .line 2666
    .end local v47           #fis:Ljava/io/FileInputStream;
    .restart local v48       #fis:Ljava/io/FileInputStream;
    :try_start_e
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 2669
    :cond_12
    :try_start_f
    new-instance v47, Ljava/io/FileInputStream;

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1f

    .line 2673
    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    :try_start_10
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v57

    move-object/from16 v1, v47

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v73

    .line 2675
    const/16 v27, 0x1

    .line 2681
    :goto_7
    if-eqz v47, :cond_13

    .line 2682
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->close()V

    .line 2683
    const/16 v47, 0x0

    .line 2687
    :cond_13
    if-eqz v73, :cond_1c

    .line 2694
    new-instance v50, Ljava/io/FileInputStream;

    move-object/from16 v0, v50

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    .line 2695
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .local v50, fis2:Ljava/io/FileInputStream;
    :try_start_11
    new-instance v80, Landroid/drm/mobile1/DrmRawContent;

    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual/range {v50 .. v50}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v80

    move-object/from16 v1, v50

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 2699
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v80

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v55

    .line 2700
    new-instance v52, Ljava/io/FileOutputStream;

    move-object/from16 v0, v52

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_20

    .line 2702
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .local v52, fos:Ljava/io/FileOutputStream;
    :try_start_12
    move-object/from16 v0, v55

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Landroid/provider/DrmHelper;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I

    .line 2704
    if-eqz v27, :cond_14

    .line 2705
    move-object/from16 v0, v57

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->deleteRights(Landroid/drm/mobile1/DrmRights;)V

    .line 2710
    :cond_14
    sget-object v4, Landroid/provider/DrmHelper;->CMD_CHMOD:[Ljava/lang/String;

    const/4 v8, 0x2

    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v8

    .line 2711
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    sget-object v8, Landroid/provider/DrmHelper;->CMD_CHMOD:[Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 2713
    new-instance v58, Landroid/media/MediaInfo;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/MediaInfo;-><init>(Landroid/content/Context;)V

    .line 2714
    .local v58, mediaInfo:Landroid/media/MediaInfo;
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v58

    invoke-virtual {v0, v4}, Landroid/media/MediaInfo;->getFileType(Ljava/lang/String;)I

    move-result v88

    .line 2715
    .local v88, type:I
    const/4 v4, 0x1

    move/from16 v0, v88

    if-ne v0, v4, :cond_1b

    .line 2716
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "audio/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v60

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 2725
    :cond_15
    :goto_8
    const-string v4, "DrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MIME type by MediaInfo: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v60

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_10
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_21

    move-object/from16 v51, v52

    .end local v52           #fos:Ljava/io/FileOutputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v49, v50

    .line 2734
    .end local v50           #fis2:Ljava/io/FileInputStream;
    .end local v58           #mediaInfo:Landroid/media/MediaInfo;
    .end local v88           #type:I
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    :goto_9
    if-eqz v51, :cond_16

    .line 2735
    :try_start_13
    invoke-virtual/range {v51 .. v51}, Ljava/io/FileOutputStream;->close()V

    .line 2736
    const/16 v51, 0x0

    .line 2738
    :cond_16
    if-eqz v55, :cond_17

    .line 2739
    invoke-virtual/range {v55 .. v55}, Ljava/io/InputStream;->close()V

    .line 2740
    const/16 v55, 0x0

    .line 2749
    :cond_17
    if-eqz v47, :cond_18

    .line 2750
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->close()V

    .line 2751
    const/16 v47, 0x0

    .line 2753
    :cond_18
    if-eqz v49, :cond_19

    .line 2754
    invoke-virtual/range {v49 .. v49}, Ljava/io/FileInputStream;->close()V

    .line 2755
    const/16 v49, 0x0

    .line 2758
    :cond_19
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2759
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->delete()Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    .line 2761
    :cond_1a
    if-eqz v56, :cond_24

    .line 2762
    const/16 v53, 0x0

    .line 3453
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 3454
    :try_start_14
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5

    goto/16 :goto_0

    .line 3456
    :catch_5
    move-exception v38

    .line 3458
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 2718
    .end local v38           #e:Ljava/lang/Exception;
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v52       #fos:Ljava/io/FileOutputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    .restart local v58       #mediaInfo:Landroid/media/MediaInfo;
    .restart local v88       #type:I
    :cond_1b
    const/4 v4, 0x2

    move/from16 v0, v88

    if-ne v0, v4, :cond_15

    .line 2719
    :try_start_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "video/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v60

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_10
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_21

    move-result-object v60

    goto :goto_8

    .line 2728
    .end local v50           #fis2:Ljava/io/FileInputStream;
    .end local v52           #fos:Ljava/io/FileOutputStream;
    .end local v58           #mediaInfo:Landroid/media/MediaInfo;
    .end local v88           #type:I
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    :cond_1c
    :try_start_16
    const-string v4, "DrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MIME type from DRM header: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v60

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    goto :goto_9

    .line 2730
    .end local v27           #deleteRights:Z
    .end local v47           #fis:Ljava/io/FileInputStream;
    .end local v57           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v73           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catch_6
    move-exception v38

    .line 2731
    .restart local v38       #e:Ljava/lang/Exception;
    :goto_a
    :try_start_17
    const-string v4, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    .line 2732
    const/16 v56, 0x1

    .line 2734
    if-eqz v51, :cond_1d

    .line 2735
    :try_start_18
    invoke-virtual/range {v51 .. v51}, Ljava/io/FileOutputStream;->close()V

    .line 2736
    const/16 v51, 0x0

    .line 2738
    :cond_1d
    if-eqz v55, :cond_1e

    .line 2739
    invoke-virtual/range {v55 .. v55}, Ljava/io/InputStream;->close()V

    .line 2740
    const/16 v55, 0x0

    .line 2749
    :cond_1e
    if-eqz v47, :cond_1f

    .line 2750
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->close()V

    .line 2751
    const/16 v47, 0x0

    .line 2753
    :cond_1f
    if-eqz v49, :cond_20

    .line 2754
    invoke-virtual/range {v49 .. v49}, Ljava/io/FileInputStream;->close()V

    .line 2755
    const/16 v49, 0x0

    .line 2758
    :cond_20
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2759
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->delete()Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3

    .line 2761
    :cond_21
    if-eqz v56, :cond_24

    .line 2762
    const/16 v53, 0x0

    .line 3453
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 3454
    :try_start_19
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7

    goto/16 :goto_0

    .line 3456
    :catch_7
    move-exception v38

    .line 3458
    const-string v4, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 2734
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v53       #intent:Landroid/content/Intent;
    :cond_22
    :try_start_1a
    throw v4
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3

    .line 3452
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v21           #contentOffset:I
    .end local v40           #extention:Ljava/lang/String;
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .end local v55           #is:Ljava/io/InputStream;
    .end local v56           #isTerminated:Z
    .end local v59           #method:I
    .end local v60           #mimeType:Ljava/lang/String;
    .end local v64           #outFile:Ljava/io/File;
    .end local v87           #transferEncoding:I
    :catchall_0
    move-exception v4

    move-object/from16 v45, v46

    .line 3453
    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    :goto_b
    if-eqz v45, :cond_23

    .line 3454
    :try_start_1b
    invoke-virtual/range {v45 .. v45}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 3452
    :cond_23
    :goto_c
    throw v4

    .line 2768
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v21       #contentOffset:I
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v59       #method:I
    .restart local v60       #mimeType:Ljava/lang/String;
    .restart local v87       #transferEncoding:I
    :cond_24
    :try_start_1c
    const-string v22, ""

    .line 2770
    .local v22, contentUid:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2773
    .local v7, contentUri:Landroid/net/Uri;
    const-string v4, "audio/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2774
    sget-object v7, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    .line 2790
    :goto_d
    const/16 v36, 0x0

    .line 2791
    .local v36, duplicate:Z
    const/16 v66, 0x0

    .line 2792
    .local v66, overwrite:Z
    const/16 v89, 0x0

    .line 2794
    .local v89, uri:Landroid/net/Uri;
    sget-object v8, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const-string v9, "content_url=?"

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p4, v10, v4

    const-string v11, "_id"

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 2795
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_64

    .line 2796
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_63

    .line 2800
    const-string v4, "DrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " duplicated."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2803
    const-string v4, "_id"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 2804
    .local v19, columnIdIndex:I
    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 2805
    .local v18, columnId:I
    const-string v4, "_data"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 2806
    .local v44, filePathIndex:I
    move/from16 v0, v44

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 2807
    .local v43, filePath:Ljava/lang/String;
    const-string/jumbo v4, "title"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    .line 2808
    .local v86, titleInddex:I
    move/from16 v0, v86

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 2809
    .local v35, dup_title:Ljava/lang/String;
    const/16 v34, 0x0

    .line 2811
    .local v34, downloadPath:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v89

    .line 2812
    new-instance v54, Landroid/content/Intent;

    invoke-direct/range {v54 .. v54}, Landroid/content/Intent;-><init>()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_3

    .line 2813
    .end local v53           #intent:Landroid/content/Intent;
    .local v54, intent:Landroid/content/Intent;
    :try_start_1d
    move-object/from16 v0, v54

    move-object/from16 v1, v89

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2815
    const-string v4, "DrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dup_title:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    const-string/jumbo v4, "title"

    move-object/from16 v0, v54

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2818
    const/16 v36, 0x1

    .line 2824
    const-string v4, "DrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Check file path: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    new-instance v41, Ljava/io/File;

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2828
    .local v41, f:Ljava/io/File;
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v42

    .line 2829
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 2830
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->delete()Z

    .line 2834
    :cond_25
    const/4 v4, 0x7

    move/from16 v0, p5

    if-ne v0, v4, :cond_2d

    .line 2844
    invoke-static {}, Landroid/provider/DrmHelper;->getInternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v34

    .line 2846
    if-eqz v34, :cond_26

    const-string v4, ""

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 2847
    :cond_26
    const-string v4, "DrmHelper"

    const-string v8, " @@@@@ internal download path doesn\'t exist!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c

    .line 2850
    const/16 v53, 0x0

    .line 3453
    if-eqz v46, :cond_1

    .line 3454
    :try_start_1e
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_8

    goto/16 :goto_0

    .line 3456
    :catch_8
    move-exception v38

    .line 3458
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 2775
    .end local v15           #c:Landroid/database/Cursor;
    .end local v18           #columnId:I
    .end local v19           #columnIdIndex:I
    .end local v34           #downloadPath:Ljava/lang/String;
    .end local v35           #dup_title:Ljava/lang/String;
    .end local v36           #duplicate:Z
    .end local v38           #e:Ljava/lang/Exception;
    .end local v41           #f:Ljava/io/File;
    .end local v43           #filePath:Ljava/lang/String;
    .end local v44           #filePathIndex:I
    .end local v54           #intent:Landroid/content/Intent;
    .end local v66           #overwrite:Z
    .end local v86           #titleInddex:I
    .end local v89           #uri:Landroid/net/Uri;
    .restart local v53       #intent:Landroid/content/Intent;
    :cond_27
    :try_start_1f
    const-string/jumbo v4, "image/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 2776
    sget-object v7, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_d

    .line 2777
    :cond_28
    const-string/jumbo v4, "video/"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 2778
    sget-object v7, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_d

    .line 2779
    :cond_29
    const-string v4, "application/java-archive"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 2780
    sget-object v7, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_d

    .line 2783
    :cond_2a
    const-string v4, "DrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported mime type "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v60

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_3

    .line 2786
    const/16 v53, 0x0

    .line 3453
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 3454
    :try_start_20
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_9

    goto/16 :goto_0

    .line 3456
    :catch_9
    move-exception v38

    .line 3458
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 2853
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v18       #columnId:I
    .restart local v19       #columnIdIndex:I
    .restart local v34       #downloadPath:Ljava/lang/String;
    .restart local v35       #dup_title:Ljava/lang/String;
    .restart local v36       #duplicate:Z
    .restart local v41       #f:Ljava/io/File;
    .restart local v43       #filePath:Ljava/lang/String;
    .restart local v44       #filePathIndex:I
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v66       #overwrite:Z
    .restart local v86       #titleInddex:I
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_2b
    :try_start_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 2889
    :goto_e
    const-string v4, "DrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saved file path: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2895
    new-instance v41, Ljava/io/File;

    .end local v41           #f:Ljava/io/File;
    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2896
    .restart local v41       #f:Ljava/io/File;
    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2898
    const-string v4, "DrmHelper"

    const-string v8, "File exists, use a new name"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    const-string v4, "."

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v39

    .line 2901
    .local v39, ext:I
    const/16 v69, 0x0

    .line 2902
    .local v69, prefix:Ljava/lang/String;
    const/16 v79, 0x0

    .line 2903
    .local v79, suffix:Ljava/lang/String;
    if-lez v39, :cond_30

    .line 2904
    const/4 v4, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v69

    .line 2905
    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v42

    move/from16 v1, v39

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v79

    .line 2910
    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v69

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "---"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v41 .. v41}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    move-object/from16 v0, v79

    invoke-static {v4, v0, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v61

    .line 2912
    .local v61, newFile:Ljava/io/File;
    invoke-virtual/range {v61 .. v61}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v43

    .line 2914
    const-string v4, "DrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New file path: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    .end local v39           #ext:I
    .end local v61           #newFile:Ljava/io/File;
    .end local v69           #prefix:Ljava/lang/String;
    .end local v79           #suffix:Ljava/lang/String;
    :cond_2c
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 2921
    .local v26, cv:Landroid/content/ContentValues;
    sget-object v9, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "_id"

    move-object v8, v6

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v76

    .line 2923
    .local v76, stampCursor:Landroid/database/Cursor;
    if-eqz v76, :cond_32

    .line 2924
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 2930
    const-string/jumbo v4, "time_differential"

    move-object/from16 v0, v76

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 2932
    .local v31, differentialColumnId:I
    move-object/from16 v0, v76

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 2933
    .local v29, differential:J
    const-string/jumbo v4, "timezone_stamp"

    move-object/from16 v0, v76

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v84

    .line 2934
    .local v84, timeZoneColumnIndex:I
    move-object/from16 v0, v76

    move/from16 v1, v84

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v82

    .line 2935
    .local v82, timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 2936
    .local v24, currentClock:J
    const-string v4, "date_modified"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2937
    const-string v4, "date_added"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2942
    .end local v24           #currentClock:J
    .end local v29           #differential:J
    .end local v31           #differentialColumnId:I
    .end local v82           #timeZone:J
    .end local v84           #timeZoneColumnIndex:I
    :goto_10
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->close()V

    .line 2948
    :goto_11
    const/16 v66, 0x1

    .line 2950
    const-string v4, "existence"

    const-string v8, "exist"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2952
    const-string v4, "_data"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2959
    const-string v4, "/"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v74

    .line 2960
    .local v74, slashPos:I
    add-int/lit8 v4, v74, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    .line 2962
    .local v33, downloadName:Ljava/lang/String;
    const-string v4, "bucket_display_name"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2965
    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v89

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1, v4, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_c

    move-object/from16 v9, v89

    .end local v89           #uri:Landroid/net/Uri;
    .local v9, uri:Landroid/net/Uri;
    move-object/from16 v53, v54

    .line 2967
    .end local v18           #columnId:I
    .end local v19           #columnIdIndex:I
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v33           #downloadName:Ljava/lang/String;
    .end local v34           #downloadPath:Ljava/lang/String;
    .end local v35           #dup_title:Ljava/lang/String;
    .end local v41           #f:Ljava/io/File;
    .end local v43           #filePath:Ljava/lang/String;
    .end local v44           #filePathIndex:I
    .end local v54           #intent:Landroid/content/Intent;
    .end local v74           #slashPos:I
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .end local v86           #titleInddex:I
    .restart local v53       #intent:Landroid/content/Intent;
    :goto_12
    :try_start_22
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2969
    if-eqz v36, :cond_33

    if-nez v66, :cond_33

    .line 2971
    const-string v4, "DrmHelper"

    const-string v8, "File is duplicated and exist."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_3

    .line 3453
    if-eqz v46, :cond_1

    .line 3454
    :try_start_23
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_a

    goto/16 :goto_0

    .line 3456
    :catch_a
    move-exception v38

    .line 3458
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 2875
    .end local v9           #uri:Landroid/net/Uri;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v53           #intent:Landroid/content/Intent;
    .restart local v18       #columnId:I
    .restart local v19       #columnIdIndex:I
    .restart local v34       #downloadPath:Ljava/lang/String;
    .restart local v35       #dup_title:Ljava/lang/String;
    .restart local v41       #f:Ljava/io/File;
    .restart local v43       #filePath:Ljava/lang/String;
    .restart local v44       #filePathIndex:I
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v86       #titleInddex:I
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_2d
    :try_start_24
    invoke-static {}, Landroid/provider/DrmHelper;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v34

    .line 2877
    if-eqz v34, :cond_2e

    const-string v4, ""

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 2878
    :cond_2e
    const-string v4, "DrmHelper"

    const-string v8, " @@@@@ external download path doesn\'t exist!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_c

    .line 2881
    const/16 v53, 0x0

    .line 3453
    if-eqz v46, :cond_1

    .line 3454
    :try_start_25
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_b

    goto/16 :goto_0

    .line 3456
    :catch_b
    move-exception v38

    .line 3458
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 2884
    .end local v38           #e:Ljava/lang/Exception;
    :cond_2f
    :try_start_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_e

    .line 2907
    .restart local v39       #ext:I
    .restart local v69       #prefix:Ljava/lang/String;
    .restart local v79       #suffix:Ljava/lang/String;
    :cond_30
    move-object/from16 v69, v42

    .line 2908
    const-string v79, ""

    goto/16 :goto_f

    .line 2939
    .end local v39           #ext:I
    .end local v69           #prefix:Ljava/lang/String;
    .end local v79           #suffix:Ljava/lang/String;
    .restart local v26       #cv:Landroid/content/ContentValues;
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    :cond_31
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2940
    const-string v4, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_10

    .line 3441
    .end local v18           #columnId:I
    .end local v19           #columnIdIndex:I
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v34           #downloadPath:Ljava/lang/String;
    .end local v35           #dup_title:Ljava/lang/String;
    .end local v41           #f:Ljava/io/File;
    .end local v43           #filePath:Ljava/lang/String;
    .end local v44           #filePathIndex:I
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .end local v86           #titleInddex:I
    .end local v89           #uri:Landroid/net/Uri;
    :catch_c
    move-exception v38

    move-object/from16 v45, v46

    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    move-object/from16 v53, v54

    .end local v54           #intent:Landroid/content/Intent;
    .restart local v53       #intent:Landroid/content/Intent;
    goto/16 :goto_6

    .line 2944
    .end local v45           #fin:Ljava/io/FileInputStream;
    .end local v53           #intent:Landroid/content/Intent;
    .restart local v18       #columnId:I
    .restart local v19       #columnIdIndex:I
    .restart local v26       #cv:Landroid/content/ContentValues;
    .restart local v34       #downloadPath:Ljava/lang/String;
    .restart local v35       #dup_title:Ljava/lang/String;
    .restart local v41       #f:Ljava/io/File;
    .restart local v43       #filePath:Ljava/lang/String;
    .restart local v44       #filePathIndex:I
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    .restart local v86       #titleInddex:I
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_32
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2945
    const-string v4, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_c

    goto/16 :goto_11

    .line 3452
    .end local v18           #columnId:I
    .end local v19           #columnIdIndex:I
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v34           #downloadPath:Ljava/lang/String;
    .end local v35           #dup_title:Ljava/lang/String;
    .end local v41           #f:Ljava/io/File;
    .end local v43           #filePath:Ljava/lang/String;
    .end local v44           #filePathIndex:I
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .end local v86           #titleInddex:I
    .end local v89           #uri:Landroid/net/Uri;
    :catchall_1
    move-exception v4

    move-object/from16 v45, v46

    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    move-object/from16 v53, v54

    .end local v54           #intent:Landroid/content/Intent;
    .restart local v53       #intent:Landroid/content/Intent;
    goto/16 :goto_b

    .line 2975
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    :cond_33
    if-eqz v36, :cond_44

    if-eqz v66, :cond_44

    .line 2977
    :try_start_27
    const-string v4, "DrmHelper"

    const-string v8, "Overwrite the file."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    invoke-static {v6, v9}, Landroid/provider/DrmHelper;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v37

    .line 2983
    .local v37, duplicatePath:Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2984
    .local v17, checkFile:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_34

    .line 2985
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 2990
    :cond_34
    invoke-static/range {v60 .. v60}, Landroid/provider/DrmHelper;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_35

    const/4 v4, 0x3

    move/from16 v0, v59

    if-ne v0, v4, :cond_39

    .line 2993
    :cond_35
    new-instance v77, Ljava/io/FileInputStream;

    move-object/from16 v0, v77

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2996
    .local v77, stream:Ljava/io/FileInputStream;
    new-instance v63, Ljava/io/FileOutputStream;

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 2997
    .local v63, os:Ljava/io/FileOutputStream;
    if-nez v63, :cond_38

    .line 2998
    invoke-virtual/range {v77 .. v77}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_3

    .line 3119
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v77           #stream:Ljava/io/FileInputStream;
    :cond_36
    :goto_13
    :try_start_28
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_e

    move-object/from16 v45, v46

    .line 3130
    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    :goto_14
    :try_start_29
    const-string v4, "audio"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 3131
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v60

    invoke-static {v0, v1, v2, v3, v9}, Landroid/provider/DrmHelper;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_10

    .line 3453
    :cond_37
    :goto_15
    if-eqz v45, :cond_1

    .line 3454
    :try_start_2a
    invoke-virtual/range {v45 .. v45}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_d

    goto/16 :goto_0

    .line 3456
    :catch_d
    move-exception v38

    .line 3458
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3001
    .end local v38           #e:Ljava/lang/Exception;
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v63       #os:Ljava/io/FileOutputStream;
    .restart local v77       #stream:Ljava/io/FileInputStream;
    :cond_38
    :try_start_2b
    move-object/from16 v0, v77

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Landroid/provider/DrmHelper;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2

    .line 3003
    :try_start_2c
    invoke-virtual/range {v77 .. v77}, Ljava/io/FileInputStream;->close()V

    .line 3004
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    goto :goto_13

    .line 3003
    :catchall_2
    move-exception v4

    invoke-virtual/range {v77 .. v77}, Ljava/io/FileInputStream;->close()V

    .line 3004
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    .line 3003
    throw v4

    .line 3007
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v77           #stream:Ljava/io/FileInputStream;
    :cond_39
    const-string v4, "application/vnd.oma.drm.message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 3009
    const/4 v4, 0x2

    move/from16 v0, v59

    if-ne v0, v4, :cond_3a

    .line 3019
    :cond_3a
    const-string/jumbo v4, "ro.board.platform"

    const/4 v8, 0x0

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 3022
    .local v67, platform:Ljava/lang/String;
    if-eqz v67, :cond_3b

    const-string v4, ""

    move-object/from16 v0, v67

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 3023
    :cond_3b
    const/16 v68, 0x0

    .line 3028
    .local v68, platformLowerCase:Ljava/lang/String;
    :goto_16
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x62

    if-eq v4, v8, :cond_3c

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x42

    if-eq v4, v8, :cond_3c

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x10

    if-eq v4, v8, :cond_3c

    if-eqz v68, :cond_42

    const-string v4, ""

    move-object/from16 v0, v68

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    const-string/jumbo v4, "msm7k"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3c

    const-string v4, "7x27"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 3043
    :cond_3c
    const-string v4, "DrmHelper"

    const-string v8, " @@@@@ save Duplicate File for MSM7K case."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_3

    .line 3047
    :try_start_2d
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3049
    .local v23, createFile:Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_4

    move-result v4

    if-nez v4, :cond_3d

    .line 3051
    :try_start_2e
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->createNewFile()Z
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_18

    .line 3054
    const/16 v23, 0x0

    .line 3055
    :try_start_2f
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3059
    :cond_3d
    :goto_17
    const/16 v70, 0x0

    .line 3060
    .local v70, repeat:I
    const/16 v78, 0x0

    .line 3061
    .local v78, success:Z
    const/16 v72, 0x0

    .line 3063
    .local v72, resultSaveFile:I
    :goto_18
    const/4 v4, 0x3

    move/from16 v0, v70

    if-ge v0, v4, :cond_41

    .line 3065
    if-ltz v70, :cond_3f

    .line 3066
    new-instance v81, Ljava/io/FileInputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3067
    .local v81, tempFin:Ljava/io/FileInputStream;
    new-instance v80, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v81 .. v81}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v80

    move-object/from16 v1, v81

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 3070
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, p1

    move-object/from16 v1, v80

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/DrmHelper;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_4

    move-result v72

    .line 3073
    :try_start_30
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_19

    .line 3082
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    :goto_19
    const/4 v4, -0x1

    move/from16 v0, v72

    if-ne v0, v4, :cond_40

    .line 3083
    add-int/lit8 v70, v70, 0x1

    goto :goto_18

    .line 3025
    .end local v23           #createFile:Ljava/io/File;
    .end local v68           #platformLowerCase:Ljava/lang/String;
    .end local v70           #repeat:I
    .end local v72           #resultSaveFile:I
    .end local v78           #success:Z
    :cond_3e
    :try_start_31
    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_3

    move-result-object v68

    .restart local v68       #platformLowerCase:Ljava/lang/String;
    goto/16 :goto_16

    .line 3054
    .restart local v23       #createFile:Ljava/io/File;
    :catchall_3
    move-exception v4

    const/16 v23, 0x0

    .line 3055
    :try_start_32
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3054
    throw v4
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_4

    .line 3094
    .end local v23           #createFile:Ljava/io/File;
    :catchall_4
    move-exception v4

    :try_start_33
    throw v4
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_3

    .line 3075
    .restart local v23       #createFile:Ljava/io/File;
    .restart local v70       #repeat:I
    .restart local v72       #resultSaveFile:I
    .restart local v78       #success:Z
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v81       #tempFin:Ljava/io/FileInputStream;
    :catchall_5
    move-exception v4

    :try_start_34
    throw v4

    .line 3079
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    :cond_3f
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/DrmHelper;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_4

    move-result v72

    goto :goto_19

    .line 3086
    :cond_40
    const/16 v70, 0x3

    .line 3087
    const/16 v78, 0x1

    goto :goto_18

    .line 3091
    :cond_41
    if-nez v78, :cond_36

    .line 3092
    const/16 v53, 0x0

    goto/16 :goto_13

    .line 3098
    .end local v23           #createFile:Ljava/io/File;
    .end local v70           #repeat:I
    .end local v72           #resultSaveFile:I
    .end local v78           #success:Z
    :cond_42
    :try_start_35
    new-instance v63, Ljava/io/FileOutputStream;

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_3

    .line 3099
    .restart local v63       #os:Ljava/io/FileOutputStream;
    if-eqz v63, :cond_36

    .line 3105
    const/4 v4, -0x1

    :try_start_36
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v63

    invoke-static {v0, v1, v2}, Landroid/provider/DrmHelper;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_6

    move-result v8

    if-ne v4, v8, :cond_43

    .line 3107
    const/16 v53, 0x0

    .line 3111
    :cond_43
    :try_start_37
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_13

    :catchall_6
    move-exception v4

    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 3120
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v67           #platform:Ljava/lang/String;
    .end local v68           #platformLowerCase:Ljava/lang/String;
    :catch_e
    move-exception v38

    .line 3121
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmHelper"

    const-string v8, " @@@@@  ERROR: close file failed!!! (addDrmFileWithoutRights)"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    const-string v4, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_3

    .line 3125
    const/16 v45, 0x0

    .line 3126
    .end local v46           #fin:Ljava/io/FileInputStream;
    .restart local v45       #fin:Ljava/io/FileInputStream;
    :try_start_38
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_14

    .line 3441
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v17           #checkFile:Ljava/io/File;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v21           #contentOffset:I
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v36           #duplicate:Z
    .end local v37           #duplicatePath:Ljava/lang/String;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v59           #method:I
    .end local v60           #mimeType:Ljava/lang/String;
    .end local v66           #overwrite:Z
    .end local v87           #transferEncoding:I
    :catch_f
    move-exception v38

    goto/16 :goto_6

    .line 3133
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v17       #checkFile:Ljava/io/File;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v21       #contentOffset:I
    .restart local v22       #contentUid:Ljava/lang/String;
    .restart local v36       #duplicate:Z
    .restart local v37       #duplicatePath:Ljava/lang/String;
    .restart local v59       #method:I
    .restart local v60       #mimeType:Ljava/lang/String;
    .restart local v66       #overwrite:Z
    .restart local v87       #transferEncoding:I
    :catch_10
    move-exception v38

    .line 3135
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File duplicate parse Media: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_f

    goto/16 :goto_15

    .line 3452
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v17           #checkFile:Ljava/io/File;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v21           #contentOffset:I
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v36           #duplicate:Z
    .end local v37           #duplicatePath:Ljava/lang/String;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v59           #method:I
    .end local v60           #mimeType:Ljava/lang/String;
    .end local v66           #overwrite:Z
    .end local v87           #transferEncoding:I
    :catchall_7
    move-exception v4

    goto/16 :goto_b

    .line 3141
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v21       #contentOffset:I
    .restart local v22       #contentUid:Ljava/lang/String;
    .restart local v36       #duplicate:Z
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v59       #method:I
    .restart local v60       #mimeType:Ljava/lang/String;
    .restart local v66       #overwrite:Z
    .restart local v87       #transferEncoding:I
    :cond_44
    :try_start_39
    const-string v4, "DrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Prepare to install: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_3

    move-object/from16 v54, v53

    .line 3147
    .end local v53           #intent:Landroid/content/Intent;
    .restart local v54       #intent:Landroid/content/Intent;
    :goto_1a
    :try_start_3a
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 3149
    .restart local v26       #cv:Landroid/content/ContentValues;
    const-string v4, "_size"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3151
    const-string/jumbo v4, "title"

    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3153
    const-string/jumbo v4, "mime_type"

    move-object/from16 v0, v26

    move-object/from16 v1, v60

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3154
    const-string/jumbo v4, "message_type"

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3155
    const-string v4, "delivery_type"

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3156
    const-string v4, "content_offset"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3157
    const-string v4, "content_url"

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3160
    sget-object v9, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    .end local v9           #uri:Landroid/net/Uri;
    sget-object v10, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "_id"

    move-object v8, v6

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v76

    .line 3162
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    if-eqz v76, :cond_46

    .line 3163
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 3169
    const-string/jumbo v4, "time_differential"

    move-object/from16 v0, v76

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 3170
    .restart local v31       #differentialColumnId:I
    move-object/from16 v0, v76

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 3171
    .restart local v29       #differential:J
    const-string/jumbo v4, "timezone_stamp"

    move-object/from16 v0, v76

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v84

    .line 3172
    .restart local v84       #timeZoneColumnIndex:I
    move-object/from16 v0, v76

    move/from16 v1, v84

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v82

    .line 3173
    .restart local v82       #timeZone:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 3174
    .restart local v24       #currentClock:J
    const-string v4, "date_added"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3178
    .end local v24           #currentClock:J
    .end local v29           #differential:J
    .end local v31           #differentialColumnId:I
    .end local v82           #timeZone:J
    .end local v84           #timeZoneColumnIndex:I
    :goto_1b
    invoke-interface/range {v76 .. v76}, Landroid/database/Cursor;->close()V

    .line 3184
    :goto_1c
    const-string v4, "Destination"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3187
    move-object/from16 v0, v26

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 3188
    .restart local v9       #uri:Landroid/net/Uri;
    if-nez v9, :cond_47

    .line 3190
    const-string v4, "DrmHelper"

    const-string v8, "Insert to DRM db failed."

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_c

    .line 3193
    const/16 v53, 0x0

    .line 3453
    if-eqz v46, :cond_1

    .line 3454
    :try_start_3b
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_11

    goto/16 :goto_0

    .line 3456
    :catch_11
    move-exception v38

    .line 3458
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3176
    .end local v9           #uri:Landroid/net/Uri;
    .end local v38           #e:Ljava/lang/Exception;
    :cond_45
    :try_start_3c
    const-string v4, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1b

    .line 3180
    :cond_46
    const-string v4, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1c

    .line 3195
    .restart local v9       #uri:Landroid/net/Uri;
    :cond_47
    const/4 v14, 0x0

    .line 3199
    .local v14, boundary_length:I
    invoke-static/range {v60 .. v60}, Landroid/provider/DrmHelper;->NeedToEncrypt(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_48

    const/4 v4, 0x3

    move/from16 v0, v59

    if-ne v0, v4, :cond_4a

    .line 3201
    :cond_48
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/drm/mobile1/DrmRawContent;->getContentId(Landroid/drm/mobile1/DrmRights;)Ljava/lang/String;

    move-result-object v22

    .line 3202
    new-instance v77, Ljava/io/FileInputStream;

    move-object/from16 v0, v77

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3205
    .restart local v77       #stream:Ljava/io/FileInputStream;
    new-instance v63, Ljava/io/FileOutputStream;

    invoke-static {v6, v9}, Landroid/provider/DrmHelper;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_c

    .line 3206
    .restart local v63       #os:Ljava/io/FileOutputStream;
    if-eqz v63, :cond_49

    .line 3208
    :try_start_3d
    move-object/from16 v0, v77

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Landroid/provider/DrmHelper;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_8

    .line 3210
    :try_start_3e
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_c

    .line 3379
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v77           #stream:Ljava/io/FileInputStream;
    :cond_49
    :goto_1d
    const/4 v4, -0x1

    if-ne v14, v4, :cond_58

    .line 3380
    const/16 v53, 0x0

    .line 3453
    if-eqz v46, :cond_1

    .line 3454
    :try_start_3f
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_12

    goto/16 :goto_0

    .line 3456
    :catch_12
    move-exception v38

    .line 3458
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3210
    .end local v38           #e:Ljava/lang/Exception;
    .restart local v63       #os:Ljava/io/FileOutputStream;
    .restart local v77       #stream:Ljava/io/FileInputStream;
    :catchall_8
    move-exception v4

    :try_start_40
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 3213
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v77           #stream:Ljava/io/FileInputStream;
    :cond_4a
    const/4 v4, 0x1

    move/from16 v0, v59

    if-ne v0, v4, :cond_50

    .line 3223
    sget-boolean v4, Landroid/provider/DrmHelper;->REBUILD_DATABASE:Z

    const/4 v8, 0x1

    if-ne v4, v8, :cond_4f

    .line 3225
    new-instance v75, Ljava/io/FileInputStream;

    move-object/from16 v0, v75

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3227
    .local v75, sourceFileInputStream:Ljava/io/FileInputStream;
    new-instance v28, Ljava/io/FileOutputStream;

    invoke-static {v6, v9}, Landroid/provider/DrmHelper;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_c

    .line 3230
    .local v28, destinationFileOutputStream:Ljava/io/FileOutputStream;
    if-eqz v28, :cond_49

    .line 3234
    :try_start_41
    move-object/from16 v0, v75

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/provider/DrmHelper;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_9
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_14

    .line 3244
    if-eqz v75, :cond_4b

    .line 3246
    :try_start_42
    invoke-virtual/range {v75 .. v75}, Ljava/io/FileInputStream;->close()V

    .line 3249
    :cond_4b
    if-eqz v28, :cond_49

    .line 3251
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->close()V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_13

    goto :goto_1d

    .line 3254
    :catch_13
    move-exception v38

    .line 3256
    .restart local v38       #e:Ljava/lang/Exception;
    :try_start_43
    const-string v4, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_c

    goto :goto_1d

    .line 3236
    .end local v38           #e:Ljava/lang/Exception;
    :catch_14
    move-exception v38

    .line 3238
    .restart local v38       #e:Ljava/lang/Exception;
    :try_start_44
    const-string v4, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_9

    .line 3244
    if-eqz v75, :cond_4c

    .line 3246
    :try_start_45
    invoke-virtual/range {v75 .. v75}, Ljava/io/FileInputStream;->close()V

    .line 3249
    :cond_4c
    if-eqz v28, :cond_49

    .line 3251
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_15

    goto :goto_1d

    .line 3254
    :catch_15
    move-exception v38

    .line 3256
    :try_start_46
    const-string v4, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_c

    goto :goto_1d

    .line 3242
    .end local v38           #e:Ljava/lang/Exception;
    :catchall_9
    move-exception v4

    .line 3244
    if-eqz v75, :cond_4d

    .line 3246
    :try_start_47
    invoke-virtual/range {v75 .. v75}, Ljava/io/FileInputStream;->close()V

    .line 3249
    :cond_4d
    if-eqz v28, :cond_4e

    .line 3251
    invoke-virtual/range {v28 .. v28}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_1e

    .line 3242
    :cond_4e
    :goto_1e
    :try_start_48
    throw v4

    .line 3265
    .end local v28           #destinationFileOutputStream:Ljava/io/FileOutputStream;
    .end local v75           #sourceFileInputStream:Ljava/io/FileInputStream;
    :cond_4f
    new-instance v63, Ljava/io/FileOutputStream;

    invoke-static {v6, v9}, Landroid/provider/DrmHelper;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_c

    .line 3266
    .restart local v63       #os:Ljava/io/FileOutputStream;
    if-eqz v63, :cond_49

    .line 3268
    :try_start_49
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v63

    invoke-static {v0, v1, v2}, Landroid/provider/DrmHelper;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_a

    move-result v14

    .line 3270
    :try_start_4a
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_1d

    :catchall_a
    move-exception v4

    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 3276
    .end local v63           #os:Ljava/io/FileOutputStream;
    :cond_50
    const/4 v4, 0x2

    move/from16 v0, v59

    if-ne v0, v4, :cond_57

    .line 3291
    const-string/jumbo v4, "ro.board.platform"

    const/4 v8, 0x0

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 3294
    .restart local v67       #platform:Ljava/lang/String;
    if-eqz v67, :cond_51

    const-string v4, ""

    move-object/from16 v0, v67

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 3295
    :cond_51
    const/16 v68, 0x0

    .line 3300
    .restart local v68       #platformLowerCase:Ljava/lang/String;
    :goto_1f
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x62

    if-eq v4, v8, :cond_52

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x42

    if-eq v4, v8, :cond_52

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x10

    if-eq v4, v8, :cond_52

    if-eqz v68, :cond_56

    const-string v4, ""

    move-object/from16 v0, v68

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    const-string/jumbo v4, "msm7k"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_52

    const-string v4, "7x27"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 3315
    :cond_52
    const-string v4, "DrmHelper"

    const-string v8, " @@@@@ saveFile for MSM7K case."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    const/16 v70, 0x0

    .line 3320
    .restart local v70       #repeat:I
    :goto_20
    const/4 v4, 0x3

    move/from16 v0, v70

    if-ge v0, v4, :cond_49

    .line 3322
    if-ltz v70, :cond_54

    .line 3323
    new-instance v81, Ljava/io/FileInputStream;

    move-object/from16 v0, v81

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3324
    .restart local v81       #tempFin:Ljava/io/FileInputStream;
    new-instance v80, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v81 .. v81}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v80

    move-object/from16 v1, v81

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 3327
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {v6, v9}, Landroid/provider/DrmHelper;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, v80

    invoke-static {v0, v1, v4}, Landroid/provider/DrmHelper;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_c

    move-result v14

    .line 3330
    :try_start_4b
    invoke-virtual/range {v81 .. v81}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_1a

    .line 3339
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    :goto_21
    const/4 v4, -0x1

    if-ne v14, v4, :cond_55

    .line 3340
    add-int/lit8 v70, v70, 0x1

    goto :goto_20

    .line 3297
    .end local v68           #platformLowerCase:Ljava/lang/String;
    .end local v70           #repeat:I
    :cond_53
    :try_start_4c
    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v68

    .restart local v68       #platformLowerCase:Ljava/lang/String;
    goto :goto_1f

    .line 3332
    .restart local v70       #repeat:I
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v81       #tempFin:Ljava/io/FileInputStream;
    :catchall_b
    move-exception v4

    throw v4

    .line 3336
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    :cond_54
    invoke-static {v6, v9}, Landroid/provider/DrmHelper;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Landroid/provider/DrmHelper;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I

    move-result v14

    goto :goto_21

    .line 3343
    :cond_55
    const/16 v70, 0x3

    goto :goto_20

    .line 3352
    .end local v70           #repeat:I
    :cond_56
    const-string v4, "DrmHelper"

    const-string v8, " @@@@@ saveFile for NORMAL case."

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3355
    new-instance v63, Ljava/io/FileOutputStream;

    invoke-static {v6, v9}, Landroid/provider/DrmHelper;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_c

    .line 3357
    .restart local v63       #os:Ljava/io/FileOutputStream;
    if-eqz v63, :cond_49

    .line 3359
    :try_start_4d
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v63

    invoke-static {v0, v1, v2}, Landroid/provider/DrmHelper;->saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_c

    move-result v14

    .line 3362
    :try_start_4e
    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_1d

    :catchall_c
    move-exception v4

    invoke-virtual/range {v63 .. v63}, Ljava/io/FileOutputStream;->close()V

    throw v4

    .line 3369
    .end local v63           #os:Ljava/io/FileOutputStream;
    .end local v67           #platform:Ljava/lang/String;
    .end local v68           #platformLowerCase:Ljava/lang/String;
    :cond_57
    const-string v4, "DrmHelper"

    const-string v8, "Unknown method."

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3371
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_c

    .line 3372
    const/16 v53, 0x0

    .line 3453
    if-eqz v46, :cond_1

    .line 3454
    :try_start_4f
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_16

    goto/16 :goto_0

    .line 3456
    :catch_16
    move-exception v38

    .line 3458
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3384
    .end local v38           #e:Ljava/lang/Exception;
    :cond_58
    :try_start_50
    new-instance v53, Landroid/content/Intent;

    invoke-direct/range {v53 .. v53}, Landroid/content/Intent;-><init>()V
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_c

    .line 3385
    .end local v54           #intent:Landroid/content/Intent;
    .restart local v53       #intent:Landroid/content/Intent;
    :try_start_51
    move-object/from16 v0, v53

    move-object/from16 v1, v60

    invoke-virtual {v0, v9, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3387
    sget-object v10, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "_id"

    move-object v8, v6

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 3388
    .local v16, c_title:Landroid/database/Cursor;
    if-eqz v16, :cond_5a

    .line 3389
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_59

    .line 3390
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3391
    const-string/jumbo v4, "title"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v85

    .line 3392
    .local v85, titleIdIndex:I
    move-object/from16 v0, v16

    move/from16 v1, v85

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v62

    .line 3394
    .local v62, newTitle:Ljava/lang/String;
    const-string v4, "DrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "newTitle:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v62

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    if-eqz v62, :cond_59

    .line 3397
    const-string/jumbo v4, "title"

    move-object/from16 v0, v53

    move-object/from16 v1, v62

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3398
    const-string/jumbo v4, "title"

    move-object/from16 v0, v26

    move-object/from16 v1, v62

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3401
    .end local v62           #newTitle:Ljava/lang/String;
    .end local v85           #titleIdIndex:I
    :cond_59
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 3405
    :cond_5a
    const-string v4, "audio"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 3406
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v60

    invoke-static {v0, v1, v2, v3, v9}, Landroid/provider/DrmHelper;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v90

    .line 3407
    .local v90, values:Landroid/content/ContentValues;
    if-eqz v90, :cond_5b

    .line 3408
    const-string v4, "album_id"

    const-string v8, "album_id"

    move-object/from16 v0, v90

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3409
    const-string v4, "artist_id"

    const-string v8, "artist_id"

    move-object/from16 v0, v90

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3411
    const-string/jumbo v4, "title"

    move-object/from16 v0, v90

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5b

    const-string/jumbo v4, "title"

    move-object/from16 v0, v90

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 3413
    const-string/jumbo v4, "title"

    const-string/jumbo v8, "title"

    move-object/from16 v0, v90

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3417
    :cond_5b
    invoke-static {}, Landroid/provider/DrmHelper;->SupportForwardLockOnly()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 3418
    const/4 v4, 0x1

    move/from16 v0, v59

    if-ne v0, v4, :cond_5c

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/32 v12, 0x4b000

    cmp-long v4, v10, v12

    if-gez v4, :cond_5c

    .line 3419
    const-string/jumbo v4, "is_ringtone"

    const-string v8, "1"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3424
    .end local v90           #values:Landroid/content/ContentValues;
    :cond_5c
    const-string v4, "content_id"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3425
    const-string v4, "content_boundary_offset"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3433
    sget-boolean v4, Landroid/provider/DrmHelper;->REBUILD_DATABASE:Z

    const/4 v8, 0x1

    if-ne v4, v8, :cond_5d

    .line 3435
    const-string v4, "content_url"

    invoke-static {v6, v9}, Landroid/provider/DrmHelper;->getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3436
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 3440
    :cond_5d
    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v6, v9, v0, v4, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_3

    .line 3453
    if-eqz v46, :cond_1

    .line 3454
    :try_start_52
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_17

    goto/16 :goto_0

    .line 3456
    :catch_17
    move-exception v38

    .line 3458
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3052
    .end local v14           #boundary_length:I
    .end local v16           #c_title:Landroid/database/Cursor;
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .restart local v17       #checkFile:Ljava/io/File;
    .restart local v23       #createFile:Ljava/io/File;
    .restart local v37       #duplicatePath:Ljava/lang/String;
    .restart local v67       #platform:Ljava/lang/String;
    .restart local v68       #platformLowerCase:Ljava/lang/String;
    :catch_18
    move-exception v4

    .line 3054
    const/16 v23, 0x0

    .line 3055
    :try_start_53
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_4

    goto/16 :goto_17

    .line 3074
    .restart local v70       #repeat:I
    .restart local v72       #resultSaveFile:I
    .restart local v78       #success:Z
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v81       #tempFin:Ljava/io/FileInputStream;
    :catch_19
    move-exception v4

    goto/16 :goto_19

    .line 3331
    .end local v17           #checkFile:Ljava/io/File;
    .end local v23           #createFile:Ljava/io/File;
    .end local v37           #duplicatePath:Ljava/lang/String;
    .end local v53           #intent:Landroid/content/Intent;
    .end local v72           #resultSaveFile:I
    .end local v78           #success:Z
    .restart local v14       #boundary_length:I
    .restart local v26       #cv:Landroid/content/ContentValues;
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    :catch_1a
    move-exception v4

    goto/16 :goto_21

    .line 3456
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v14           #boundary_length:I
    .end local v15           #c:Landroid/database/Cursor;
    .end local v20           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v21           #contentOffset:I
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v36           #duplicate:Z
    .end local v46           #fin:Ljava/io/FileInputStream;
    .end local v54           #intent:Landroid/content/Intent;
    .end local v59           #method:I
    .end local v60           #mimeType:Ljava/lang/String;
    .end local v66           #overwrite:Z
    .end local v67           #platform:Ljava/lang/String;
    .end local v68           #platformLowerCase:Ljava/lang/String;
    .end local v70           #repeat:I
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v81           #tempFin:Ljava/io/FileInputStream;
    .end local v87           #transferEncoding:I
    .restart local v45       #fin:Ljava/io/FileInputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    :catch_1b
    move-exception v38

    .line 3458
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v8, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 3456
    .end local v38           #e:Ljava/lang/Exception;
    .end local v45           #fin:Ljava/io/FileInputStream;
    .restart local v5       #binaryFile:Ljava/io/File;
    .restart local v20       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v46       #fin:Ljava/io/FileInputStream;
    .restart local v65       #outputBinaryFilePath:Ljava/lang/String;
    .restart local v71       #resultIntent:Landroid/content/Intent;
    .restart local v87       #transferEncoding:I
    :catch_1c
    move-exception v38

    .line 3458
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2734
    .end local v5           #binaryFile:Ljava/io/File;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v65           #outputBinaryFilePath:Ljava/lang/String;
    .end local v71           #resultIntent:Landroid/content/Intent;
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v21       #contentOffset:I
    .restart local v40       #extention:Ljava/lang/String;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    .restart local v55       #is:Ljava/io/InputStream;
    .restart local v56       #isTerminated:Z
    .restart local v59       #method:I
    .restart local v60       #mimeType:Ljava/lang/String;
    .restart local v64       #outFile:Ljava/io/File;
    :catchall_d
    move-exception v4

    :goto_22
    if-eqz v51, :cond_5e

    .line 2735
    :try_start_54
    invoke-virtual/range {v51 .. v51}, Ljava/io/FileOutputStream;->close()V

    .line 2736
    const/16 v51, 0x0

    .line 2738
    :cond_5e
    if-eqz v55, :cond_5f

    .line 2739
    invoke-virtual/range {v55 .. v55}, Ljava/io/InputStream;->close()V

    .line 2740
    const/16 v55, 0x0

    .line 2749
    :cond_5f
    if-eqz v47, :cond_60

    .line 2750
    invoke-virtual/range {v47 .. v47}, Ljava/io/FileInputStream;->close()V

    .line 2751
    const/16 v47, 0x0

    .line 2753
    :cond_60
    if-eqz v49, :cond_61

    .line 2754
    invoke-virtual/range {v49 .. v49}, Ljava/io/FileInputStream;->close()V

    .line 2755
    const/16 v49, 0x0

    .line 2758
    :cond_61
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_62

    .line 2759
    invoke-virtual/range {v64 .. v64}, Ljava/io/File;->delete()Z
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_3

    .line 2761
    :cond_62
    if-eqz v56, :cond_22

    .line 2762
    const/16 v53, 0x0

    .line 3453
    .end local v53           #intent:Landroid/content/Intent;
    if-eqz v46, :cond_1

    .line 3454
    :try_start_55
    invoke-virtual/range {v46 .. v46}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_1d

    goto/16 :goto_0

    .line 3456
    :catch_1d
    move-exception v38

    .line 3458
    .restart local v38       #e:Ljava/lang/Exception;
    const-string v4, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 3254
    .end local v38           #e:Ljava/lang/Exception;
    .end local v40           #extention:Ljava/lang/String;
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .end local v55           #is:Ljava/io/InputStream;
    .end local v56           #isTerminated:Z
    .end local v64           #outFile:Ljava/io/File;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v14       #boundary_length:I
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v22       #contentUid:Ljava/lang/String;
    .restart local v26       #cv:Landroid/content/ContentValues;
    .restart local v28       #destinationFileOutputStream:Ljava/io/FileOutputStream;
    .restart local v36       #duplicate:Z
    .restart local v54       #intent:Landroid/content/Intent;
    .restart local v66       #overwrite:Z
    .restart local v75       #sourceFileInputStream:Ljava/io/FileInputStream;
    .restart local v76       #stampCursor:Landroid/database/Cursor;
    :catch_1e
    move-exception v38

    .line 3256
    .restart local v38       #e:Ljava/lang/Exception;
    :try_start_56
    const-string v8, "DrmHelper"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_c

    goto/16 :goto_1e

    .line 2734
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v14           #boundary_length:I
    .end local v15           #c:Landroid/database/Cursor;
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v26           #cv:Landroid/content/ContentValues;
    .end local v28           #destinationFileOutputStream:Ljava/io/FileOutputStream;
    .end local v36           #duplicate:Z
    .end local v38           #e:Ljava/lang/Exception;
    .end local v54           #intent:Landroid/content/Intent;
    .end local v66           #overwrite:Z
    .end local v75           #sourceFileInputStream:Ljava/io/FileInputStream;
    .end local v76           #stampCursor:Landroid/database/Cursor;
    .restart local v40       #extention:Ljava/lang/String;
    .restart local v48       #fis:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    .restart local v55       #is:Ljava/io/InputStream;
    .restart local v56       #isTerminated:Z
    .restart local v64       #outFile:Ljava/io/File;
    :catchall_e
    move-exception v4

    move-object/from16 v47, v48

    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    goto :goto_22

    .end local v49           #fis2:Ljava/io/FileInputStream;
    .restart local v27       #deleteRights:Z
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v57       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v73       #rights:Landroid/drm/mobile1/DrmRights;
    :catchall_f
    move-exception v4

    move-object/from16 v49, v50

    .end local v50           #fis2:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    goto :goto_22

    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v52       #fos:Ljava/io/FileOutputStream;
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catchall_10
    move-exception v4

    move-object/from16 v51, v52

    .end local v52           #fos:Ljava/io/FileOutputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v49, v50

    .end local v50           #fis2:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    goto :goto_22

    .line 2730
    .end local v27           #deleteRights:Z
    .end local v47           #fis:Ljava/io/FileInputStream;
    .end local v57           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v73           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v48       #fis:Ljava/io/FileInputStream;
    :catch_1f
    move-exception v38

    move-object/from16 v47, v48

    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_a

    .end local v49           #fis2:Ljava/io/FileInputStream;
    .restart local v27       #deleteRights:Z
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v57       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v73       #rights:Landroid/drm/mobile1/DrmRights;
    :catch_20
    move-exception v38

    move-object/from16 v49, v50

    .end local v50           #fis2:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    goto/16 :goto_a

    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .restart local v50       #fis2:Ljava/io/FileInputStream;
    .restart local v52       #fos:Ljava/io/FileOutputStream;
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :catch_21
    move-exception v38

    move-object/from16 v51, v52

    .end local v52           #fos:Ljava/io/FileOutputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v49, v50

    .end local v50           #fis2:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    goto/16 :goto_a

    .end local v27           #deleteRights:Z
    .end local v40           #extention:Ljava/lang/String;
    .end local v47           #fis:Ljava/io/FileInputStream;
    .end local v49           #fis2:Ljava/io/FileInputStream;
    .end local v51           #fos:Ljava/io/FileOutputStream;
    .end local v55           #is:Ljava/io/InputStream;
    .end local v56           #isTerminated:Z
    .end local v57           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v64           #outFile:Ljava/io/File;
    .end local v73           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v80           #tempContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v7       #contentUri:Landroid/net/Uri;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v22       #contentUid:Ljava/lang/String;
    .restart local v36       #duplicate:Z
    .restart local v66       #overwrite:Z
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_63
    move-object/from16 v9, v89

    .end local v89           #uri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    goto/16 :goto_12

    .end local v9           #uri:Landroid/net/Uri;
    .restart local v89       #uri:Landroid/net/Uri;
    :cond_64
    move-object/from16 v9, v89

    .end local v89           #uri:Landroid/net/Uri;
    .restart local v9       #uri:Landroid/net/Uri;
    move-object/from16 v54, v53

    .end local v53           #intent:Landroid/content/Intent;
    .restart local v54       #intent:Landroid/content/Intent;
    goto/16 :goto_1a

    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v22           #contentUid:Ljava/lang/String;
    .end local v36           #duplicate:Z
    .end local v54           #intent:Landroid/content/Intent;
    .end local v66           #overwrite:Z
    .restart local v27       #deleteRights:Z
    .restart local v40       #extention:Ljava/lang/String;
    .restart local v48       #fis:Ljava/io/FileInputStream;
    .restart local v49       #fis2:Ljava/io/FileInputStream;
    .restart local v51       #fos:Ljava/io/FileOutputStream;
    .restart local v53       #intent:Landroid/content/Intent;
    .restart local v55       #is:Ljava/io/InputStream;
    .restart local v56       #isTerminated:Z
    .restart local v57       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v64       #outFile:Ljava/io/File;
    .restart local v73       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v80       #tempContent:Landroid/drm/mobile1/DrmRawContent;
    :cond_65
    move-object/from16 v47, v48

    .end local v48           #fis:Ljava/io/FileInputStream;
    .restart local v47       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_7
.end method

.method public static final addDrmFileWithoutRightsAndRebuild(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3
    .parameter "cx"
    .parameter "file"
    .parameter "title"
    .parameter "mediaType"
    .parameter "url"
    .parameter "destination"

    .prologue
    .line 2374
    const-string v1, "DrmHelper"

    const-string v2, " @@@@@     addDrmFileWithoutRightsAndRebuild() - BEGIN. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    const/4 v0, 0x0

    .line 2381
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    sput-boolean v1, Landroid/provider/DrmHelper;->REBUILD_DATABASE:Z

    .line 2382
    invoke-static/range {p0 .. p5}, Landroid/provider/DrmHelper;->addDrmFileWithoutRights(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 2383
    const/4 v1, 0x0

    sput-boolean v1, Landroid/provider/DrmHelper;->REBUILD_DATABASE:Z

    .line 2388
    const-string v1, "DrmHelper"

    const-string v2, " @@@@@     addDrmFileWithoutRightsAndRebuild() - END. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    return-object v0
.end method

.method private static checkAndCreateFolder(Ljava/lang/String;Z)Z
    .locals 6
    .parameter "checkFolderPath"
    .parameter "setPermission"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6876
    if-eqz p0, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 6898
    :cond_1
    :goto_0
    return v2

    .line 6880
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6883
    .local v0, checkF:Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 6884
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 6887
    :cond_3
    if-eqz p1, :cond_1

    .line 6888
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 6889
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 6890
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6894
    :catch_0
    move-exception v1

    .line 6895
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "DrmHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6896
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 6898
    goto :goto_0
.end method

.method public static checkBeforeDownload(Landroid/content/Context;[BLjava/lang/String;)I
    .locals 26
    .parameter "context"
    .parameter "buffer"
    .parameter "mediaType"

    .prologue
    .line 679
    const-string v23, "DrmHelper"

    const-string v24, "********checkBeforeDownload"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 684
    :cond_0
    const-string v23, "DrmHelper"

    const-string v24, "checkBeforeDownload :-2"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/16 v23, -0x2

    .line 860
    :goto_0
    return v23

    .line 692
    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x800

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_3

    const/16 v5, 0x800

    .line 694
    .local v5, dataSize:I
    :goto_1
    new-array v4, v5, [B

    .line 696
    .local v4, data:[B
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v5, :cond_5

    .line 699
    const-string v23, "application/vnd.oma.drm.message"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    aget-byte v23, p1, v7

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    aget-byte v23, p1, v7

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    aget-byte v23, p1, v7

    const/16 v24, 0x3b

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 700
    :cond_2
    const/16 v23, 0x20

    aput-byte v23, v4, v7

    .line 696
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 692
    .end local v4           #data:[B
    .end local v5           #dataSize:I
    .end local v7           #i:I
    :cond_3
    move-object/from16 v0, p1

    array-length v5, v0

    goto :goto_1

    .line 702
    .restart local v4       #data:[B
    .restart local v5       #dataSize:I
    .restart local v7       #i:I
    :cond_4
    aget-byte v23, p1, v7

    aput-byte v23, v4, v7

    goto :goto_3

    .line 706
    :cond_5
    new-instance v23, Ljava/lang/String;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v0, v4, v1, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    .line 707
    .local v21, segment:Ljava/lang/String;
    const-string v18, "content-type: "

    .line 708
    .local v18, pattern:Ljava/lang/String;
    const/4 v2, 0x0

    .line 710
    .local v2, MIMEType:Ljava/lang/String;
    const-string v23, "application/vnd.oma.drm.message"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 711
    const-string v23, "content-type: "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 712
    .local v12, indexOfPattern:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v12, v0, :cond_6

    .line 714
    const-string v23, "DrmHelper"

    const-string v24, "checkBeforeDownload :-7"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/16 v23, -0x7

    goto/16 :goto_0

    .line 718
    :cond_6
    const-string v23, "content-type: "

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int v8, v12, v23

    .line 719
    .local v8, indexOfContentType:I
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 720
    .local v22, subString:Ljava/lang/String;
    const/16 v23, 0x20

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 721
    .local v13, indexOfReturn:I
    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 722
    const-string v23, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 728
    invoke-static {}, Landroid/provider/DrmHelper;->fnIsDisableCombinedDeliveryAndSeparateDelivery()Z

    move-result v23

    if-nez v23, :cond_7

    invoke-static {}, Landroid/provider/DrmHelper;->fnIsDisableCombinedDeliveryOnly()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 733
    :cond_7
    const-string v23, "DrmHelper"

    const-string v24, "checkBeforeDownload :-8 for FIESTA_ATT"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/16 v23, -0x8

    goto/16 :goto_0

    .line 755
    :cond_8
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 756
    .local v16, nextSegment:Ljava/lang/String;
    const-string v23, "content-type: "

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 757
    .local v10, indexOfNextPattern:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_9

    .line 759
    const-string v23, "DrmHelper"

    const-string v24, "checkBeforeDownload :-7"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/16 v23, -0x7

    goto/16 :goto_0

    .line 763
    :cond_9
    const-string v23, "content-type: "

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int v9, v10, v23

    .line 764
    .local v9, indexOfNextContentType:I
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 765
    .local v17, nextSubString:Ljava/lang/String;
    const/16 v23, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 766
    .local v11, indexOfNextReturn:I
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 819
    .end local v8           #indexOfContentType:I
    .end local v9           #indexOfNextContentType:I
    .end local v10           #indexOfNextPattern:I
    .end local v11           #indexOfNextReturn:I
    .end local v12           #indexOfPattern:I
    .end local v13           #indexOfReturn:I
    .end local v16           #nextSegment:Ljava/lang/String;
    .end local v17           #nextSubString:Ljava/lang/String;
    .end local v22           #subString:Ljava/lang/String;
    :cond_a
    :goto_4
    if-nez v2, :cond_10

    .line 821
    const-string v23, "DrmHelper"

    const-string v24, "checkBeforeDownload :-7"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/16 v23, -0x7

    goto/16 :goto_0

    .line 770
    :cond_b
    const-string v23, "application/vnd.oma.drm.content"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 776
    invoke-static {}, Landroid/provider/DrmHelper;->fnIsDisableCombinedDeliveryAndSeparateDelivery()Z

    move-result v23

    if-nez v23, :cond_c

    invoke-static {}, Landroid/provider/DrmHelper;->fnIsDisableSeparateDeliveryOnly()Z

    move-result v23

    if-eqz v23, :cond_d

    .line 781
    :cond_c
    const-string v23, "DrmHelper"

    const-string v24, "checkBeforeDownload :-8 for FIESTA_ATT"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/16 v23, -0x8

    goto/16 :goto_0

    .line 802
    :cond_d
    const/16 v23, 0x1

    aget-byte v3, v4, v23

    .line 804
    .local v3, contentTypeLen:I
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .end local v2           #MIMEType:Ljava/lang/String;
    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-direct {v2, v4, v0, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2       #MIMEType:Ljava/lang/String;
    goto :goto_4

    .line 805
    .end local v2           #MIMEType:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 807
    .local v6, e:Ljava/lang/Exception;
    const-string v23, "DrmHelper"

    const-string v24, "checkBeforeDownload :-7"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const/16 v23, -0x7

    goto/16 :goto_0

    .line 811
    .end local v3           #contentTypeLen:I
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v2       #MIMEType:Ljava/lang/String;
    :cond_e
    const-string v23, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_f

    const-string v23, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 814
    :cond_f
    const-string v23, "DrmHelper"

    const-string v24, "checkBeforeDownload :0"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 826
    :cond_10
    new-instance v14, Landroid/content/Intent;

    const-string v23, "android.intent.action.VIEW"

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 827
    .local v14, intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 828
    .local v19, pm:Landroid/content/pm/PackageManager;
    const/16 v20, 0x0

    .line 830
    .local v20, result:Z
    const-string v23, "DrmHelper"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Check Before Download MIME = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const-string v23, "application/java-archive"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 834
    const/16 v20, 0x1

    .line 851
    :goto_5
    if-eqz v20, :cond_18

    .line 853
    const-string v23, "DrmHelper"

    const-string v24, "checkBeforeDownload :0"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 835
    :cond_11
    const-string/jumbo v23, "image/"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 836
    const-string v23, "content://media"

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    const/high16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 838
    .local v15, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_12

    const/16 v20, 0x1

    .line 839
    :goto_6
    goto :goto_5

    .line 838
    :cond_12
    const/16 v20, 0x0

    goto :goto_6

    .line 839
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_13
    const-string v23, "audio/"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 840
    const-string v23, "content://media"

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 841
    const/high16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 842
    .restart local v15       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_14

    const/16 v20, 0x1

    .line 843
    :goto_7
    goto :goto_5

    .line 842
    :cond_14
    const/16 v20, 0x0

    goto :goto_7

    .line 843
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_15
    const-string/jumbo v23, "video/"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_17

    .line 844
    const-string v23, "content://media"

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    const/high16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 846
    .restart local v15       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_16

    const/16 v20, 0x1

    .line 847
    :goto_8
    goto/16 :goto_5

    .line 846
    :cond_16
    const/16 v20, 0x0

    goto :goto_8

    .line 848
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_17
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 858
    :cond_18
    const-string v23, "DrmHelper"

    const-string v24, "checkBeforeDownload :-8"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/16 v23, -0x8

    goto/16 :goto_0
.end method

.method public static final checkExpiration(Landroid/content/ContentResolver;Landroid/provider/DrmStore$DrmConstraint;Landroid/net/Uri;)I
    .locals 35
    .parameter "cr"
    .parameter "dcr"
    .parameter "contentUri"

    .prologue
    .line 5563
    const-string v3, "DrmHelper"

    const-string v4, "********checkExpiration"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5564
    const-string v3, "DrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5567
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 5569
    :cond_0
    const-string v3, "DrmHelper"

    const-string v4, "checkExpiration (1): -2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5571
    const/4 v3, -0x2

    .line 5738
    :goto_0
    return v3

    .line 5574
    :cond_1
    sget-object v5, Landroid/provider/DrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 5575
    .local v11, cursor:Landroid/database/Cursor;
    if-nez v11, :cond_2

    .line 5577
    const-string v3, "DrmHelper"

    const-string v4, "checkExpiration (2): -6"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5579
    const/4 v3, -0x6

    goto :goto_0

    .line 5580
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 5582
    const-string v3, "DrmHelper"

    const-string v4, "checkExpiration (3): -2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5584
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5585
    const/4 v3, -0x2

    goto :goto_0

    .line 5588
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5589
    const-string v3, "_data"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 5590
    .local v10, columnIndex:I
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 5591
    .local v20, filePath:Ljava/lang/String;
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5593
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/DrmHelper;->getDrmRight(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v24

    .line 5594
    .local v24, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v24, :cond_4

    .line 5596
    const-string v3, "DrmHelper"

    const-string v4, "checkExpiration (4): -3"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5598
    const/4 v3, -0x3

    goto :goto_0

    .line 5604
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->isNoConstraint()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5605
    const/4 v3, 0x0

    goto :goto_0

    .line 5611
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->getCount()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->getInterval()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->getStartDate()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->getEndDate()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_6

    .line 5613
    const-string v3, "DrmHelper"

    const-string v4, " checkExpiration (5): All constraint expired."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5614
    const/4 v3, -0x4

    goto :goto_0

    .line 5619
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->getCount()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    .line 5621
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->getCount()I

    move-result v3

    if-gtz v3, :cond_7

    .line 5623
    const-string v3, "DrmHelper"

    const-string v4, "checkExpiration (6): counts expired"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5625
    const/4 v3, -0x4

    goto/16 :goto_0

    .line 5627
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 5631
    :cond_8
    const/16 v23, 0x0

    .line 5632
    .local v23, permissionType:I
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 5633
    const/16 v23, 0x2

    .line 5642
    :cond_9
    :goto_1
    sget-object v4, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5644
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_d

    .line 5646
    const-string v3, "DrmHelper"

    const-string v4, "checkExpiration (7): -6"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5648
    const/4 v3, -0x6

    goto/16 :goto_0

    .line 5634
    .end local v9           #c:Landroid/database/Cursor;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 5635
    const/16 v23, 0x1

    goto :goto_1

    .line 5636
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 5637
    const/16 v23, 0x1

    goto :goto_1

    .line 5638
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5639
    const/16 v23, 0x3

    goto :goto_1

    .line 5649
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_d
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_e

    .line 5651
    const-string v3, "DrmHelper"

    const-string v4, "checkExpiration (8): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5653
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5654
    const/4 v3, -0x5

    goto/16 :goto_0

    .line 5657
    :cond_e
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5658
    const-string/jumbo v3, "time_stamp"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 5659
    .local v31, syncTimeColumnId:I
    move/from16 v0, v31

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 5660
    .local v29, syncTime:J
    const-string v3, "clock_stamp"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 5661
    .local v28, syncClockColumnId:I
    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 5662
    .local v26, syncClock:J
    const-string/jumbo v3, "timezone_stamp"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 5663
    .local v34, syncTimeZoneColumnId:I
    move/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 5664
    .local v32, syncTimeZone:J
    const-string/jumbo v3, "time_differential"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 5665
    .local v14, differentColumnId:I
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 5666
    .local v15, differential:J
    const-string/jumbo v3, "network_sync"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 5667
    .local v22, network_sync:I
    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 5668
    .local v21, networkSync:Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5670
    const-wide/16 v3, 0x0

    cmp-long v3, v29, v3

    if-eqz v3, :cond_f

    const-wide/16 v3, 0x0

    cmp-long v3, v26, v3

    if-nez v3, :cond_10

    .line 5672
    :cond_f
    const-string v3, "DrmHelper"

    const-string v4, "checkExpiration (9): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5674
    const/4 v3, -0x5

    goto/16 :goto_0

    .line 5677
    :cond_10
    if-nez v21, :cond_11

    .line 5679
    const-string v3, "DrmHelper"

    const-string v4, "checkExpiration (10): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5681
    const/4 v3, -0x5

    goto/16 :goto_0

    .line 5682
    :cond_11
    const-string v3, "TRUE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 5684
    const-string v3, "DrmHelper"

    const-string v4, "checkExpiration (11): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5686
    const/4 v3, -0x5

    goto/16 :goto_0

    .line 5690
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 5691
    .local v12, date:J
    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, v18

    invoke-direct {v0, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 5693
    .local v18, drmDate:Ljava/util/Date;
    const-string v3, "DrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExpiration (12): Current Date-Time (UTC) is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getYear()I

    move-result v5

    add-int/lit16 v5, v5, 0x76c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getDate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getSeconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5696
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->getStartDate()Ljava/util/Date;

    move-result-object v25

    .line 5697
    .local v25, startDate:Ljava/util/Date;
    if-eqz v25, :cond_13

    .line 5699
    const-string v3, "DrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExpiration (13): Start Date (UTC) is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getYear()I

    move-result v5

    add-int/lit16 v5, v5, 0x76c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getDate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getSeconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5701
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 5703
    const-string v3, "DrmHelper"

    const-string v4, "checkExpiration (14): start date expired."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5705
    const/4 v3, -0x4

    goto/16 :goto_0

    .line 5709
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->getEndDate()Ljava/util/Date;

    move-result-object v19

    .line 5710
    .local v19, endDate:Ljava/util/Date;
    if-eqz v19, :cond_14

    .line 5712
    const-string v3, "DrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExpiration (15): End Date (UTC) is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getYear()I

    move-result v5

    add-int/lit16 v5, v5, 0x76c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getDate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getSeconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5714
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 5716
    const-string v3, "DrmHelper"

    const-string v4, "checkExpiration (16): end date expired."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5718
    new-instance v17, Ljava/util/Date;

    sub-long v3, v12, v15

    sub-long v3, v3, v32

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 5719
    .local v17, drmClock:Ljava/util/Date;
    move-object/from16 v0, v24

    move/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/drm/mobile1/DrmRights;->consumeRightsWithSync(ILjava/util/Date;)Z

    .line 5720
    const/4 v3, -0x4

    goto/16 :goto_0

    .line 5725
    .end local v17           #drmClock:Ljava/util/Date;
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/provider/DrmStore$DrmConstraint;->getInterval()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_15

    .line 5727
    const-string v3, "DrmHelper"

    const-string v4, "checkExpiration (17): Interval constraint, pass anyway"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5730
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 5734
    :cond_15
    const-string v3, "DrmHelper"

    const-string v4, "checkExpiration (18): Unknown Error!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5738
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public static checkFileExistence(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 11
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 6657
    sget-object v2, Landroid/provider/DrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6658
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 6660
    const-string v0, "DrmHelper"

    const-string v1, "checkFileExistence query DRM db failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 6681
    :goto_0
    return v0

    .line 6663
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 6665
    const-string v0, "DrmHelper"

    const-string v1, "checkFileExistence no record."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6667
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 6668
    goto :goto_0

    .line 6670
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6671
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 6672
    .local v8, fileColumnIndex:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 6673
    .local v9, fileName:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6675
    const-string v0, "DrmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check if "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6677
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6678
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6679
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v10

    .line 6681
    goto :goto_0
.end method

.method public static final consumeRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 41
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"
    .parameter "permissionType"

    .prologue
    .line 5751
    const-string v3, "DrmHelper"

    const-string v4, "********consumeRights"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5754
    const/4 v9, 0x0

    .line 5755
    .local v9, c:Landroid/database/Cursor;
    if-nez p2, :cond_0

    .line 5756
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5763
    :goto_0
    const/16 v22, 0x0

    .line 5764
    .local v22, filePath:Ljava/lang/String;
    if-nez v9, :cond_1

    .line 5766
    const-string v3, "DrmHelper"

    const-string v4, "consumeRights(1): -6"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5768
    const/4 v3, -0x6

    .line 5943
    :goto_1
    return v3

    .line 5759
    .end local v22           #filePath:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v6, "_data=?"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v7, v4

    const-string v8, "_id"

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 5769
    .restart local v22       #filePath:Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 5771
    const-string v3, "DrmHelper"

    const-string v4, "consumeRights(2): -6"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5773
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5774
    const/4 v3, -0x6

    goto :goto_1

    .line 5775
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_6

    .line 5776
    if-nez p2, :cond_3

    .line 5778
    const-string v3, "DrmHelper"

    const-string v4, "consumeRights(3): -2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5780
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5781
    const/4 v3, -0x2

    goto :goto_1

    .line 5783
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5784
    const-string v3, "_data"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 5785
    .local v23, filePathColumnId:I
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5786
    move-object/from16 v22, p2

    .line 5801
    :cond_4
    :goto_2
    if-nez v22, :cond_7

    .line 5803
    const-string v3, "DrmHelper"

    const-string v4, "consumeRights(4): -1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5805
    const/4 v3, -0x1

    goto :goto_1

    .line 5788
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5789
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5790
    move-object/from16 v22, p2

    .line 5791
    goto :goto_2

    .line 5796
    .end local v23           #filePathColumnId:I
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5797
    const-string v3, "_data"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 5798
    .restart local v23       #filePathColumnId:I
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto :goto_2

    .line 5808
    :cond_7
    const-string/jumbo v3, "message_type"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 5809
    .local v27, messageTypeColumnId:I
    move/from16 v0, v27

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 5810
    .local v26, messageType:Ljava/lang/String;
    const-string v3, "delivery_type"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 5811
    .local v15, deliveryTypeColumnId:I
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 5812
    .local v14, deliveryType:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5814
    const/4 v3, 0x1

    if-ne v14, v3, :cond_8

    .line 5815
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 5819
    :cond_8
    :try_start_0
    new-instance v21, Ljava/io/File;

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5820
    .local v21, file:Ljava/io/File;
    if-nez v21, :cond_9

    .line 5822
    const-string v3, "DrmHelper"

    const-string v4, "consumeRights(5): -2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5824
    const/4 v3, -0x2

    goto/16 :goto_1

    .line 5826
    :cond_9
    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5827
    .local v24, fis:Ljava/io/InputStream;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->available()I

    move-result v3

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v11, v0, v3, v1}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 5828
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v25

    .line 5829
    .local v25, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v30

    .line 5831
    .local v30, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v30, :cond_a

    .line 5833
    const-string v3, "DrmHelper"

    const-string v4, "consumeRights(7): -3"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5835
    const/4 v3, -0x3

    goto/16 :goto_1

    .line 5838
    :cond_a
    move-object/from16 v0, v30

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->getConstraint(I)Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v10

    .line 5839
    .local v10, constraintInfo:Landroid/drm/mobile1/DrmConstraintInfo;
    if-nez v10, :cond_b

    .line 5841
    const-string v3, "DrmHelper"

    const-string v4, "consumeRights(9): -1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5843
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 5847
    :cond_b
    invoke-virtual {v10}, Landroid/drm/mobile1/DrmConstraintInfo;->isNoConstraint()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 5853
    const-string v3, "DrmHelper"

    const-string v4, " @@@@@     consumeRights(10): NO Constraint."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5856
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 5861
    :cond_c
    invoke-virtual {v10}, Landroid/drm/mobile1/DrmConstraintInfo;->getCount()I

    move-result v3

    if-ltz v3, :cond_e

    .line 5862
    move-object/from16 v0, v30

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->consumeRights(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 5863
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 5866
    :cond_d
    const-string v3, "DrmHelper"

    const-string v4, "consumeRights(11): -4"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5868
    const/4 v3, -0x4

    goto/16 :goto_1

    .line 5873
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 5875
    .local v31, stamp:Landroid/database/Cursor;
    if-nez v31, :cond_f

    .line 5877
    const-string v3, "DrmHelper"

    const-string v4, "consumeRights query stamp failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5879
    const/4 v3, -0x6

    goto/16 :goto_1

    .line 5880
    :cond_f
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_10

    .line 5882
    const-string v3, "DrmHelper"

    const-string v4, "consumeRights(12): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5884
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 5885
    const/4 v3, -0x5

    goto/16 :goto_1

    .line 5888
    :cond_10
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5889
    const-string/jumbo v3, "time_stamp"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 5890
    .local v37, syncTimeColumnId:I
    move-object/from16 v0, v31

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 5891
    .local v35, syncTime:J
    const-string v3, "clock_stamp"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 5892
    .local v34, syncClockColumnId:I
    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 5893
    .local v32, syncClock:J
    const-string/jumbo v3, "timezone_stamp"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 5894
    .local v40, syncTimeZoneColumnId:I
    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 5895
    .local v38, syncTimeZone:J
    const-string/jumbo v3, "time_differential"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 5896
    .local v16, differentColumnId:I
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 5897
    .local v17, differential:J
    const-string/jumbo v3, "network_sync"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 5898
    .local v29, network_sync:I
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 5899
    .local v28, networkSync:Ljava/lang/String;
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 5901
    const-wide/16 v3, 0x0

    cmp-long v3, v35, v3

    if-eqz v3, :cond_11

    const-wide/16 v3, 0x0

    cmp-long v3, v32, v3

    if-nez v3, :cond_12

    .line 5903
    :cond_11
    const-string v3, "DrmHelper"

    const-string v4, "consumeRights(13): -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5905
    const/4 v3, -0x5

    goto/16 :goto_1

    .line 5908
    :cond_12
    if-nez v28, :cond_13

    .line 5910
    const-string v3, "DrmHelper"

    const-string v4, "consumeRights(14): checkExpiration : -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5912
    const/4 v3, -0x5

    goto/16 :goto_1

    .line 5913
    :cond_13
    const-string v3, "TRUE"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 5915
    const-string v3, "DrmHelper"

    const-string v4, "consumeRights(15): checkExpiration : -5"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5917
    const/4 v3, -0x5

    goto/16 :goto_1

    .line 5921
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v17

    sub-long v12, v3, v38

    .line 5923
    .local v12, date:J
    const-string v3, "DrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "syncTimeZone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v38, v5

    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5925
    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-direct {v0, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 5926
    .local v19, drmDate:Ljava/util/Date;
    move-object/from16 v0, v30

    move/from16 v1, p3

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/drm/mobile1/DrmRights;->consumeRightsWithSync(ILjava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 5927
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 5930
    :cond_15
    const-string v3, "DrmHelper"

    const-string v4, "consumeRights(16): -4"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5932
    const/4 v3, -0x4

    goto/16 :goto_1

    .line 5935
    .end local v10           #constraintInfo:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v12           #date:J
    .end local v16           #differentColumnId:I
    .end local v17           #differential:J
    .end local v19           #drmDate:Ljava/util/Date;
    .end local v21           #file:Ljava/io/File;
    .end local v24           #fis:Ljava/io/InputStream;
    .end local v25           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v28           #networkSync:Ljava/lang/String;
    .end local v29           #network_sync:I
    .end local v30           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v31           #stamp:Landroid/database/Cursor;
    .end local v32           #syncClock:J
    .end local v34           #syncClockColumnId:I
    .end local v35           #syncTime:J
    .end local v37           #syncTimeColumnId:I
    .end local v38           #syncTimeZone:J
    .end local v40           #syncTimeZoneColumnId:I
    :catch_0
    move-exception v20

    .line 5937
    .local v20, e:Ljava/lang/Exception;
    const-string v3, "DrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "consumeRights(17): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5941
    const-string v3, "DrmHelper"

    const-string v4, "consumeRights(18): -1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5943
    const/4 v3, -0x1

    goto/16 :goto_1
.end method

.method public static final deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 1
    .parameter "cr"
    .parameter "uri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5018
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/DrmHelper;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 13
    .parameter "cr"
    .parameter "uri"
    .parameter "filePath"

    .prologue
    .line 4947
    const-string v0, "DrmHelper"

    const-string v1, "********deleteDrmFile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4949
    const/4 v6, 0x0

    .line 4950
    .local v6, c:Landroid/database/Cursor;
    if-eqz p2, :cond_0

    .line 4951
    sget-object v2, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v3, "_data=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const-string v5, "_id"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4957
    :goto_0
    if-nez v6, :cond_1

    .line 4959
    const-string v0, "DrmHelper"

    const-string v1, "deleteDrmFile : -6"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4961
    const/4 v0, -0x6

    .line 5006
    :goto_1
    return v0

    .line 4954
    :cond_0
    sget-object v2, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 4962
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4964
    const-string v0, "DrmHelper"

    const-string v1, "deleteDrmFile : -6"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4966
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4967
    const/4 v0, -0x6

    goto :goto_1

    .line 4970
    :cond_2
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 4971
    .local v10, filenameColumnId:I
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4973
    .local v9, filename:Ljava/lang/String;
    const-string v0, "delivery_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 4974
    .local v8, deliveryTypeColumnId:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4976
    .local v7, deliveryType:I
    const-string/jumbo v0, "message_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 4977
    .local v12, messageTypeColumnId:I
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4979
    .local v11, messageType:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5006
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method private static final fnIsDisableCombinedDeliveryAndSeparateDelivery()Z
    .locals 1

    .prologue
    .line 6778
    sget-boolean v0, Landroid/provider/DrmHelper;->SWITCH_TO_CID:Z

    if-eqz v0, :cond_1

    .line 6779
    sget-boolean v0, Landroid/provider/DrmHelper;->DISABLE_FORWORD_LOCK:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/provider/DrmHelper;->DISABLE_COMBINED_DELIVERY:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/provider/DrmHelper;->DISABLE_SEPARATE_DELIVERY:Z

    if-eqz v0, :cond_0

    .line 6781
    const/4 v0, 0x1

    .line 6788
    :goto_0
    return v0

    .line 6784
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 6788
    :cond_1
    invoke-static {}, Landroid/provider/DrmHelper;->SupportForwardLockOnly()Z

    move-result v0

    goto :goto_0
.end method

.method private static final fnIsDisableCombinedDeliveryOnly()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 6800
    sget-boolean v1, Landroid/provider/DrmHelper;->SWITCH_TO_CID:Z

    if-eqz v1, :cond_0

    .line 6802
    sget-boolean v1, Landroid/provider/DrmHelper;->DISABLE_FORWORD_LOCK:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/provider/DrmHelper;->DISABLE_COMBINED_DELIVERY:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/provider/DrmHelper;->DISABLE_SEPARATE_DELIVERY:Z

    if-nez v1, :cond_0

    .line 6804
    const/4 v0, 0x1

    .line 6814
    :cond_0
    return v0
.end method

.method private static final fnIsDisableSeparateDeliveryOnly()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6824
    sget-boolean v2, Landroid/provider/DrmHelper;->SWITCH_TO_CID:Z

    if-eqz v2, :cond_2

    .line 6825
    sget-boolean v2, Landroid/provider/DrmHelper;->DISABLE_FORWORD_LOCK:Z

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/provider/DrmHelper;->DISABLE_COMBINED_DELIVERY:Z

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/provider/DrmHelper;->DISABLE_SEPARATE_DELIVERY:Z

    if-eqz v2, :cond_1

    .line 6853
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 6830
    goto :goto_0

    .line 6834
    :cond_2
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x31

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x88

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 6853
    goto :goto_0
.end method

.method private static getCipher(Ljavax/crypto/spec/SecretKeySpec;I)Ljavax/crypto/Cipher;
    .locals 6
    .parameter "skeySpec"
    .parameter "mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 6560
    const/4 v0, 0x0

    .line 6562
    .local v0, cipher:Ljavax/crypto/Cipher;
    if-nez p0, :cond_0

    .line 6564
    const-string v4, "DrmHelper"

    const-string/jumbo v5, "skeySpec == null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6599
    :goto_0
    return-object v3

    .line 6567
    :cond_0
    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    .line 6569
    const-string v4, "DrmHelper"

    const-string v5, "Cipher mode error."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6576
    :cond_1
    :try_start_0
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 6578
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v3, "f45gt7g83sd56210"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 6580
    .local v2, ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v0, p1, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3

    .end local v2           #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    :goto_1
    move-object v3, v0

    .line 6599
    goto :goto_0

    .line 6582
    :catch_0
    move-exception v1

    .line 6584
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v3, "DrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoSuchAlgorithmException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6586
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 6588
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    const-string v3, "DrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoSuchPaddingException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6590
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 6592
    .local v1, e:Ljava/security/InvalidKeyException;
    const-string v3, "DrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvalidKeyException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6594
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 6596
    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    const-string v3, "DrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvalidAlgorithmParameterException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static final getContentPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 505
    const/4 v7, 0x0

    .line 506
    .local v7, path:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/DrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 509
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 510
    const-string v0, "DrmHelper"

    const-string v1, "Querying failed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :goto_0
    return-object v3

    .line 514
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 515
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 516
    const-string v0, "DrmHelper"

    const-string v1, "Content not installed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 520
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 522
    .local v8, pathIndex:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .end local v8           #pathIndex:I
    :goto_1
    move-object v3, v7

    .line 529
    goto :goto_0

    .line 524
    :cond_2
    const/4 v7, 0x0

    .line 525
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 526
    const-string v0, "DrmHelper"

    const-string v1, "Cursor failed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static final getContentType(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/DrmHelper$DrmContentType;
    .locals 11
    .parameter "context"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 378
    invoke-static {p0}, Landroid/provider/DrmStore;->enforceAccessDrmPermission(Landroid/content/Context;)V

    .line 380
    const/4 v1, 0x0

    .line 381
    .local v1, uri:Landroid/net/Uri;
    move-object v10, p1

    .line 383
    .local v10, filePath:Ljava/lang/String;
    const-string v0, "content://drm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 385
    invoke-static {p0, v1}, Landroid/provider/DrmHelper;->getContentPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 386
    invoke-static {v10}, Landroid/provider/DrmHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 387
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, v10}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_0
    new-instance v10, Ljava/lang/String;

    .end local v10           #filePath:Ljava/lang/String;
    invoke-direct {v10, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 391
    .restart local v10       #filePath:Ljava/lang/String;
    invoke-static {v10}, Landroid/provider/DrmHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, v10}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_1
    invoke-static {p0, v10}, Landroid/provider/DrmHelper;->getContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 397
    :cond_2
    sget-object v7, Landroid/provider/DrmHelper$DrmContentType;->UNKNOWN:Landroid/provider/DrmHelper$DrmContentType;

    .line 399
    .local v7, contentType:Landroid/provider/DrmHelper$DrmContentType;
    if-nez v1, :cond_3

    move-object v8, v7

    .line 433
    .end local v7           #contentType:Landroid/provider/DrmHelper$DrmContentType;
    .local v8, contentType:Landroid/provider/DrmHelper$DrmContentType;
    :goto_0
    return-object v8

    .line 404
    .end local v8           #contentType:Landroid/provider/DrmHelper$DrmContentType;
    .restart local v7       #contentType:Landroid/provider/DrmHelper$DrmContentType;
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/DrmHelper;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 407
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_4

    .line 408
    const-string v0, "DrmHelper"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v7

    .line 409
    .end local v7           #contentType:Landroid/provider/DrmHelper$DrmContentType;
    .restart local v8       #contentType:Landroid/provider/DrmHelper$DrmContentType;
    goto :goto_0

    .line 410
    .end local v8           #contentType:Landroid/provider/DrmHelper$DrmContentType;
    .restart local v7       #contentType:Landroid/provider/DrmHelper$DrmContentType;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5

    .line 411
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v8, v7

    .line 412
    .end local v7           #contentType:Landroid/provider/DrmHelper$DrmContentType;
    .restart local v8       #contentType:Landroid/provider/DrmHelper$DrmContentType;
    goto :goto_0

    .line 415
    .end local v8           #contentType:Landroid/provider/DrmHelper$DrmContentType;
    .restart local v7       #contentType:Landroid/provider/DrmHelper$DrmContentType;
    :cond_5
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 417
    .local v9, deliveryType:I
    packed-switch v9, :pswitch_data_0

    .line 431
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v8, v7

    .line 433
    .end local v7           #contentType:Landroid/provider/DrmHelper$DrmContentType;
    .restart local v8       #contentType:Landroid/provider/DrmHelper$DrmContentType;
    goto :goto_0

    .line 419
    .end local v8           #contentType:Landroid/provider/DrmHelper$DrmContentType;
    .restart local v7       #contentType:Landroid/provider/DrmHelper$DrmContentType;
    :pswitch_0
    sget-object v7, Landroid/provider/DrmHelper$DrmContentType;->FORWARD_LOCK:Landroid/provider/DrmHelper$DrmContentType;

    .line 420
    goto :goto_1

    .line 422
    :pswitch_1
    sget-object v7, Landroid/provider/DrmHelper$DrmContentType;->COMBINED_DELIVERY:Landroid/provider/DrmHelper$DrmContentType;

    .line 423
    goto :goto_1

    .line 425
    :pswitch_2
    sget-object v7, Landroid/provider/DrmHelper$DrmContentType;->SEPARATE_DELIVERY:Landroid/provider/DrmHelper$DrmContentType;

    .line 426
    goto :goto_1

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static final getContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 14
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v5, 0x0

    .line 536
    const/4 v11, 0x0

    .line 541
    .local v11, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 542
    .local v8, foundInJar:Z
    const/4 v7, 0x0

    .line 545
    .local v7, foundInAudio:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/DrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    const-string v3, "_data=?"

    new-array v4, v13, [Ljava/lang/String;

    aput-object p1, v4, v12

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 549
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 550
    const/4 v8, 0x1

    .line 553
    :cond_0
    if-nez v8, :cond_1

    .line 555
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/DrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    const-string v3, "_data=?"

    new-array v4, v13, [Ljava/lang/String;

    aput-object p1, v4, v12

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 558
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 559
    const/4 v7, 0x1

    .line 563
    :cond_1
    if-nez v8, :cond_3

    if-nez v7, :cond_3

    .line 565
    if-eqz v6, :cond_2

    .line 566
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 585
    :cond_2
    :goto_0
    return-object v5

    .line 572
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 573
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 574
    .local v10, idIndex:I
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 575
    .local v9, id:I
    if-eqz v8, :cond_5

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 583
    .end local v9           #id:I
    .end local v10           #idIndex:I
    :cond_4
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v5, v11

    .line 585
    goto :goto_0

    .line 577
    .restart local v9       #id:I
    .restart local v10       #idIndex:I
    :cond_5
    if-eqz v7, :cond_4

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    goto :goto_1

    .line 581
    .end local v9           #id:I
    .end local v10           #idIndex:I
    :cond_6
    const-string v0, "DrmHelper"

    const-string v1, "Cursor failed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getDcfFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 11
    .parameter "contentResolver"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 6688
    sget-object v2, Landroid/provider/DrmStore;->DCFLIST_PROJECTION:[Ljava/lang/String;

    const-string v3, "delivery_type=\'3\'"

    const-string v5, "_id"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6690
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 6691
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 6692
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 6693
    .local v7, count:I
    new-array v10, v7, [Ljava/lang/String;

    .line 6694
    .local v10, result:[Ljava/lang/String;
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 6695
    .local v8, dataColumnIndex:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 6696
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6697
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v9

    .line 6695
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 6700
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6705
    .end local v7           #count:I
    .end local v8           #dataColumnIndex:I
    .end local v9           #i:I
    .end local v10           #result:[Ljava/lang/String;
    :goto_1
    return-object v10

    .line 6703
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v10, v4

    .line 6705
    goto :goto_1
.end method

.method public static getDmFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 11
    .parameter "contentResolver"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 6712
    sget-object v2, Landroid/provider/DrmStore;->DCFLIST_PROJECTION:[Ljava/lang/String;

    const-string v3, "delivery_type=\'1\' OR delivery_type=\'2\'"

    const-string v5, "_id"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6717
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 6718
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 6719
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 6720
    .local v7, count:I
    new-array v10, v7, [Ljava/lang/String;

    .line 6721
    .local v10, result:[Ljava/lang/String;
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 6722
    .local v8, dataColumnIndex:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 6723
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6724
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v9

    .line 6722
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 6727
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6732
    .end local v7           #count:I
    .end local v8           #dataColumnIndex:I
    .end local v9           #i:I
    .end local v10           #result:[Ljava/lang/String;
    :goto_1
    return-object v10

    .line 6730
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v10, v4

    .line 6732
    goto :goto_1
.end method

.method public static getDrmAudioConstraint(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7273
    sget-object v0, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmHelper;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmAudioCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 1
    .parameter "cx"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7225
    sget-object v0, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmHelper;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmAudioStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7321
    sget-object v0, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmHelper;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;
    .locals 31
    .parameter "cr"
    .parameter "uri"
    .parameter "permissionType"

    .prologue
    .line 5452
    const-string v3, "DrmHelper"

    const-string v4, "********getDrmConstraint (2)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5454
    const/16 v27, 0x0

    .line 5456
    .local v27, res:Landroid/provider/DrmStore$DrmConstraint;
    sget-object v5, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5457
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 5459
    const-string v3, "DrmHelper"

    const-string v4, "getDrmConstraint query DRM db failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5461
    const/4 v3, 0x0

    .line 5548
    :goto_0
    return-object v3

    .line 5462
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 5464
    const-string v3, "DrmHelper"

    const-string v4, "getDrmConstraint no record."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5466
    const/4 v3, 0x0

    goto :goto_0

    .line 5469
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 5470
    const-string v3, "_data"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 5471
    .local v21, filenameColumnId:I
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 5473
    .local v20, filename:Ljava/lang/String;
    const-string/jumbo v3, "message_type"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 5474
    .local v26, messageTypeColumnId:I
    move/from16 v0, v26

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 5476
    .local v25, messageType:Ljava/lang/String;
    const-string v3, "delivery_type"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 5477
    .local v12, deliveryTypeColumnId:I
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 5479
    .local v11, deliveryType:I
    const-string v3, "_size"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 5480
    .local v19, fileSizeColumnId:I
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 5481
    .local v18, fileSize:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5483
    const/4 v3, 0x1

    if-ne v11, v3, :cond_2

    .line 5485
    const-string v3, "DrmHelper"

    const-string v4, "FL doesn\'t have constraint."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5487
    const/4 v3, 0x0

    goto :goto_0

    .line 5489
    :cond_2
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5491
    .local v17, file:Ljava/io/File;
    :try_start_0
    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5492
    .local v22, fis:Ljava/io/InputStream;
    new-instance v10, Landroid/drm/mobile1/DrmRawContent;

    move-object/from16 v0, v22

    move/from16 v1, v18

    move-object/from16 v2, v25

    invoke-direct {v10, v0, v1, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 5493
    .local v10, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v24

    .line 5494
    .local v24, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v29

    .line 5497
    .local v29, rights:Landroid/drm/mobile1/DrmRights;
    const-string v3, "DrmHelper"

    const-string v4, " @@@@@ getDrmConstraint (2) - (1)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5500
    if-eqz v29, :cond_7

    .line 5501
    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->getConstraint(I)Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v23

    .line 5503
    .local v23, info:Landroid/drm/mobile1/DrmConstraintInfo;
    if-eqz v23, :cond_6

    .line 5504
    new-instance v28, Landroid/provider/DrmStore$DrmConstraint;

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/provider/DrmStore$DrmConstraint;-><init>(Landroid/drm/mobile1/DrmConstraintInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 5505
    .end local v27           #res:Landroid/provider/DrmStore$DrmConstraint;
    .local v28, res:Landroid/provider/DrmStore$DrmConstraint;
    if-eqz v28, :cond_8

    .line 5506
    const-wide/16 v13, 0x0

    .line 5507
    .local v13, differential:J
    const/16 v30, 0x0

    .line 5509
    .local v30, stampCursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v4, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v30

    .line 5511
    if-eqz v30, :cond_3

    .line 5512
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5513
    const-string/jumbo v3, "time_differential"

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 5515
    .local v15, differentialColumnId:I
    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v13

    .line 5523
    .end local v15           #differentialColumnId:I
    :cond_3
    if-eqz v30, :cond_4

    .line 5524
    :try_start_2
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 5527
    :cond_4
    :goto_1
    move-object/from16 v0, v28

    invoke-virtual {v0, v13, v14}, Landroid/provider/DrmStore$DrmConstraint;->setDisserential(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v27, v28

    .line 5538
    .end local v13           #differential:J
    .end local v23           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v28           #res:Landroid/provider/DrmStore$DrmConstraint;
    .end local v30           #stampCursor:Landroid/database/Cursor;
    .restart local v27       #res:Landroid/provider/DrmStore$DrmConstraint;
    :goto_2
    :try_start_3
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v22           #fis:Ljava/io/InputStream;
    .end local v24           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v29           #rights:Landroid/drm/mobile1/DrmRights;
    :goto_3
    move-object/from16 v3, v27

    .line 5548
    goto/16 :goto_0

    .line 5518
    .end local v27           #res:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v13       #differential:J
    .restart local v22       #fis:Ljava/io/InputStream;
    .restart local v23       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v24       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v28       #res:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v29       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v30       #stampCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v16

    .line 5520
    .local v16, e:Ljava/lang/Exception;
    :try_start_4
    const-string v3, "DrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get differential: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5523
    if-eqz v30, :cond_4

    .line 5524
    :try_start_5
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 5539
    .end local v16           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v16

    move-object/from16 v27, v28

    .line 5541
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v13           #differential:J
    .end local v22           #fis:Ljava/io/InputStream;
    .end local v23           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v24           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v28           #res:Landroid/provider/DrmStore$DrmConstraint;
    .end local v29           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v30           #stampCursor:Landroid/database/Cursor;
    .restart local v16       #e:Ljava/lang/Exception;
    .restart local v27       #res:Landroid/provider/DrmStore$DrmConstraint;
    :goto_4
    :try_start_6
    const-string v3, "DrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDrmConstraint : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 5543
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_5
    throw v3

    .line 5523
    .end local v27           #res:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v13       #differential:J
    .restart local v22       #fis:Ljava/io/InputStream;
    .restart local v23       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v24       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v28       #res:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v29       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v30       #stampCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    if-eqz v30, :cond_5

    .line 5524
    :try_start_7
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 5523
    :cond_5
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 5543
    :catchall_2
    move-exception v3

    move-object/from16 v27, v28

    .end local v28           #res:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v27       #res:Landroid/provider/DrmStore$DrmConstraint;
    goto :goto_5

    .line 5531
    .end local v13           #differential:J
    .end local v30           #stampCursor:Landroid/database/Cursor;
    :cond_6
    :try_start_8
    const-string v3, "DrmHelper"

    const-string v4, " @@@@@ NO Drm Constraint Info !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5539
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v22           #fis:Ljava/io/InputStream;
    .end local v23           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v24           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v29           #rights:Landroid/drm/mobile1/DrmRights;
    :catch_2
    move-exception v16

    goto :goto_4

    .line 5535
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v22       #fis:Ljava/io/InputStream;
    .restart local v24       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v29       #rights:Landroid/drm/mobile1/DrmRights;
    :cond_7
    const-string v3, "DrmHelper"

    const-string v4, " @@@@@ NO Drm Rights !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .end local v27           #res:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v23       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v28       #res:Landroid/provider/DrmStore$DrmConstraint;
    :cond_8
    move-object/from16 v27, v28

    .end local v28           #res:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v27       #res:Landroid/provider/DrmStore$DrmConstraint;
    goto :goto_2
.end method

.method public static final getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 36
    .parameter "cx"
    .parameter "uri"
    .parameter "strFilePath"

    .prologue
    .line 5032
    const-string v4, "DrmHelper"

    const-string v5, "********getDrmConstraint without renew call back"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5033
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5035
    const/4 v9, 0x0

    .line 5036
    .local v9, c:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 5037
    .local v12, contentUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 5038
    .local v3, cr:Landroid/content/ContentResolver;
    if-nez p2, :cond_1

    .line 5039
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5044
    :goto_0
    if-nez v9, :cond_2

    .line 5046
    const-string v4, "DrmHelper"

    const-string v5, "getDrmConstraint query DRM db failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5048
    const/4 v10, 0x0

    .line 5210
    :cond_0
    :goto_1
    return-object v10

    .line 5041
    :cond_1
    const/4 v5, 0x0

    const-string v6, "_data=?"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v7, v4

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 5049
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 5050
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5052
    const-string v4, "DrmHelper"

    const-string v5, "getDrmConstraint no record."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5054
    const/4 v10, 0x0

    goto :goto_1

    .line 5057
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5058
    if-eqz p2, :cond_e

    .line 5059
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 5060
    .local v25, index:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5061
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 5080
    .end local v25           #index:I
    :goto_2
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contentUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5083
    const-string v4, "delivery_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 5084
    .local v15, deliveryTypeColumnId:I
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 5085
    .local v14, deliveryType:I
    const-string/jumbo v4, "message_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 5086
    .local v29, messageTypeColumnId:I
    move/from16 v0, v29

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 5087
    .local v28, messageType:Ljava/lang/String;
    const-string v4, "_size"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 5088
    .local v23, fileSizeColumnId:I
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 5089
    .local v22, fileSize:I
    const/16 v31, 0x2

    .line 5090
    .local v31, permissionType:I
    if-nez p2, :cond_4

    .line 5091
    const-string v4, "_data"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 5092
    .local v21, filePathColumnId:I
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 5094
    .end local v21           #filePathColumnId:I
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5096
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 5097
    const/16 v31, 0x2

    .line 5113
    :goto_3
    :try_start_0
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5116
    .local v20, file:Ljava/io/File;
    const/4 v4, 0x3

    if-eq v14, v4, :cond_5

    const/4 v4, 0x2

    if-ne v14, v4, :cond_13

    .line 5118
    :cond_5
    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5126
    .local v24, fis:Ljava/io/InputStream;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v27

    .line 5130
    .local v27, manager:Landroid/drm/mobile1/DrmRightsManager;
    const/4 v10, 0x0

    .line 5131
    .local v10, constraint:Landroid/provider/DrmStore$DrmConstraint;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    move-object/from16 v0, v24

    move/from16 v1, v22

    move-object/from16 v2, v28

    invoke-direct {v11, v0, v1, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 5132
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v33

    .line 5135
    .local v33, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v33, :cond_6

    const/4 v4, 0x3

    if-ne v14, v4, :cond_6

    .line 5137
    move-object/from16 v13, p0

    .line 5138
    .local v13, context:Landroid/content/Context;
    new-instance v35, Landroid/widget/TextView;

    invoke-direct/range {v35 .. v36}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 5139
    .local v35, tv:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.htc"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v32

    .line 5140
    .local v32, rc:Landroid/content/res/Resources;
    const v4, 0x20c00e0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 5141
    .local v30, notify:Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5142
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x20c00e1

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "OK"

    new-instance v6, Landroid/provider/DrmHelper$2;

    move-object/from16 v0, v33

    invoke-direct {v6, v0, v11, v13}, Landroid/provider/DrmHelper$2;-><init>(Landroid/drm/mobile1/DrmRights;Landroid/drm/mobile1/DrmRawContent;Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "Cancel"

    new-instance v6, Landroid/provider/DrmHelper$1;

    invoke-direct {v6}, Landroid/provider/DrmHelper$1;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5175
    .end local v13           #context:Landroid/content/Context;
    .end local v30           #notify:Ljava/lang/String;
    .end local v32           #rc:Landroid/content/res/Resources;
    .end local v35           #tv:Landroid/widget/TextView;
    :cond_6
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V

    .line 5177
    if-eqz v33, :cond_9

    .line 5178
    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->getConstraint(I)Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v26

    .line 5179
    .local v26, info:Landroid/drm/mobile1/DrmConstraintInfo;
    new-instance v10, Landroid/provider/DrmStore$DrmConstraint;

    .end local v10           #constraint:Landroid/provider/DrmStore$DrmConstraint;
    move-object/from16 v0, v26

    invoke-direct {v10, v0}, Landroid/provider/DrmStore$DrmConstraint;-><init>(Landroid/drm/mobile1/DrmConstraintInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5180
    .restart local v10       #constraint:Landroid/provider/DrmStore$DrmConstraint;
    if-eqz v10, :cond_0

    .line 5181
    const-wide/16 v16, 0x0

    .line 5182
    .local v16, differential:J
    const/16 v34, 0x0

    .line 5184
    .local v34, stampCursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v4, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    .line 5186
    if-eqz v34, :cond_7

    .line 5187
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5188
    const-string/jumbo v4, "time_differential"

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 5189
    .local v18, differentialColumnId:I
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v16

    .line 5197
    .end local v18           #differentialColumnId:I
    :cond_7
    if-eqz v34, :cond_8

    .line 5198
    :try_start_2
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 5201
    :cond_8
    :goto_4
    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Landroid/provider/DrmStore$DrmConstraint;->setDisserential(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 5205
    .end local v10           #constraint:Landroid/provider/DrmStore$DrmConstraint;
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v16           #differential:J
    .end local v20           #file:Ljava/io/File;
    .end local v24           #fis:Ljava/io/InputStream;
    .end local v26           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v27           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v33           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v34           #stampCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v19

    .line 5207
    .local v19, e:Ljava/lang/Exception;
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDrmConstraint : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5210
    .end local v19           #e:Ljava/lang/Exception;
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 5063
    .end local v14           #deliveryType:I
    .end local v15           #deliveryTypeColumnId:I
    .end local v22           #fileSize:I
    .end local v23           #fileSizeColumnId:I
    .end local v28           #messageType:Ljava/lang/String;
    .end local v29           #messageTypeColumnId:I
    .end local v31           #permissionType:I
    .restart local v25       #index:I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 5064
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5066
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 5067
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5069
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 5070
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5073
    :cond_d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5074
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 5077
    .end local v25           #index:I
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5099
    .restart local v14       #deliveryType:I
    .restart local v15       #deliveryTypeColumnId:I
    .restart local v22       #fileSize:I
    .restart local v23       #fileSizeColumnId:I
    .restart local v28       #messageType:Ljava/lang/String;
    .restart local v29       #messageTypeColumnId:I
    .restart local v31       #permissionType:I
    :cond_f
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 5100
    const/16 v31, 0x1

    goto/16 :goto_3

    .line 5102
    :cond_10
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 5103
    const/16 v31, 0x1

    goto/16 :goto_3

    .line 5105
    :cond_11
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 5106
    const/16 v31, 0x3

    goto/16 :goto_3

    .line 5109
    :cond_12
    const/16 v31, 0x2

    goto/16 :goto_3

    .line 5121
    .restart local v20       #file:Ljava/io/File;
    :cond_13
    :try_start_3
    const-string v4, "DrmHelper"

    const-string v5, "getDrmConstraint no rights."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 5123
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 5192
    .restart local v10       #constraint:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v16       #differential:J
    .restart local v24       #fis:Ljava/io/InputStream;
    .restart local v26       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v27       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v33       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v34       #stampCursor:Landroid/database/Cursor;
    :catch_1
    move-exception v19

    .line 5194
    .restart local v19       #e:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get differential: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5197
    if-eqz v34, :cond_8

    .line 5198
    :try_start_5
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 5197
    .end local v19           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v34, :cond_14

    .line 5198
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 5197
    :cond_14
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public static final getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/provider/DrmStore$UpdateLicense;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 33
    .parameter "cx"
    .parameter "uri"
    .parameter "strFilePath"
    .parameter "updateLicense"

    .prologue
    .line 5225
    const-string v4, "DrmHelper"

    const-string v5, "********getDrmConstraint (1)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5227
    const/4 v9, 0x0

    .line 5228
    .local v9, c:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 5229
    .local v12, contentUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 5230
    .local v3, cr:Landroid/content/ContentResolver;
    if-nez p2, :cond_0

    .line 5231
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 5236
    :goto_0
    if-nez v9, :cond_1

    .line 5238
    const-string v4, "DrmHelper"

    const-string v5, "getDrmConstraint query DRM db failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5240
    const/4 v10, 0x0

    .line 5424
    :goto_1
    return-object v10

    .line 5233
    :cond_0
    const/4 v5, 0x0

    const-string v6, "_data=?"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v7, v4

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 5241
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 5242
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5244
    const-string v4, "DrmHelper"

    const-string v5, "getDrmConstraint no record."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5246
    const/4 v10, 0x0

    goto :goto_1

    .line 5249
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5250
    if-eqz p2, :cond_d

    .line 5251
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 5252
    .local v24, index:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 5253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 5272
    .end local v24           #index:I
    :goto_2
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contentUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5275
    const-string v4, "delivery_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 5276
    .local v14, deliveryTypeColumnId:I
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 5277
    .local v13, deliveryType:I
    const-string/jumbo v4, "message_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 5278
    .local v28, messageTypeColumnId:I
    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 5279
    .local v27, messageType:Ljava/lang/String;
    const-string v4, "_size"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 5280
    .local v22, fileSizeColumnId:I
    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 5281
    .local v21, fileSize:I
    const/16 v29, 0x2

    .line 5282
    .local v29, permissionType:I
    if-nez p2, :cond_3

    .line 5283
    const-string v4, "_data"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 5284
    .local v20, filePathColumnId:I
    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 5286
    .end local v20           #filePathColumnId:I
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5288
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 5289
    const/16 v29, 0x2

    .line 5305
    :goto_3
    :try_start_0
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5308
    .local v19, file:Ljava/io/File;
    const/4 v4, 0x3

    if-eq v13, v4, :cond_4

    const/4 v4, 0x2

    if-ne v13, v4, :cond_12

    .line 5310
    :cond_4
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5318
    .local v23, fis:Ljava/io/InputStream;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v26

    .line 5325
    .local v26, manager:Landroid/drm/mobile1/DrmRightsManager;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    move-object/from16 v0, v23

    move/from16 v1, v21

    move-object/from16 v2, v27

    invoke-direct {v11, v0, v1, v2}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 5326
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v30

    .line 5329
    .local v30, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v30, :cond_5

    const/4 v4, 0x3

    if-ne v13, v4, :cond_5

    .line 5331
    if-eqz p3, :cond_5

    .line 5332
    invoke-virtual {v11}, Landroid/drm/mobile1/DrmRawContent;->getRightsAddress()Ljava/lang/String;

    move-result-object v31

    .line 5333
    .local v31, rightsIssuer:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/provider/DrmStore$UpdateLicense;->update(Ljava/lang/String;)V

    .line 5374
    .end local v31           #rightsIssuer:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V

    .line 5376
    if-eqz v30, :cond_14

    .line 5377
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->getConstraint(I)Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v25

    .line 5380
    .local v25, info:Landroid/drm/mobile1/DrmConstraintInfo;
    new-instance v10, Landroid/provider/DrmStore$DrmConstraint;

    move-object/from16 v0, v25

    invoke-direct {v10, v0}, Landroid/provider/DrmStore$DrmConstraint;-><init>(Landroid/drm/mobile1/DrmConstraintInfo;)V

    .line 5383
    .local v10, constraint:Landroid/provider/DrmStore$DrmConstraint;
    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5385
    if-eqz v10, :cond_8

    .line 5386
    const-wide/16 v15, 0x0

    .line 5387
    .local v15, differential:J
    const/16 v32, 0x0

    .line 5389
    .local v32, stampCursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v4, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 5391
    if-eqz v32, :cond_6

    .line 5392
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5393
    const-string/jumbo v4, "time_differential"

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 5395
    .local v17, differentialColumnId:I
    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v15

    .line 5403
    .end local v17           #differentialColumnId:I
    :cond_6
    if-eqz v32, :cond_7

    .line 5404
    :try_start_2
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 5407
    :cond_7
    :goto_4
    move-wide v0, v15

    invoke-virtual {v10, v0, v1}, Landroid/provider/DrmStore$DrmConstraint;->setDisserential(J)V

    .line 5409
    .end local v15           #differential:J
    .end local v32           #stampCursor:Landroid/database/Cursor;
    :cond_8
    monitor-exit v10

    goto/16 :goto_1

    .line 5411
    :catchall_0
    move-exception v4

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 5418
    .end local v10           #constraint:Landroid/provider/DrmStore$DrmConstraint;
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v19           #file:Ljava/io/File;
    .end local v23           #fis:Ljava/io/InputStream;
    .end local v25           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v26           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v30           #rights:Landroid/drm/mobile1/DrmRights;
    :catch_0
    move-exception v18

    .line 5420
    .local v18, e:Ljava/lang/Exception;
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDrmConstraint : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5424
    .end local v18           #e:Ljava/lang/Exception;
    :goto_5
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 5255
    .end local v13           #deliveryType:I
    .end local v14           #deliveryTypeColumnId:I
    .end local v21           #fileSize:I
    .end local v22           #fileSizeColumnId:I
    .end local v27           #messageType:Ljava/lang/String;
    .end local v28           #messageTypeColumnId:I
    .end local v29           #permissionType:I
    .restart local v24       #index:I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5258
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 5259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5261
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 5262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5265
    :cond_c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5266
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 5269
    .end local v24           #index:I
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto/16 :goto_2

    .line 5291
    .restart local v13       #deliveryType:I
    .restart local v14       #deliveryTypeColumnId:I
    .restart local v21       #fileSize:I
    .restart local v22       #fileSizeColumnId:I
    .restart local v27       #messageType:Ljava/lang/String;
    .restart local v28       #messageTypeColumnId:I
    .restart local v29       #permissionType:I
    :cond_e
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 5292
    const/16 v29, 0x1

    goto/16 :goto_3

    .line 5294
    :cond_f
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 5295
    const/16 v29, 0x1

    goto/16 :goto_3

    .line 5297
    :cond_10
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 5298
    const/16 v29, 0x3

    goto/16 :goto_3

    .line 5301
    :cond_11
    const/16 v29, 0x2

    goto/16 :goto_3

    .line 5313
    .restart local v19       #file:Ljava/io/File;
    :cond_12
    :try_start_4
    const-string v4, "DrmHelper"

    const-string v5, "getDrmConstraint no rights."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 5315
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 5398
    .restart local v10       #constraint:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v15       #differential:J
    .restart local v23       #fis:Ljava/io/InputStream;
    .restart local v25       #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local v26       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v30       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v32       #stampCursor:Landroid/database/Cursor;
    :catch_1
    move-exception v18

    .line 5400
    .restart local v18       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get differential: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5403
    if-eqz v32, :cond_7

    .line 5404
    :try_start_6
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 5403
    .end local v18           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    if-eqz v32, :cond_13

    .line 5404
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 5403
    :cond_13
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 5415
    .end local v10           #constraint:Landroid/provider/DrmStore$DrmConstraint;
    .end local v15           #differential:J
    .end local v25           #info:Landroid/drm/mobile1/DrmConstraintInfo;
    .end local v32           #stampCursor:Landroid/database/Cursor;
    :cond_14
    :try_start_7
    const-string v4, "DrmHelper"

    const-string v5, "getDrmConstraint : rights is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_5
.end method

.method public static final getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 24
    .parameter "cx"
    .parameter "uri"
    .parameter "strFilePath"

    .prologue
    .line 6296
    const-string v3, "DrmHelper"

    const-string v4, "********getDrmContentStream"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6299
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 6300
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v20

    .line 6301
    .local v20, manager:Landroid/drm/mobile1/DrmRightsManager;
    const/4 v10, 0x0

    .line 6302
    .local v10, content:Landroid/drm/mobile1/DrmRawContent;
    const/16 v22, 0x0

    .line 6303
    .local v22, rights:Landroid/drm/mobile1/DrmRights;
    const/4 v14, 0x0

    .line 6304
    .local v14, drmContentStream:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 6306
    .local v8, c:Landroid/database/Cursor;
    if-nez p2, :cond_0

    .line 6307
    sget-object v4, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 6313
    :goto_0
    if-nez v8, :cond_1

    .line 6315
    const-string v3, "DrmHelper"

    const-string v4, "getDrmContentStream query failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6317
    const/4 v3, 0x0

    .line 6389
    :goto_1
    return-object v3

    .line 6309
    :cond_0
    sget-object v4, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v5, "_data=?"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v6, v3

    const-string v7, "_id"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 6318
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 6320
    const-string v3, "DrmHelper"

    const-string v4, "getDrmContentStream no record."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6322
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 6323
    const/4 v3, 0x0

    goto :goto_1

    .line 6326
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6327
    const-string v3, "delivery_type"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 6328
    .local v13, deliveryTypeColumnId:I
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 6329
    .local v12, deliveryType:I
    const-string v3, "_size"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 6330
    .local v19, fileSizeColumnId:I
    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 6331
    .local v18, fileSize:I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 6334
    :try_start_0
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6335
    .local v17, file:Ljava/io/File;
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6337
    .local v23, tempFin:Ljava/io/InputStream;
    packed-switch v12, :pswitch_data_0

    .end local v17           #file:Ljava/io/File;
    .end local v23           #tempFin:Ljava/io/InputStream;
    :goto_2
    move-object v3, v14

    .line 6389
    goto :goto_1

    .line 6340
    .restart local v17       #file:Ljava/io/File;
    .restart local v23       #tempFin:Ljava/io/InputStream;
    :pswitch_0
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-direct {v11, v0, v1, v3}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6341
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    :try_start_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v21

    .line 6342
    .local v21, right:Landroid/drm/mobile1/DrmRights;
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentDecryptStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    move-object v10, v11

    .line 6343
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto :goto_2

    .line 6347
    .end local v21           #right:Landroid/drm/mobile1/DrmRights;
    :pswitch_1
    :try_start_2
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    const-string v3, "application/vnd.oma.drm.message"

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-direct {v11, v0, v1, v3}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 6348
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :try_start_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v22

    .line 6350
    if-eqz v22, :cond_4

    .line 6351
    invoke-static/range {p0 .. p2}, Landroid/provider/DrmHelper;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v9

    .line 6353
    .local v9, constraint:Landroid/provider/DrmStore$DrmConstraint;
    move-object/from16 v0, p1

    invoke-static {v2, v9, v0}, Landroid/provider/DrmHelper;->checkExpiration(Landroid/content/ContentResolver;Landroid/provider/DrmStore$DrmConstraint;Landroid/net/Uri;)I

    move-result v3

    if-nez v3, :cond_3

    .line 6354
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentDecryptStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v14

    move-object v10, v11

    .line 6361
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto :goto_2

    .line 6357
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :cond_3
    const-string v3, "DrmHelper"

    const-string v4, "getDrmContentStream constraint expired."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6359
    const/4 v3, 0x0

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto/16 :goto_1

    .line 6363
    .end local v9           #constraint:Landroid/provider/DrmStore$DrmConstraint;
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :cond_4
    const-string v3, "DrmHelper"

    const-string v4, "getDrmContentStream no rights installed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 6365
    const/4 v3, 0x0

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto/16 :goto_1

    .line 6370
    :pswitch_2
    :try_start_4
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6371
    .local v15, drmStream:Ljava/io/FileInputStream;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    const-string v3, "application/vnd.oma.drm.content"

    move/from16 v0, v18

    invoke-direct {v11, v15, v0, v3}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 6372
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :try_start_5
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v22

    .line 6373
    if-nez v22, :cond_5

    .line 6375
    const-string v3, "DrmHelper"

    const-string v4, "getDrmContentStream no rights installed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6377
    const/4 v3, 0x0

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto/16 :goto_1

    .line 6379
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :cond_5
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v14

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto/16 :goto_2

    .line 6382
    .end local v15           #drmStream:Ljava/io/FileInputStream;
    .end local v17           #file:Ljava/io/File;
    .end local v23           #tempFin:Ljava/io/InputStream;
    :catch_0
    move-exception v16

    .line 6384
    .local v16, e:Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string v3, "DrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDrmContentStream : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 6386
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_4
    throw v3

    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v17       #file:Ljava/io/File;
    .restart local v23       #tempFin:Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto :goto_4

    .line 6382
    .end local v10           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    :catch_1
    move-exception v16

    move-object v10, v11

    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v10       #content:Landroid/drm/mobile1/DrmRawContent;
    goto :goto_3

    .line 6337
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static final getDrmContrain(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1
    .parameter "cr"
    .parameter "uri"
    .parameter "permissionType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5438
    invoke-static {p0, p1, p2}, Landroid/provider/DrmHelper;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmCursor(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/database/Cursor;
    .locals 8
    .parameter "cr"
    .parameter "uri"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 6517
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 6521
    .local v3, strWhere:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "existence=\'exist\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6523
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    .line 6526
    .local v7, nHeadLength:I
    and-int/lit8 v0, p2, 0xf

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 6527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "delivery_type=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6529
    :cond_0
    and-int/lit16 v0, p2, 0xf0

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_2

    .line 6530
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_1

    .line 6531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6532
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "delivery_type=2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6534
    :cond_2
    and-int/lit16 v0, p2, 0xf00

    const/16 v1, 0xf00

    if-ne v0, v1, :cond_4

    .line 6535
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_3

    .line 6536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6537
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "delivery_type=3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6541
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6544
    const-string v0, "DrmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start query where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6548
    sget-object v2, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6550
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 6551
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 6554
    :cond_5
    return-object v6
.end method

.method private static getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;
    .locals 2
    .parameter "cx"
    .parameter "uri"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6503
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6505
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {v0, p1, p2}, Landroid/provider/DrmHelper;->getDrmCursor(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static getDrmImageConstraint(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7260
    sget-object v0, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmHelper;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmImageCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 1
    .parameter "cx"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7214
    sget-object v0, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmHelper;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmImageStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7310
    sget-object v0, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmHelper;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmJarConstraint(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7299
    sget-object v0, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmHelper;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmJarCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 1
    .parameter "cx"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7247
    sget-object v0, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmHelper;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmJarStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7343
    sget-object v0, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmHelper;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static final getDrmRight(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/drm/mobile1/DrmRights;
    .locals 17
    .parameter "cr"
    .parameter "uri"
    .parameter "strFilePath"

    .prologue
    .line 6449
    const/4 v3, 0x0

    const-string v4, "_data=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6450
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 6452
    const-string v1, "DrmHelper"

    const-string v2, "getDrmRight query DRM db failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6454
    const/16 v16, 0x0

    .line 6491
    :cond_0
    :goto_0
    return-object v16

    .line 6455
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 6457
    const-string v1, "DrmHelper"

    const-string v2, "getDrmRight no record."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6459
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6460
    const/16 v16, 0x0

    goto :goto_0

    .line 6463
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6464
    const-string/jumbo v1, "message_type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 6465
    .local v15, messageTypeColumnId:I
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 6466
    .local v14, messageType:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6468
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6469
    .local v10, file:Ljava/io/File;
    const/4 v11, 0x0

    .line 6470
    .local v11, fis:Ljava/io/FileInputStream;
    const/16 v16, 0x0

    .line 6472
    .local v16, rights:Landroid/drm/mobile1/DrmRights;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6473
    .end local v11           #fis:Ljava/io/FileInputStream;
    .local v12, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v8, v12, v1, v14}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 6474
    .local v8, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v13

    .line 6475
    .local v13, manager:Landroid/drm/mobile1/DrmRightsManager;
    invoke-virtual {v13, v8}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v16

    .line 6482
    if-eqz v12, :cond_3

    .line 6483
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_1
    move-object v11, v12

    .line 6490
    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 6476
    .end local v8           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v13           #manager:Landroid/drm/mobile1/DrmRightsManager;
    :catch_0
    move-exception v9

    .line 6478
    .local v9, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v1, "DrmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmRight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6482
    if-eqz v11, :cond_0

    .line 6483
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 6485
    :catch_1
    move-exception v9

    .line 6487
    const-string v1, "DrmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmRight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6481
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 6482
    :goto_3
    if-eqz v11, :cond_4

    .line 6483
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 6481
    :cond_4
    :goto_4
    throw v1

    .line 6485
    :catch_2
    move-exception v9

    .line 6487
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v2, "DrmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrmRight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 6485
    .end local v9           #e:Ljava/lang/Exception;
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v8       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    .restart local v13       #manager:Landroid/drm/mobile1/DrmRightsManager;
    :catch_3
    move-exception v9

    .line 6487
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v1, "DrmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmRight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6481
    .end local v8           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v13           #manager:Landroid/drm/mobile1/DrmRightsManager;
    :catchall_1
    move-exception v1

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 6476
    .end local v11           #fis:Ljava/io/FileInputStream;
    .restart local v12       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v9

    move-object v11, v12

    .end local v12           #fis:Ljava/io/FileInputStream;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public static getDrmVideoConstraint(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7286
    sget-object v0, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmHelper;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    return-object v0
.end method

.method public static getDrmVideoCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 1
    .parameter "cx"
    .parameter "nDeliveryType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7236
    sget-object v0, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmHelper;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getDrmVideoStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "cx"
    .parameter "strFilePath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7332
    sget-object v0, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/DrmHelper;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 7191
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageDownloadPath()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 6990
    const/4 v7, 0x0

    .line 6991
    .local v7, resultDownloadPath:Ljava/lang/String;
    const/4 v3, 0x0

    .line 6993
    .local v3, findName:Ljava/lang/String;
    invoke-static {}, Landroid/provider/DrmHelper;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 6994
    const-string v9, "DrmHelper"

    const-string v10, " @@@@@ DrmHelper.getExternalStorageState() is not mounted!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 7058
    .end local v7           #resultDownloadPath:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 6999
    .restart local v7       #resultDownloadPath:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/provider/DrmHelper;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 7001
    .local v2, external_storage_file:Ljava/io/File;
    if-nez v2, :cond_1

    .line 7002
    const-string v9, "DrmHelper"

    const-string v10, " @@@@@ DrmHelper.getExternalStorageDirectory() ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 7004
    goto :goto_0

    .line 7006
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 7007
    const-string v9, "DrmHelper"

    const-string v10, " @@@@@ DrmHelper.getExternalStorageDirectory() doesn\'t exist!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 7009
    goto :goto_0

    .line 7013
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v5, v0, v4

    .line 7014
    .local v5, item:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 7015
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 7016
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 7030
    .end local v5           #item:Ljava/io/File;
    :cond_3
    if-eqz v3, :cond_5

    .line 7031
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/provider/DrmHelper;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 7035
    const-string v9, "DrmHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ the name of download folder in sdcard is="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7036
    const-string v9, "DrmHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ we got download path is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 7050
    :catch_0
    move-exception v1

    .line 7051
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "DrmHelper"

    const-string v10, " @@@@@ get external storage directory ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7052
    const-string v9, "DrmHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7053
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 7055
    goto/16 :goto_0

    .line 7013
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v5       #item:Ljava/io/File;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 7021
    .end local v0           #arr$:[Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #item:Ljava/io/File;
    .end local v6           #len$:I
    :catch_1
    move-exception v1

    .line 7022
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "DrmHelper"

    const-string v10, " @@@@@ list files ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7023
    const-string v9, "DrmHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7024
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 7026
    goto/16 :goto_0

    .line 7040
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    :cond_5
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/provider/DrmHelper;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 7046
    const-string v9, "DrmHelper"

    const-string v10, " @@@@@ No download folder in sdcard."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7047
    const-string v9, "DrmHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ we got download path is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7154
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getFilePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 3467
    const/4 v8, 0x0

    .line 3468
    .local v8, result:Ljava/lang/String;
    sget-object v2, Landroid/provider/DrmStore;->FILEPATH_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3469
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3470
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3471
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 3472
    .local v7, filePathColumnIndex:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3474
    .end local v7           #filePathColumnIndex:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3476
    :cond_1
    return-object v8
.end method

.method public static getInternalStorageDownloadPath()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 6915
    const/4 v7, 0x0

    .line 6916
    .local v7, resultDownloadPath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 6919
    .local v2, findName:Ljava/lang/String;
    invoke-static {}, Landroid/provider/DrmHelper;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 6920
    const-string v9, "DrmHelper"

    const-string v10, " @@@@@ DrmHelper.getPhoneStorageDirectory() is not mounted!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 6986
    .end local v7           #resultDownloadPath:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 6926
    .restart local v7       #resultDownloadPath:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/provider/DrmHelper;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 6928
    .local v4, internal_storage_file:Ljava/io/File;
    if-nez v4, :cond_1

    .line 6930
    const-string v9, "DrmHelper"

    const-string v10, " @@@@@ DrmHelper.getPhoneStorageDirectory() ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 6933
    goto :goto_0

    .line 6935
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 6936
    const-string v9, "DrmHelper"

    const-string v10, " @@@@@ DrmHelper.getPhoneStorageDirectory() doesn\'t exist!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 6938
    goto :goto_0

    .line 6942
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v6, :cond_3

    aget-object v5, v0, v3

    .line 6943
    .local v5, item:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 6944
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 6945
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 6960
    .end local v5           #item:Ljava/io/File;
    :cond_3
    if-eqz v2, :cond_5

    .line 6961
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/provider/DrmHelper;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6965
    const-string v9, "DrmHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ the name of download folder in internal storage is="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6966
    const-string v9, "DrmHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ we got download path is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 6978
    :catch_0
    move-exception v1

    .line 6979
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "DrmHelper"

    const-string v10, " @@@@@ get phone storage directory ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6980
    const-string v9, "DrmHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6981
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 6983
    goto/16 :goto_0

    .line 6942
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v5       #item:Ljava/io/File;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 6950
    .end local v0           #arr$:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v5           #item:Ljava/io/File;
    .end local v6           #len$:I
    :catch_1
    move-exception v1

    .line 6951
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "DrmHelper"

    const-string v10, " @@@@@ list files ERROR!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6952
    const-string v9, "DrmHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6953
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 6955
    goto/16 :goto_0

    .line 6970
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v3       #i$:I
    .restart local v6       #len$:I
    :cond_5
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/provider/DrmHelper;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6974
    const-string v9, "DrmHelper"

    const-string v10, " @@@@@ No download folder in internal storage."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6975
    const-string v9, "DrmHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " @@@@@ we got download path is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public static getPhoneStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 7078
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7123
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSecretKeySpecUsingKeyGenerator()Ljavax/crypto/spec/SecretKeySpec;
    .locals 9

    .prologue
    .line 6603
    const/4 v4, 0x0

    .line 6606
    .local v4, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v6, "AES"

    invoke-static {v6}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 6608
    .local v1, kgen:Ljavax/crypto/KeyGenerator;
    const/16 v6, 0x80

    invoke-virtual {v1, v6}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 6611
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 6613
    .local v3, skey:Ljavax/crypto/SecretKey;
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 6615
    .local v2, raw:[B
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, v2, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .local v5, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    move-object v4, v5

    .line 6621
    .end local v1           #kgen:Ljavax/crypto/KeyGenerator;
    .end local v2           #raw:[B
    .end local v3           #skey:Ljavax/crypto/SecretKey;
    .end local v5           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v4       #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v4

    .line 6616
    :catch_0
    move-exception v0

    .line 6618
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "DrmHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NoSuchAlgorithmException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSecretKeySpecUsingSimNumber()Ljavax/crypto/spec/SecretKeySpec;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6626
    const/4 v3, 0x0

    .line 6629
    .local v3, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 6631
    .local v1, md:Ljava/security/MessageDigest;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 6633
    .local v5, telMngr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 6635
    .local v2, simNumber:Ljava/lang/String;
    const-string v6, "DrmHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM number: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6638
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 6640
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v4, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .local v4, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    move-object v3, v4

    .line 6647
    .end local v1           #md:Ljava/security/MessageDigest;
    .end local v2           #simNumber:Ljava/lang/String;
    .end local v4           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .end local v5           #telMngr:Landroid/telephony/TelephonyManager;
    .restart local v3       #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v3

    .line 6642
    :catch_0
    move-exception v0

    .line 6644
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "DrmHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NoSuchAlgorithmException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSupportedStorages()I
    .locals 1

    .prologue
    .line 7101
    invoke-static {}, Landroid/os/Environment;->getSupportedStorages()I

    move-result v0

    return v0
.end method

.method public static final getUTC(Landroid/content/Context;)Ljava/util/Date;
    .locals 24
    .parameter "cx"

    .prologue
    .line 6395
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/DrmStore$Stamp;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/DrmStore;->STAMP_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 6397
    .local v14, stamp:Landroid/database/Cursor;
    if-nez v14, :cond_0

    .line 6398
    const-string v1, "DrmHelper"

    const-string v2, "consumeRights query stamp failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6399
    const/4 v1, 0x0

    .line 6437
    :goto_0
    return-object v1

    .line 6400
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 6401
    const-string v1, "DrmHelper"

    const-string v2, "consumeRights: -5"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6402
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 6403
    const/4 v1, 0x0

    goto :goto_0

    .line 6406
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6407
    const-string/jumbo v1, "time_stamp"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 6408
    .local v20, syncTimeColumnId:I
    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 6409
    .local v18, syncTime:J
    const-string v1, "clock_stamp"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 6410
    .local v17, syncClockColumnId:I
    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 6411
    .local v15, syncClock:J
    const-string/jumbo v1, "timezone_stamp"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 6412
    .local v23, syncTimeZoneColumnId:I
    move/from16 v0, v23

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 6413
    .local v21, syncTimeZone:J
    const-string/jumbo v1, "time_differential"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 6414
    .local v9, differentColumnId:I
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 6415
    .local v10, differential:J
    const-string/jumbo v1, "network_sync"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 6416
    .local v13, network_sync:I
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 6417
    .local v12, networkSync:Ljava/lang/String;
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 6419
    const-wide/16 v1, 0x0

    cmp-long v1, v18, v1

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v1, v15, v1

    if-nez v1, :cond_3

    .line 6420
    :cond_2
    const-string v1, "DrmHelper"

    const-string v2, "consumeRights: -5"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6421
    const/4 v1, 0x0

    goto :goto_0

    .line 6424
    :cond_3
    if-nez v12, :cond_4

    .line 6425
    const-string v1, "DrmHelper"

    const-string v2, "checkExpiration : -5"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6426
    const/4 v1, 0x0

    goto :goto_0

    .line 6427
    :cond_4
    const-string v1, "TRUE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 6428
    const-string v1, "DrmHelper"

    const-string v2, "checkExpiration : -5"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6429
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 6433
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v10

    sub-long v7, v1, v21

    .line 6435
    .local v7, date:J
    const-string v1, "DrmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syncTimeZone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    div-long v3, v21, v3

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6437
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v7, v8}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0
.end method

.method public static hasPhoneStorage()Z
    .locals 1

    .prologue
    .line 7107
    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v0

    return v0
.end method

.method private static final installRightsObject(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "file"
    .parameter "mediaType"

    .prologue
    const/4 v7, 0x0

    .line 4282
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 4284
    :cond_0
    const-string v8, "DrmHelper"

    const-string/jumbo v9, "installRightsObject Input error."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4340
    :cond_1
    :goto_0
    return-object v7

    .line 4288
    :cond_2
    const/4 v3, 0x0

    .line 4290
    .local v3, fin:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4291
    .end local v3           #fin:Ljava/io/FileInputStream;
    .local v4, fin:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v5

    .line 4292
    .local v5, manager:Landroid/drm/mobile1/DrmRightsManager;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v8

    invoke-virtual {v5, v4, v8, p1}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v6

    .line 4293
    .local v6, rights:Landroid/drm/mobile1/DrmRights;
    if-eqz v6, :cond_3

    .line 4294
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 4295
    invoke-virtual {v6}, Landroid/drm/mobile1/DrmRights;->getUid()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    move-result-object v7

    .line 4331
    if-eqz v4, :cond_1

    .line 4332
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 4334
    :catch_0
    move-exception v0

    .line 4336
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "DrmHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    :goto_1
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4297
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    .restart local v5       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v6       #rights:Landroid/drm/mobile1/DrmRights;
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 4331
    if-eqz v4, :cond_4

    .line 4332
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    :cond_4
    :goto_2
    move-object v3, v4

    .line 4339
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_0

    .line 4298
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    :catch_1
    move-exception v0

    move-object v4, v3

    .line 4300
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    const-string v8, "DrmHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Install right: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4304
    if-eqz v4, :cond_5

    .line 4305
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 4314
    :cond_5
    :goto_4
    :try_start_7
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 4315
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :try_start_8
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v5

    .line 4316
    .restart local v5       #manager:Landroid/drm/mobile1/DrmRightsManager;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v8

    invoke-virtual {v5, v3, v8, p1}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v6

    .line 4318
    .restart local v6       #rights:Landroid/drm/mobile1/DrmRights;
    if-eqz v6, :cond_7

    .line 4319
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 4320
    invoke-virtual {v6}, Landroid/drm/mobile1/DrmRights;->getUid()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v7

    .line 4331
    if-eqz v3, :cond_1

    .line 4332
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_0

    .line 4334
    :catch_2
    move-exception v0

    .line 4336
    const-string v8, "DrmHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 4307
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 4309
    .local v1, e2:Ljava/lang/Exception;
    :try_start_a
    const-string v8, "DrmHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    .line 4330
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #e2:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    move-object v3, v4

    .line 4331
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :goto_5
    if-eqz v3, :cond_6

    .line 4332
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 4330
    :cond_6
    :goto_6
    throw v7

    .line 4323
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v5       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v6       #rights:Landroid/drm/mobile1/DrmRights;
    :cond_7
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 4331
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    :goto_7
    if-eqz v3, :cond_1

    .line 4332
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_0

    .line 4334
    :catch_4
    move-exception v0

    .line 4336
    const-string v8, "DrmHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 4324
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .line 4326
    .end local v4           #fin:Ljava/io/FileInputStream;
    .local v2, e3:Ljava/lang/Exception;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :goto_8
    :try_start_e
    const-string v8, "DrmHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Install right: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_7

    .line 4330
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #e3:Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    goto :goto_5

    .line 4334
    :catch_6
    move-exception v0

    .line 4336
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v8, "DrmHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 4334
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    .restart local v5       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v6       #rights:Landroid/drm/mobile1/DrmRights;
    :catch_7
    move-exception v0

    .line 4336
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v8, "DrmHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4324
    .end local v4           #fin:Ljava/io/FileInputStream;
    .end local v5           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v6           #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    goto :goto_8

    .line 4298
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    goto/16 :goto_3
.end method

.method public static final isFLDrmFile(Ljava/io/File;)Z
    .locals 10
    .parameter "file"

    .prologue
    .line 2306
    const-string v7, "DrmHelper"

    const-string v8, " @@@@@     isFLDrmFile() - BEGIN. "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    const/4 v0, 0x0

    .line 2310
    .local v0, bResult:Z
    const/4 v4, 0x0

    .line 2311
    .local v4, fin:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 2315
    .local v1, drmContent:Landroid/drm/mobile1/DrmRawContent;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2316
    .end local v4           #fin:Ljava/io/FileInputStream;
    .local v5, fin:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v7

    const-string v8, "application/vnd.oma.drm.message"

    invoke-direct {v2, v5, v7, v8}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 2320
    .end local v1           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .local v2, drmContent:Landroid/drm/mobile1/DrmRawContent;
    :try_start_2
    invoke-virtual {v2}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v6

    .line 2324
    .local v6, method:I
    const-string v7, "DrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " @@@@@     method = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 2327
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 2329
    const/4 v0, 0x1

    .line 2345
    :cond_0
    if-eqz v5, :cond_1

    .line 2347
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_0
    move-object v1, v2

    .end local v2           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v1       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    move-object v4, v5

    .line 2358
    .end local v5           #fin:Ljava/io/FileInputStream;
    .end local v6           #method:I
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    const-string v7, "DrmHelper"

    const-string v8, " @@@@@     isFLDrmFile() - END. "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    return v0

    .line 2332
    :catch_0
    move-exception v3

    .line 2334
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    const/4 v0, 0x0

    .line 2338
    :try_start_4
    const-string v7, "DrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " @@@@@     "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2345
    if-eqz v4, :cond_2

    .line 2347
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 2350
    :catch_1
    move-exception v3

    .line 2352
    const-string v7, "DrmHelper"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2343
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 2345
    :goto_3
    if-eqz v4, :cond_3

    .line 2347
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2343
    :cond_3
    :goto_4
    throw v7

    .line 2350
    :catch_2
    move-exception v3

    .line 2352
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v8, "DrmHelper"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2350
    .end local v1           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v2       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    .restart local v6       #method:I
    :catch_3
    move-exception v3

    .line 2352
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v7, "DrmHelper"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2343
    .end local v2           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #method:I
    .restart local v1       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v2       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v1, v2

    .end local v2           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v1       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_3

    .line 2332
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v2       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2           #drmContent:Landroid/drm/mobile1/DrmRawContent;
    .restart local v1       #drmContent:Landroid/drm/mobile1/DrmRawContent;
    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static final isFileExist(Ljava/lang/String;)Z
    .locals 6
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 589
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    .local v1, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 592
    const-string v3, "DrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :goto_0
    return v2

    .line 595
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, e:Ljava/lang/SecurityException;
    const-string v3, "DrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Invalid premission to access "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static final parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 6
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"

    .prologue
    .line 4617
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/provider/DrmHelper;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private static final parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)Landroid/content/ContentValues;
    .locals 7
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"
    .parameter "destination"

    .prologue
    .line 4624
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/provider/DrmHelper;->parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private static final parseAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;
    .locals 31
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"
    .parameter "destination"
    .parameter "skipMediaDbUpdate"

    .prologue
    .line 4641
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4642
    .local v3, cr:Landroid/content/ContentResolver;
    new-instance v29, Landroid/content/ContentValues;

    const/4 v4, 0x3

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 4643
    .local v29, values:Landroid/content/ContentValues;
    new-instance v19, Landroid/media/MediaInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/MediaInfo;-><init>(Landroid/content/Context;)V

    .line 4644
    .local v19, mediaInfo:Landroid/media/MediaInfo;
    const/16 v20, 0x0

    .line 4645
    .local v20, mediaTag:Landroid/media/MediaInfo$MediaTag;
    const/16 v23, 0x0

    .line 4647
    .local v23, parseFile:Ljava/io/File;
    :try_start_0
    const-string v4, "application/vnd.oma.drm.content"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4648
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/media/MediaInfo;->parseSingleFile(Ljava/lang/String;)Landroid/media/MediaInfo$MediaTag;

    move-result-object v20

    .line 4649
    if-eqz v20, :cond_0

    .line 4650
    const/4 v4, 0x3

    move-object/from16 v0, v20

    iput v4, v0, Landroid/media/MediaInfo$MediaTag;->mDrmType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4746
    :cond_0
    :goto_0
    if-eqz v20, :cond_14

    .line 4749
    sget-object v5, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 4750
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_b

    .line 4751
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4752
    const-string v4, "_data"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 4753
    .local v25, pathIndex:I
    move/from16 v0, v25

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    .line 4754
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 4755
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    .line 4760
    .end local v25           #pathIndex:I
    :cond_1
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4766
    :goto_2
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4767
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mAlbum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4768
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mArtist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4769
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mFilename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4770
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mTitle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4774
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_e

    .line 4776
    const-string v4, "DrmHelper"

    const-string v5, "No title information in content, we have to decide one"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4778
    sget-object v5, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4779
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_d

    .line 4780
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4781
    const-string/jumbo v4, "title"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 4782
    .local v28, titleIndex:I
    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    .line 4783
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 4784
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    .line 4789
    .end local v28           #titleIndex:I
    :cond_2
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4794
    :goto_4
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 4795
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "We decide the tilte is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4805
    .end local v9           #c:Landroid/database/Cursor;
    :cond_3
    :goto_5
    sget-object v4, Landroid/provider/DrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    const-string v6, "album=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v7, v8

    const-string v8, "album_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4807
    .local v10, cAlbums:Landroid/database/Cursor;
    if-nez v10, :cond_f

    .line 4809
    const-string v4, "DrmHelper"

    const-string/jumbo v5, "query Albums failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4816
    const/16 v29, 0x0

    .line 4935
    .end local v10           #cAlbums:Landroid/database/Cursor;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v29           #values:Landroid/content/ContentValues;
    :cond_4
    :goto_6
    return-object v29

    .line 4654
    .restart local v29       #values:Landroid/content/ContentValues;
    :cond_5
    const/16 v16, 0x0

    .line 4656
    .local v16, extention:Ljava/lang/String;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Landroid/media/MediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 4677
    const/4 v4, 0x7

    move/from16 v0, p5

    if-ne v0, v4, :cond_8

    .line 4680
    new-instance v24, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/PHONE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v23           #parseFile:Ljava/io/File;
    .local v24, parseFile:Ljava/io/File;
    move-object/from16 v23, v24

    .line 4695
    .end local v24           #parseFile:Ljava/io/File;
    .restart local v23       #parseFile:Ljava/io/File;
    :goto_7
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create template file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4698
    new-instance v22, Ljava/io/FileOutputStream;

    invoke-direct/range {v22 .. v23}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4699
    .local v22, os:Ljava/io/FileOutputStream;
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4700
    .local v17, fin:Ljava/io/FileInputStream;
    new-instance v12, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v12, v0, v4, v1}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 4701
    .local v12, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v18

    .line 4702
    .local v18, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v26

    .line 4703
    .local v26, rights:Landroid/drm/mobile1/DrmRights;
    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v27

    .line 4704
    .local v27, stream:Ljava/io/InputStream;
    invoke-virtual {v12}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v21

    .line 4705
    .local v21, method:I
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/provider/DrmHelper;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I

    .line 4706
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    .line 4707
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 4708
    if-eqz v27, :cond_6

    .line 4709
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V

    .line 4714
    :cond_6
    sget-object v4, Landroid/provider/DrmHelper;->CMD_CHMOD:[Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 4715
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmHelper;->CMD_CHMOD:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 4718
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/media/MediaInfo;->parseSingleFile(Ljava/lang/String;)Landroid/media/MediaInfo$MediaTag;

    move-result-object v20

    .line 4719
    if-eqz v20, :cond_7

    .line 4720
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/media/MediaInfo$MediaTag;->mDrmType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4730
    :cond_7
    if-eqz v23, :cond_0

    :try_start_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4731
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4732
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 4738
    .end local v12           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v16           #extention:Ljava/lang/String;
    .end local v17           #fin:Ljava/io/FileInputStream;
    .end local v18           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v21           #method:I
    .end local v22           #os:Ljava/io/FileOutputStream;
    .end local v26           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v27           #stream:Ljava/io/InputStream;
    .end local v29           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v15

    .line 4740
    .local v15, e:Ljava/lang/Exception;
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse DCF audio. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4742
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 4685
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v16       #extention:Ljava/lang/String;
    .restart local v29       #values:Landroid/content/ContentValues;
    :cond_8
    :try_start_3
    new-instance v24, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/DRM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v23           #parseFile:Ljava/io/File;
    .restart local v24       #parseFile:Ljava/io/File;
    move-object/from16 v23, v24

    .end local v24           #parseFile:Ljava/io/File;
    .restart local v23       #parseFile:Ljava/io/File;
    goto/16 :goto_7

    .line 4722
    :catch_1
    move-exception v15

    .line 4724
    .local v15, e:Ljava/io/IOException;
    :try_start_4
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse DM audio. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4726
    const/16 v29, 0x0

    .line 4730
    .end local v29           #values:Landroid/content/ContentValues;
    if-eqz v23, :cond_4

    :try_start_5
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4731
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_4

    .line 4732
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 4730
    .end local v15           #e:Ljava/io/IOException;
    .restart local v29       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    if-eqz v23, :cond_9

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 4731
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_9

    .line 4732
    const-string v5, "DrmHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4730
    :cond_9
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 4758
    .end local v16           #extention:Ljava/lang/String;
    .restart local v13       #cursor:Landroid/database/Cursor;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 4762
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    goto/16 :goto_2

    .line 4787
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    goto/16 :goto_3

    .line 4791
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    goto/16 :goto_4

    .line 4800
    .end local v9           #c:Landroid/database/Cursor;
    :cond_e
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    const-string v5, "<unknown>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 4801
    const-string/jumbo v4, "title"

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 4819
    .restart local v10       #cAlbums:Landroid/database/Cursor;
    :cond_f
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cAlbums.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4821
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_10

    .line 4822
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4824
    const-string v4, "DrmHelper"

    const-string v5, "Insert a new album."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4826
    new-instance v14, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v14, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 4827
    .local v14, cv:Landroid/content/ContentValues;
    const-string v4, "album"

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4828
    sget-object v4, Landroid/provider/DrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4829
    sget-object v4, Landroid/provider/DrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    const-string v6, "album=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v7, v8

    const-string v8, "album_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4831
    if-nez v10, :cond_10

    .line 4833
    const-string v4, "DrmHelper"

    const-string/jumbo v5, "query Albums failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4840
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 4843
    .end local v14           #cv:Landroid/content/ContentValues;
    :cond_10
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4844
    const-string v4, "album_id"

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4846
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert album id is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4848
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4851
    sget-object v4, Landroid/provider/DrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    const-string v6, "artist=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v7, v8

    const-string v8, "artist_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 4853
    .local v11, cArtists:Landroid/database/Cursor;
    if-nez v11, :cond_11

    .line 4855
    const-string v4, "DrmHelper"

    const-string/jumbo v5, "query Artists failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4862
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 4865
    :cond_11
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cArtists.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4867
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_12

    .line 4868
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 4870
    const-string v4, "DrmHelper"

    const-string v5, "Insert a new artist."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4872
    new-instance v14, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v14, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 4873
    .restart local v14       #cv:Landroid/content/ContentValues;
    const-string v4, "artist"

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4874
    sget-object v4, Landroid/provider/DrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4875
    sget-object v4, Landroid/provider/DrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    const-string v6, "artist=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v7, v8

    const-string v8, "artist_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 4877
    if-nez v11, :cond_12

    .line 4879
    const-string v4, "DrmHelper"

    const-string/jumbo v5, "query Artists failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4883
    .end local v14           #cv:Landroid/content/ContentValues;
    :cond_12
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4884
    const-string v4, "artist_id"

    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4886
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert artist id is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4888
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 4890
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    if-nez v4, :cond_13

    .line 4891
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    .line 4897
    :cond_13
    if-nez p6, :cond_4

    .line 4899
    :try_start_6
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaInfo;->insertDRMAudioToMediaProvider(Landroid/media/MediaInfo$MediaTag;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_4

    .line 4901
    const-string v4, "DrmHelper"

    const-string v5, "Insert DRM content to MediaProvider failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 4908
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 4910
    :catch_2
    move-exception v15

    .line 4912
    .local v15, e:Ljava/lang/Exception;
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert DRM content to MediaProvider Exceptoin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4919
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 4925
    .end local v10           #cAlbums:Landroid/database/Cursor;
    .end local v11           #cArtists:Landroid/database/Cursor;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v15           #e:Ljava/lang/Exception;
    :cond_14
    const-string v4, "DrmHelper"

    const-string v5, "Parse mediaTag return null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method public static final renewRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 18
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"

    .prologue
    .line 5954
    const/16 v16, 0x0

    .line 5956
    .local v16, res:I
    const-string v1, "DrmHelper"

    const-string/jumbo v2, "renewRights"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5958
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 5960
    :cond_0
    const-string v1, "DrmHelper"

    const-string/jumbo v2, "renewRights : -2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5962
    const/4 v1, -0x2

    .line 6022
    :goto_0
    return v1

    .line 5965
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v4, "_data=?"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v5, v2

    const-string v6, "_id"

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5967
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 5969
    const-string v1, "DrmHelper"

    const-string/jumbo v2, "renewRights query failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5971
    const/4 v1, -0x6

    goto :goto_0

    .line 5972
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 5974
    const-string v1, "DrmHelper"

    const-string/jumbo v2, "renewRights no record."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5976
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5977
    const/4 v1, -0x6

    goto :goto_0

    .line 5980
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5981
    const-string/jumbo v1, "message_type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 5982
    .local v15, messageTypeColumnId:I
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5983
    .local v14, messageType:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5985
    const-string v1, "application/vnd.oma.drm.content"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5987
    const-string v1, "DrmHelper"

    const-string/jumbo v2, "renewRights : -2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5989
    const/4 v1, -0x2

    goto :goto_0

    .line 5992
    :cond_4
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5994
    .local v10, file:Ljava/io/File;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5995
    .local v11, fis:Ljava/io/InputStream;
    new-instance v8, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-direct {v8, v11, v1, v14}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 5996
    .local v8, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v8}, Landroid/drm/mobile1/DrmRawContent;->getRightsAddress()Ljava/lang/String;

    move-result-object v13

    .line 5997
    .local v13, issuer:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 5998
    if-nez v13, :cond_5

    .line 6000
    const-string v1, "DrmHelper"

    const-string/jumbo v2, "renewRights : -7"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6002
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 6003
    const/4 v1, -0x7

    goto/16 :goto_0

    .line 6005
    :cond_5
    const-string v1, "\\"

    const-string v2, "/"

    invoke-virtual {v13, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 6007
    const-string v1, "DrmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Right Issure = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6009
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6010
    .local v12, intent:Landroid/content/Intent;
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 6011
    .local v17, righturi:Landroid/net/Uri;
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6012
    const/high16 v1, 0x1000

    invoke-virtual {v12, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6014
    const-string v1, "com.android.browser.application_id"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6015
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v11           #fis:Ljava/io/InputStream;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v13           #issuer:Ljava/lang/String;
    .end local v17           #righturi:Landroid/net/Uri;
    :goto_1
    move/from16 v1, v16

    .line 6022
    goto/16 :goto_0

    .line 6016
    :catch_0
    move-exception v9

    .line 6018
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "DrmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "renewRights : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6020
    const/16 v16, -0x1

    goto :goto_1
.end method

.method public static final renewRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)I
    .locals 16
    .parameter "cx"
    .parameter "contentUri"
    .parameter "strFilePath"
    .parameter "className"

    .prologue
    .line 6164
    const-string v1, "DrmHelper"

    const-string v2, "********renewRights  (2)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6167
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 6169
    :cond_0
    const-string v1, "DrmHelper"

    const-string/jumbo v2, "renewRights  (2) : -2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6171
    const/4 v1, -0x2

    .line 6284
    :goto_0
    return v1

    .line 6174
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/DrmStore;->DELIVERY_TYPE_PROJECTION:[Ljava/lang/String;

    const-string v4, "_data=?"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v5, v2

    const-string v6, "_id"

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6176
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 6178
    const-string v1, "DrmHelper"

    const-string/jumbo v2, "renewRights  (2) : -6"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6180
    const/4 v1, -0x6

    goto :goto_0

    .line 6181
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 6183
    const-string v1, "DrmHelper"

    const-string/jumbo v2, "renewRights  (2) :  no record."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6185
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6186
    const/4 v1, -0x6

    goto :goto_0

    .line 6189
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6190
    const-string/jumbo v1, "message_type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 6191
    .local v14, messageTypeColumnId:I
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 6192
    .local v13, messageType:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6194
    const-string v1, "application/vnd.oma.drm.content"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 6196
    const-string v1, "DrmHelper"

    const-string/jumbo v2, "renewRights  (2) : -2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6198
    const/4 v1, -0x2

    goto :goto_0

    .line 6201
    :cond_4
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6203
    .local v10, file:Ljava/io/File;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6204
    .local v11, fis:Ljava/io/InputStream;
    new-instance v8, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-direct {v8, v11, v1, v13}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 6205
    .local v8, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v8}, Landroid/drm/mobile1/DrmRawContent;->getRightsAddress()Ljava/lang/String;

    move-result-object v12

    .line 6206
    .local v12, issuer:Ljava/lang/String;
    if-nez v12, :cond_5

    .line 6208
    const-string v1, "DrmHelper"

    const-string v2, "Null issuer : -9"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6210
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 6211
    const/16 v1, -0x9

    goto :goto_0

    .line 6212
    :cond_5
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 6214
    const-string v1, "DrmHelper"

    const-string v2, "Empty issuer : -9"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6216
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 6217
    const/16 v1, -0x9

    goto/16 :goto_0

    .line 6219
    :cond_6
    const-string v1, "\\"

    const-string v2, "/"

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 6221
    const-string v1, "DrmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Right Issure = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6225
    :try_start_1
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 6227
    .local v15, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "uri"

    invoke-virtual {v15, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6228
    const-string/jumbo v1, "notificationpackage"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6230
    const-string/jumbo v1, "notificationclass"

    move-object/from16 v0, p3

    invoke-virtual {v15, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6232
    const-string/jumbo v1, "visibility"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6234
    const-string/jumbo v1, "is_visible_in_downloads_ui"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6239
    const-string/jumbo v1, "restriction"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6269
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6284
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 6271
    .end local v15           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 6273
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "DrmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "renewRights  (2) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6275
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 6276
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 6278
    .end local v8           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v11           #fis:Ljava/io/InputStream;
    .end local v12           #issuer:Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 6280
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v1, "DrmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "renewRights  (2) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6282
    const/4 v1, -0x1

    goto/16 :goto_0
.end method

.method private static final saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/io/FileOutputStream;)I
    .locals 22
    .parameter "file"
    .parameter "content"
    .parameter "os"

    .prologue
    .line 3514
    const/4 v15, 0x0

    .line 3516
    .local v15, res:I
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3517
    .local v11, fin_header:Ljava/io/FileInputStream;
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v5

    .line 3519
    .local v5, contentOffset:I
    new-array v13, v5, [B

    .line 3520
    .local v13, header_buffer:[B
    invoke-virtual {v11, v13}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 3521
    .local v6, count:I
    if-ne v6, v5, :cond_1

    .line 3522
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3524
    const-string v19, "DrmHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Header has "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " bytes"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3533
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 3537
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v14

    .line 3538
    .local v14, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v16

    .line 3539
    .local v16, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v16, :cond_0

    .line 3541
    const-string v19, "DrmHelper"

    const-string/jumbo v20, "rights == null."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3544
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v17

    .line 3545
    .local v17, stream:Ljava/io/InputStream;
    move v10, v5

    .line 3546
    .local v10, endOfContent:I
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v3, v0, [B

    .line 3547
    .local v3, buffer:[B
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v8, v0, [B

    .line 3548
    .local v8, encryptBuffer:[B
    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_4

    .line 3549
    add-int/2addr v10, v6

    .line 3550
    array-length v0, v8

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v6, v0, :cond_2

    const/16 v19, 0x1

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v3, v8, v6, v1}, Landroid/drm/mobile1/DrmRawContent;->encrypt([B[BIZ)I

    move-result v9

    .line 3551
    .local v9, encryptRes:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v9, v0, :cond_3

    .line 3552
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v8, v1, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3591
    .end local v3           #buffer:[B
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v8           #encryptBuffer:[B
    .end local v9           #encryptRes:I
    .end local v10           #endOfContent:I
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v13           #header_buffer:[B
    .end local v14           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v16           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v17           #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v7

    .line 3593
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v19, "DrmHelper"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3595
    const/4 v15, -0x1

    move v6, v15

    .line 3599
    .end local v7           #e:Ljava/lang/Exception;
    :goto_2
    return v6

    .line 3527
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v13       #header_buffer:[B
    :cond_1
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 3529
    const-string v19, "DrmHelper"

    const-string v20, "Read header failed."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3531
    const/4 v6, -0x1

    goto :goto_2

    .line 3550
    .restart local v3       #buffer:[B
    .restart local v8       #encryptBuffer:[B
    .restart local v10       #endOfContent:I
    .restart local v14       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v16       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v17       #stream:Ljava/io/InputStream;
    :cond_2
    const/16 v19, 0x0

    goto :goto_1

    .line 3554
    .restart local v9       #encryptRes:I
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 3556
    const-string v19, "DrmHelper"

    const-string v20, "Encrypt content failed."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    const/4 v6, -0x1

    goto :goto_2

    .line 3563
    .end local v9           #encryptRes:I
    :cond_4
    sub-int v4, v10, v5

    .line 3564
    .local v4, contentCount:I
    const-string v19, "DrmHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Content has "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " bytes"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 3571
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3572
    .local v12, fin_tailer:Ljava/io/FileInputStream;
    int-to-long v0, v10

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v12, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 3573
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 3574
    .local v18, tailerBuffer:[B
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 3575
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_5

    .line 3576
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3578
    const-string v19, "DrmHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Tail has "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " bytes"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3587
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 3588
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 3596
    .end local v3           #buffer:[B
    .end local v4           #contentCount:I
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v8           #encryptBuffer:[B
    .end local v10           #endOfContent:I
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v12           #fin_tailer:Ljava/io/FileInputStream;
    .end local v13           #header_buffer:[B
    .end local v14           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v16           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v17           #stream:Ljava/io/InputStream;
    .end local v18           #tailerBuffer:[B
    :catchall_0
    move-exception v19

    throw v19

    .line 3581
    .restart local v3       #buffer:[B
    .restart local v4       #contentCount:I
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v8       #encryptBuffer:[B
    .restart local v10       #endOfContent:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v12       #fin_tailer:Ljava/io/FileInputStream;
    .restart local v13       #header_buffer:[B
    .restart local v14       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v16       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v17       #stream:Ljava/io/InputStream;
    .restart local v18       #tailerBuffer:[B
    :cond_5
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 3583
    const-string v19, "DrmHelper"

    const-string v20, "Output tailer failed."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 3585
    const/4 v6, -0x1

    goto/16 :goto_2
.end method

.method private static final declared-synchronized saveFile(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    .locals 31
    .parameter "file"
    .parameter "content"
    .parameter "outpath"

    .prologue
    .line 3738
    const-class v28, Landroid/provider/DrmHelper;

    monitor-enter v28

    const/16 v23, 0x0

    .line 3741
    .local v23, res:I
    :try_start_0
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/provider/DrmHelper;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, "/"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v29, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3743
    .local v14, garbageFileDir:Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, "/"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3746
    .local v13, garbageDir:Ljava/io/File;
    :try_start_1
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 3750
    :goto_0
    :try_start_2
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, "/"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, "garbage"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3751
    .local v15, garbageFilePath:Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3752
    .local v16, garbagefile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    .line 3754
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 3755
    .local v17, garbageos:Ljava/io/FileOutputStream;
    new-instance v21, Ljava/io/FileOutputStream;

    const/16 v27, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 3757
    .local v21, os:Ljava/io/FileOutputStream;
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v5

    .line 3760
    .local v5, contentOffset:I
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3761
    .local v11, fin_header:Ljava/io/FileInputStream;
    new-array v0, v5, [B

    move-object/from16 v19, v0

    .line 3762
    .local v19, header_buffer:[B
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 3764
    .local v6, count:I
    if-ne v6, v5, :cond_5

    .line 3765
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3766
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3769
    const-string v27, "DrmHelper"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Header has "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " bytes"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3792
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 3814
    :goto_1
    :try_start_4
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v20

    .line 3815
    .local v20, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v24

    .line 3817
    .local v24, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v24, :cond_0

    .line 3819
    const-string v27, "DrmHelper"

    const-string/jumbo v29, "rights == null."

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3825
    :cond_0
    const/16 v25, 0x0

    .line 3826
    .local v25, stream:Ljava/io/InputStream;
    const/16 v18, 0x0

    .line 3827
    .local v18, hasFailed:Z
    const/16 v22, 0x0

    .line 3828
    .local v22, repeat:I
    const/4 v3, 0x0

    .line 3829
    .local v3, buffer:[B
    const/4 v8, 0x0

    .line 3830
    .local v8, encryptBuffer:[B
    const/4 v10, 0x0

    .line 3833
    .local v10, endOfContent:I
    const-string v27, "DrmHelper"

    const-string v29, " @@@@@ Retrieve content!!! (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 3838
    :cond_1
    const/16 v18, 0x0

    .line 3840
    :try_start_5
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v25

    .line 3853
    :goto_2
    if-nez v18, :cond_1

    .line 3856
    :try_start_6
    const-string v27, "DrmHelper"

    const-string v29, " @@@@@ Encrypt content!!! (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3862
    move v10, v5

    .line 3863
    const/16 v27, 0x400

    move/from16 v0, v27

    new-array v3, v0, [B

    .line 3864
    const/16 v27, 0x400

    move/from16 v0, v27

    new-array v8, v0, [B

    .line 3866
    :goto_3
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v6, v0, :cond_b

    .line 3867
    add-int/2addr v10, v6

    .line 3868
    array-length v0, v8

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v6, v0, :cond_8

    const/16 v27, 0x1

    :goto_4
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v3, v8, v6, v1}, Landroid/drm/mobile1/DrmRawContent;->encrypt([B[BIZ)I

    move-result v9

    .line 3871
    .local v9, encryptRes:I
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v9, v0, :cond_9

    .line 3872
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v8, v1, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3873
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v8, v1, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 3899
    .end local v9           #encryptRes:I
    :catch_0
    move-exception v7

    .line 3901
    .local v7, e:Ljava/lang/Exception;
    :try_start_7
    const-string v27, "DrmHelper"

    const-string v29, " @@@@@ ERROR: read content stream failed. (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3903
    const-string v27, "DrmHelper"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3904
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 3906
    const/4 v3, 0x0

    .line 3907
    const/4 v8, 0x0

    .line 3910
    if-eqz v25, :cond_2

    .line 3911
    :try_start_8
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 3915
    :cond_2
    :goto_5
    const/16 v25, 0x0

    .line 3918
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 3920
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 3921
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 3922
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 3924
    if-eqz v16, :cond_3

    .line 3925
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 3928
    :cond_3
    const/4 v6, -0x1

    .line 4038
    .end local v3           #buffer:[B
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #encryptBuffer:[B
    .end local v10           #endOfContent:I
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v13           #garbageDir:Ljava/io/File;
    .end local v14           #garbageFileDir:Ljava/lang/String;
    .end local v15           #garbageFilePath:Ljava/lang/String;
    .end local v16           #garbagefile:Ljava/io/File;
    .end local v17           #garbageos:Ljava/io/FileOutputStream;
    .end local v18           #hasFailed:Z
    .end local v19           #header_buffer:[B
    .end local v20           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v21           #os:Ljava/io/FileOutputStream;
    .end local v22           #repeat:I
    .end local v24           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v25           #stream:Ljava/io/InputStream;
    :cond_4
    :goto_6
    monitor-exit v28

    return v6

    .line 3772
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v13       #garbageDir:Ljava/io/File;
    .restart local v14       #garbageFileDir:Ljava/lang/String;
    .restart local v15       #garbageFilePath:Ljava/lang/String;
    .restart local v16       #garbagefile:Ljava/io/File;
    .restart local v17       #garbageos:Ljava/io/FileOutputStream;
    .restart local v19       #header_buffer:[B
    .restart local v21       #os:Ljava/io/FileOutputStream;
    :cond_5
    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 3775
    const-string v27, "DrmHelper"

    const-string v29, "Read header failed."

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3778
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 3780
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 3781
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 3782
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 3784
    if-eqz v16, :cond_6

    .line 3785
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 3788
    :cond_6
    const/4 v6, -0x1

    goto :goto_6

    .line 3793
    :catch_1
    move-exception v7

    .line 3795
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v27, "DrmHelper"

    const-string v29, " @@@@@ ERROR: close Read header failed. (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3797
    const-string v27, "DrmHelper"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3798
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_1

    .line 4028
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v7           #e:Ljava/lang/Exception;
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v13           #garbageDir:Ljava/io/File;
    .end local v14           #garbageFileDir:Ljava/lang/String;
    .end local v15           #garbageFilePath:Ljava/lang/String;
    .end local v16           #garbagefile:Ljava/io/File;
    .end local v17           #garbageos:Ljava/io/FileOutputStream;
    .end local v19           #header_buffer:[B
    .end local v21           #os:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    .line 4031
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_b
    const-string v27, "DrmHelper"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 4034
    const/16 v23, -0x1

    move/from16 v6, v23

    .line 4038
    goto :goto_6

    .line 3841
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v3       #buffer:[B
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v8       #encryptBuffer:[B
    .restart local v10       #endOfContent:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v13       #garbageDir:Ljava/io/File;
    .restart local v14       #garbageFileDir:Ljava/lang/String;
    .restart local v15       #garbageFilePath:Ljava/lang/String;
    .restart local v16       #garbagefile:Ljava/io/File;
    .restart local v17       #garbageos:Ljava/io/FileOutputStream;
    .restart local v18       #hasFailed:Z
    .restart local v19       #header_buffer:[B
    .restart local v20       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v21       #os:Ljava/io/FileOutputStream;
    .restart local v22       #repeat:I
    .restart local v24       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v25       #stream:Ljava/io/InputStream;
    :catch_3
    move-exception v7

    .line 3843
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_c
    const-string v27, "DrmHelper"

    const-string v29, " @@@@@ ERROR: get content input stream ERROR!!! (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3846
    const/16 v27, 0x3

    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_7

    .line 3847
    const/16 v18, 0x1

    .line 3850
    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 3868
    .end local v7           #e:Ljava/lang/Exception;
    :cond_8
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 3875
    .restart local v9       #encryptRes:I
    :cond_9
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V

    .line 3878
    const-string v27, "DrmHelper"

    const-string v29, "Encrypt content failed."

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3881
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 3883
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 3884
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 3885
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 3887
    if-eqz v16, :cond_a

    .line 3888
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 3891
    :cond_a
    const/4 v6, -0x1

    goto/16 :goto_6

    .line 3896
    .end local v9           #encryptRes:I
    :cond_b
    sub-int v4, v10, v5

    .line 3897
    .local v4, contentCount:I
    const-string v27, "DrmHelper"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Content has "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " bytes"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 3932
    :try_start_d
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 3954
    :goto_7
    :try_start_e
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3955
    .local v12, fin_tailer:Ljava/io/FileInputStream;
    const/16 v27, 0x100

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v26, v0

    .line 3957
    .local v26, tailerBuffer:[B
    int-to-long v0, v10

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-virtual {v12, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 3958
    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 3960
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v6, v0, :cond_c

    .line 3961
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3962
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3965
    const-string v27, "DrmHelper"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Tail has "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " bytes"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 3989
    :try_start_f
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 3991
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 3992
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    .line 4003
    :goto_8
    :try_start_10
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    .line 4013
    :goto_9
    :try_start_11
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    .line 4022
    :goto_a
    if-eqz v16, :cond_4

    .line 4023
    :try_start_12
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    goto/16 :goto_6

    .line 4035
    .end local v3           #buffer:[B
    .end local v4           #contentCount:I
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v8           #encryptBuffer:[B
    .end local v10           #endOfContent:I
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v12           #fin_tailer:Ljava/io/FileInputStream;
    .end local v13           #garbageDir:Ljava/io/File;
    .end local v14           #garbageFileDir:Ljava/lang/String;
    .end local v15           #garbageFilePath:Ljava/lang/String;
    .end local v16           #garbagefile:Ljava/io/File;
    .end local v17           #garbageos:Ljava/io/FileOutputStream;
    .end local v18           #hasFailed:Z
    .end local v19           #header_buffer:[B
    .end local v20           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v21           #os:Ljava/io/FileOutputStream;
    .end local v22           #repeat:I
    .end local v24           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v25           #stream:Ljava/io/InputStream;
    .end local v26           #tailerBuffer:[B
    :catchall_0
    move-exception v27

    :try_start_13
    throw v27
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 3738
    :catchall_1
    move-exception v27

    monitor-exit v28

    throw v27

    .line 3915
    .restart local v3       #buffer:[B
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v7       #e:Ljava/lang/Exception;
    .restart local v8       #encryptBuffer:[B
    .restart local v10       #endOfContent:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v13       #garbageDir:Ljava/io/File;
    .restart local v14       #garbageFileDir:Ljava/lang/String;
    .restart local v15       #garbageFilePath:Ljava/lang/String;
    .restart local v16       #garbagefile:Ljava/io/File;
    .restart local v17       #garbageos:Ljava/io/FileOutputStream;
    .restart local v18       #hasFailed:Z
    .restart local v19       #header_buffer:[B
    .restart local v20       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v21       #os:Ljava/io/FileOutputStream;
    .restart local v22       #repeat:I
    .restart local v24       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v25       #stream:Ljava/io/InputStream;
    :catchall_2
    move-exception v27

    const/16 v25, 0x0

    :try_start_14
    throw v27

    .line 3933
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v4       #contentCount:I
    :catch_4
    move-exception v7

    .line 3935
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v27, "DrmHelper"

    const-string v29, " @@@@@ ERROR: close content stream failed. (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3937
    const-string v27, "DrmHelper"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3938
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 3968
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v12       #fin_tailer:Ljava/io/FileInputStream;
    .restart local v26       #tailerBuffer:[B
    :cond_c
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 3971
    const-string v27, "DrmHelper"

    const-string v29, "Output tailer failed."

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3974
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 3976
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/FileDescriptor;->sync()V

    .line 3977
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 3978
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 3980
    if-eqz v16, :cond_d

    .line 3981
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 3984
    :cond_d
    const/4 v6, -0x1

    goto/16 :goto_6

    .line 3993
    :catch_5
    move-exception v7

    .line 3995
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v27, "DrmHelper"

    const-string v29, " @@@@@ ERROR: close Read tail failed. (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3997
    const-string v27, "DrmHelper"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3998
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 4004
    .end local v7           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v7

    .line 4006
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v27, "DrmHelper"

    const-string v29, " @@@@@ ERROR: sync Output Read tail failed. (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4008
    const-string v27, "DrmHelper"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4009
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 4014
    .end local v7           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v7

    .line 4016
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v27, "DrmHelper"

    const-string v29, " @@@@@ ERROR: close Output Read tail failed. (saveFile)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4018
    const-string v27, "DrmHelper"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4019
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2

    goto/16 :goto_a

    .line 3747
    .end local v3           #buffer:[B
    .end local v4           #contentCount:I
    .end local v5           #contentOffset:I
    .end local v6           #count:I
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #encryptBuffer:[B
    .end local v10           #endOfContent:I
    .end local v11           #fin_header:Ljava/io/FileInputStream;
    .end local v12           #fin_tailer:Ljava/io/FileInputStream;
    .end local v15           #garbageFilePath:Ljava/lang/String;
    .end local v16           #garbagefile:Ljava/io/File;
    .end local v17           #garbageos:Ljava/io/FileOutputStream;
    .end local v18           #hasFailed:Z
    .end local v19           #header_buffer:[B
    .end local v20           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v21           #os:Ljava/io/FileOutputStream;
    .end local v22           #repeat:I
    .end local v24           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v25           #stream:Ljava/io/InputStream;
    .end local v26           #tailerBuffer:[B
    :catch_8
    move-exception v27

    goto/16 :goto_0

    .line 3913
    .restart local v3       #buffer:[B
    .restart local v5       #contentOffset:I
    .restart local v6       #count:I
    .restart local v7       #e:Ljava/lang/Exception;
    .restart local v8       #encryptBuffer:[B
    .restart local v10       #endOfContent:I
    .restart local v11       #fin_header:Ljava/io/FileInputStream;
    .restart local v15       #garbageFilePath:Ljava/lang/String;
    .restart local v16       #garbagefile:Ljava/io/File;
    .restart local v17       #garbageos:Ljava/io/FileOutputStream;
    .restart local v18       #hasFailed:Z
    .restart local v19       #header_buffer:[B
    .restart local v20       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v21       #os:Ljava/io/FileOutputStream;
    .restart local v22       #repeat:I
    .restart local v24       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v25       #stream:Ljava/io/InputStream;
    :catch_9
    move-exception v27

    goto/16 :goto_5
.end method

.method private static final saveFile(Ljava/io/File;Ljava/lang/String;Landroid/drm/mobile1/DrmRawContent;)I
    .locals 22
    .parameter "file"
    .parameter "outpath"
    .parameter "content"

    .prologue
    .line 3614
    const-string v19, "DrmHelper"

    const-string/jumbo v20, "saveFile(File file, String outpath, DrmRawContent content)"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3615
    const/4 v15, 0x0

    .line 3617
    .local v15, res:I
    :try_start_0
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v13

    .line 3618
    .local v13, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v16

    .line 3619
    .local v16, rights:Landroid/drm/mobile1/DrmRights;
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v17

    .line 3620
    .local v17, stream:Ljava/io/InputStream;
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 3621
    .local v14, os:Ljava/io/FileOutputStream;
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3622
    .local v10, fin_header:Ljava/io/FileInputStream;
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v4

    .line 3624
    .local v4, contentOffset:I
    new-array v12, v4, [B

    .line 3625
    .local v12, header_buffer:[B
    invoke-virtual {v10, v12}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 3626
    .local v5, count:I
    if-ne v5, v4, :cond_1

    .line 3628
    const/16 v19, 0x0

    :try_start_1
    move/from16 v0, v19

    invoke-virtual {v14, v12, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 3635
    :goto_0
    :try_start_2
    const-string v19, "DrmHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Header has "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " bytes"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3644
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 3648
    if-nez v16, :cond_0

    .line 3650
    const-string v19, "DrmHelper"

    const-string/jumbo v20, "rights == null."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3654
    :cond_0
    move v9, v4

    .line 3655
    .local v9, endOfContent:I
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v2, v0, [B

    .line 3656
    .local v2, buffer:[B
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v7, v0, [B

    .line 3657
    .local v7, encryptBuffer:[B
    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v5, v0, :cond_4

    .line 3658
    add-int/2addr v9, v5

    .line 3659
    array-length v0, v7

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v5, v0, :cond_2

    const/16 v19, 0x1

    :goto_2
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v2, v7, v5, v1}, Landroid/drm/mobile1/DrmRawContent;->encrypt([B[BIZ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v8

    .line 3660
    .local v8, encryptRes:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_3

    .line 3662
    const/16 v19, 0x0

    :try_start_3
    move/from16 v0, v19

    invoke-virtual {v14, v7, v0, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 3663
    :catch_0
    move-exception v6

    .line 3664
    .local v6, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 3665
    new-instance v14, Ljava/io/FileOutputStream;

    .end local v14           #os:Ljava/io/FileOutputStream;
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-direct {v14, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 3666
    .restart local v14       #os:Ljava/io/FileOutputStream;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v7, v0, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 3717
    .end local v2           #buffer:[B
    .end local v4           #contentOffset:I
    .end local v5           #count:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #encryptBuffer:[B
    .end local v8           #encryptRes:I
    .end local v9           #endOfContent:I
    .end local v10           #fin_header:Ljava/io/FileInputStream;
    .end local v12           #header_buffer:[B
    .end local v13           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v14           #os:Ljava/io/FileOutputStream;
    .end local v16           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v17           #stream:Ljava/io/InputStream;
    :catch_1
    move-exception v6

    .line 3719
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v19, "DrmHelper"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3721
    const/4 v15, -0x1

    move v5, v15

    .line 3725
    .end local v6           #e:Ljava/lang/Exception;
    :goto_3
    return v5

    .line 3629
    .restart local v4       #contentOffset:I
    .restart local v5       #count:I
    .restart local v10       #fin_header:Ljava/io/FileInputStream;
    .restart local v12       #header_buffer:[B
    .restart local v13       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v14       #os:Ljava/io/FileOutputStream;
    .restart local v16       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v17       #stream:Ljava/io/InputStream;
    :catch_2
    move-exception v6

    .line 3630
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 3631
    new-instance v14, Ljava/io/FileOutputStream;

    .end local v14           #os:Ljava/io/FileOutputStream;
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-direct {v14, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 3632
    .restart local v14       #os:Ljava/io/FileOutputStream;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v12, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 3722
    .end local v4           #contentOffset:I
    .end local v5           #count:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v10           #fin_header:Ljava/io/FileInputStream;
    .end local v12           #header_buffer:[B
    .end local v13           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v14           #os:Ljava/io/FileOutputStream;
    .end local v16           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v17           #stream:Ljava/io/InputStream;
    :catchall_0
    move-exception v19

    throw v19

    .line 3638
    .restart local v4       #contentOffset:I
    .restart local v5       #count:I
    .restart local v10       #fin_header:Ljava/io/FileInputStream;
    .restart local v12       #header_buffer:[B
    .restart local v13       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v14       #os:Ljava/io/FileOutputStream;
    .restart local v16       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v17       #stream:Ljava/io/InputStream;
    :cond_1
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 3640
    const-string v19, "DrmHelper"

    const-string v20, "Read header failed."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3642
    const/4 v5, -0x1

    goto :goto_3

    .line 3659
    .restart local v2       #buffer:[B
    .restart local v7       #encryptBuffer:[B
    .restart local v9       #endOfContent:I
    :cond_2
    const/16 v19, 0x0

    goto :goto_2

    .line 3669
    .restart local v8       #encryptRes:I
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 3671
    const-string v19, "DrmHelper"

    const-string v20, "Encrypt content failed."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3673
    const/4 v5, -0x1

    goto :goto_3

    .line 3678
    .end local v8           #encryptRes:I
    :cond_4
    sub-int v3, v9, v4

    .line 3679
    .local v3, contentCount:I
    const-string v19, "DrmHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Content has "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " bytes"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 3686
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3687
    .local v11, fin_tailer:Ljava/io/FileInputStream;
    int-to-long v0, v9

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v11, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 3688
    const/16 v19, 0x100

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 3689
    .local v18, tailerBuffer:[B
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result v5

    .line 3690
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v5, v0, :cond_5

    .line 3692
    const/16 v19, 0x0

    :try_start_8
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 3699
    :goto_4
    :try_start_9
    const-string v19, "DrmHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Tail has "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " bytes"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 3709
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileDescriptor;->sync()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 3712
    :try_start_a
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_3

    .line 3713
    :catch_3
    move-exception v6

    .line 3714
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 3693
    .end local v6           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v6

    .line 3694
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 3695
    new-instance v14, Ljava/io/FileOutputStream;

    .end local v14           #os:Ljava/io/FileOutputStream;
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-direct {v14, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 3696
    .restart local v14       #os:Ljava/io/FileOutputStream;
    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_4

    .line 3702
    .end local v6           #e:Ljava/lang/Exception;
    :cond_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 3704
    const-string v19, "DrmHelper"

    const-string v20, "Output tailer failed."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 3706
    const/4 v5, -0x1

    goto/16 :goto_3
.end method

.method private static final saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I
    .locals 7
    .parameter "stream"
    .parameter "os"

    .prologue
    .line 3486
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 3488
    .local v0, buffer:[B
    const/4 v3, 0x0

    .line 3490
    .local v3, res:I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, count:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 3491
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3494
    .end local v1           #count:I
    :catch_0
    move-exception v2

    .line 3495
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, -0x1

    .line 3497
    :try_start_1
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content inputstream read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3502
    .end local v2           #e:Ljava/lang/Exception;
    :goto_1
    return v3

    .line 3493
    .restart local v1       #count:I
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 3499
    .end local v1           #count:I
    :catchall_0
    move-exception v4

    throw v4
.end method

.method private static final declared-synchronized saveFileFromBase64ToBinary(Ljava/io/File;Landroid/drm/mobile1/DrmRawContent;Ljava/lang/String;)I
    .locals 27
    .parameter "file"
    .parameter "content"
    .parameter "outpath"

    .prologue
    .line 4048
    const-class v24, Landroid/provider/DrmHelper;

    monitor-enter v24

    const/16 v17, 0x0

    .line 4051
    .local v17, res:I
    :try_start_0
    new-instance v14, Ljava/io/FileOutputStream;

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-direct {v14, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 4052
    .local v14, os:Ljava/io/FileOutputStream;
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentOffset(Landroid/drm/mobile1/DrmRights;)I

    move-result v4

    .line 4055
    .local v4, contentOffset:I
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4056
    .local v8, fin_header:Ljava/io/FileInputStream;
    new-array v10, v4, [B

    .line 4057
    .local v10, header_buffer:[B
    invoke-virtual {v8, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 4059
    .local v5, count:I
    if-ne v5, v4, :cond_3

    .line 4060
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    .line 4061
    .local v22, tempHeader:Ljava/lang/String;
    const-string v23, "Content-Transfer-Encoding: base64"

    const-string v25, "Content-Transfer-Encoding: binary"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4062
    .local v12, newTempHeader:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v23

    array-length v13, v0

    .line 4064
    .local v13, newTempHeaderCount:I
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v14, v0, v1, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4067
    const-string v23, "DrmHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Header has "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ") bytes. (saveFileFromBase64)"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4070
    move v4, v13

    .line 4086
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4107
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v11

    .line 4108
    .local v11, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v18

    .line 4110
    .local v18, rights:Landroid/drm/mobile1/DrmRights;
    if-nez v18, :cond_0

    .line 4112
    const-string v23, "DrmHelper"

    const-string/jumbo v25, "rights == null."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    :cond_0
    const/16 v19, 0x0

    .line 4119
    .local v19, stream:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 4120
    .local v9, hasFailed:Z
    const/16 v16, 0x0

    .line 4121
    .local v16, repeat:I
    const/4 v3, 0x0

    .line 4122
    .local v3, buffer:[B
    const/4 v7, 0x0

    .line 4123
    .local v7, endOfContent:I
    const/4 v15, 0x0

    .line 4126
    .local v15, realContentLength:I
    const-string v23, "DrmHelper"

    const-string v25, " @@@@@ Retrieve content!!! (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 4131
    :cond_1
    const/4 v9, 0x0

    .line 4133
    :try_start_3
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v19

    .line 4146
    :goto_1
    if-nez v9, :cond_1

    .line 4149
    :try_start_4
    const-string v23, "DrmHelper"

    const-string v25, " @@@@@ Encrypt content!!! (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4153
    const/16 v23, 0x400

    move/from16 v0, v23

    new-array v3, v0, [B

    .line 4155
    :goto_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v5, v0, :cond_5

    .line 4156
    add-int/2addr v15, v5

    .line 4157
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v3, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 4167
    :catch_0
    move-exception v6

    .line 4169
    .local v6, e:Ljava/lang/Exception;
    :try_start_5
    const-string v23, "DrmHelper"

    const-string v25, " @@@@@ ERROR: read content stream failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4171
    const-string v23, "DrmHelper"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4172
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 4174
    const/4 v3, 0x0

    .line 4177
    if-eqz v19, :cond_2

    .line 4178
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 4182
    :cond_2
    :goto_3
    const/16 v19, 0x0

    .line 4185
    :try_start_7
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->sync()V

    .line 4186
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 4188
    const/4 v5, -0x1

    .line 4271
    .end local v3           #buffer:[B
    .end local v4           #contentOffset:I
    .end local v5           #count:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #endOfContent:I
    .end local v8           #fin_header:Ljava/io/FileInputStream;
    .end local v9           #hasFailed:Z
    .end local v10           #header_buffer:[B
    .end local v11           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v12           #newTempHeader:Ljava/lang/String;
    .end local v13           #newTempHeaderCount:I
    .end local v14           #os:Ljava/io/FileOutputStream;
    .end local v15           #realContentLength:I
    .end local v16           #repeat:I
    .end local v18           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v19           #stream:Ljava/io/InputStream;
    .end local v22           #tempHeader:Ljava/lang/String;
    :goto_4
    monitor-exit v24

    return v5

    .line 4072
    .restart local v4       #contentOffset:I
    .restart local v5       #count:I
    .restart local v8       #fin_header:Ljava/io/FileInputStream;
    .restart local v10       #header_buffer:[B
    .restart local v14       #os:Ljava/io/FileOutputStream;
    :cond_3
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 4075
    const-string v23, "DrmHelper"

    const-string v25, "Read header failed."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4079
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->sync()V

    .line 4080
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 4082
    const/4 v5, -0x1

    goto :goto_4

    .line 4087
    .restart local v12       #newTempHeader:Ljava/lang/String;
    .restart local v13       #newTempHeaderCount:I
    .restart local v22       #tempHeader:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 4089
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v23, "DrmHelper"

    const-string v25, " @@@@@ ERROR: close Read header failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4091
    const-string v23, "DrmHelper"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4092
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 4261
    .end local v4           #contentOffset:I
    .end local v5           #count:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v8           #fin_header:Ljava/io/FileInputStream;
    .end local v10           #header_buffer:[B
    .end local v12           #newTempHeader:Ljava/lang/String;
    .end local v13           #newTempHeaderCount:I
    .end local v14           #os:Ljava/io/FileOutputStream;
    .end local v22           #tempHeader:Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 4264
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_9
    const-string v23, "DrmHelper"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 4267
    const/16 v17, -0x1

    move/from16 v5, v17

    .line 4271
    goto :goto_4

    .line 4134
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #buffer:[B
    .restart local v4       #contentOffset:I
    .restart local v5       #count:I
    .restart local v7       #endOfContent:I
    .restart local v8       #fin_header:Ljava/io/FileInputStream;
    .restart local v9       #hasFailed:Z
    .restart local v10       #header_buffer:[B
    .restart local v11       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v12       #newTempHeader:Ljava/lang/String;
    .restart local v13       #newTempHeaderCount:I
    .restart local v14       #os:Ljava/io/FileOutputStream;
    .restart local v15       #realContentLength:I
    .restart local v16       #repeat:I
    .restart local v18       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v19       #stream:Ljava/io/InputStream;
    .restart local v22       #tempHeader:Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 4136
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_a
    const-string v23, "DrmHelper"

    const-string v25, " @@@@@ ERROR: get content input stream ERROR!!! (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4139
    const/16 v23, 0x3

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 4140
    const/4 v9, 0x1

    .line 4143
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 4165
    .end local v6           #e:Ljava/lang/Exception;
    :cond_5
    const-string v23, "DrmHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " @@@@@ Real Content has "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " bytes."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 4192
    :try_start_b
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 4214
    :goto_5
    :try_start_c
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "\r\n"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/drm/mobile1/DrmRawContent;->getBoundary()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, "--\r\n"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 4215
    .local v20, tail:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v21, v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 4218
    .local v21, tailCount:I
    :try_start_d
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v21

    invoke-virtual {v14, v0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4221
    const-string v23, "DrmHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Tail has "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " bytes"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 4238
    :try_start_e
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->sync()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 4248
    :goto_6
    :try_start_f
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 4258
    :goto_7
    add-int v23, v4, v15

    add-int v5, v23, v21

    .line 4260
    goto/16 :goto_4

    .line 4182
    .end local v20           #tail:Ljava/lang/String;
    .end local v21           #tailCount:I
    .restart local v6       #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v23

    const/16 v19, 0x0

    :try_start_10
    throw v23
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    .line 4268
    .end local v3           #buffer:[B
    .end local v4           #contentOffset:I
    .end local v5           #count:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #endOfContent:I
    .end local v8           #fin_header:Ljava/io/FileInputStream;
    .end local v9           #hasFailed:Z
    .end local v10           #header_buffer:[B
    .end local v11           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v12           #newTempHeader:Ljava/lang/String;
    .end local v13           #newTempHeaderCount:I
    .end local v14           #os:Ljava/io/FileOutputStream;
    .end local v15           #realContentLength:I
    .end local v16           #repeat:I
    .end local v18           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v19           #stream:Ljava/io/InputStream;
    .end local v22           #tempHeader:Ljava/lang/String;
    :catchall_1
    move-exception v23

    :try_start_11
    throw v23
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 4048
    :catchall_2
    move-exception v23

    monitor-exit v24

    throw v23

    .line 4193
    .restart local v3       #buffer:[B
    .restart local v4       #contentOffset:I
    .restart local v5       #count:I
    .restart local v7       #endOfContent:I
    .restart local v8       #fin_header:Ljava/io/FileInputStream;
    .restart local v9       #hasFailed:Z
    .restart local v10       #header_buffer:[B
    .restart local v11       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v12       #newTempHeader:Ljava/lang/String;
    .restart local v13       #newTempHeaderCount:I
    .restart local v14       #os:Ljava/io/FileOutputStream;
    .restart local v15       #realContentLength:I
    .restart local v16       #repeat:I
    .restart local v18       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v19       #stream:Ljava/io/InputStream;
    .restart local v22       #tempHeader:Ljava/lang/String;
    :catch_4
    move-exception v6

    .line 4195
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_12
    const-string v23, "DrmHelper"

    const-string v25, " @@@@@ ERROR: close content stream failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4197
    const-string v23, "DrmHelper"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4198
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 4223
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v20       #tail:Ljava/lang/String;
    .restart local v21       #tailCount:I
    :catch_5
    move-exception v6

    .line 4226
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v23, "DrmHelper"

    const-string v25, "Output tailer failed."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4230
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileDescriptor;->sync()V

    .line 4231
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 4233
    const/4 v5, -0x1

    goto/16 :goto_4

    .line 4239
    .end local v6           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v6

    .line 4241
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v23, "DrmHelper"

    const-string v25, " @@@@@ ERROR: sync Output Read tail failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4243
    const-string v23, "DrmHelper"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4244
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 4249
    .end local v6           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v6

    .line 4251
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v23, "DrmHelper"

    const-string v25, " @@@@@ ERROR: close Output Read tail failed. (saveFileFromBase64)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4253
    const-string v23, "DrmHelper"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    goto :goto_7

    .line 4180
    .end local v20           #tail:Ljava/lang/String;
    .end local v21           #tailCount:I
    :catch_8
    move-exception v23

    goto/16 :goto_3
.end method

.method public static setEnableCombinedDelivery(Z)V
    .locals 2
    .parameter "isEnabled"

    .prologue
    const/4 v1, 0x1

    .line 6862
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/provider/DrmHelper;->DISABLE_COMBINED_DELIVERY:Z

    .line 6863
    sput-boolean v1, Landroid/provider/DrmHelper;->SWITCH_TO_CID:Z

    .line 6864
    return-void

    :cond_0
    move v0, v1

    .line 6862
    goto :goto_0
.end method

.method public static setEnableSeparateDelivery(Z)V
    .locals 2
    .parameter "isEnabled"

    .prologue
    const/4 v1, 0x1

    .line 6869
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/provider/DrmHelper;->DISABLE_SEPARATE_DELIVERY:Z

    .line 6870
    sput-boolean v1, Landroid/provider/DrmHelper;->SWITCH_TO_CID:Z

    .line 6871
    return-void

    :cond_0
    move v0, v1

    .line 6869
    goto :goto_0
.end method

.method private static final updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 7
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    .line 4346
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, v5

    invoke-static/range {v0 .. v6}, Landroid/provider/DrmHelper;->updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public static final updateAudioMetadata(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentValues;
    .locals 29
    .parameter "cx"
    .parameter "file"
    .parameter "mediaType"
    .parameter "mimeType"
    .parameter "uri"
    .parameter "destination"
    .parameter "skipMediaDbUpdate"

    .prologue
    .line 4354
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4355
    .local v3, cr:Landroid/content/ContentResolver;
    new-instance v27, Landroid/content/ContentValues;

    const/4 v4, 0x3

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 4356
    .local v27, values:Landroid/content/ContentValues;
    new-instance v18, Landroid/media/MediaInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/media/MediaInfo;-><init>(Landroid/content/Context;)V

    .line 4357
    .local v18, mediaInfo:Landroid/media/MediaInfo;
    const/16 v19, 0x0

    .line 4358
    .local v19, mediaTag:Landroid/media/MediaInfo$MediaTag;
    const/16 v22, 0x0

    .line 4361
    .local v22, parseFile:Ljava/io/File;
    const/4 v15, 0x0

    .line 4363
    .local v15, extention:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Landroid/media/MediaFile;->getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 4384
    const/4 v4, 0x7

    move/from16 v0, p5

    if-ne v0, v4, :cond_6

    .line 4387
    new-instance v23, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/PHONE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v22           #parseFile:Ljava/io/File;
    .local v23, parseFile:Ljava/io/File;
    move-object/from16 v22, v23

    .line 4403
    .end local v23           #parseFile:Ljava/io/File;
    .restart local v22       #parseFile:Ljava/io/File;
    :goto_0
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create template file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4406
    new-instance v21, Ljava/io/FileOutputStream;

    invoke-direct/range {v21 .. v22}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4407
    .local v21, os:Ljava/io/FileOutputStream;
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4408
    .local v16, fin:Ljava/io/FileInputStream;
    new-instance v11, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->available()I

    move-result v4

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v11, v0, v4, v1}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 4409
    .local v11, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v17

    .line 4410
    .local v17, manager:Landroid/drm/mobile1/DrmRightsManager;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v25

    .line 4411
    .local v25, rights:Landroid/drm/mobile1/DrmRights;
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v26

    .line 4412
    .local v26, stream:Ljava/io/InputStream;
    invoke-virtual {v11}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v20

    .line 4413
    .local v20, method:I
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/provider/DrmHelper;->saveFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)I

    .line 4414
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    .line 4418
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    .line 4419
    if-eqz v26, :cond_0

    .line 4420
    invoke-virtual/range {v26 .. v26}, Ljava/io/InputStream;->close()V

    .line 4422
    :cond_0
    sget-object v4, Landroid/provider/DrmHelper;->CMD_CHMOD:[Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 4423
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    sget-object v5, Landroid/provider/DrmHelper;->CMD_CHMOD:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 4426
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/media/MediaInfo;->parseSingleFile(Ljava/lang/String;)Landroid/media/MediaInfo$MediaTag;

    move-result-object v19

    .line 4427
    if-eqz v19, :cond_1

    .line 4428
    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/media/MediaInfo$MediaTag;->mDrmType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4438
    :cond_1
    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4439
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4440
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4446
    :cond_2
    if-eqz v19, :cond_f

    .line 4449
    sget-object v5, Landroid/provider/DrmStore;->TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 4450
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_9

    .line 4451
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4452
    const-string v4, "_data"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 4453
    .local v24, pathIndex:I
    move/from16 v0, v24

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    .line 4454
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 4455
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    .line 4460
    .end local v24           #pathIndex:I
    :cond_3
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 4467
    :goto_2
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4468
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mAlbum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4469
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mArtist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4470
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mFilename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4471
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mediaTag.mTitle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4475
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    const-string v5, "<unknown>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4476
    const-string/jumbo v4, "title"

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4480
    :cond_4
    sget-object v4, Landroid/provider/DrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    const-string v6, "album=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v7, v8

    const-string v8, "album_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4482
    .local v9, cAlbums:Landroid/database/Cursor;
    if-nez v9, :cond_a

    .line 4484
    const-string v4, "DrmHelper"

    const-string/jumbo v5, "query Albums failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4491
    const/16 v27, 0x0

    .line 4610
    .end local v9           #cAlbums:Landroid/database/Cursor;
    .end local v11           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v16           #fin:Ljava/io/FileInputStream;
    .end local v17           #manager:Landroid/drm/mobile1/DrmRightsManager;
    .end local v20           #method:I
    .end local v21           #os:Ljava/io/FileOutputStream;
    .end local v25           #rights:Landroid/drm/mobile1/DrmRights;
    .end local v26           #stream:Ljava/io/InputStream;
    .end local v27           #values:Landroid/content/ContentValues;
    :cond_5
    :goto_3
    return-object v27

    .line 4392
    .restart local v27       #values:Landroid/content/ContentValues;
    :cond_6
    :try_start_1
    new-instance v23, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.android.providers.drm/rights/DRM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v22           #parseFile:Ljava/io/File;
    .restart local v23       #parseFile:Ljava/io/File;
    move-object/from16 v22, v23

    .end local v23           #parseFile:Ljava/io/File;
    .restart local v22       #parseFile:Ljava/io/File;
    goto/16 :goto_0

    .line 4430
    :catch_0
    move-exception v14

    .line 4432
    .local v14, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse DCF audio. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4434
    const/16 v27, 0x0

    .line 4438
    .end local v27           #values:Landroid/content/ContentValues;
    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4439
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_5

    .line 4440
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4438
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v27       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    if-eqz v22, :cond_7

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4439
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_7

    .line 4440
    const-string v5, "DrmHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4438
    :cond_7
    throw v4

    .line 4458
    .restart local v11       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v16       #fin:Ljava/io/FileInputStream;
    .restart local v17       #manager:Landroid/drm/mobile1/DrmRightsManager;
    .restart local v20       #method:I
    .restart local v21       #os:Ljava/io/FileOutputStream;
    .restart local v25       #rights:Landroid/drm/mobile1/DrmRights;
    .restart local v26       #stream:Ljava/io/InputStream;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    goto/16 :goto_1

    .line 4462
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    goto/16 :goto_2

    .line 4494
    .restart local v9       #cAlbums:Landroid/database/Cursor;
    :cond_a
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cAlbums.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4496
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_b

    .line 4497
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4499
    const-string v4, "DrmHelper"

    const-string v5, "Insert a new album."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4501
    new-instance v13, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v13, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 4502
    .local v13, cv:Landroid/content/ContentValues;
    const-string v4, "album"

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4503
    sget-object v4, Landroid/provider/DrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4504
    sget-object v4, Landroid/provider/DrmStore$Albums;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ALBUMS_PROJECTION:[Ljava/lang/String;

    const-string v6, "album=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v7, v8

    const-string v8, "album_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4506
    if-nez v9, :cond_b

    .line 4508
    const-string v4, "DrmHelper"

    const-string/jumbo v5, "query Albums failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4515
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 4518
    .end local v13           #cv:Landroid/content/ContentValues;
    :cond_b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4519
    const-string v4, "album_id"

    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4521
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert album id is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4523
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4526
    sget-object v4, Landroid/provider/DrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    const-string v6, "artist=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v7, v8

    const-string v8, "artist_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4528
    .local v10, cArtists:Landroid/database/Cursor;
    if-nez v10, :cond_c

    .line 4530
    const-string v4, "DrmHelper"

    const-string/jumbo v5, "query Artists failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4537
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 4540
    :cond_c
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cArtists.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4542
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_d

    .line 4543
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4545
    const-string v4, "DrmHelper"

    const-string v5, "Insert a new artist."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4547
    new-instance v13, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v13, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 4548
    .restart local v13       #cv:Landroid/content/ContentValues;
    const-string v4, "artist"

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4549
    sget-object v4, Landroid/provider/DrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4550
    sget-object v4, Landroid/provider/DrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/DrmStore;->ARTISTS_PROJECTION:[Ljava/lang/String;

    const-string v6, "artist=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v7, v8

    const-string v8, "artist_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4552
    if-nez v10, :cond_d

    .line 4554
    const-string v4, "DrmHelper"

    const-string/jumbo v5, "query Artists failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4558
    .end local v13           #cv:Landroid/content/ContentValues;
    :cond_d
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4559
    const-string v4, "artist_id"

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4561
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert artist id is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4563
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4565
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    if-nez v4, :cond_e

    .line 4566
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/media/MediaInfo$MediaTag;->mMimeType:Ljava/lang/String;

    .line 4572
    :cond_e
    if-nez p6, :cond_5

    .line 4574
    :try_start_3
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaInfo;->updateDRMAudio(Landroid/media/MediaInfo$MediaTag;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_5

    .line 4576
    const-string v4, "DrmHelper"

    const-string v5, "Update DRM content to MediaProvider failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 4583
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 4585
    :catch_1
    move-exception v14

    .line 4587
    .restart local v14       #e:Ljava/lang/Exception;
    const-string v4, "DrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update DRM content to MediaProvider Exceptoin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4594
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 4600
    .end local v9           #cAlbums:Landroid/database/Cursor;
    .end local v10           #cArtists:Landroid/database/Cursor;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v14           #e:Ljava/lang/Exception;
    :cond_f
    const-string v4, "DrmHelper"

    const-string v5, "Parse mediaTag return null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
