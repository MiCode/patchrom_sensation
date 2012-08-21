.class public Lcom/broadcom/bt/service/bpp/DpofOptions;
.super Ljava/lang/Object;
.source "DpofOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/bpp/DpofOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public CharacterStamp:Z

.field public IndexPrint:Z

.field public MultipleImagePrint:Z

.field public NumberOfSets:B

.field public SpecificSize:Z

.field public StandardPrint:Z

.field public Trimming:Z

.field private boolArray:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/broadcom/bt/service/bpp/DpofOptions$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/DpofOptions$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/DpofOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    .line 102
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/DpofOptions;->readFromParcel(Landroid/os/Parcel;)V

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/bpp/DpofOptions$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/DpofOptions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(ZZZZBZZ)V
    .locals 1
    .parameter "standardPrint"
    .parameter "indexPrint"
    .parameter "multipleImagePrint"
    .parameter "specificSize"
    .parameter "numberOfSets"
    .parameter "characterStamp"
    .parameter "trimming"

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    .line 87
    iput-boolean p1, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->StandardPrint:Z

    .line 88
    iput-boolean p2, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->IndexPrint:Z

    .line 89
    iput-boolean p3, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->MultipleImagePrint:Z

    .line 90
    iput-boolean p4, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->SpecificSize:Z

    .line 91
    iput-byte p5, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->NumberOfSets:B

    .line 92
    iput-boolean p6, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->CharacterStamp:Z

    .line 93
    iput-boolean p7, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->Trimming:Z

    .line 94
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 127
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->StandardPrint:Z

    .line 128
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->IndexPrint:Z

    .line 129
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->MultipleImagePrint:Z

    .line 130
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->SpecificSize:Z

    .line 131
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->SpecificSize:Z

    .line 132
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->Trimming:Z

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->NumberOfSets:B

    .line 134
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->StandardPrint:Z

    aput-boolean v2, v0, v1

    .line 111
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->IndexPrint:Z

    aput-boolean v2, v0, v1

    .line 112
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->MultipleImagePrint:Z

    aput-boolean v2, v0, v1

    .line 113
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->SpecificSize:Z

    aput-boolean v2, v0, v1

    .line 114
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->CharacterStamp:Z

    aput-boolean v2, v0, v1

    .line 115
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->Trimming:Z

    aput-boolean v2, v0, v1

    .line 116
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->boolArray:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 117
    iget-byte v0, p0, Lcom/broadcom/bt/service/bpp/DpofOptions;->NumberOfSets:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 118
    return-void
.end method
