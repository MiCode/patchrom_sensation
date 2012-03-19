.class final Lcom/htc/server/ulog/StatLogStore;
.super Ljava/lang/Object;
.source "StatLogStore.java"


# static fields
.field private static final STATS_STRING_LIMIT:I = 0x200

.field private static final TAG:Ljava/lang/String; = "UserBehaviorLoggingService"


# instance fields
.field private dropboxManager:Landroid/os/DropBoxManager;

.field private mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

.field private mFeedbackPolicy:Lcom/htc/utils/ulog/UPolicy;

.field private mIsStopped:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/server/ulog/DatabaseHelper;)V
    .locals 2
    .parameter "ctx"
    .parameter "dbHelper"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/htc/server/ulog/StatLogStore;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/htc/server/ulog/StatLogStore;->mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

    .line 59
    iget-object v0, p0, Lcom/htc/server/ulog/StatLogStore;->mContext:Landroid/content/Context;

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Lcom/htc/server/ulog/StatLogStore;->dropboxManager:Landroid/os/DropBoxManager;

    .line 60
    new-instance v0, Lcom/htc/utils/ulog/UPolicy;

    const-string v1, "com.htc.feedback"

    invoke-direct {v0, v1}, Lcom/htc/utils/ulog/UPolicy;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/ulog/StatLogStore;->mFeedbackPolicy:Lcom/htc/utils/ulog/UPolicy;

    .line 61
    return-void
.end method

