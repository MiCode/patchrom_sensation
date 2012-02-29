.class public Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;
.super Ljava/lang/Object;
.source "HtcLSNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/ntf/HtcLSNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Button"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBtnBitmap:Landroid/graphics/Bitmap;

.field private mBtnPendingIntent:Landroid/app/PendingIntent;

.field private mBtnStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 319
    new-instance v0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnStr:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "parcel"

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnStr:Ljava/lang/String;

    .line 267
    #calls: Lcom/htc/lockscreen/ntf/HtcLSNotification;->PendingIntentFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    invoke-static {p1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->access$000(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnPendingIntent:Landroid/app/PendingIntent;

    .line 268
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnStr:Ljava/lang/String;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBitmap:Landroid/graphics/Bitmap;

    .line 304
    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnPendingIntent:Landroid/app/PendingIntent;

    .line 296
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 311
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnStr:Ljava/lang/String;

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnStr:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flag"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnPendingIntent:Landroid/app/PendingIntent;

    #calls: Lcom/htc/lockscreen/ntf/HtcLSNotification;->parcelable2Parcel(Landroid/os/Parcelable;Landroid/os/Parcel;I)V
    invoke-static {v0, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->access$100(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    .line 279
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 280
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 287
    :goto_0
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    return-void

    .line 284
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
