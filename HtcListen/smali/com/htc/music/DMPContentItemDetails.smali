.class public Lcom/htc/music/DMPContentItemDetails;
.super Ljava/lang/Object;
.source "DMPContentItemDetails.java"


# instance fields
.field public contentAlbum:Ljava/lang/String;

.field public contentArtist:Ljava/lang/String;

.field public contentComposer:Ljava/lang/String;

.field public contentDate:Ljava/lang/String;

.field public contentDuration:J

.field public contentGenre:Ljava/lang/String;

.field public contentPath:Ljava/lang/String;

.field public contentTitle:Ljava/lang/String;

.field public fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/htc/music/DMPContentItemDetails;->reset()V

    .line 17
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lcom/htc/music/DMPContentItemDetails;->fileName:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/htc/music/DMPContentItemDetails;->contentPath:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/htc/music/DMPContentItemDetails;->contentTitle:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/htc/music/DMPContentItemDetails;->contentArtist:Ljava/lang/String;

    .line 24
    const-string v0, " "

    iput-object v0, p0, Lcom/htc/music/DMPContentItemDetails;->contentAlbum:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/htc/music/DMPContentItemDetails;->contentDate:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/htc/music/DMPContentItemDetails;->contentGenre:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/htc/music/DMPContentItemDetails;->contentComposer:Ljava/lang/String;

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/DMPContentItemDetails;->contentDuration:J

    .line 29
    return-void
.end method
