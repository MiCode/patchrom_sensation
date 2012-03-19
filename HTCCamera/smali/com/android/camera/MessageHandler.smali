.class public Lcom/android/camera/MessageHandler;
.super Ljava/lang/Object;
.source "MessageHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasMessages(Landroid/os/Handler;I)Z
    .locals 2
    .parameter "handler"
    .parameter "what"

    .prologue
    .line 10
    if-nez p0, :cond_0

    .line 11
    const-string v0, "MessageHandler"

    const-string v1, "handler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static removeMessages(Landroid/os/Handler;I)V
    .locals 2
    .parameter "handler"
    .parameter "what"

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 20
    const-string v0, "MessageHandler"

    const-string v1, "handler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public static sendEmptyMessage(Landroid/os/Handler;I)V
    .locals 2
    .parameter "handler"
    .parameter "what"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const-string v0, "MessageHandler"

    const-string v1, "handler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V
    .locals 2
    .parameter "handler"
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 38
    const-string v0, "MessageHandler"

    const-string v1, "handler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public static sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V
    .locals 3
    .parameter "handler"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 67
    const-string v1, "MessageHandler"

    const-string v2, "handler = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 72
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public static sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V
    .locals 3
    .parameter "handler"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 77
    const-string v1, "MessageHandler"

    const-string v2, "handler = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 82
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public static sendUniqueEmptyMessage(Landroid/os/Handler;I)V
    .locals 2
    .parameter "handler"
    .parameter "what"

    .prologue
    .line 46
    if-nez p0, :cond_0

    .line 47
    const-string v0, "MessageHandler"

    const-string v1, "handler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 52
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static sendUniqueEmptyMessageDelayed(Landroid/os/Handler;IJ)V
    .locals 2
    .parameter "handler"
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    const-string v0, "MessageHandler"

    const-string v1, "handler = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public static sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V
    .locals 3
    .parameter "handler"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 86
    if-nez p0, :cond_0

    .line 87
    const-string v1, "MessageHandler"

    const-string v2, "handler = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 92
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public static sendUniqueObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V
    .locals 3
    .parameter "handler"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 97
    if-nez p0, :cond_0

    .line 98
    const-string v1, "MessageHandler"

    const-string v2, "handler = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 103
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    invoke-virtual {p0, v0, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
