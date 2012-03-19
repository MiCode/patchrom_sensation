.class Lcom/android/internal/telephony/DataServiceType$ServicePriorityComparator;
.super Ljava/lang/Object;
.source "DataServiceType.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataServiceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServicePriorityComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/telephony/DataServiceType;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/DataServiceType$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/internal/telephony/DataServiceType$ServicePriorityComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataServiceType;)I
    .locals 2
    .parameter "ds1"
    .parameter "ds2"

    .prologue
    .line 86
    iget v0, p2, Lcom/android/internal/telephony/DataServiceType;->priority:I

    iget v1, p1, Lcom/android/internal/telephony/DataServiceType;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    check-cast p1, Lcom/android/internal/telephony/DataServiceType;

    .end local p1
    check-cast p2, Lcom/android/internal/telephony/DataServiceType;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/DataServiceType$ServicePriorityComparator;->compare(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataServiceType;)I

    move-result v0

    return v0
.end method
