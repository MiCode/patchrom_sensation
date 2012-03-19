.class final Lcom/htc/text/util/HtcLinkify$2;
.super Ljava/lang/Object;
.source "HtcLinkify.java"

# interfaces
.implements Lcom/htc/text/util/HtcLinkify$MatchFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/text/util/HtcLinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 140
    .local v0, digitCount:I
    move v1, p2

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 141
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    add-int/lit8 v0, v0, 0x1

    .line 143
    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 144
    const/4 v2, 0x1

    .line 148
    :goto_1
    return v2

    .line 140
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
