.class public Lcom/android/camera/OrientationEvent;
.super Lcom/android/camera/Event;
.source "OrientationEvent.java"


# instance fields
.field private m_NewDegree:F

.field private m_NewUIOrientation:I

.field private m_OldDegree:F

.field private m_OldUIOrientation:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIFF)V
    .locals 0
    .parameter "name"
    .parameter "oldOrientation"
    .parameter "newOrientation"
    .parameter "oldDegree"
    .parameter "newDegree"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/camera/Event;-><init>(Ljava/lang/String;)V

    .line 19
    iput p2, p0, Lcom/android/camera/OrientationEvent;->m_OldUIOrientation:I

    .line 20
    iput p3, p0, Lcom/android/camera/OrientationEvent;->m_NewUIOrientation:I

    .line 21
    iput p4, p0, Lcom/android/camera/OrientationEvent;->m_OldDegree:F

    .line 22
    iput p5, p0, Lcom/android/camera/OrientationEvent;->m_NewDegree:F

    .line 23
    return-void
.end method


# virtual methods
.method public final getNewDegree()F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/android/camera/OrientationEvent;->m_NewDegree:F

    return v0
.end method

.method public final getNewUIOrientation()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/android/camera/OrientationEvent;->m_NewUIOrientation:I

    return v0
.end method

.method public final getOldDegree()F
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/android/camera/OrientationEvent;->m_OldDegree:F

    return v0
.end method

.method public final getOldUIOrientation()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/android/camera/OrientationEvent;->m_OldUIOrientation:I

    return v0
.end method
