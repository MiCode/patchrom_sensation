.class public Lcom/android/camera/PictureSavedEvent;
.super Lcom/android/camera/MediaEvent;
.source "PictureSavedEvent.java"


# instance fields
.field private final m_Data:[B

.field private final m_IsLastPicture:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;[BZLandroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "data"
    .parameter "isLastPicture"
    .parameter "contentUri"
    .parameter "filePath"

    .prologue
    .line 18
    invoke-direct {p0, p1, p4, p5}, Lcom/android/camera/MediaEvent;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 19
    iput-object p2, p0, Lcom/android/camera/PictureSavedEvent;->m_Data:[B

    .line 20
    iput-boolean p3, p0, Lcom/android/camera/PictureSavedEvent;->m_IsLastPicture:Z

    .line 21
    return-void
.end method


# virtual methods
.method public final getData()[B
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/PictureSavedEvent;->m_Data:[B

    return-object v0
.end method

.method public final isLastPicture()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/camera/PictureSavedEvent;->m_IsLastPicture:Z

    return v0
.end method
