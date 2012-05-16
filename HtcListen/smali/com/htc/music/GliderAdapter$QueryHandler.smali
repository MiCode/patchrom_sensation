.class Lcom/htc/music/GliderAdapter$QueryHandler;
.super Lcom/htc/music/util/DlArtAsyncQueryHandler;
.source "GliderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/GliderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/GliderAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/music/GliderAdapter;Landroid/content/ContentResolver;)V
    .locals 2
    .parameter
    .parameter "cr"

    .prologue
    .line 649
    iput-object p1, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    .line 650
    const/4 v0, 0x0

    #getter for: Lcom/htc/music/GliderAdapter;->mIsEnhancerExist:Z
    invoke-static {p1}, Lcom/htc/music/GliderAdapter;->access$400(Lcom/htc/music/GliderAdapter;)Z

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/htc/music/util/DlArtAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;ZZ)V

    .line 651
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 655
    monitor-enter p0

    .line 657
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mCookie:J
    invoke-static {v5}, Lcom/htc/music/GliderAdapter;->access$500(Lcom/htc/music/GliderAdapter;)J

    move-result-wide v5

    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 658
    const-string v5, "[GliderAdapter]"

    const-string v6, "cookie not match"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 701
    if-eqz p3, :cond_0

    .line 702
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 659
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 706
    :goto_0
    return-void

    .line 661
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v5}, Lcom/htc/music/GliderAdapter;->access$000(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    if-nez p3, :cond_4

    .line 662
    :cond_2
    const-string v5, "[GliderAdapter]"

    const-string v6, "arguments invalid"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 701
    if-eqz p3, :cond_3

    .line 702
    :try_start_3
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 663
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 705
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 666
    :cond_4
    :try_start_4
    const-string v5, "album"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 667
    .local v0, albumColumnIndex:I
    const-string v5, "_id"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 668
    .local v4, idColumnIndex:I
    const-string v5, "album_art"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 669
    .local v2, artColumnIndex:I
    if-ltz v4, :cond_5

    if-ltz v2, :cond_5

    if-gez v0, :cond_7

    .line 670
    :cond_5
    const-string v5, "[GliderAdapter]"

    const-string v6, "onQueryComplete get column index failed"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 701
    if-eqz p3, :cond_6

    .line 702
    :try_start_5
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 671
    :cond_6
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 674
    :cond_7
    const/4 v1, 0x0

    .line 675
    .local v1, albumName:Ljava/lang/String;
    :try_start_6
    iget-object v5, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/music/GliderAdapter;->access$600(Lcom/htc/music/GliderAdapter;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 676
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 680
    :cond_8
    const/4 v5, -0x1

    iget-object v6, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mUnknownAlbumId:I
    invoke-static {v6}, Lcom/htc/music/GliderAdapter;->access$700(Lcom/htc/music/GliderAdapter;)I

    move-result v6

    if-ne v5, v6, :cond_a

    .line 681
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 682
    if-eqz v1, :cond_9

    const-string v5, "<unknown>"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 683
    :cond_9
    iget-object v5, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    #setter for: Lcom/htc/music/GliderAdapter;->mUnknownAlbumId:I
    invoke-static {v5, v6}, Lcom/htc/music/GliderAdapter;->access$702(Lcom/htc/music/GliderAdapter;I)I

    .line 687
    :cond_a
    iget-object v5, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/music/GliderAdapter;->access$600(Lcom/htc/music/GliderAdapter;)Ljava/util/HashMap;

    move-result-object v5

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_8

    .line 692
    :cond_b
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v5, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v5}, Lcom/htc/music/GliderAdapter;->access$000(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v5

    array-length v5, v5

    if-ge v3, v5, :cond_c

    .line 693
    iget-object v5, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v5}, Lcom/htc/music/GliderAdapter;->access$000(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v5

    aget-object v6, v5, v3

    iget-object v5, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumIdArtPathMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/music/GliderAdapter;->access$600(Lcom/htc/music/GliderAdapter;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mAlbumInfoArray:[Lcom/htc/music/GliderAdapter$AlbumInfo;
    invoke-static {v7}, Lcom/htc/music/GliderAdapter;->access$000(Lcom/htc/music/GliderAdapter;)[Lcom/htc/music/GliderAdapter$AlbumInfo;

    move-result-object v7

    aget-object v7, v7, v3

    iget v7, v7, Lcom/htc/music/GliderAdapter$AlbumInfo;->mAlbumId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v6, Lcom/htc/music/GliderAdapter$AlbumInfo;->mDlArtPath:Ljava/lang/String;

    .line 692
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 697
    :cond_c
    iget-object v5, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    const/4 v6, 0x1

    #setter for: Lcom/htc/music/GliderAdapter;->mIsDownloadInfoQueried:Z
    invoke-static {v5, v6}, Lcom/htc/music/GliderAdapter;->access$802(Lcom/htc/music/GliderAdapter;Z)Z

    .line 699
    iget-object v5, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    iget-object v6, p0, Lcom/htc/music/GliderAdapter$QueryHandler;->this$0:Lcom/htc/music/GliderAdapter;

    #getter for: Lcom/htc/music/GliderAdapter;->mSelectedPos:I
    invoke-static {v6}, Lcom/htc/music/GliderAdapter;->access$900(Lcom/htc/music/GliderAdapter;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/music/GliderAdapter;->requestAllBitmap(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 701
    if-eqz p3, :cond_d

    .line 702
    :try_start_7
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 705
    :cond_d
    monitor-exit p0

    goto/16 :goto_0

    .line 701
    .end local v0           #albumColumnIndex:I
    .end local v1           #albumName:Ljava/lang/String;
    .end local v2           #artColumnIndex:I
    .end local v3           #i:I
    .end local v4           #idColumnIndex:I
    :catchall_1
    move-exception v5

    if-eqz p3, :cond_e

    .line 702
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 701
    :cond_e
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method
