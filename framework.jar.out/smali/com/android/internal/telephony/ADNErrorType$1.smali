.class final Lcom/android/internal/telephony/ADNErrorType$1;
.super Ljava/lang/Object;
.source "ADNErrorType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ADNErrorType;
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
        "Lcom/android/internal/telephony/ADNErrorType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/ADNErrorType;
    .locals 3
    .parameter "source"

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 59
    .local v1, success:Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, error:I
    new-instance v2, Lcom/android/internal/telephony/ADNErrorType;

    invoke-direct {v2, v1, v0}, Lcom/android/internal/telephony/ADNErrorType;-><init>(ZI)V

    return-object v2

    .line 58
    .end local v0           #error:I
    .end local v1           #success:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ADNErrorType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/ADNErrorType;
    .locals 1
    .parameter "size"

    .prologue
    .line 66
    new-array v0, p1, [Lcom/android/internal/telephony/ADNErrorType;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ADNErrorType$1;->newArray(I)[Lcom/android/internal/telephony/ADNErrorType;

    move-result-object v0

    return-object v0
.end method
