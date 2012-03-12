.class public Lcom/android/camera/OneValueEvent;
.super Lcom/android/camera/Event;
.source "OneValueEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera/Event;"
    }
.end annotation


# instance fields
.field private final m_Value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, this:Lcom/android/camera/OneValueEvent;,"Lcom/android/camera/OneValueEvent<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p1}, Lcom/android/camera/Event;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p2, p0, Lcom/android/camera/OneValueEvent;->m_Value:Ljava/lang/Object;

    .line 17
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, this:Lcom/android/camera/OneValueEvent;,"Lcom/android/camera/OneValueEvent<TT;>;"
    iget-object v0, p0, Lcom/android/camera/OneValueEvent;->m_Value:Ljava/lang/Object;

    return-object v0
.end method
