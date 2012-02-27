.class Lcom/htc/launcher/Folder$1;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Lcom/htc/launcher/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Folder;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Folder;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/htc/launcher/Folder$1;->this$0:Lcom/htc/launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/htc/launcher/Alarm;)V
    .locals 1
    .parameter "alarm"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/htc/launcher/Folder$1;->this$0:Lcom/htc/launcher/Folder;

    invoke-virtual {v0}, Lcom/htc/launcher/Folder;->completeDragExit()V

    .line 319
    return-void
.end method
