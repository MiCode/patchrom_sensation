.class public Lcom/broadcom/bt/service/bpp/BluetoothPrinter$JOB_STATE;
.super Ljava/lang/Object;
.source "BluetoothPrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JOB_STATE"
.end annotation


# static fields
.field public static final ABORTED:I = 0x5

.field public static final CANCELLED:I = 0x6

.field public static final COMPLETED:I = 0x4

.field public static final PRINTING:I = 0x1

.field public static final STOPPED:I = 0x3

.field public static final UNDEFINED:I = 0x0

.field public static final UNKNOWN:I = 0x7

.field public static final WAITING:I = 0x2

.field private static final prettyText:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 208
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UNDEFINED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PRINTING"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "WAITING"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "STOPPED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "COMPLETED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ABORTED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CANCELLED"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "UNKNOWN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "N/A"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$JOB_STATE;->prettyText:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getText(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 236
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    sget-object v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$JOB_STATE;->prettyText:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge p0, v0, :cond_0

    .line 237
    sget-object v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$JOB_STATE;->prettyText:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 239
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$JOB_STATE;->prettyText:[Ljava/lang/String;

    sget-object v1, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$JOB_STATE;->prettyText:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method
