.class public Lcom/android/camera/MediaShareRequestEvent;
.super Lcom/android/camera/RequestEvent;
.source "MediaShareRequestEvent.java"


# instance fields
.field private final m_MediaInfos:[Lcom/android/camera/MediaInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, mediaInfos:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/MediaInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/camera/RequestEvent;-><init>(Ljava/lang/String;)V

    .line 23
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 24
    .local v0, count:I
    :goto_0
    new-array v1, v0, [Lcom/android/camera/MediaInfo;

    iput-object v1, p0, Lcom/android/camera/MediaShareRequestEvent;->m_MediaInfos:[Lcom/android/camera/MediaInfo;

    .line 25
    if-lez v0, :cond_0

    .line 26
    iget-object v1, p0, Lcom/android/camera/MediaShareRequestEvent;->m_MediaInfos:[Lcom/android/camera/MediaInfo;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 27
    :cond_0
    return-void

    .line 23
    .end local v0           #count:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getMediaInfos()[Lcom/android/camera/MediaInfo;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/MediaShareRequestEvent;->m_MediaInfos:[Lcom/android/camera/MediaInfo;

    invoke-virtual {v0}, [Lcom/android/camera/MediaInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/MediaInfo;

    check-cast v0, [Lcom/android/camera/MediaInfo;

    return-object v0
.end method
