.class public Landroid/text/Layout$Directions;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Directions"
.end annotation


# instance fields
.field mDirections:[I


# direct methods
.method constructor <init>([I)V
    .locals 0
    .parameter "dirs"

    .prologue
    .line 2132
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2133
    iput-object p1, p0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 2134
    return-void
.end method
