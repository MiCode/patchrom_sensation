.class public Lcom/android/camera/RangeEvent;
.super Lcom/android/camera/Event;
.source "RangeEvent.java"


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
.field private final m_Maximum:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final m_Minimum:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "name"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, this:Lcom/android/camera/RangeEvent;,"Lcom/android/camera/RangeEvent<TT;>;"
    .local p2, min:Ljava/lang/Object;,"TT;"
    .local p3, max:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p1}, Lcom/android/camera/Event;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p2, p0, Lcom/android/camera/RangeEvent;->m_Minimum:Ljava/lang/Object;

    .line 18
    iput-object p3, p0, Lcom/android/camera/RangeEvent;->m_Maximum:Ljava/lang/Object;

    .line 19
    return-void
.end method


# virtual methods
.method public final getMaximum()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, this:Lcom/android/camera/RangeEvent;,"Lcom/android/camera/RangeEvent<TT;>;"
    iget-object v0, p0, Lcom/android/camera/RangeEvent;->m_Maximum:Ljava/lang/Object;

    return-object v0
.end method

.method public final getMinimum()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, this:Lcom/android/camera/RangeEvent;,"Lcom/android/camera/RangeEvent<TT;>;"
    iget-object v0, p0, Lcom/android/camera/RangeEvent;->m_Minimum:Ljava/lang/Object;

    return-object v0
.end method
