.class Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;
.super Ljava/lang/Object;
.source "SIDTable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/SIDTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SIDEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;",
        ">;"
    }
.end annotation


# instance fields
.field mBegin:I

.field mEnd:I

.field mIso:Ljava/lang/String;

.field mMcc:I

.field mTimezone:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .locals 6
    .parameter "mcc"
    .parameter "iso"
    .parameter "begin"

    .prologue
    .line 31
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    .line 32
    return-void
.end method

.method constructor <init>(ILjava/lang/String;II)V
    .locals 6
    .parameter "mcc"
    .parameter "iso"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 35
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    .line 36
    return-void
.end method

.method constructor <init>(ILjava/lang/String;IILjava/lang/String;)V
    .locals 0
    .parameter "mcc"
    .parameter "iso"
    .parameter "begin"
    .parameter "end"
    .parameter "timezone"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;->mIso:Ljava/lang/String;

    .line 40
    iput p1, p0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;->mMcc:I

    .line 41
    iput-object p5, p0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;->mTimezone:Ljava/lang/String;

    .line 43
    iput p3, p0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;->mBegin:I

    .line 44
    iput p4, p0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;->mEnd:I

    .line 45
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;->mBegin:I

    iget v1, p1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;->mBegin:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;->compareTo(Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;)I

    move-result v0

    return v0
.end method
