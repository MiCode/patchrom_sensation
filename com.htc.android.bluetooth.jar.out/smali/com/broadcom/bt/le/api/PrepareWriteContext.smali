.class public Lcom/broadcom/bt/le/api/PrepareWriteContext;
.super Ljava/lang/Object;
.source "PrepareWriteContext.java"


# instance fields
.field public mData:[B

.field public mHandle:I

.field public mOffset:I


# direct methods
.method public constructor <init>(I[BI)V
    .locals 2
    .parameter "offset"
    .parameter "data"
    .parameter "handle"

    .prologue
    const/4 v1, -0x1

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lcom/broadcom/bt/le/api/PrepareWriteContext;->mOffset:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/le/api/PrepareWriteContext;->mData:[B

    .line 26
    iput v1, p0, Lcom/broadcom/bt/le/api/PrepareWriteContext;->mHandle:I

    .line 29
    iput p1, p0, Lcom/broadcom/bt/le/api/PrepareWriteContext;->mOffset:I

    .line 30
    iput-object p2, p0, Lcom/broadcom/bt/le/api/PrepareWriteContext;->mData:[B

    .line 31
    iput p3, p0, Lcom/broadcom/bt/le/api/PrepareWriteContext;->mHandle:I

    .line 32
    return-void
.end method
