.class public final Lcom/htc/utils/ulog/io/LogStream;
.super Ljava/lang/Object;
.source "LogStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/utils/ulog/io/LogStream$CipherStream;,
        Lcom/htc/utils/ulog/io/LogStream$SeedGetter;
    }
.end annotation


# static fields
.field private static final ENTITY_BUFFER_SIZE:I = 0x1000

.field private static final HEAD_BUFFER_SIZE:I = 0x14

.field private static final SIG0:I = 0x6716e3aa

.field private static final SIG1:I = 0x11d74057

.field private static final SIG2:I = -0x7d594989

.field private static final SIG3:I = -0x3c46f836

.field private static final TAG:Ljava/lang/String; = "LogStream"

.field private static final VERSION:I = 0x1

.field private static final ZIP_FILE_ENTITY:Ljava/lang/String; = "file_entity"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concatenateInputStream(Ljava/io/InputStream;Lcom/htc/utils/ulog/io/LogStream$SeedGetter;)Ljava/io/InputStream;
    .locals 13
    .parameter "in"
    .parameter "getter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    if-nez p0, :cond_1

    .line 105
    const/4 v4, 0x0

    .line 150
    :cond_0
    :goto_0
    return-object v4

    .line 107
    :cond_1
    const/4 v4, 0x0

    .line 109
    .local v4, lastIS:Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v10, 0x14

    invoke-direct {v0, p0, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 110
    .local v0, bis:Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 111
    .local v2, headDis:Ljava/io/DataInputStream;
    invoke-static {v2}, Lcom/htc/utils/ulog/io/LogStream;->isLogStreamInternal(Ljava/io/DataInputStream;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 112
    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v7

    .line 113
    .local v7, version:I
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    .line 114
    .local v3, isEncrypted:Z
    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v5

    .line 115
    .local v5, reserved1:I
    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v6

    .line 119
    .local v6, reserved2:I
    const/4 v2, 0x0

    .line 122
    const/4 v10, 0x1

    if-ne v7, v10, :cond_6

    .line 123
    new-instance v0, Ljava/io/BufferedInputStream;

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    const/16 v10, 0x1000

    invoke-direct {v0, p0, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 124
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 125
    .local v1, cis:Ljava/io/InputStream;
    if-eqz v3, :cond_5

    .line 126
    if-eqz p1, :cond_4

    .line 127
    invoke-interface {p1}, Lcom/htc/utils/ulog/io/LogStream$SeedGetter;->get()[B

    move-result-object v10

    invoke-static {v0, v10}, Lcom/htc/utils/ulog/io/LogStream$CipherStream;->getCipherInputStream(Ljava/io/InputStream;[B)Ljavax/crypto/CipherInputStream;

    move-result-object v1

    .line 133
    :goto_1
    if-eqz v1, :cond_3

    .line 134
    new-instance v9, Lcom/htc/utils/ulog/io/SafeZipInputStream;

    invoke-direct {v9, v1}, Lcom/htc/utils/ulog/io/SafeZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 135
    .local v9, zis:Lcom/htc/utils/ulog/io/SafeZipInputStream;
    const/4 v8, 0x0

    .line 136
    .local v8, zEntry:Ljava/util/zip/ZipEntry;
    :cond_2
    invoke-virtual {v9}, Lcom/htc/utils/ulog/io/SafeZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 137
    const-string v10, "file_entity"

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 138
    move-object v4, v9

    .line 143
    .end local v8           #zEntry:Ljava/util/zip/ZipEntry;
    .end local v9           #zis:Lcom/htc/utils/ulog/io/SafeZipInputStream;
    :cond_3
    if-nez v4, :cond_0

    .line 144
    const-string v10, "LogStream"

    const-string v11, "InputStream is null ???"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :cond_4
    const-string v10, "LogStream"

    const-string v11, "[concatenateInputStream] SeedGetter is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 131
    :cond_5
    move-object v1, v0

    goto :goto_1

    .line 147
    .end local v1           #cis:Ljava/io/InputStream;
    :cond_6
    const-string v10, "LogStream"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wrong file version: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isEncrypted:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static concatenateOutputStream(Ljava/io/OutputStream;ZLcom/htc/utils/ulog/io/LogStream$SeedGetter;)Ljava/io/OutputStream;
    .locals 9
    .parameter "out"
    .parameter "doEncryption"
    .parameter "getter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 64
    if-nez p0, :cond_1

    .line 65
    const/4 v3, 0x0

    .line 94
    :cond_0
    :goto_0
    return-object v3

    .line 67
    :cond_1
    const/4 v3, 0x0

    .line 68
    .local v3, lastOS:Ljava/io/OutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/16 v6, 0x14

    invoke-direct {v0, p0, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 69
    .local v0, bos:Ljava/io/BufferedOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 70
    .local v2, headDos:Ljava/io/DataOutputStream;
    invoke-static {v2}, Lcom/htc/utils/ulog/io/LogStream;->writeLogStreamSignature(Ljava/io/DataOutputStream;)V

    .line 71
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 72
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 73
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 74
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 75
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 76
    const/4 v2, 0x0

    .line 78
    new-instance v0, Ljava/io/BufferedOutputStream;

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    const/16 v6, 0x1000

    invoke-direct {v0, p0, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 81
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    const/4 v1, 0x0

    .line 82
    .local v1, cos:Ljava/io/OutputStream;
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 83
    invoke-interface {p2}, Lcom/htc/utils/ulog/io/LogStream$SeedGetter;->get()[B

    move-result-object v6

    invoke-static {v0, v6}, Lcom/htc/utils/ulog/io/LogStream$CipherStream;->getCipherOutputStream(Ljava/io/OutputStream;[B)Ljavax/crypto/CipherOutputStream;

    move-result-object v1

    .line 87
    :goto_1
    if-eqz v1, :cond_0

    .line 88
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v5, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 89
    .local v5, zos:Ljava/util/zip/ZipOutputStream;
    new-instance v4, Ljava/util/zip/ZipEntry;

    const-string v6, "file_entity"

    invoke-direct {v4, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 90
    .local v4, zentry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v5, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 91
    move-object v3, v5

    goto :goto_0

    .line 85
    .end local v4           #zentry:Ljava/util/zip/ZipEntry;
    .end local v5           #zos:Ljava/util/zip/ZipOutputStream;
    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method public static isLogStream(Ljava/io/InputStream;)Z
    .locals 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    if-eqz p0, :cond_0

    .line 161
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v2, 0x14

    invoke-direct {v0, p0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 162
    .local v0, bis:Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 163
    .local v1, dis:Ljava/io/DataInputStream;
    invoke-static {v1}, Lcom/htc/utils/ulog/io/LogStream;->isLogStreamInternal(Ljava/io/DataInputStream;)Z

    move-result v2

    .line 165
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #dis:Ljava/io/DataInputStream;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isLogStreamInternal(Ljava/io/DataInputStream;)Z
    .locals 5
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    const/4 v0, 0x0

    .local v0, sig0:I
    const/4 v1, 0x0

    .local v1, sig1:I
    const/4 v2, 0x0

    .local v2, sig2:I
    const/4 v3, 0x0

    .line 177
    .local v3, sig3:I
    if-eqz p0, :cond_0

    .line 178
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 179
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 180
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 181
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 184
    :cond_0
    const v4, 0x6716e3aa

    if-ne v0, v4, :cond_1

    const v4, 0x11d74057

    if-ne v1, v4, :cond_1

    const v4, -0x7d594989

    if-ne v2, v4, :cond_1

    const v4, -0x3c46f836

    if-ne v3, v4, :cond_1

    .line 185
    const/4 v4, 0x1

    .line 187
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static writeLogStreamSignature(Ljava/io/DataOutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    const v0, 0x6716e3aa

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 170
    const v0, 0x11d74057

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 171
    const v0, -0x7d594989

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 172
    const v0, -0x3c46f836

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 173
    return-void
.end method
