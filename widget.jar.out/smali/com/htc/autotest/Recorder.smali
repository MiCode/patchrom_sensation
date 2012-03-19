.class public Lcom/htc/autotest/Recorder;
.super Ljava/lang/Object;
.source "Recorder.java"


# static fields
.field private static sInstance:Lcom/htc/autotest/RecordManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/autotest/Recorder;->sInstance:Lcom/htc/autotest/RecordManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpShowActivity(Ljava/lang/Object;Z)V
    .locals 1
    .parameter "obj"
    .parameter "isShow"

    .prologue
    .line 36
    sget-object v0, Lcom/htc/autotest/Recorder;->sInstance:Lcom/htc/autotest/RecordManager;

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/htc/autotest/Recorder;->sInstance:Lcom/htc/autotest/RecordManager;

    invoke-virtual {v0, p0, p1}, Lcom/htc/autotest/RecordManager;->dumpShowActivity(Ljava/lang/Object;Z)V

    .line 39
    :cond_0
    return-void
.end method

.method public static dumpShowDialog(Ljava/lang/Object;Z)V
    .locals 1
    .parameter "obj"
    .parameter "isShow"

    .prologue
    .line 30
    sget-object v0, Lcom/htc/autotest/Recorder;->sInstance:Lcom/htc/autotest/RecordManager;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/htc/autotest/Recorder;->sInstance:Lcom/htc/autotest/RecordManager;

    invoke-virtual {v0, p0, p1}, Lcom/htc/autotest/RecordManager;->dumpShowDialog(Ljava/lang/Object;Z)V

    .line 33
    :cond_0
    return-void
.end method

.method public static dumpShowMenu(Landroid/view/KeyEvent;ZZ)V
    .locals 1
    .parameter "event"
    .parameter "isExpanded"
    .parameter "isExpandMenuShow"

    .prologue
    .line 43
    sget-object v0, Lcom/htc/autotest/Recorder;->sInstance:Lcom/htc/autotest/RecordManager;

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/htc/autotest/Recorder;->sInstance:Lcom/htc/autotest/RecordManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/htc/autotest/RecordManager;->dumpShowMenu(Landroid/view/KeyEvent;ZZ)V

    .line 46
    :cond_0
    return-void
.end method

.method public static startMonitor(Landroid/content/Context;Landroid/os/MessageQueue;Landroid/os/Handler;Landroid/app/Instrumentation;)V
    .locals 1
    .parameter "context"
    .parameter "msgQueue"
    .parameter "handler"
    .parameter "ins"

    .prologue
    .line 24
    invoke-static {p0}, Lcom/htc/autotest/RecordManager;->getInstance(Landroid/content/Context;)Lcom/htc/autotest/RecordManager;

    move-result-object v0

    sput-object v0, Lcom/htc/autotest/Recorder;->sInstance:Lcom/htc/autotest/RecordManager;

    .line 26
    sget-object v0, Lcom/htc/autotest/Recorder;->sInstance:Lcom/htc/autotest/RecordManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/htc/autotest/RecordManager;->runRecorder(Landroid/content/Context;Landroid/os/MessageQueue;Landroid/os/Handler;Landroid/app/Instrumentation;)V

    .line 27
    return-void
.end method
