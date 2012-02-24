.class Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;
.super Landroid/os/MemoryFile;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/pdu/PduComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PduMemoryFile"
.end annotation


# instance fields
.field public mPosition:I

.field public mSize:I

.field final synthetic this$0:Lcom/google/android/mms/pdu/PduComposer;


# direct methods
.method public constructor <init>(Lcom/google/android/mms/pdu/PduComposer;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    .line 97
    invoke-direct {p0, p2, p3}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    .line 99
    iput p3, p0, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mSize:I

    .line 100
    return-void
.end method


# virtual methods
.method public toByteArray()[B
    .locals 5

    .prologue
    .line 125
    iget v2, p0, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    new-array v0, v2, [B

    .line 127
    .local v0, buf:[B
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget v4, p0, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->readBytes([BIII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0           #buf:[B
    :goto_0
    return-object v0

    .line 128
    .restart local v0       #buf:[B
    :catch_0
    move-exception v1

    .line 129
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 130
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public write(I)V
    .locals 5
    .parameter "oneByte"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 113
    new-array v0, v2, [B

    .line 114
    .local v0, buf:[B
    int-to-byte v2, p1

    aput-byte v2, v0, v3

    .line 116
    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->writeBytes([BIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    iget v2, p0, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    .line 122
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 104
    :try_start_0
    iget v1, p0, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->writeBytes([BIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    iget v1, p0, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    .line 110
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
