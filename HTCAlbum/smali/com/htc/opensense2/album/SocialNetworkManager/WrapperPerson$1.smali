.class final Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson$1;
.super Ljava/lang/Object;
.source "WrapperPerson.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
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
        "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .locals 1
    .parameter "in"

    .prologue
    .line 242
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-direct {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .locals 1
    .parameter "size"

    .prologue
    .line 247
    new-array v0, p1, [Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson$1;->newArray(I)[Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    move-result-object v0

    return-object v0
.end method
