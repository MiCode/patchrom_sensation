.class public Lcom/android/camera/Camera_Util$Image_Size;
.super Ljava/lang/Object;
.source "Camera_Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera_Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Image_Size"
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput p1, p0, Lcom/android/camera/Camera_Util$Image_Size;->width:I

    .line 178
    iput p2, p0, Lcom/android/camera/Camera_Util$Image_Size;->height:I

    .line 179
    return-void
.end method
