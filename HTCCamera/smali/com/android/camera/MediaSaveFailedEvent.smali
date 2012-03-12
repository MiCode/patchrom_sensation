.class public Lcom/android/camera/MediaSaveFailedEvent;
.super Lcom/android/camera/MediaEvent;
.source "MediaSaveFailedEvent.java"


# static fields
.field public static final REASON_NO_STORAGE:I = 0x1

.field public static final REASON_UNKNOWN:I


# instance fields
.field private final m_Reason:I

.field private final m_Throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "reason"

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/camera/MediaSaveFailedEvent;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 6
    .parameter "name"
    .parameter "reason"
    .parameter "throwable"

    .prologue
    const/4 v2, 0x0

    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/MediaSaveFailedEvent;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 6
    .parameter "name"
    .parameter "contentUri"
    .parameter "filePath"
    .parameter "reason"

    .prologue
    .line 32
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/MediaSaveFailedEvent;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0
    .parameter "name"
    .parameter "contentUri"
    .parameter "filePath"
    .parameter "reason"
    .parameter "throwable"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/MediaEvent;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 37
    iput p4, p0, Lcom/android/camera/MediaSaveFailedEvent;->m_Reason:I

    .line 38
    iput-object p5, p0, Lcom/android/camera/MediaSaveFailedEvent;->m_Throwable:Ljava/lang/Throwable;

    .line 39
    return-void
.end method


# virtual methods
.method public final getReason()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/android/camera/MediaSaveFailedEvent;->m_Reason:I

    return v0
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/MediaSaveFailedEvent;->m_Throwable:Ljava/lang/Throwable;

    return-object v0
.end method
