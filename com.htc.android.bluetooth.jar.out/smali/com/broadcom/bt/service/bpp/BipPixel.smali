.class public Lcom/broadcom/bt/service/bpp/BipPixel;
.super Ljava/lang/Object;
.source "BipPixel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/bpp/BipPixel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Height:I

.field public Height2:I

.field public Width:I

.field public Width2:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/broadcom/bt/service/bpp/BipPixel$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/BipPixel$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/BipPixel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "width2"
    .parameter "height2"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Width:I

    .line 73
    iput p2, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Height:I

    .line 74
    iput p3, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Width2:I

    .line 75
    iput p4, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Height2:I

    .line 76
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/BipPixel;->readFromParcel(Landroid/os/Parcel;)V

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/bpp/BipPixel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BipPixel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Width:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Height:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Width2:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Height2:I

    .line 109
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 93
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Width2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BipPixel;->Height2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    return-void
.end method
