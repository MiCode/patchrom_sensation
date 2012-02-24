.class Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;
.super Ljava/lang/Exception;
.source "CdmaSmsEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CodingException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "s"

    .prologue
    .line 1803
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder$CodingException;->this$0:Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;

    .line 1804
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1805
    return-void
.end method
