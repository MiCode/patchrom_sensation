.class public Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;
.super Ljava/lang/Object;
.source "DmsDetailBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "pageInfo"
.end annotation


# instance fields
.field private endIndex:Ljava/lang/Long;

.field private middleIndex:Ljava/lang/Long;

.field private startIndex:Ljava/lang/Long;

.field final synthetic this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, -0x1

    .line 2272
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2273
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->startIndex:Ljava/lang/Long;

    .line 2274
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->endIndex:Ljava/lang/Long;

    .line 2275
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->middleIndex:Ljava/lang/Long;

    .line 2276
    return-void
.end method

.method public constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;III)V
    .locals 3
    .parameter
    .parameter "start"
    .parameter "middle"
    .parameter "end"

    .prologue
    .line 2278
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2279
    new-instance v0, Ljava/lang/Long;

    int-to-long v1, p2

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->startIndex:Ljava/lang/Long;

    .line 2280
    new-instance v0, Ljava/lang/Long;

    int-to-long v1, p3

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->endIndex:Ljava/lang/Long;

    .line 2281
    new-instance v0, Ljava/lang/Long;

    int-to-long v1, p4

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->middleIndex:Ljava/lang/Long;

    .line 2282
    return-void
.end method


# virtual methods
.method public getEndIdx()J
    .locals 2

    .prologue
    .line 2297
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->endIndex:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMiddleIdx()J
    .locals 2

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->middleIndex:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartIdx()J
    .locals 2

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->startIndex:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setEndIdx(J)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2293
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->endIndex:Ljava/lang/Long;

    .line 2294
    return-void
.end method

.method public setMiddleIdx(J)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2301
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->middleIndex:Ljava/lang/Long;

    .line 2302
    return-void
.end method

.method public setStartIdx(J)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2285
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$pageInfo;->startIndex:Ljava/lang/Long;

    .line 2286
    return-void
.end method
