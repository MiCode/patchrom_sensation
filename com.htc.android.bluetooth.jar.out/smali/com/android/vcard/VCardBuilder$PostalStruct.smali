.class Lcom/android/vcard/VCardBuilder$PostalStruct;
.super Ljava/lang/Object;
.source "VCardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostalStruct"
.end annotation


# instance fields
.field final addressData:Ljava/lang/String;

.field final appendCharset:Z

.field final reallyUseQuotedPrintable:Z


# direct methods
.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 0
    .parameter "reallyUseQuotedPrintable"
    .parameter "appendCharset"
    .parameter "addressData"

    .prologue
    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1087
    iput-boolean p1, p0, Lcom/android/vcard/VCardBuilder$PostalStruct;->reallyUseQuotedPrintable:Z

    .line 1088
    iput-boolean p2, p0, Lcom/android/vcard/VCardBuilder$PostalStruct;->appendCharset:Z

    .line 1089
    iput-object p3, p0, Lcom/android/vcard/VCardBuilder$PostalStruct;->addressData:Ljava/lang/String;

    .line 1090
    return-void
.end method
