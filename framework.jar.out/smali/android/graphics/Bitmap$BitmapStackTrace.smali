.class Landroid/graphics/Bitmap$BitmapStackTrace;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapStackTrace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/graphics/Bitmap$BitmapStackTrace;",
        ">;"
    }
.end annotation


# instance fields
.field private mSize:Ljava/lang/Integer;

.field private mStackTrace:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;[Ljava/lang/String;)V
    .locals 1
    .parameter "size"
    .parameter "items"

    .prologue
    .line 240
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Bitmap$BitmapStackTrace;->mStackTrace:[Ljava/lang/String;

    .line 241
    iput-object p1, p0, Landroid/graphics/Bitmap$BitmapStackTrace;->mSize:Ljava/lang/Integer;

    .line 242
    iput-object p2, p0, Landroid/graphics/Bitmap$BitmapStackTrace;->mStackTrace:[Ljava/lang/String;

    .line 243
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/graphics/Bitmap$BitmapStackTrace;)I
    .locals 2
    .parameter "obj"

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/graphics/Bitmap$BitmapStackTrace;->getSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap$BitmapStackTrace;->getSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 236
    check-cast p1, Landroid/graphics/Bitmap$BitmapStackTrace;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap$BitmapStackTrace;->compareTo(Landroid/graphics/Bitmap$BitmapStackTrace;)I

    move-result v0

    return v0
.end method

.method public getSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/graphics/Bitmap$BitmapStackTrace;->mSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStackTrace()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Landroid/graphics/Bitmap$BitmapStackTrace;->mStackTrace:[Ljava/lang/String;

    return-object v0
.end method
