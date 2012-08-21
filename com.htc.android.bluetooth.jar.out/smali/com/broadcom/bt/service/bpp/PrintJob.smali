.class public Lcom/broadcom/bt/service/bpp/PrintJob;
.super Ljava/lang/Object;
.source "PrintJob.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/bpp/PrintJob;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRINT_STATE_CANCELLED:I = 0x4

.field public static final PRINT_STATE_FINISHED:I = 0x3

.field public static final PRINT_STATE_NOT_RESPONDING:I = -0x64

.field public static final PRINT_STATE_NOT_STARTED:I = 0x0

.field public static final PRINT_STATE_PRINTING:I = 0x2

.field public static final PRINT_STATE_QUEUED:I = 0x1


# instance fields
.field public mBipParams:Lcom/broadcom/bt/service/bpp/BipParameters;

.field public mBluetoothAddress:Ljava/lang/String;

.field public mBppParams:Lcom/broadcom/bt/service/bpp/BppParameters;

.field public mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

.field public mEndTime:J

.field public mFileFormat:I

.field public mHeader:Ljava/lang/String;

.field public mJobId:J

.field public mJobStatus:Lcom/broadcom/bt/service/bpp/JobStatus;

.field public mLastStatusUpdateTime:J

.field public mName:Ljava/lang/String;

.field public mObjectResolver:Lcom/broadcom/bt/service/bpp/BppObjectResolver;

.field public mPrintState:I

.field public mPrinterStatus:I

.field public mProcessedBytes:I

.field public mServiceMask:I

.field public mStartTime:J

.field public mTotalBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/broadcom/bt/service/bpp/PrintJob$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/PrintJob$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/PrintJob;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)V
    .locals 1
    .parameter "jobId"
    .parameter "bluetoothAddress"
    .parameter "serviceMask"
    .parameter "fileFormat"
    .parameter "header"
    .parameter "name"
    .parameter "bipParams"
    .parameter "bppParams"
    .parameter "objectResolver"
    .parameter "cb"

    .prologue
    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p3, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    .line 108
    iput p4, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mServiceMask:I

    .line 109
    iput p5, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mFileFormat:I

    .line 110
    iput-object p6, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mHeader:Ljava/lang/String;

    .line 111
    iput-object p7, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    .line 112
    iput-object p8, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBipParams:Lcom/broadcom/bt/service/bpp/BipParameters;

    .line 113
    iput-object p9, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBppParams:Lcom/broadcom/bt/service/bpp/BppParameters;

    .line 114
    iput-object p11, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    .line 115
    iput-wide p1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    .line 116
    iput-object p10, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mObjectResolver:Lcom/broadcom/bt/service/bpp/BppObjectResolver;

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrintState:I

    .line 118
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 120
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/PrintJob;->readFromParcel(Landroid/os/Parcel;)V

    .line 122
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/bpp/PrintJob$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/PrintJob;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x1

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrintState:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrinterStatus:I

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mTotalBytes:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mProcessedBytes:I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 165
    .local v0, hasValue:B
    if-ne v0, v3, :cond_0

    .line 166
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/bpp/JobStatus;

    iput-object v1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobStatus:Lcom/broadcom/bt/service/bpp/JobStatus;

    .line 169
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mServiceMask:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mFileFormat:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 174
    if-ne v0, v3, :cond_1

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mHeader:Ljava/lang/String;

    .line 178
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 179
    if-ne v0, v3, :cond_2

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    .line 183
    :cond_2
    return-void
.end method

.method public refreshLastUpdateTime()V
    .locals 2

    .prologue
    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mLastStatusUpdateTime:J

    .line 193
    return-void
.end method

.method public setEndState()V
    .locals 2

    .prologue
    .line 196
    const/4 v0, 0x3

    iput v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrintState:I

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mEndTime:J

    .line 198
    iget-wide v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mEndTime:J

    iput-wide v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mLastStatusUpdateTime:J

    .line 199
    return-void
.end method

.method public setStartState()V
    .locals 2

    .prologue
    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mStartTime:J

    .line 187
    iget-wide v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mStartTime:J

    iput-wide v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mLastStatusUpdateTime:J

    .line 188
    const/4 v0, 0x2

    iput v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrintState:I

    .line 189
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    iget-wide v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    iget v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrintState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrinterStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mTotalBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mProcessedBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobStatus:Lcom/broadcom/bt/service/bpp/JobStatus;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 136
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobStatus:Lcom/broadcom/bt/service/bpp/JobStatus;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mServiceMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mFileFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mHeader:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 145
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    :goto_1
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 151
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    :goto_2
    return-void

    .line 138
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 153
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2
.end method
