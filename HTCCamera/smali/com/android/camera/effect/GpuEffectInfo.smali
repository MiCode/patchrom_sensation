.class public final Lcom/android/camera/effect/GpuEffectInfo;
.super Ljava/lang/Object;
.source "GpuEffectInfo.java"


# instance fields
.field public final name:Ljava/lang/String;

.field public final parameters:[Lcom/android/camera/effect/GpuEffectParameters;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/android/camera/effect/GpuEffectParameters;)V
    .locals 0
    .parameter "name"
    .parameter "params"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/camera/effect/GpuEffectInfo;->name:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/android/camera/effect/GpuEffectInfo;->parameters:[Lcom/android/camera/effect/GpuEffectParameters;

    .line 18
    return-void
.end method
