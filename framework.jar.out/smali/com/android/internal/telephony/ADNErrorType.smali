.class public Lcom/android/internal/telephony/ADNErrorType;
.super Ljava/lang/Object;
.source "ADNErrorType.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/ADNErrorType;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_EMAIL_ANR_MEMORY_FULL:I = 0x4

.field public static final ERROR_GENERIC_FAILURE:I = 0x3

.field public static final ERROR_MEMORY_FULL:I = 0x1

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_SIM_IS_NOT_READY:I = 0x2


# instance fields
.field public index:J

.field public mError:I

.field public mError_type:I

.field public success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/android/internal/telephony/ADNErrorType$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/ADNErrorType$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/ADNErrorType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    .line 91
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0
    .parameter "success"
    .parameter "error"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean p1, p0, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    .line 84
    iput p2, p0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    .line 85
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public setErrorType(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    .line 97
    if-nez p1, :cond_0

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/internal/telephony/ADNErrorType;->success:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Lcom/android/internal/telephony/ADNErrorType;->mError:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
