.class Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;
.super Ljava/lang/Object;
.source "EditPlaylistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/EditPlaylistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlaylistItemInfo"
.end annotation


# instance fields
.field mChecked:Z

.field mTrackId:I

.field final synthetic this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 1392
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;IZ)V

    .line 1393
    return-void
.end method

.method constructor <init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;I)V
    .locals 1
    .parameter
    .parameter "trackId"

    .prologue
    .line 1396
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;IZ)V

    .line 1397
    return-void
.end method

.method constructor <init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;IZ)V
    .locals 0
    .parameter
    .parameter "trackId"
    .parameter "checked"

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1400
    iput p2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;->mTrackId:I

    .line 1401
    iput-boolean p3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;->mChecked:Z

    .line 1402
    return-void
.end method
