.class public Lcom/android/internal/telephony/cdma/SIDComparator;
.super Ljava/lang/Object;
.source "SIDComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SIDComparator"

.field private static sidComparator:Lcom/android/internal/telephony/cdma/SIDComparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/cdma/SIDComparator;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/internal/telephony/cdma/SIDComparator;->sidComparator:Lcom/android/internal/telephony/cdma/SIDComparator;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/android/internal/telephony/cdma/SIDComparator;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/SIDComparator;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/SIDComparator;->sidComparator:Lcom/android/internal/telephony/cdma/SIDComparator;

    .line 23
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/SIDComparator;->sidComparator:Lcom/android/internal/telephony/cdma/SIDComparator;

    return-object v0
.end method


# virtual methods
.method public compare(Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;)I
    .locals 4
    .parameter "objRange"
    .parameter "objFind"

    .prologue
    const/4 v3, -0x1

    .line 27
    iget v0, p1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;->mBegin:I

    .line 28
    .local v0, nBegin:I
    iget v1, p1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;->mEnd:I

    .line 30
    .local v1, nEnd:I
    iget v2, p2, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;->mBegin:I

    .line 34
    .local v2, nFind:I
    if-le v0, v2, :cond_1

    .line 35
    const/4 v3, 0x1

    .line 41
    :cond_0
    :goto_0
    return v3

    .line 36
    :cond_1
    if-gt v2, v1, :cond_0

    .line 38
    if-lt v2, v0, :cond_0

    if-lt v1, v2, :cond_0

    .line 39
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    check-cast p1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    .end local p1
    check-cast p2, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SIDComparator;->compare(Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;)I

    move-result v0

    return v0
.end method
