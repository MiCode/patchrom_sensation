.class public Lcom/broadcom/bt/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "s"
    .parameter "defaultVal"

    .prologue
    .line 24
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 26
    .end local p1
    :goto_0
    return p1

    .line 25
    .restart local p1
    :catch_0
    move-exception v0

    .line 26
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method
