.class public Lcom/android/server/pm/Installer;
.super Ljava/lang/Object;
.source "Installer.java"


# static fields
.field private static final LOCAL_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Installer"


# instance fields
.field buf:[B

.field buflen:I

.field mIn:Ljava/io/InputStream;

.field private mKeyStore:Landroid/security/KeyStore;

.field mOut:Ljava/io/OutputStream;

.field mSocket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/pm/Installer;->buf:[B

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/Installer;->buflen:I

    .line 56
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method

.method private connect()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 60
    iget-object v3, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_0

    .line 78
    :goto_0
    return v2

    .line 63
    :cond_0
    const-string v3, "Installer"

    const-string v4, "connecting..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    .line 67
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v3, "installd"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 70
    .local v0, address:Landroid/net/LocalSocketAddress;
    iget-object v3, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 72
    iget-object v3, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/Installer;->mIn:Ljava/io/InputStream;

    .line 73
    iget-object v3, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    :catch_0
    move-exception v1

    .line 75
    .local v1, ex:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->disconnect()V

    .line 76
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private deleteKey(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete_key"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    const-string v0, "Installer"

    const-string v1, "disconnecting..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 89
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 98
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    .line 99
    iput-object v2, p0, Lcom/android/server/pm/Installer;->mIn:Ljava/io/InputStream;

    .line 100
    iput-object v2, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;

    .line 101
    return-void

    .line 96
    :catch_0
    move-exception v0

    goto :goto_2

    .line 91
    :catch_1
    move-exception v0

    goto :goto_1

    .line 86
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private execute(Ljava/lang/String;)I
    .locals 3
    .parameter "cmd"

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/pm/Installer;->transaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, res:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 203
    :goto_0
    return v2

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, ex:Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getEncryptionKey()[B
    .locals 5

    .prologue
    .line 490
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 491
    .local v3, srng:Ljava/security/SecureRandom;
    const/16 v4, 0x48

    new-array v2, v4, [B

    .line 492
    .local v2, retKey:[B
    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 493
    invoke-static {v2}, Landroid/security/SystemKeyStore;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, encKey:Ljava/lang/String;
    :try_start_0
    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 498
    :goto_0
    return-object v4

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private readBytes([BI)Z
    .locals 7
    .parameter "buffer"
    .parameter "len"

    .prologue
    const/4 v3, 0x0

    .line 104
    const/4 v2, 0x0

    .line 105
    .local v2, off:I
    if-gez p2, :cond_1

    .line 126
    :goto_0
    return v3

    .line 114
    .local v0, count:I
    :cond_0
    add-int/2addr v2, v0

    .line 107
    .end local v0           #count:I
    :cond_1
    if-eq v2, p2, :cond_2

    .line 109
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/Installer;->mIn:Ljava/io/InputStream;

    sub-int v5, p2, v2

    invoke-virtual {v4, p1, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 110
    .restart local v0       #count:I
    if-gtz v0, :cond_0

    .line 111
    const-string v4, "Installer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0           #count:I
    :cond_2
    :goto_1
    if-ne v2, p2, :cond_3

    .line 124
    const/4 v3, 0x1

    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, ex:Ljava/io/IOException;
    const-string v4, "Installer"

    const-string v5, "read exception"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 125
    .end local v1           #ex:Ljava/io/IOException;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->disconnect()V

    goto :goto_0
.end method

.method private readReply()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 131
    iput v1, p0, Lcom/android/server/pm/Installer;->buflen:I

    .line 132
    iget-object v3, p0, Lcom/android/server/pm/Installer;->buf:[B

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/android/server/pm/Installer;->readBytes([BI)Z

    move-result v3

    if-nez v3, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v1

    .line 134
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/Installer;->buf:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/android/server/pm/Installer;->buf:[B

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int v0, v3, v4

    .line 135
    .local v0, len:I
    if-lt v0, v2, :cond_2

    const/16 v3, 0x400

    if-le v0, v3, :cond_3

    .line 136
    :cond_2
    const-string v2, "Installer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid reply length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->disconnect()V

    goto :goto_0

    .line 140
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/Installer;->buf:[B

    invoke-direct {p0, v3, v0}, Lcom/android/server/pm/Installer;->readBytes([BI)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    iput v0, p0, Lcom/android/server/pm/Installer;->buflen:I

    move v1, v2

    .line 143
    goto :goto_0
.end method

.method private declared-synchronized transaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "cmd"

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->connect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    const-string v1, "Installer"

    const-string v2, "connection failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v0, "-1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :goto_0
    monitor-exit p0

    return-object v0

    .line 170
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/Installer;->writeCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 176
    const-string v1, "Installer"

    const-string v2, "write command failed? reconnect!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->connect()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/pm/Installer;->writeCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 178
    :cond_1
    const-string v0, "-1"

    goto :goto_0

    .line 184
    :cond_2
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->readReply()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/Installer;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/pm/Installer;->buflen:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 189
    .local v0, s:Ljava/lang/String;
    goto :goto_0

    .line 194
    .end local v0           #s:Ljava/lang/String;
    :cond_3
    const-string v0, "-1"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private writeCommand(Ljava/lang/String;)Z
    .locals 9
    .parameter "_cmd"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 148
    .local v0, cmd:[B
    array-length v2, v0

    .line 149
    .local v2, len:I
    if-lt v2, v3, :cond_0

    const/16 v5, 0x400

    if-le v2, v5, :cond_1

    :cond_0
    move v3, v4

    .line 161
    :goto_0
    return v3

    .line 151
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/Installer;->buf:[B

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 152
    iget-object v5, p0, Lcom/android/server/pm/Installer;->buf:[B

    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 154
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/android/server/pm/Installer;->buf:[B

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 155
    iget-object v5, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "Installer"

    const-string v5, "write error"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->disconnect()V

    move v3, v4

    .line 159
    goto :goto_0
.end method


# virtual methods
.method public chown(Ljava/lang/String;IIII)I
    .locals 3
    .parameter "name"
    .parameter "org_uid"
    .parameter "org_gid"
    .parameter "uid"
    .parameter "gid"

    .prologue
    const/16 v2, 0x20

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chown"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public clearUserData(Ljava/lang/String;I)I
    .locals 3
    .parameter "name"
    .parameter "userId"

    .prologue
    const/16 v2, 0x20

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmuserdata"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public createUserData(Ljava/lang/String;II)I
    .locals 3
    .parameter "name"
    .parameter "uid"
    .parameter "userId"

    .prologue
    const/16 v2, 0x20

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mkuserdata"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public decrypt(Ljava/lang/String;)I
    .locals 6
    .parameter "pkgName"

    .prologue
    const/16 v4, 0x20

    .line 413
    iget-object v3, p0, Lcom/android/server/pm/Installer;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3, p1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v1

    .line 414
    .local v1, key:[B
    if-nez v1, :cond_0

    .line 415
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->getEncryptionKey()[B

    move-result-object v1

    .line 416
    iget-object v3, p0, Lcom/android/server/pm/Installer;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3, p1, v1}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 417
    const-string v3, "Installer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to save encryption key for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v2, -0x1

    .line 429
    :goto_0
    return v2

    .line 422
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "decrypt"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v2

    .line 429
    .local v2, rc:I
    goto :goto_0
.end method

.method public deleteCacheFiles(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmcache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public dexopt(Ljava/lang/String;IZ)I
    .locals 3
    .parameter "apkPath"
    .parameter "uid"
    .parameter "isPublic"

    .prologue
    const/16 v2, 0x20

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dexopt"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    if-eqz p3, :cond_0

    const-string v1, " 1"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 224
    :cond_0
    const-string v1, " 0"

    goto :goto_0
.end method

.method public freeCache(J)I
    .locals 2
    .parameter "freeStorageSize"

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "freecache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getSizeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageStats;)I
    .locals 7
    .parameter "pkgName"
    .parameter "apkPath"
    .parameter "fwdLockApkPath"
    .parameter "asecPath"
    .parameter "pStats"

    .prologue
    const/4 v4, -0x1

    const/16 v6, 0x20

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "getsize"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    if-eqz p3, :cond_1

    .end local p3
    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    if-eqz p4, :cond_2

    .end local p4
    :goto_1
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/pm/Installer;->transaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, s:Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, res:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v5, v2

    const/4 v6, 0x5

    if-eq v5, v6, :cond_3

    .line 350
    :cond_0
    :goto_2
    return v4

    .line 333
    .end local v2           #res:[Ljava/lang/String;
    .end local v3           #s:Ljava/lang/String;
    .restart local p3
    .restart local p4
    :cond_1
    const-string p3, "!"

    goto :goto_0

    .line 335
    .end local p3
    :cond_2
    const-string p4, "!"

    goto :goto_1

    .line 344
    .end local p4
    .restart local v2       #res:[Ljava/lang/String;
    .restart local v3       #s:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p5, Landroid/content/pm/PackageStats;->codeSize:J

    .line 345
    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p5, Landroid/content/pm/PackageStats;->dataSize:J

    .line 346
    const/4 v5, 0x3

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p5, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 347
    const/4 v5, 0x4

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p5, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 348
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_2

    .line 349
    :catch_0
    move-exception v1

    .line 350
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_2
.end method

.method public install(Ljava/lang/String;II)I
    .locals 3
    .parameter "name"
    .parameter "uid"
    .parameter "gid"

    .prologue
    const/16 v2, 0x20

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "install"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "dataPath"
    .parameter "nativeLibPath"

    .prologue
    const/4 v1, -0x1

    .line 359
    if-nez p1, :cond_0

    .line 360
    const-string v2, "Installer"

    const-string v3, "unlinkNativeLibraryDirectory dataPath is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_0
    return v1

    .line 362
    :cond_0
    if-nez p2, :cond_1

    .line 363
    const-string v2, "Installer"

    const-string v3, "unlinkNativeLibraryDirectory nativeLibPath is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "linklib "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public moveFiles()I
    .locals 1

    .prologue
    .line 355
    const-string v0, "movefiles"

    invoke-direct {p0, v0}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public movedex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "srcPath"
    .parameter "dstPath"

    .prologue
    const/16 v2, 0x20

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movedex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public overlayTmpfs(Ljava/lang/String;II)I
    .locals 3
    .parameter "name"
    .parameter "uid"
    .parameter "gid"

    .prologue
    const/16 v2, 0x20

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tmpfs"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public ping()Z
    .locals 1

    .prologue
    .line 297
    const-string v0, "ping"

    invoke-direct {p0, v0}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;I)I
    .locals 3
    .parameter "name"
    .parameter "userId"

    .prologue
    const/16 v2, 0x20

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public removeUserDataDirs(I)I
    .locals 2
    .parameter "userId"

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmuser"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "oldname"
    .parameter "newname"

    .prologue
    const/16 v2, 0x20

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rename"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public rmdex(Ljava/lang/String;)I
    .locals 2
    .parameter "codePath"

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmdex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setForwardLockPerm(Ljava/lang/String;I)I
    .locals 3
    .parameter "packagePathSuffix"
    .parameter "gid"

    .prologue
    const/16 v2, 0x20

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "protect"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public unEncryptData(Ljava/lang/String;II)I
    .locals 5
    .parameter "pkgName"
    .parameter "uid"
    .parameter "gid"

    .prologue
    const/16 v3, 0x20

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "encrypt_disable"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    .line 471
    .local v1, rc:I
    if-nez v1, :cond_0

    .line 472
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/Installer;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3, p1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, v2}, Lcom/android/server/pm/Installer;->deleteKey(Ljava/lang/String;)I

    .line 473
    iget-object v2, p0, Lcom/android/server/pm/Installer;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 475
    :cond_0
    return v1
.end method

.method public unlinkNativeLibraryDirectory(Ljava/lang/String;)I
    .locals 3
    .parameter "dataPath"

    .prologue
    .line 376
    if-nez p1, :cond_0

    .line 377
    const-string v1, "Installer"

    const-string v2, "unlinkNativeLibraryDirectory dataPath is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v1, -0x1

    .line 384
    :goto_0
    return v1

    .line 381
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unlinklib "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method
