.class public Lcom/android/camera/LOG;
.super Ljava/lang/Object;
.source "LOG.java"


# static fields
.field public static final ATS_LOG_SUFFIX_CLOSE:Ljava/lang/String; = "close"

.field public static final ATS_LOG_SUFFIX_COMPLETE:Ljava/lang/String; = "complete"

.field public static final ATS_LOG_SUFFIX_LANUCH:Ljava/lang/String; = "launch"

.field public static final ATS_LOG_SUFFIX_RECORDING:Ljava/lang/String; = "recording"

.field public static final ATS_LOG_SUFFIX_START:Ljava/lang/String; = "start"

.field public static final ATS_LOG_SUFFIX_STOP:Ljava/lang/String; = "stop"

.field public static final ATS_LOG_SUFFIX_STOP_RECORD:Ljava/lang/String; = "stop_record"

.field public static final ATS_LOG_SUFFIX_TAKE_PICTURE:Ljava/lang/String; = "take_picture"

.field public static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/LOG;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static E(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "Info"

    .prologue
    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-void
.end method

.method public static E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "TAG"
    .parameter "Info"
    .parameter "Tr"

    .prologue
    .line 17
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    return-void
.end method

.method public static I(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "Info"

    .prologue
    .line 33
    return-void
.end method

.method public static V(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "TAG"
    .parameter "Info"

    .prologue
    .line 21
    sget-boolean v0, Lcom/android/camera/LOG;->DEBUG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 22
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    return-void
.end method

.method public static W(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "Info"

    .prologue
    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method

.method public static atsLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "functionName"
    .parameter "suffix"

    .prologue
    .line 54
    const-string v0, "MASD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ATS][com.android.camera]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method
