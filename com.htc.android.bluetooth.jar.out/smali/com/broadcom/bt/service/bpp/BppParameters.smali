.class public Lcom/broadcom/bt/service/bpp/BppParameters;
.super Ljava/lang/Object;
.source "BppParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/bpp/BppParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Copies:I

.field public DocMimeType:Ljava/lang/String;

.field public MediaSize:Ljava/lang/String;

.field public MediaType:I

.field public Orientation:I

.field public PageSides:I

.field public PagesPerSide:I

.field public Quality:I

.field public UsePreciseJob:Z

.field public UseRefChannel:Z

.field private boolArray:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/broadcom/bt/service/bpp/BppParameters$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/BppParameters$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/BppParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;ILjava/lang/String;IIIZZ)V
    .locals 0
    .parameter "copies"
    .parameter "pagesPerSide"
    .parameter "mediaSize"
    .parameter "mediaType"
    .parameter "docMimeType"
    .parameter "orientation"
    .parameter "pageSides"
    .parameter "quality"
    .parameter "useRefChannel"
    .parameter "usePreciseJob"

    .prologue
    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->Copies:I

    .line 100
    iput p2, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->PagesPerSide:I

    .line 101
    iput-object p3, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->MediaSize:Ljava/lang/String;

    .line 102
    iput p4, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->MediaType:I

    .line 103
    iput-object p5, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->DocMimeType:Ljava/lang/String;

    .line 104
    iput p6, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->Orientation:I

    .line 105
    iput p7, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->PageSides:I

    .line 106
    iput p8, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->Quality:I

    .line 107
    iput-boolean p9, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->UseRefChannel:Z

    .line 108
    iput-boolean p10, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->UsePreciseJob:Z

    .line 109
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/BppParameters;->readFromParcel(Landroid/os/Parcel;)V

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/bpp/BppParameters$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BppParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->Copies:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->PagesPerSide:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->MediaSize:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->MediaType:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->DocMimeType:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->Orientation:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->PageSides:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->Quality:I

    .line 153
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->boolArray:[Z

    .line 154
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->boolArray:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 155
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->boolArray:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->UseRefChannel:Z

    .line 156
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->boolArray:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->UsePreciseJob:Z

    .line 157
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 125
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->Copies:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->PagesPerSide:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->MediaSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->MediaType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->DocMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->Orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->PageSides:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->Quality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->boolArray:[Z

    .line 134
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->boolArray:[Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->UseRefChannel:Z

    aput-boolean v2, v0, v1

    .line 135
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->boolArray:[Z

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->UsePreciseJob:Z

    aput-boolean v2, v0, v1

    .line 136
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppParameters;->boolArray:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 137
    return-void
.end method
