.class Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AlbumDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlbumDetailAsyncQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 1665
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    .line 1666
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1667
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const v2, 0x7f070029

    const/4 v1, 0x1

    .line 1671
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 1673
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumDetailActivity;->decreaseQueryingCount()V
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    .line 1675
    packed-switch p1, :pswitch_data_0

    .line 1716
    :goto_0
    return-void

    .line 1677
    :pswitch_0
    if-nez p3, :cond_0

    .line 1678
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->removeMessages(I)V

    .line 1679
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumDetailActivity;->clearQueryingCount()V
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3700(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    .line 1680
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->showDatabaseErrorUI()V

    goto :goto_0

    .line 1684
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1685
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->removeMessages(I)V

    .line 1686
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumDetailActivity;->clearQueryingCount()V
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3700(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    .line 1687
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->showEmptyViewUI(I)V

    goto :goto_0

    .line 1691
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->mergeDlAlbumArt(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1695
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1696
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1697
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$302(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1700
    :cond_2
    if-nez p3, :cond_3

    .line 1701
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->showDatabaseErrorUI()V

    goto :goto_0

    .line 1705
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 1706
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->showEmptyViewUI(I)V

    goto/16 :goto_0

    .line 1710
    :cond_4
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->hideEmptyErrorViewUI()V

    .line 1712
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$302(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1713
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailAsyncQueryHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1675
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
