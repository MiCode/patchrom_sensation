.class Landroid/app/AlarmManager$HTCSocketMonitorImpl;
.super Ljava/lang/Object;
.source "AlarmManager.java"

# interfaces
.implements Ljava/net/Socket$IHTCSocketMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HTCSocketMonitorImpl"
.end annotation


# instance fields
.field mLockObj:Ljava/lang/Object;

.field final synthetic this$0:Landroid/app/AlarmManager;


# direct methods
.method public constructor <init>(Landroid/app/AlarmManager;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter "handle"

    .prologue
    .line 107
    iput-object p1, p0, Landroid/app/AlarmManager$HTCSocketMonitorImpl;->this$0:Landroid/app/AlarmManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const-string v0, "Socket_Alarm"

    const-string v1, "HTCSocketMonitorImpl::HTCSocketMonitorImpl"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iput-object p2, p0, Landroid/app/AlarmManager$HTCSocketMonitorImpl;->mLockObj:Ljava/lang/Object;

    .line 110
    return-void
.end method


# virtual methods
.method public RXTXTriggerIfNeeded()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroid/app/AlarmManager$HTCSocketMonitorImpl;->this$0:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Landroid/app/AlarmManager;->RXTXGroupingEvent()V

    .line 120
    return-void
.end method

.method public socketLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 114
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method
