.class Lcom/android/camera/component/PowerWarningController$1;
.super Ljava/lang/Object;
.source "PowerWarningController.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PowerWarningController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PowerWarningController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PowerWarningController;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/camera/component/PowerWarningController$1;->this$0:Lcom/android/camera/component/PowerWarningController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningController$1;->this$0:Lcom/android/camera/component/PowerWarningController;

    #calls: Lcom/android/camera/component/PowerWarningController;->sendPowerWarning()V
    invoke-static {v0}, Lcom/android/camera/component/PowerWarningController;->access$000(Lcom/android/camera/component/PowerWarningController;)V

    .line 62
    return-void
.end method