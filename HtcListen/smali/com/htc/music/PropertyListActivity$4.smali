.class Lcom/htc/music/PropertyListActivity$4;
.super Landroid/widget/BaseAdapter;
.source "PropertyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/PropertyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/PropertyListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/PropertyListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private getLocation()Ljava/lang/String;
    .locals 5

    .prologue
    .line 665
    const/4 v1, 0x0

    .line 666
    .local v1, loc:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$800(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 667
    iget-object v2, p0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$800(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$800(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v4, "_data"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 672
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #calls: Lcom/htc/music/PropertyListActivity;->wasDRMFilePlaying(Ljava/lang/String;)Z
    invoke-static {v2, v1}, Lcom/htc/music/PropertyListActivity;->access$1000(Lcom/htc/music/PropertyListActivity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 673
    iget-object v2, p0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 674
    .local v0, cur:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    .line 675
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 676
    const-string v2, "_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 678
    :cond_1
    if-eqz v0, :cond_2

    .line 679
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 683
    .end local v0           #cur:Landroid/database/Cursor;
    :cond_2
    return-object v1

    .line 668
    :cond_3
    iget-object v2, p0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 669
    iget-object v2, p0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v4, "_data"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->titleArray:[Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/PropertyListActivity;->access$600(Lcom/htc/music/PropertyListActivity;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 393
    const/4 v0, 0x0

    .line 394
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->titleArray:[Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/PropertyListActivity;->access$600(Lcom/htc/music/PropertyListActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method getDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .parameter "date"

    .prologue
    .line 406
    iget-object v2, p0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v2}, Lcom/htc/music/PropertyListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, format:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 409
    const-string v0, "MM-dd-yyyy"

    .line 410
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HH:mm:ss"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 411
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getDrmConstraint(Landroid/database/Cursor;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;
    .locals 11
    .parameter "drmCursor"
    .parameter "drmConstraint"

    .prologue
    .line 415
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 416
    :cond_0
    const/4 v5, 0x0

    .line 448
    :cond_1
    :goto_0
    return-object v5

    .line 418
    :cond_2
    invoke-virtual {p2}, Landroid/provider/DrmStore$DrmConstraint;->getCount()I

    move-result v6

    .line 419
    .local v6, nCount:I
    invoke-virtual {p2}, Landroid/provider/DrmStore$DrmConstraint;->getStartDate()Ljava/util/Date;

    move-result-object v1

    .line 420
    .local v1, dateStart:Ljava/util/Date;
    invoke-virtual {p2}, Landroid/provider/DrmStore$DrmConstraint;->getEndDate()Ljava/util/Date;

    move-result-object v0

    .line 421
    .local v0, dateEnd:Ljava/util/Date;
    invoke-virtual {p2}, Landroid/provider/DrmStore$DrmConstraint;->getInterval()J

    move-result-wide v2

    .line 423
    .local v2, lInterval:J
    const-string v5, ""

    .line 424
    .local v5, msg:Ljava/lang/String;
    if-ltz v6, :cond_4

    .line 425
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 426
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 427
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    const v9, 0x7f070080

    invoke-virtual {v8, v9}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 429
    :cond_4
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_6

    .line 430
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 431
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 432
    :cond_5
    const-wide/32 v7, 0xea60

    div-long v7, v2, v7

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 433
    .local v4, mins:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v8}, Lcom/htc/music/PropertyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0700b7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 436
    goto/16 :goto_0

    .line 437
    .end local v4           #mins:Ljava/lang/String;
    :cond_6
    if-eqz v1, :cond_8

    .line 438
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 439
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 440
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    const v9, 0x7f070081

    invoke-virtual {v8, v9}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity$4;->getDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 442
    :cond_8
    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_9

    .line 444
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 445
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    const v9, 0x7f070082

    invoke-virtual {v8, v9}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v0}, Lcom/htc/music/PropertyListActivity$4;->getDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 398
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 402
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 26
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 452
    if-nez p2, :cond_0

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    invoke-virtual {v2}, Lcom/htc/music/PropertyListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030012

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 456
    :cond_0
    const v2, 0x7f080043

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    move-object v15, v2

    check-cast v15, Lcom/htc/widget/HtcListItem2LineText;

    .line 457
    .local v15, listItemText:Lcom/htc/widget/HtcListItem2LineText;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->titleArray:[Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$600(Lcom/htc/music/PropertyListActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v15, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 459
    const-string v19, ""

    .line 460
    .local v19, s:Ljava/lang/String;
    const/16 v16, 0x0

    .line 462
    .local v16, path:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 660
    :cond_1
    :goto_0
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 661
    return-object p2

    .line 466
    :pswitch_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$100(Lcom/htc/music/PropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v2

    if-nez v2, :cond_2

    const/16 v18, 0x0

    .line 467
    .local v18, playingAudioId:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_3

    const/16 v21, 0x0

    .line 469
    .local v21, showingAudioId:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v6, "duration"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 472
    .local v13, duration:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    div-int/lit16 v3, v13, 0x3e8

    int-to-long v6, v3

    invoke-static {v2, v6, v7}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    .line 473
    goto :goto_0

    .line 466
    .end local v13           #duration:I
    .end local v18           #playingAudioId:I
    .end local v21           #showingAudioId:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$100(Lcom/htc/music/PropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v18

    goto :goto_1

    .line 467
    .restart local v18       #playingAudioId:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v6, "_id"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    goto :goto_2

    .line 476
    .restart local v21       #showingAudioId:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$100(Lcom/htc/music/PropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$100(Lcom/htc/music/PropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->duration()J

    move-result-wide v6

    const-wide/16 v24, 0x3e8

    div-long v6, v6, v24

    invoke-static {v2, v6, v7}, Lcom/htc/music/util/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 482
    .end local v18           #playingAudioId:I
    .end local v21           #showingAudioId:I
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/PropertyListActivity$4;->getLocation()Ljava/lang/String;

    move-result-object v19

    .line 483
    if-eqz v19, :cond_5

    .line 484
    const-string v2, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 485
    .local v17, pathSeg:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v19, v17, v2

    .line 486
    goto/16 :goto_0

    .line 487
    .end local v17           #pathSeg:[Ljava/lang/String;
    :cond_5
    const-string v19, ""

    .line 488
    goto/16 :goto_0

    .line 490
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v6, "title"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 494
    :cond_6
    if-eqz v19, :cond_7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 495
    :cond_7
    const-string v19, ""

    goto/16 :goto_0

    .line 499
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v6, "artist"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 502
    :cond_8
    const-string v2, "<unknown>"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    const v3, 0x7f070043

    invoke-virtual {v2, v3}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 507
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v6, "album"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 510
    :cond_9
    const-string v2, "<unknown>"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    const v3, 0x7f070044

    invoke-virtual {v2, v3}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 515
    :pswitch_5
    const/4 v9, -0x1

    .line 516
    .local v9, audioId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$200(Lcom/htc/music/PropertyListActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$200(Lcom/htc/music/PropertyListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 520
    :cond_a
    :goto_3
    if-ltz v9, :cond_b

    .line 521
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "name"

    aput-object v3, v4, v2

    .line 526
    .local v4, CursorCols:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id in (select genre_id from audio_genres_map where audio_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 529
    .local v5, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    sget-object v3, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 532
    .local v11, cur:Landroid/database/Cursor;
    if-eqz v11, :cond_e

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_e

    .line 533
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 534
    const-string v2, "name"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 538
    :goto_4
    if-eqz v11, :cond_b

    .line 539
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 543
    .end local v4           #CursorCols:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v11           #cur:Landroid/database/Cursor;
    :cond_b
    if-eqz v19, :cond_c

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 544
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    const v3, 0x7f070046

    invoke-virtual {v2, v3}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 518
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$100(Lcom/htc/music/PropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$100(Lcom/htc/music/PropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    goto :goto_3

    .line 537
    .restart local v4       #CursorCols:[Ljava/lang/String;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v11       #cur:Landroid/database/Cursor;
    :cond_e
    const/16 v19, 0x0

    goto :goto_4

    .line 549
    .end local v4           #CursorCols:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v9           #audioId:I
    .end local v11           #cur:Landroid/database/Cursor;
    :pswitch_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$100(Lcom/htc/music/PropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    .line 552
    :goto_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v6, "composer"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 555
    if-eqz v19, :cond_f

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 556
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    const v3, 0x7f070045

    invoke-virtual {v2, v3}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 558
    :cond_10
    const-string v19, ""

    .line 559
    goto/16 :goto_0

    .line 569
    :pswitch_7
    const-wide/16 v22, 0x0

    .line 570
    .local v22, trackNum:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v6, "track"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 573
    :cond_11
    const-wide/16 v2, 0x0

    cmp-long v2, v22, v2

    if-nez v2, :cond_12

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    const v3, 0x7f07007e

    invoke-virtual {v2, v3}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 575
    :cond_12
    const-wide/16 v2, 0x3e8

    cmp-long v2, v22, v2

    if-ltz v2, :cond_13

    .line 576
    const-wide/16 v2, 0x3e8

    div-long v22, v22, v2

    .line 577
    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 579
    :cond_13
    const-string v19, "1"

    .line 580
    goto/16 :goto_0

    .line 584
    .end local v22           #trackNum:J
    :pswitch_8
    const-wide/16 v22, 0x0

    .line 585
    .restart local v22       #trackNum:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v6, "track"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 588
    :cond_14
    const-wide/16 v2, 0x0

    cmp-long v2, v22, v2

    if-nez v2, :cond_15

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    const v3, 0x7f07007e

    invoke-virtual {v2, v3}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 590
    :cond_15
    const-wide/16 v2, 0x3e8

    cmp-long v2, v22, v2

    if-ltz v2, :cond_16

    .line 591
    const-wide/16 v2, 0x3e8

    rem-long v22, v22, v2

    .line 592
    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 594
    :cond_16
    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    .line 596
    goto/16 :goto_0

    .line 600
    .end local v22           #trackNum:J
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v6, "year"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 603
    :cond_17
    if-eqz v19, :cond_18

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 604
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    const v3, 0x7f07007e

    invoke-virtual {v2, v3}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 609
    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/PropertyListActivity$4;->getLocation()Ljava/lang/String;

    move-result-object v19

    .line 610
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    .line 611
    .local v8, am:Landroid/app/IActivityManager;
    invoke-interface {v8}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 612
    .local v10, config:Landroid/content/res/Configuration;
    iget-object v2, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 614
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    .line 616
    .local v20, sdcard:Ljava/lang/String;
    const-string v2, "/\u5b58\u50a8\u5361"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 618
    goto/16 :goto_0

    .line 624
    .end local v8           #am:Landroid/app/IActivityManager;
    .end local v10           #config:Landroid/content/res/Configuration;
    .end local v20           #sdcard:Ljava/lang/String;
    :pswitch_b
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->isWMdrm:Z
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$700(Lcom/htc/music/PropertyListActivity;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    const v3, 0x7f070088

    invoke-virtual {v2, v3}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 629
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$800(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$800(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$800(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v3

    const-string v6, "delivery_type"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 632
    .local v12, deliveryType:I
    packed-switch v12, :pswitch_data_1

    goto/16 :goto_0

    .line 634
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    const v3, 0x7f07008a

    invoke-virtual {v2, v3}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 636
    goto/16 :goto_0

    .line 639
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$900(Lcom/htc/music/PropertyListActivity;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    const v3, 0x7f070087

    invoke-virtual {v2, v3}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 642
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$800(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$900(Lcom/htc/music/PropertyListActivity;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/music/PropertyListActivity$4;->getDrmConstraint(Landroid/database/Cursor;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v19

    .line 643
    goto/16 :goto_0

    .line 645
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$900(Lcom/htc/music/PropertyListActivity;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/PropertyListActivity;->access$800(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    #getter for: Lcom/htc/music/PropertyListActivity;->mDrmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    invoke-static {v3}, Lcom/htc/music/PropertyListActivity;->access$900(Lcom/htc/music/PropertyListActivity;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/music/PropertyListActivity$4;->getDrmConstraint(Landroid/database/Cursor;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 648
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/PropertyListActivity$4;->this$0:Lcom/htc/music/PropertyListActivity;

    const v3, 0x7f070089

    invoke-virtual {v2, v3}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v19

    .line 649
    goto/16 :goto_0

    .line 656
    .end local v12           #deliveryType:I
    :catch_0
    move-exception v14

    .line 657
    .local v14, e:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 550
    .end local v14           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto/16 :goto_5

    .line 462
    nop

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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 632
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method
