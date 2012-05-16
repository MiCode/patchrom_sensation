.class public Lcom/htc/dlnainterface/DLNAServerData;
.super Ljava/lang/Object;
.source "DLNAServerData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/dlnainterface/DLNAServerData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public serverID:Ljava/lang/String;

.field public serverName:Ljava/lang/String;

.field public thumbnailPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/htc/dlnainterface/DLNAServerData$1;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAServerData$1;-><init>()V

    sput-object v0, Lcom/htc/dlnainterface/DLNAServerData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;

    .line 53
    invoke-virtual {p0, p1}, Lcom/htc/dlnainterface/DLNAServerData;->readFromParcel(Landroid/os/Parcel;)V

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 27
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setServerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "path"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/dlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/htc/dlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/htc/dlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
