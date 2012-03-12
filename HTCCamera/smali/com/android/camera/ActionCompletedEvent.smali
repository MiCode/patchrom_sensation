.class public Lcom/android/camera/ActionCompletedEvent;
.super Lcom/android/camera/Event;
.source "ActionCompletedEvent.java"


# instance fields
.field private final m_IsSucceeded:Z

.field private final m_Throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "isSucceeded"

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ActionCompletedEvent;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Throwable;)V
    .locals 0
    .parameter "name"
    .parameter "isSucceeded"
    .parameter "throwable"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/camera/Event;-><init>(Ljava/lang/String;)V

    .line 21
    iput-boolean p2, p0, Lcom/android/camera/ActionCompletedEvent;->m_IsSucceeded:Z

    .line 22
    iput-object p3, p0, Lcom/android/camera/ActionCompletedEvent;->m_Throwable:Ljava/lang/Throwable;

    .line 23
    return-void
.end method


# virtual methods
.method public final getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/ActionCompletedEvent;->m_Throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final isSucceeded()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/camera/ActionCompletedEvent;->m_IsSucceeded:Z

    return v0
.end method
