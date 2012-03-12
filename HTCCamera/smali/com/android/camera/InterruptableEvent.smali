.class public Lcom/android/camera/InterruptableEvent;
.super Lcom/android/camera/Event;
.source "InterruptableEvent.java"


# instance fields
.field private m_IsHandled:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/camera/Event;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public final isHandled()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/camera/InterruptableEvent;->m_IsHandled:Z

    return v0
.end method

.method public final setHandled()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/InterruptableEvent;->m_IsHandled:Z

    .line 32
    return-void
.end method