.method private ConvertString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "str"

    .prologue
    .line 195
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x200

    if-ge v5, v6, :cond_2

    .line 196
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v1, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 197
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Landroid/util/Base64OutputStream;

    const/16 v5, 0x10

    invoke-direct {v0, v1, v5}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 198
    .local v0, b64os:Landroid/util/Base64OutputStream;
    const/4 v4, 0x0

    .line 200
    .local v4, os:Ljava/io/OutputStream;
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    sget-object v7, Lcom/htc/server/ulog/Utils;->SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter;

    invoke-static {v0, v5, v6, v7}, Lcom/htc/server/ulog/MyLogStream;->concatenateOutputStream(Ljava/io/OutputStream;ZZLcom/htc/utils/ulog/io/LogStream$SeedGetter;)Ljava/io/OutputStream;

    move-result-object v4

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 208
    if-eqz v4, :cond_0

    .line 209
    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 213
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 214
    .local v2, bytes:[B
    if-eqz v2, :cond_3

    array-length v5, v2

    if-lez v5, :cond_3

    .line 215
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    .line 220
    .end local v0           #b64os:Landroid/util/Base64OutputStream;
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bytes:[B
    .end local v4           #os:Ljava/io/OutputStream;
    :goto_1
    return-object v5

    .line 202
    .restart local v0       #b64os:Landroid/util/Base64OutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .line 203
    .local v3, e:Ljava/security/GeneralSecurityException;
    :try_start_2
    invoke-virtual {v3}, Ljava/security/GeneralSecurityException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    if-eqz v4, :cond_0

    .line 209
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 210
    :catch_1
    move-exception v3

    .local v3, e:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 204
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 205
    .restart local v3       #e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 208
    if-eqz v4, :cond_0

    .line 209
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 210
    :catch_3
    move-exception v3

    goto :goto_2

    .line 207
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 208
    if-eqz v4, :cond_1

    .line 209
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 207
    :cond_1
    :goto_3
    throw v5

    .line 218
    .end local v0           #b64os:Landroid/util/Base64OutputStream;
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #os:Ljava/io/OutputStream;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ConvertString] str: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;)V

    .line 220
    :cond_3
    const-string v5, ""

    goto :goto_1

    .line 210
    .restart local v0       #b64os:Landroid/util/Base64OutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    :catch_4
    move-exception v3

    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v3           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    goto :goto_2
.end method

.method private RevertString(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "str"

    .prologue
    .line 229
    const/4 v8, 0x0

    .line 230
    .local v8, retStr:Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x400

    if-ge v10, v11, :cond_1

    .line 231
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 232
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    new-instance v0, Landroid/util/Base64InputStream;

    const/16 v10, 0x10

    invoke-direct {v0, v1, v10}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 233
    .local v0, b64is:Landroid/util/Base64InputStream;
    const/4 v6, 0x0

    .line 234
    .local v6, is:Ljava/io/InputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-direct {v2, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 236
    .local v2, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v10, Lcom/htc/server/ulog/Utils;->SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter;

    invoke-static {v0, v10}, Lcom/htc/server/ulog/MyLogStream;->concatenateInputStream(Ljava/io/InputStream;Lcom/htc/utils/ulog/io/LogStream$SeedGetter;)Ljava/io/InputStream;

    move-result-object v6

    .line 237
    if-eqz v6, :cond_2

    .line 238
    const/4 v7, 0x0

    .line 239
    .local v7, read:I
    const/16 v10, 0x14

    new-array v3, v10, [B

    .line 240
    .local v3, buf:[B
    :goto_0
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v10, -0x1

    if-eq v7, v10, :cond_2

    .line 241
    const/4 v10, 0x0

    invoke-virtual {v2, v3, v10, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 248
    .end local v3           #buf:[B
    .end local v7           #read:I
    :catch_0
    move-exception v5

    .line 249
    .local v5, e:Ljava/security/GeneralSecurityException;
    :try_start_1
    invoke-virtual {v5}, Ljava/security/GeneralSecurityException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    if-eqz v6, :cond_0

    .line 255
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 256
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 260
    .end local v0           #b64is:Landroid/util/Base64InputStream;
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #e:Ljava/security/GeneralSecurityException;
    .end local v6           #is:Ljava/io/InputStream;
    :cond_1
    :goto_1
    return-object v8

    .line 244
    .restart local v0       #b64is:Landroid/util/Base64InputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 245
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 246
    .local v4, bytes:[B
    if-eqz v4, :cond_3

    array-length v10, v4

    if-lez v10, :cond_3

    .line 247
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v8           #retStr:Ljava/lang/String;
    .local v9, retStr:Ljava/lang/String;
    move-object v8, v9

    .line 254
    .end local v9           #retStr:Ljava/lang/String;
    .restart local v8       #retStr:Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 255
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 256
    :cond_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 257
    :catch_1
    move-exception v5

    .end local v4           #bytes:[B
    .local v5, e:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 250
    .end local v5           #e:Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 251
    .restart local v5       #e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 254
    if-eqz v6, :cond_5

    .line 255
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 256
    :cond_5
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 257
    :catch_3
    move-exception v5

    goto :goto_2

    .line 253
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 254
    if-eqz v6, :cond_6

    .line 255
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 256
    :cond_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 253
    :goto_3
    throw v10

    .line 257
    :catch_4
    move-exception v5

    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v5           #e:Ljava/io/IOException;
    .restart local v4       #bytes:[B
    :catch_5
    move-exception v5

    goto :goto_2

    .end local v4           #bytes:[B
    .restart local v5       #e:Ljava/io/IOException;
    :catch_6
    move-exception v5

    goto :goto_2

    .local v5, e:Ljava/security/GeneralSecurityException;
    :catch_7
    move-exception v5

    goto :goto_2
.end method

.method private clear()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method


# virtual methods
.method public addLog(Lcom/htc/utils/ulog/ParcelableULogStat;)V
    .locals 1
    .parameter "ulogstat"

    .prologue
    .line 65
    const-string v0, "[addLog] This function didn\'t be enabled"

    invoke-static {v0}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/server/ulog/StatLogStore;->mIsStopped:Z

    .line 187
    return-void
.end method

.method public writeULogStat2DropBox4CS()V
    .locals 1

    .prologue
    .line 91
    const-string v0, "[writeULogStat2DropBox4CS] This function didn\'t be enabled"

    invoke-static {v0}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;)V

    .line 92
    return-void
.end method
