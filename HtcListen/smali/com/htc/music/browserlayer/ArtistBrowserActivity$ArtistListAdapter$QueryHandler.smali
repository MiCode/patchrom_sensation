.class Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ArtistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 854
    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    .line 855
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 856
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v7, 0x0

    .line 861
    if-eqz p3, :cond_1

    .line 863
    invoke-interface {p3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    .line 864
    .local v0, colcount:I
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v4

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$900(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query complete: cols count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    if-gtz v0, :cond_1

    .line 867
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v4

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$900(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Cursor columns not match. Return from onQueryComplete"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 890
    .end local v0           #colcount:I
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p2

    .line 873
    check-cast v3, Ljava/lang/String;

    .line 874
    .local v3, unknownWhere:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 875
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAsyncUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->getUnknownArtist(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 876
    .local v2, unknown:Landroid/database/Cursor;
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v4

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$900(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onQueryComplete unknown= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    if-eqz p3, :cond_3

    if-eqz v2, :cond_3

    .line 878
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/database/Cursor;

    aput-object p3, v4, v7

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-direct {v1, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local p3
    .local v1, cursor:Landroid/database/Cursor;
    move-object p3, v1

    .line 884
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #unknown:Landroid/database/Cursor;
    .restart local p3
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v4

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$900(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onQueryComplete cursor= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 886
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v4

    iput-boolean v7, v4, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mAsyncQuerying:Z

    .line 887
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 888
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$QueryHandler;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->showSpinner(Z)V

    goto/16 :goto_0

    .line 881
    .restart local v2       #unknown:Landroid/database/Cursor;
    :cond_3
    if-eqz v2, :cond_2

    .line 882
    move-object p3, v2

    goto :goto_1
.end method
