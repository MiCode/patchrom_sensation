.class Lcom/htc/music/PluginPropertyListActivity$4;
.super Landroid/widget/BaseAdapter;
.source "PluginPropertyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/PluginPropertyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/PluginPropertyListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/PluginPropertyListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->titleArray:[Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/PluginPropertyListActivity;->access$400(Lcom/htc/music/PluginPropertyListActivity;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 221
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->titleArray:[Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/PluginPropertyListActivity;->access$400(Lcom/htc/music/PluginPropertyListActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 225
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 229
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 233
    if-nez p2, :cond_0

    .line 234
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    invoke-virtual {v3}, Lcom/htc/music/PluginPropertyListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030012

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 236
    :cond_0
    const v3, 0x7f080043

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    move-object v1, v3

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 237
    .local v1, listItemText:Lcom/htc/widget/HtcListItem2LineText;
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->titleArray:[Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$400(Lcom/htc/music/PluginPropertyListActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 239
    const-string v2, ""

    .line 241
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$500(Lcom/htc/music/PluginPropertyListActivity;)[I

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$500(Lcom/htc/music/PluginPropertyListActivity;)[I

    move-result-object v3

    array-length v3, v3

    iget-object v4, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->titleArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/PluginPropertyListActivity;->access$400(Lcom/htc/music/PluginPropertyListActivity;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-eq v3, v4, :cond_2

    .line 242
    :cond_1
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$000(Lcom/htc/music/PluginPropertyListActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mListItemArray is null or length is incorrect!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :goto_0
    return-object p2

    .line 248
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$500(Lcom/htc/music/PluginPropertyListActivity;)[I

    move-result-object v3

    aget v3, v3, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v3, :pswitch_data_0

    .line 350
    :cond_3
    :goto_1
    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->isValid()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 251
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    iget-object v4, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v4}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v4

    iget-wide v4, v4, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mDuration:J

    invoke-static {v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 254
    :cond_4
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$100(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 255
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    iget-object v4, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v4}, Lcom/htc/music/PluginPropertyListActivity;->access$100(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 261
    :pswitch_1
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->isValid()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 262
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    iget-object v2, v3, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mFileName:Ljava/lang/String;

    goto :goto_1

    .line 265
    :cond_5
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$100(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 266
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$100(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getFileName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 272
    :pswitch_2
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->isValid()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 273
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    iget-object v2, v3, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mTrackName:Ljava/lang/String;

    goto :goto_1

    .line 276
    :cond_6
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$100(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 277
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$100(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 282
    :pswitch_3
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->isValid()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 283
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    iget-object v2, v3, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mArtistName:Ljava/lang/String;

    .line 290
    :cond_7
    :goto_2
    const-string v3, "<unknown>"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 291
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    const v4, 0x7f070043

    invoke-virtual {v3, v4}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 285
    :cond_8
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$100(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 286
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$100(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 295
    :pswitch_4
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->isValid()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 296
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    iget-object v2, v3, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mAlbumName:Ljava/lang/String;

    .line 303
    :cond_9
    :goto_3
    const-string v3, "<unknown>"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 304
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    const v4, 0x7f070044

    invoke-virtual {v3, v4}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 298
    :cond_a
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$100(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 299
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$100(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 309
    :pswitch_5
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->isValid()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 310
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    iget-object v2, v3, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mGenre:Ljava/lang/String;

    .line 317
    :cond_b
    :goto_4
    if-eqz v2, :cond_c

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 318
    :cond_c
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    const v4, 0x7f070046

    invoke-virtual {v3, v4}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 312
    :cond_d
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$100(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 313
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$100(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getGenre()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 323
    :pswitch_6
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->isValid()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 324
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    iget-object v2, v3, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mComposer:Ljava/lang/String;

    .line 331
    :cond_e
    :goto_5
    if-eqz v2, :cond_f

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 332
    :cond_f
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    const v4, 0x7f070045

    invoke-virtual {v3, v4}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 326
    :cond_10
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$100(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 327
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$100(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getComposer()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 337
    :pswitch_7
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->isValid()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 338
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v3

    iget-object v2, v3, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mLocation:Ljava/lang/String;

    goto/16 :goto_1

    .line 340
    :cond_11
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$100(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 341
    iget-object v3, p0, Lcom/htc/music/PluginPropertyListActivity$4;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PluginPropertyListActivity;->access$100(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getLocation()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto/16 :goto_1

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
