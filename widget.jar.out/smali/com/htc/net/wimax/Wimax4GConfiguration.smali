.class public Lcom/htc/net/wimax/Wimax4GConfiguration;
.super Lcom/htc/net/FourG/FourGConfiguration;
.source "Wimax4GConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/wimax/Wimax4GConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private needPass:Z

.field private needUser:Z

.field private nspId:J

.field private nspName:Ljava/lang/String;

.field protected password:Ljava/lang/String;

.field protected username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/htc/net/wimax/Wimax4GConfiguration$1;

    invoke-direct {v0}, Lcom/htc/net/wimax/Wimax4GConfiguration$1;-><init>()V

    sput-object v0, Lcom/htc/net/wimax/Wimax4GConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/htc/net/FourG/FourGConfiguration;-><init>()V

    .line 46
    iput-boolean v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needPass:Z

    .line 47
    iput-boolean v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needUser:Z

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspId:J

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspName:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->username:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->password:Ljava/lang/String;

    .line 52
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 179
    invoke-direct {p0, p1}, Lcom/htc/net/FourG/FourGConfiguration;-><init>(Landroid/os/Parcel;)V

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needPass:Z

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needUser:Z

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspId:J

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspName:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->username:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->password:Ljava/lang/String;

    .line 187
    return-void

    :cond_0
    move v0, v2

    .line 181
    goto :goto_0

    :cond_1
    move v1, v2

    .line 182
    goto :goto_1
.end method

.method public constructor <init>(Lcom/htc/net/wimax/Wimax4GConfiguration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/htc/net/FourG/FourGConfiguration;-><init>(Lcom/htc/net/FourG/FourGConfiguration;)V

    .line 56
    iget-boolean v0, p1, Lcom/htc/net/wimax/Wimax4GConfiguration;->needPass:Z

    iput-boolean v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needPass:Z

    .line 57
    iget-boolean v0, p1, Lcom/htc/net/wimax/Wimax4GConfiguration;->needUser:Z

    iput-boolean v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needUser:Z

    .line 58
    iget-wide v0, p1, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspId:J

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspId:J

    .line 59
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspName:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/net/wimax/Wimax4GConfiguration;->username:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->username:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/net/wimax/Wimax4GConfiguration;->password:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->password:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkRequiresPassword()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needPass:Z

    return v0
.end method

.method public getNetworkRequiresUsername()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needUser:Z

    return v0
.end method

.method public getNspId()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspId:J

    return-wide v0
.end method

.method public getNspName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspName:Ljava/lang/String;

    return-object v0
.end method

.method public setNetworkRequiresPassword(Z)V
    .locals 0
    .parameter "needPass"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needPass:Z

    .line 74
    return-void
.end method

.method public setNetworkRequiresUsername(Z)V
    .locals 0
    .parameter "needUser"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needUser:Z

    .line 86
    return-void
.end method

.method public setNspId(J)V
    .locals 0
    .parameter "nspId"

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspId:J

    .line 103
    return-void
.end method

.method public setNspName(Ljava/lang/String;)V
    .locals 0
    .parameter "nspName"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspName:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->password:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->username:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v0, ret:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/htc/net/wimax/Wimax4GConfiguration;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-super {p0}, Lcom/htc/net/FourG/FourGConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NeedPassword: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needPass:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NeedUsername: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needUser:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NSP_Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NSP_Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    invoke-super {p0, p1, p2}, Lcom/htc/net/FourG/FourGConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 158
    iget-boolean v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needPass:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-boolean v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->needUser:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-wide v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 161
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->nspName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    return-void

    :cond_0
    move v0, v2

    .line 158
    goto :goto_0

    :cond_1
    move v1, v2

    .line 159
    goto :goto_1
.end method
