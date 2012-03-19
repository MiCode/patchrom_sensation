.class public Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableByteArray;
.super Ljava/lang/Object;
.source "JSONCloudRequest.java"

# interfaces
.implements Lcom/htc/cscore/restapi/request/JSONCloudRequest$ReadStreamable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/request/JSONCloudRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamableByteArray"
.end annotation


# instance fields
.field public _m:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 197
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableByteArray;->_m:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public readFrom(Ljava/io/InputStream;)V
    .locals 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 214
    .local v0, buf:[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, ret:I
    if-lez v1, :cond_0

    .line 216
    iget-object v2, p0, Lcom/htc/cscore/restapi/request/JSONCloudRequest$StreamableByteArray;->_m:Ljava/io/ByteArrayOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 220
    return-void
.end method
