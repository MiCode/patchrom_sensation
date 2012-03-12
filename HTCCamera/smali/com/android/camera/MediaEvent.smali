.class public Lcom/android/camera/MediaEvent;
.super Lcom/android/camera/Event;
.source "MediaEvent.java"


# instance fields
.field private final m_ContentUri:Landroid/net/Uri;

.field private final m_FilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .parameter "name"
    .parameter "contentUri"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/MediaEvent;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "contentUri"
    .parameter "filePath"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/camera/Event;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p2, p0, Lcom/android/camera/MediaEvent;->m_ContentUri:Landroid/net/Uri;

    .line 28
    iput-object p3, p0, Lcom/android/camera/MediaEvent;->m_FilePath:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "filePath"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/MediaEvent;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public final getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/MediaEvent;->m_ContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/MediaEvent;->m_FilePath:Ljava/lang/String;

    return-object v0
.end method
