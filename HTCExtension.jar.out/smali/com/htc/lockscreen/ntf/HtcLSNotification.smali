.class public Lcom/htc/lockscreen/ntf/HtcLSNotification;
.super Ljava/lang/Object;
.source "HtcLSNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;
    }
.end annotation


# static fields
.field public static final BUTTON_SIZE:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lockscreen/ntf/HtcLSNotification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

.field private mContent:Ljava/lang/String;

.field private mDescript:Ljava/lang/String;

.field private mDropPendingIntent:Landroid/app/PendingIntent;

.field private mFrom:Ljava/lang/String;

.field private mIcon:I

.field private mLocation:Ljava/lang/String;

.field private mPriority:I

.field private mRingPendingIntent:Landroid/app/PendingIntent;

.field private mTitle:Ljava/lang/String;

.field private mWhen:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lcom/htc/lockscreen/ntf/HtcLSNotification$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;-><init>(J)V

    .line 32
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .parameter "when"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    .line 18
    iput v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    .line 35
    iput-wide p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;-><init>(J)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .parameter "parcel"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v4, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    .line 18
    iput v4, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    .line 19
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    .line 20
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    .line 21
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    .line 22
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    .line 23
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    .line 24
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    .line 28
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_2

    move v0, v3

    .line 53
    .local v0, exist:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 54
    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    .line 57
    :cond_0
    invoke-static {p1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->PendingIntentFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDropPendingIntent:Landroid/app/PendingIntent;

    .line 58
    invoke-static {p1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->PendingIntentFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mRingPendingIntent:Landroid/app/PendingIntent;

    .line 59
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_3

    move v0, v3

    .line 61
    :goto_2
    if-eqz v0, :cond_1

    .line 62
    iget-object v5, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    sget-object v2, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    aput-object v2, v5, v1

    .line 59
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #exist:Z
    .end local v1           #i:I
    :cond_2
    move v0, v4

    .line 52
    goto :goto_0

    .restart local v0       #exist:Z
    .restart local v1       #i:I
    :cond_3
    move v0, v4

    .line 60
    goto :goto_2

    .line 65
    :cond_4
    return-void
.end method

.method private static PendingIntentFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "parcel"

    .prologue
    const/4 v0, 0x1

    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, intnet:Landroid/app/PendingIntent;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 104
    .local v0, exist:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 105
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #intnet:Landroid/app/PendingIntent;
    check-cast v1, Landroid/app/PendingIntent;

    .line 107
    .restart local v1       #intnet:Landroid/app/PendingIntent;
    :cond_0
    return-object v1

    .line 103
    .end local v0           #exist:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-static {p0}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->PendingIntentFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/Parcelable;Landroid/os/Parcel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 15
    invoke-static {p0, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->parcelable2Parcel(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    return-void
.end method

.method private static parcelable2Parcel(Landroid/os/Parcelable;Landroid/os/Parcel;I)V
    .locals 1
    .parameter "in"
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 111
    if-eqz p0, :cond_0

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    invoke-interface {p0, p1, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public getButton(I)Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;
    .locals 1
    .parameter "index"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getDescript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    return-object v0
.end method

.method public getDropPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDropPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    return v0
.end method

.method public getLargeIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    return v0
.end method

.method public getRingPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mRingPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWhen()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    return-wide v0
.end method

.method public setButton(Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;I)V
    .locals 1
    .parameter "button"
    .parameter "index"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    aput-object p1, v0, p2

    .line 241
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 156
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDescript(Ljava/lang/String;)V
    .locals 1
    .parameter "descript"

    .prologue
    .line 142
    if-eqz p1, :cond_0

    .line 143
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDropPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDropPendingIntent:Landroid/app/PendingIntent;

    .line 225
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 1
    .parameter "from"

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 169
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    goto :goto_0
.end method

.method public setIcon(I)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 194
    iput p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    .line 195
    return-void
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    .line 217
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 182
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPriority(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 206
    iput p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    .line 207
    return-void
.end method

.method public setRingPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mRingPendingIntent:Landroid/app/PendingIntent;

    .line 233
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public setWhen(J)V
    .locals 0
    .parameter "when"

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    .line 122
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    iget v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-wide v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDropPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v1, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->parcelable2Parcel(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    .line 88
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mRingPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v1, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->parcelable2Parcel(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    .line 90
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->writeToParcel(Landroid/os/Parcel;I)V

    .line 90
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    .end local v0           #i:I
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .restart local v0       #i:I
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 99
    :cond_2
    return-void
.end method
