.class public Lcom/android/camera/MediaDeletionCompletedEvent;
.super Lcom/android/camera/ActionCompletedEvent;
.source "MediaDeletionCompletedEvent.java"


# instance fields
.field private final m_ContentUri:Landroid/net/Uri;

.field private final m_FilePath:Ljava/lang/String;

.field private final m_IsLastMedia:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ZZLjava/lang/Throwable;)V
    .locals 0
    .parameter "name"
    .parameter "contentUri"
    .parameter "filePath"
    .parameter "isLastMedia"
    .parameter "isSucceeded"
    .parameter "throwable"

    .prologue
    .line 19
    invoke-direct {p0, p1, p5, p6}, Lcom/android/camera/ActionCompletedEvent;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 20
    iput-object p2, p0, Lcom/android/camera/MediaDeletionCompletedEvent;->m_ContentUri:Landroid/net/Uri;

    .line 21
    iput-object p3, p0, Lcom/android/camera/MediaDeletionCompletedEvent;->m_FilePath:Ljava/lang/String;

    .line 22
    iput-boolean p4, p0, Lcom/android/camera/MediaDeletionCompletedEvent;->m_IsLastMedia:Z

    .line 23
    return-void
.end method


# virtual methods
.method public final getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/MediaDeletionCompletedEvent;->m_ContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/MediaDeletionCompletedEvent;->m_FilePath:Ljava/lang/String;

    return-object v0
.end method

.method public final isLastMedia()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/camera/MediaDeletionCompletedEvent;->m_IsLastMedia:Z

    return v0
.end method
