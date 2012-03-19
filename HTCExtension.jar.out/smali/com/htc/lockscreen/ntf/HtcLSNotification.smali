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

.field private mLargeIconPackage:Ljava/lang/String;

.field private mLargeIconRes:I

.field private mLocation:Ljava/lang/String;

.field private mPriority:I

.field private mRingPendingIntent:Landroid/app/PendingIntent;

.field private mSubTitle:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mWhen:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 305
    new-instance v0, Lcom/htc/lockscreen/ntf/HtcLSNotification$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;-><init>(J)V

    .line 35
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .parameter "when"

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    .line 17
    iput v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mSubTitle:Ljava/lang/String;

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

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconPackage:Ljava/lang/String;

    .line 31
    iput v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconRes:I

    .line 38
    iput-wide p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;-><init>(J)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .parameter "parcel"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v4, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    .line 17
    iput v4, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    .line 18
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    .line 19
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mSubTitle:Ljava/lang/String;

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

    .line 30
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconPackage:Ljava/lang/String;

    .line 31
    iput v4, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconRes:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mSubTitle:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_2

    move v0, v3

    .line 59
    .local v0, exist:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 60
    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconPackage:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconRes:I

    .line 65
    invoke-static {p1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->PendingIntentFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDropPendingIntent:Landroid/app/PendingIntent;

    .line 66
    invoke-static {p1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->PendingIntentFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mRingPendingIntent:Landroid/app/PendingIntent;

    .line 67
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_3

    move v0, v3

    .line 69
    :goto_2
    if-eqz v0, :cond_1

    .line 70
    iget-object v5, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    sget-object v2, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    aput-object v2, v5, v1

    .line 67
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #exist:Z
    .end local v1           #i:I
    :cond_2
    move v0, v4

    .line 58
    goto :goto_0

    .restart local v0       #exist:Z
    .restart local v1       #i:I
    :cond_3
    move v0, v4

    .line 68
    goto :goto_2

    .line 73
    :cond_4
    return-void
.end method

.method private static PendingIntentFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "parcel"

    .prologue
    const/4 v0, 0x1

    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, intnet:Landroid/app/PendingIntent;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 116
    .local v0, exist:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 117
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #intnet:Landroid/app/PendingIntent;
    check-cast v1, Landroid/app/PendingIntent;

    .line 119
    .restart local v1       #intnet:Landroid/app/PendingIntent;
    :cond_0
    return-object v1

    .line 115
    .end local v0           #exist:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
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
    .line 14
    invoke-static {p0, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->parcelable2Parcel(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 14
    invoke-static {p0, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getIconFromPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getIconFromPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"
    .parameter "pkg"
    .parameter "iconId"

    .prologue
    .line 503
    if-gtz p2, :cond_1

    .line 504
    const/4 v0, 0x0

    .line 516
    :cond_0
    :goto_0
    return-object v0

    .line 506
    :cond_1
    const/4 v0, 0x0

    .line 508
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {p0, p1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    .line 509
    .local v2, pkgContext:Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 510
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 513
    .end local v2           #pkgContext:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 514
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static parcelable2Parcel(Landroid/os/Parcelable;Landroid/os/Parcel;I)V
    .locals 1
    .parameter "in"
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 123
    if-eqz p0, :cond_0

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    invoke-interface {p0, p1, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method private static prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 490
    if-eqz p1, :cond_0

    .line 492
    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 499
    .local v0, c:Landroid/content/Context;
    :goto_0
    return-object v0

    .line 493
    .end local v0           #c:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 494
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v0, p0

    .line 495
    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0

    .line 497
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v0, p0

    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public getButton(I)Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;
    .locals 1
    .parameter "index"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getDescript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    return-object v0
.end method

.method public getDropPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDropPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    return v0
.end method

.method public getLargeIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLargeIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, btn:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconPackage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconRes:I

    if-lez v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconPackage:Ljava/lang/String;

    iget v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconRes:I

    invoke-static {p1, v1, v2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getIconFromPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 275
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 276
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #btn:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 278
    .restart local v0       #btn:Landroid/graphics/drawable/Drawable;
    :cond_1
    return-object v0
.end method

.method public getLargeIconPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeIconResId()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconRes:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    return v0
.end method

.method public getRingPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mRingPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWhen()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    return-wide v0
.end method

.method public setButton(Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;I)V
    .locals 1
    .parameter "button"
    .parameter "index"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    aput-object p1, v0, p2

    .line 299
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 180
    if-eqz p1, :cond_0

    .line 181
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDescript(Ljava/lang/String;)V
    .locals 1
    .parameter "descript"

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDropPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDropPendingIntent:Landroid/app/PendingIntent;

    .line 283
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 1
    .parameter "from"

    .prologue
    .line 193
    if-eqz p1, :cond_0

    .line 194
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    goto :goto_0
.end method

.method public setIcon(I)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 219
    iput p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    .line 220
    return-void
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 241
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconPackage:Ljava/lang/String;

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconRes:I

    .line 243
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    .line 244
    return-void
.end method

.method public setLargeIcon(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    .line 248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    .line 249
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconPackage:Ljava/lang/String;

    .line 250
    iput p2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconRes:I

    .line 256
    :goto_0
    return-void

    .line 253
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconPackage:Ljava/lang/String;

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconRes:I

    goto :goto_0
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 207
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPriority(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 231
    iput p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    .line 232
    return-void
.end method

.method public setRingPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mRingPendingIntent:Landroid/app/PendingIntent;

    .line 291
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mSubTitle:Ljava/lang/String;

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mSubTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 142
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public setWhen(J)V
    .locals 0
    .parameter "when"

    .prologue
    .line 133
    iput-wide p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    .line 134
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    iget v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mSubTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-wide v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconRes:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDropPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v1, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->parcelable2Parcel(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    .line 100
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mRingPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v1, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->parcelable2Parcel(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    .line 102
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->writeToParcel(Landroid/os/Parcel;I)V

    .line 102
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    .end local v0           #i:I
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 108
    .restart local v0       #i:I
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 111
    :cond_2
    return-void
.end method
