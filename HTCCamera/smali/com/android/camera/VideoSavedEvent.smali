.class public Lcom/android/camera/VideoSavedEvent;
.super Lcom/android/camera/MediaEvent;
.source "VideoSavedEvent.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "contentUri"
    .parameter "filePath"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/MediaEvent;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 13
    return-void
.end method
