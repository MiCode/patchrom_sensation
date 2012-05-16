.class Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ArtistBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 557
    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    .line 558
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 559
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 563
    const-string v2, "[ArtistBrowserActivityExp]"

    const-string v3, "@@@@ onQueryComplete()"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    iget-object v2, v2, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mIsDestroy:Z
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->access$500(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    iget-object v2, v2, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    iput-boolean v4, v2, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->mAsyncQuerying:Z

    .line 569
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    iget-object v2, v2, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->getUnknownArtist()Landroid/database/Cursor;

    move-result-object v1

    .line 570
    .local v1, unknown:Landroid/database/Cursor;
    move-object v0, p3

    .line 571
    .local v0, cur:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 572
    new-instance v0, Landroid/database/MergeCursor;

    .end local v0           #cur:Landroid/database/Cursor;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    aput-object p3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 575
    .restart local v0       #cur:Landroid/database/Cursor;
    :cond_2
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->access$600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->init(Landroid/database/Cursor;)V

    .line 576
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->access$600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    move-result-object v2

    #calls: Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->setTitle()V
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->access$700(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;)V

    .line 578
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->access$600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 579
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;->access$600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExp$ArtistCursorAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExp;->showSpinner(Z)V

    goto :goto_0
.end method
