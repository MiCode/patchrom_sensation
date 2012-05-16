.class Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;
.super Landroid/os/Handler;
.source "LocalMusicSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/LocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x3

    .line 138
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v3, v3, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    if-eqz v3, :cond_0

    .line 141
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v3, v3, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 146
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 149
    .local v1, queryType:I
    const/4 v3, 0x1

    if-ne v3, v1, :cond_8

    .line 151
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 153
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_7

    .line 156
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$408(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    .line 219
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 222
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 223
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mOnlineSearchItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_3
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->hideEmptyErrorView()V

    .line 233
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 234
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 238
    :cond_4
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 239
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 243
    :cond_5
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 244
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 248
    :cond_6
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mOnlineSearchItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mOnlineSearchIndex:I
    invoke-static {v3, v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2302(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 249
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleIndex:I
    invoke-static {v3, v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2402(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 250
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleIndex:I
    invoke-static {v3, v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2502(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 251
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleIndex:I
    invoke-static {v3, v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2602(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 252
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistNoResultItemIndex:I
    invoke-static {v3, v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2702(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 253
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumNoResultItemIndex:I
    invoke-static {v3, v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2902(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 254
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackNoResultItemIndex:I
    invoke-static {v3, v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3102(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 256
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->DumpQueryItemIndex()V

    .line 258
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v3, v3, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 159
    :cond_7
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 162
    :goto_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    .line 163
    new-instance v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    invoke-direct {v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;-><init>()V

    .line 164
    .local v0, addItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursorIdIndex:I
    invoke-static {v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setId(J)V

    .line 165
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursorArtistIndex:I
    invoke-static {v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setPrimaryText(Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 171
    .end local v0           #addItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    :cond_8
    const/4 v3, 0x2

    if-ne v3, v1, :cond_b

    .line 173
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 175
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_a

    .line 178
    :cond_9
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$408(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    goto/16 :goto_1

    .line 181
    :cond_a
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 184
    :goto_3
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    .line 185
    new-instance v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    invoke-direct {v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;-><init>()V

    .line 186
    .restart local v0       #addItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorIdIndex:I
    invoke-static {v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setId(J)V

    .line 187
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorAlbumIndex:I
    invoke-static {v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setPrimaryText(Ljava/lang/String;)V

    .line 188
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorArtIndex:I
    invoke-static {v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setArtPath(Ljava/lang/String;)V

    .line 189
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 194
    .end local v0           #addItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    :cond_b
    if-ne v5, v1, :cond_2

    .line 196
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 198
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_d

    .line 201
    :cond_c
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$408(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    goto/16 :goto_1

    .line 204
    :cond_d
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 207
    :goto_4
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    .line 208
    new-instance v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    invoke-direct {v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;-><init>()V

    .line 209
    .restart local v0       #addItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorIdIndex:I
    invoke-static {v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setId(J)V

    .line 210
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorTitleIndex:I
    invoke-static {v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setPrimaryText(Ljava/lang/String;)V

    .line 211
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorArtistIndex:I
    invoke-static {v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setSecondaryText(Ljava/lang/String;)V

    .line 212
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorArtIndex:I
    invoke-static {v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setArtPath(Ljava/lang/String;)V

    .line 213
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    .line 225
    .end local v0           #addItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    :cond_e
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mNoResultCount:I
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v3

    if-lt v3, v5, :cond_3

    .line 226
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    const v4, 0x7f070029

    invoke-virtual {v3, v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->showEmptyView(I)V

    goto/16 :goto_0

    .line 263
    .end local v1           #queryType:I
    :pswitch_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->clear()V

    .line 265
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 266
    .local v2, searchStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->initOnlineSearch(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 270
    .end local v2           #searchStr:Ljava/lang/String;
    :pswitch_3
    const-string v3, "[LocalMusicSearchActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message MSG_HANDLE_PROGRESS, mIsSearchingCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I
    invoke-static {v3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v3

    if-lez v3, :cond_f

    .line 272
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v3, v3, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/HeaderBarInput;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarInput;->setProgressVisibility(I)V

    goto/16 :goto_0

    .line 275
    :cond_f
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v3, v3, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/HeaderBarInput;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarInput;->setProgressVisibility(I)V

    goto/16 :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
