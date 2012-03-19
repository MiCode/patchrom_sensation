.class final Lcom/android/internal/telephony/EmailRecord$1;
.super Ljava/lang/Object;
.source "EmailRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/EmailRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/telephony/EmailRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 415
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/EmailRecord;
    .locals 5
    .parameter "source"

    .prologue
    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 424
    .local v1, adnSFI:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 425
    .local v3, recordNumber:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 426
    .local v0, adnRecordNumber:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 428
    .local v2, emailAddress:Ljava/lang/String;
    new-instance v4, Lcom/android/internal/telephony/EmailRecord;

    invoke-direct {v4, v1, v3, v2}, Lcom/android/internal/telephony/EmailRecord;-><init>(IILjava/lang/String;)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 415
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/EmailRecord$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/EmailRecord;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/EmailRecord;
    .locals 1
    .parameter "size"

    .prologue
    .line 433
    new-array v0, p1, [Lcom/android/internal/telephony/EmailRecord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 415
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/EmailRecord$1;->newArray(I)[Lcom/android/internal/telephony/EmailRecord;

    move-result-object v0

    return-object v0
.end method
