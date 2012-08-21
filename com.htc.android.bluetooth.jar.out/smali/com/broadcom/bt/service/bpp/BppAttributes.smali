.class public Lcom/broadcom/bt/service/bpp/BppAttributes;
.super Ljava/lang/Object;
.source "BppAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/bpp/BppAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public BppStatus:I

.field public BtpHeight:I

.field public BtpWidth:I

.field public CharRepresentations:[B

.field public ColorSupported:Z

.field public Id1284Info:[B

.field public MaxCopies:I

.field public MaxPages:I

.field public Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

.field public MediaTypesMask:[I

.field public NumMediaLoaded:I

.field public OrientationMask:I

.field public PrinterLocation:Ljava/lang/String;

.field public PrinterName:Ljava/lang/String;

.field public PrinterStatus:I

.field public QualityMask:I

.field public QueuedJobs:I

.field public Reason:I

.field public SidesMask:I

.field public State:I

.field public SupportedDocumentFormats:[Ljava/lang/String;

.field public SupportedImageFormats:[Ljava/lang/String;

.field public SupportedMediaSizes:[Ljava/lang/String;

.field private boolArray:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/broadcom/bt/service/bpp/BppAttributes$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/BppAttributes$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/BppAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    .line 101
    return-void
.end method

.method public constructor <init>(IIIIIIII[I[B[BLjava/lang/String;Ljava/lang/String;[Lcom/broadcom/bt/service/bpp/LoadedMedia;IIIIIZ[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "printerStatus"
    .parameter "bppStatus"
    .parameter "maxCopies"
    .parameter "maxPages"
    .parameter "queuedJobs"
    .parameter "btpWidth"
    .parameter "btpHeight"
    .parameter "numMediaLoaded"
    .parameter "mediaTypesMask"
    .parameter "charRepresentations"
    .parameter "id1284Info"
    .parameter "printerName"
    .parameter "printerLocation"
    .parameter "media"
    .parameter "state"
    .parameter "reason"
    .parameter "sidesMask"
    .parameter "qualityMask"
    .parameter "orientationMask"
    .parameter "colorSupported"
    .parameter "supportedDocumentFormats"
    .parameter "supportedMediaSizes"
    .parameter "supportedImageFormats"

    .prologue
    .line 153
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v1, 0x1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    .line 154
    iput p1, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterStatus:I

    .line 155
    iput p2, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BppStatus:I

    .line 156
    iput p3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxCopies:I

    .line 157
    iput p4, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxPages:I

    .line 158
    iput p5, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QueuedJobs:I

    .line 159
    iput p6, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpWidth:I

    .line 160
    iput p7, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpHeight:I

    .line 161
    iput p8, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->NumMediaLoaded:I

    .line 162
    iput-object p9, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    .line 163
    iput-object p10, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->CharRepresentations:[B

    .line 164
    iput-object p11, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Id1284Info:[B

    .line 165
    iput-object p12, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterName:Ljava/lang/String;

    .line 166
    iput-object p13, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterLocation:Ljava/lang/String;

    .line 167
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    .line 168
    move/from16 v0, p15

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->State:I

    .line 169
    move/from16 v0, p16

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Reason:I

    .line 170
    move/from16 v0, p17

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SidesMask:I

    .line 171
    move/from16 v0, p18

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QualityMask:I

    .line 172
    move/from16 v0, p19

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->OrientationMask:I

    .line 173
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->ColorSupported:Z

    .line 174
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    .line 175
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    .line 176
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    .line 177
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 184
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    .line 185
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/BppAttributes;->readFromParcel(Landroid/os/Parcel;)V

    .line 186
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/bpp/BppAttributes$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BppAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 252
    .local v0, i:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterStatus:I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BppStatus:I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxCopies:I

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxPages:I

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QueuedJobs:I

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpWidth:I

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpHeight:I

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->NumMediaLoaded:I

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 262
    .local v2, tempSize:I
    if-lez v2, :cond_0

    .line 263
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    .line 264
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readIntArray([I)V

    .line 270
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterName:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterLocation:Ljava/lang/String;

    .line 272
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 273
    .local v1, tempParcelArray:[Landroid/os/Parcelable;
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 274
    array-length v3, v1

    new-array v3, v3, [Lcom/broadcom/bt/service/bpp/LoadedMedia;

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    .line 275
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 276
    iget-object v4, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    aget-object v3, v1, v0

    check-cast v3, Lcom/broadcom/bt/service/bpp/LoadedMedia;

    aput-object v3, v4, v0

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->State:I

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Reason:I

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SidesMask:I

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QualityMask:I

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->OrientationMask:I

    .line 284
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 285
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    iput-boolean v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->ColorSupported:Z

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 287
    if-lez v2, :cond_2

    .line 288
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    .line 289
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 291
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 292
    if-lez v2, :cond_3

    .line 293
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    .line 294
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 296
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 297
    if-lez v2, :cond_4

    .line 298
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    .line 299
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 301
    :cond_4
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 193
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BppStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxCopies:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MaxPages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QueuedJobs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->BtpHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->NumMediaLoaded:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->MediaTypesMask:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 211
    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->PrinterLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Media:[Lcom/broadcom/bt/service/bpp/LoadedMedia;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 214
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->State:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->Reason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SidesMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->QualityMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->OrientationMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    iget-boolean v1, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->ColorSupported:Z

    aput-boolean v1, v0, v2

    .line 220
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->boolArray:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 221
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedDocumentFormats:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 227
    :goto_1
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedMediaSizes:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 233
    :goto_2
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppAttributes;->SupportedImageFormats:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 239
    :goto_3
    return-void

    .line 206
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 231
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 237
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3
.end method
