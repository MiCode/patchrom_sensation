.class Landroid/widget/TextView$Blink;
.super Landroid/os/Handler;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Blink"
.end annotation


# instance fields
.field private mCancelled:Z

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 9037
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 9038
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/TextView$Blink;->mView:Ljava/lang/ref/WeakReference;

    .line 9039
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 9061
    iget-boolean v0, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    if-nez v0, :cond_0

    .line 9062
    invoke-virtual {p0, p0}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9063
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    .line 9065
    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 9042
    iget-boolean v1, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    if-eqz v1, :cond_1

    .line 9058
    :cond_0
    :goto_0
    return-void

    .line 9046
    :cond_1
    invoke-virtual {p0, p0}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9048
    iget-object v1, p0, Landroid/widget/TextView$Blink;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9050
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    #calls: Landroid/widget/TextView;->shouldBlink()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$2200(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9051
    iget-object v1, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_2

    .line 9052
    #calls: Landroid/widget/TextView;->invalidateCursorPath()V
    invoke-static {v0}, Landroid/widget/TextView;->access$2300(Landroid/widget/TextView;)V

    .line 9056
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/widget/TextView;->access$2400()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/widget/TextView;->access$2500()I

    move-result v1

    :goto_1
    int-to-long v4, v1

    add-long v1, v2, v4

    invoke-virtual {p0, p0, v1, v2}, Landroid/widget/TextView$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/widget/TextView;->access$2600()I

    move-result v1

    goto :goto_1
.end method

.method uncancel()V
    .locals 1

    .prologue
    .line 9068
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$Blink;->mCancelled:Z

    .line 9069
    return-void
.end method
