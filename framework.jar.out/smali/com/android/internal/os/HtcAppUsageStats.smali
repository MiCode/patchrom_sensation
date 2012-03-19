.class public Lcom/android/internal/os/HtcAppUsageStats;
.super Ljava/lang/Object;
.source "HtcAppUsageStats.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/internal/os/HtcIfAppUsageStats;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/os/HtcAppUsageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appName:Ljava/lang/String;

.field public lastRootActivity:Ljava/lang/String;

.field public launchCount:I

.field public packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/android/internal/os/HtcAppUsageStats$1;

    invoke-direct {v0}, Lcom/android/internal/os/HtcAppUsageStats$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/HtcAppUsageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/HtcAppUsageStats;->packageName:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/HtcAppUsageStats;->appName:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/HtcAppUsageStats;->launchCount:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/HtcAppUsageStats;->lastRootActivity:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "pkgName"
    .parameter "app"
    .parameter "count"
    .parameter "lastRoot"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/internal/os/HtcAppUsageStats;->packageName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/android/internal/os/HtcAppUsageStats;->appName:Ljava/lang/String;

    .line 27
    iput p3, p0, Lcom/android/internal/os/HtcAppUsageStats;->launchCount:I

    .line 28
    iput-object p4, p0, Lcom/android/internal/os/HtcAppUsageStats;->lastRootActivity:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/os/HtcAppUsageStats;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchCount()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/android/internal/os/HtcAppUsageStats;->launchCount:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/os/HtcAppUsageStats;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/os/HtcAppUsageStats;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/android/internal/os/HtcAppUsageStats;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget v0, p0, Lcom/android/internal/os/HtcAppUsageStats;->launchCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v0, p0, Lcom/android/internal/os/HtcAppUsageStats;->lastRootActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return-void
.end method
