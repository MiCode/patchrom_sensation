.class public Lcom/android/camera/ResolutionMenuItem;
.super Ljava/lang/Object;
.source "ResolutionMenuItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/camera/ResolutionMenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field public resIconId:I

.field public resStringId:I

.field public resolution:Lcom/android/camera/Resolution;


# direct methods
.method public constructor <init>(Lcom/android/camera/Resolution;I)V
    .locals 1
    .parameter "r"
    .parameter "stringId"

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lcom/android/camera/ResolutionMenuItem;->resStringId:I

    .line 8
    iput v0, p0, Lcom/android/camera/ResolutionMenuItem;->resIconId:I

    .line 10
    iput-object p1, p0, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    .line 11
    iput p2, p0, Lcom/android/camera/ResolutionMenuItem;->resStringId:I

    .line 12
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/camera/ResolutionMenuItem;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    iget-object v1, p1, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Lcom/android/camera/Resolution;->compareTo(Lcom/android/camera/Resolution;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 5
    check-cast p1, Lcom/android/camera/ResolutionMenuItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/ResolutionMenuItem;->compareTo(Lcom/android/camera/ResolutionMenuItem;)I

    move-result v0

    return v0
.end method
