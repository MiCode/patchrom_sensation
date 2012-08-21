.class public Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;
.super Ljava/lang/Object;
.source "BipAttachmentFormat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BIP_CHAR_SET_SIZE:I = 0x40

.field public static final BIP_TYPE_SIZE:I = 0x40


# instance fields
.field public AttachmentFormatCharSet:[B

.field public AttachmentFormatType:[B

.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat$1;-><init>(Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat$1;-><init>(Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 77
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;->readFromParcel(Landroid/os/Parcel;)V

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/bpp/BipAttachmentFormat$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 1
    .parameter "attachmentFormatType"
    .parameter "attachmentFormatCharSet"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat$1;-><init>(Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 67
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;->AttachmentFormatType:[B

    .line 68
    iput-object p2, p0, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;->AttachmentFormatCharSet:[B

    .line 69
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;->AttachmentFormatType:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 97
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;->AttachmentFormatCharSet:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 98
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;->AttachmentFormatType:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 87
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipAttachmentFormat;->AttachmentFormatCharSet:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 88
    return-void
.end method
