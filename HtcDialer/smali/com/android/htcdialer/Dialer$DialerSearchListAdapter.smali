.class final Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;
.super Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;
.source "Dialer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/Dialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DialerSearchListAdapter"
.end annotation


# instance fields
.field private mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

.field mViewContactListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/android/htcdialer/Dialer;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/Dialer;Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "layoutId"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/SearchableObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6389
    .local p4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    .local p5, pivot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    .line 6390
    invoke-direct/range {p0 .. p5}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;-><init>(Lcom/android/htcdialer/BaseSmartSearchList;Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/HashMap;)V

    .line 6853
    new-instance v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter$1;-><init>(Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mViewContactListener:Landroid/view/View$OnClickListener;

    .line 6391
    new-instance v0, Lcom/android/htcdialer/search/DialerIndexer;

    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/android/htcdialer/search/DialerIndexer;-><init>(Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

    .line 6392
    invoke-virtual {p1}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 6393
    return-void
.end method

.method private bindButtonIcon(Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/android/htcdialer/search/SearchableObject;)V
    .locals 1
    .parameter "cache"
    .parameter "data"

    .prologue
    .line 6616
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->actionButton:Lcom/htc/widget/HtcListItemImageButton;
    invoke-static {p1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3500(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v0

    .line 6624
    .local v0, actionButton:Lcom/htc/widget/HtcListItemImageButton;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->bindIcon(Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/android/htcdialer/search/SearchableObject;Lcom/htc/widget/HtcListItemImageButton;)V

    .line 6626
    return-void
.end method

.method private bindDateAndTime(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/Dialer$ListItemCache;)V
    .locals 9
    .parameter "data"
    .parameter "cache"

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 6592
    sget-boolean v5, Lcom/android/htcdialer/BaseSmartSearchList;->IS_TMO_PROJECT:Z

    if-eqz v5, :cond_1

    move-object v2, v3

    .line 6594
    .local v2, dateAndTime:Lcom/htc/widget/HtcListItem2LineStamp;
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    .line 6595
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getCallLogDate(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v0

    .line 6596
    .local v0, date:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-nez v5, :cond_2

    .line 6597
    .local v3, dateString:Ljava/lang/String;
    :goto_1
    invoke-static {v0, v1}, Lcom/android/htcdialer/util/TimeUtils;->getTimeString(J)Ljava/lang/String;

    move-result-object v4

    .line 6599
    .local v4, timeString:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 6600
    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryTextVisibility(I)V

    .line 6601
    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryTextVisibility(I)V

    .line 6602
    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    .line 6603
    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    .line 6610
    .end local v0           #date:J
    .end local v3           #dateString:Ljava/lang/String;
    .end local v4           #timeString:Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 6592
    .end local v2           #dateAndTime:Lcom/htc/widget/HtcListItem2LineStamp;
    :cond_1
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->dateAndTime:Lcom/htc/widget/HtcListItem2LineStamp;
    invoke-static {p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3400(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItem2LineStamp;

    move-result-object v2

    goto :goto_0

    .line 6596
    .restart local v0       #date:J
    .restart local v2       #dateAndTime:Lcom/htc/widget/HtcListItem2LineStamp;
    :cond_2
    invoke-static {v0, v1}, Lcom/android/htcdialer/util/TimeUtils;->getDateString(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 6605
    .restart local v3       #dateString:Ljava/lang/String;
    .restart local v4       #timeString:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryTextVisibility(I)V

    .line 6606
    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryTextVisibility(I)V

    goto :goto_2
.end method

.method private bindDivder(ILcom/android/htcdialer/Dialer$ListItemCache;)V
    .locals 6
    .parameter "position"
    .parameter "cache"

    .prologue
    const/16 v5, 0x8

    .line 6533
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->separatorView:Landroid/view/View;
    invoke-static {p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3700(Lcom/android/htcdialer/Dialer$ListItemCache;)Landroid/view/View;

    move-result-object v1

    .line 6536
    .local v1, separatorView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 6537
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->drawTopRound(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6538
    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/search/SearchableObject;

    iget v0, v3, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 6539
    .local v0, index:I
    const v3, 0x2020010

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6540
    .local v2, tv:Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6541
    packed-switch v0, :pswitch_data_0

    .line 6549
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/search/SearchableObject;

    iget v3, v3, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/search/SearchableObject;

    iget v3, v3, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 6551
    :cond_0
    const v3, 0x7f0900ae

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 6561
    .end local v0           #index:I
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 6543
    .restart local v0       #index:I
    .restart local v2       #tv:Landroid/widget/TextView;
    :pswitch_0
    const v3, 0x7f09007f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 6546
    :pswitch_1
    const v3, 0x7f09007e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 6553
    :cond_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6557
    .end local v0           #index:I
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private bindIcon(Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/android/htcdialer/search/SearchableObject;Lcom/htc/widget/HtcListItemImageButton;)V
    .locals 1
    .parameter "cache"
    .parameter "data"
    .parameter "actionButton"

    .prologue
    .line 6630
    if-eqz p3, :cond_0

    .line 6631
    invoke-virtual {p0, p2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNameN11(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumberType(Lcom/android/htcdialer/Dialer$ListItemCache;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/htc/util/contacts/PhoneUtils;->isSpecialType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6637
    const v0, 0x7f020007

    invoke-virtual {p3, v0}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 6642
    :cond_0
    :goto_0
    return-void

    .line 6639
    :cond_1
    const v0, 0x7f020008

    invoke-virtual {p3, v0}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private bindMutiIcon(Lcom/android/htcdialer/search/SearchableObject;Lcom/htc/widget/HtcListItemImageButton;)V
    .locals 3
    .parameter "data"
    .parameter "actionButton"

    .prologue
    const/4 v2, 0x0

    .line 6646
    sget-boolean v0, Lcom/android/htcdialer/BaseSmartSearchList;->IS_TMO_PROJECT:Z

    if-nez v0, :cond_0

    .line 6649
    const-string v0, "common_button_small"

    const-string v1, "drawable"

    invoke-static {v0, v1, v2}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    .line 6651
    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 6653
    :cond_0
    return-void
.end method

.method private bindNameAndNum(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/android/htcdialer/search/DialerItem;)V
    .locals 15
    .parameter "data"
    .parameter "cache"
    .parameter "dialerView"

    .prologue
    .line 6566
    invoke-virtual/range {p0 .. p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v4

    .line 6567
    .local v4, phoneNumber:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getName(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v3

    .line 6568
    .local v3, personName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v1, :cond_0

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v4}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumberType(Lcom/android/htcdialer/Dialer$ListItemCache;Ljava/lang/String;)I

    move-result v5

    .line 6570
    .local v5, numberType:I
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactPhoneCount(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v14

    .line 6573
    .local v14, personPhonesCount:I
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->nameAndNumber:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static/range {p2 .. p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3300(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v6

    check-cast v6, Lcom/android/htcdialer/widget/DialerListItem2LineText;

    .local v6, nameAndNum:Lcom/android/htcdialer/widget/DialerListItem2LineText;
    move-object v1, p0

    move-object/from16 v2, p1

    .line 6574
    invoke-direct/range {v1 .. v6}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->setName(Lcom/android/htcdialer/search/SearchableObject;Ljava/lang/String;Ljava/lang/String;ILcom/android/htcdialer/widget/DialerListItem2LineText;)V

    move-object v7, p0

    move-object/from16 v8, p1

    move-object v9, v3

    move-object v10, v4

    move-object/from16 v11, p3

    move v12, v5

    move-object v13, v6

    .line 6576
    invoke-direct/range {v7 .. v13}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->setNumber(Lcom/android/htcdialer/search/SearchableObject;Ljava/lang/String;Ljava/lang/String;Lcom/android/htcdialer/search/DialerItem;ILcom/android/htcdialer/widget/DialerListItem2LineText;)V

    .line 6577
    invoke-virtual/range {p0 .. p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getCallLogBearerType(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v1

    invoke-direct {p0, v14, v6, v1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->setMutiNumberArrow(ILcom/android/htcdialer/widget/DialerListItem2LineText;I)V

    .line 6578
    return-void

    .line 6568
    .end local v5           #numberType:I
    .end local v6           #nameAndNum:Lcom/android/htcdialer/widget/DialerListItem2LineText;
    .end local v14           #personPhonesCount:I
    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private bindPhoto(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/Dialer$ListItemCache;)V
    .locals 0
    .parameter "data"
    .parameter "cache"

    .prologue
    .line 6688
    invoke-virtual {p0, p1, p2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->setPhoto(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/Dialer$ListItemCache;)V

    .line 6689
    return-void
.end method

.method private drawBottomRound(I)Z
    .locals 6
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6473
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_1

    .line 6480
    :cond_0
    :goto_0
    return v2

    .line 6475
    :cond_1
    if-ltz p1, :cond_2

    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge p1, v4, :cond_2

    .line 6476
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/search/SearchableObject;

    .line 6477
    .local v0, so1:Lcom/android/htcdialer/search/SearchableObject;
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableObject;

    .line 6478
    .local v1, so2:Lcom/android/htcdialer/search/SearchableObject;
    iget v4, v0, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    iget v5, v1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-ne v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    .end local v0           #so1:Lcom/android/htcdialer/search/SearchableObject;
    .end local v1           #so2:Lcom/android/htcdialer/search/SearchableObject;
    :cond_2
    move v2, v3

    .line 6480
    goto :goto_0
.end method

.method private drawTopRound(I)Z
    .locals 6
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6462
    if-nez p1, :cond_1

    .line 6469
    :cond_0
    :goto_0
    return v2

    .line 6464
    :cond_1
    if-lez p1, :cond_2

    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_2

    .line 6465
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/search/SearchableObject;

    .line 6466
    .local v0, so1:Lcom/android/htcdialer/search/SearchableObject;
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableObject;

    .line 6467
    .local v1, so2:Lcom/android/htcdialer/search/SearchableObject;
    iget v4, v0, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    iget v5, v1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-ne v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    .end local v0           #so1:Lcom/android/htcdialer/search/SearchableObject;
    .end local v1           #so2:Lcom/android/htcdialer/search/SearchableObject;
    :cond_2
    move v2, v3

    .line 6469
    goto :goto_0
.end method

.method private getGroupID(Lcom/android/htcdialer/search/SearchableContact;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "contact"
    .parameter "number"

    .prologue
    .line 6843
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v1, :cond_1

    if-eqz p2, :cond_1

    .line 6844
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p1, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-ge v0, v1, :cond_1

    .line 6845
    iget-object v1, p1, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/htcdialer/search/SearchablePhone;->number:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6846
    iget-object v1, p1, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/htcdialer/search/SearchablePhone;->number_group_id:Ljava/lang/String;

    .line 6850
    .end local v0           #i:I
    :goto_1
    return-object v1

    .line 6844
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6850
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getInitDialerItem(Lcom/android/htcdialer/search/DialerItem;Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/DialerItem;
    .locals 1
    .parameter "dialerView"
    .parameter "data"

    .prologue
    .line 6793
    invoke-virtual {p0, p2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    .line 6797
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->setDialerItemBackground(Lcom/android/htcdialer/search/DialerItem;)V

    .line 6799
    invoke-direct {p0, p2, v0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->initDialerItem(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/search/SearchableContact;Lcom/android/htcdialer/search/DialerItem;)V

    .line 6800
    return-object p1
.end method

.method private getNameN11(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;
    .locals 2
    .parameter "data"

    .prologue
    .line 6521
    const/4 v0, 0x0

    .line 6522
    .local v0, nameN11:Ljava/lang/String;
    sget-boolean v1, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->isN11Number(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6524
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->overwriteCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6528
    :cond_0
    return-object v0
.end method

.method private getNumberMarked(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/search/DialerItem;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "data"
    .parameter "dialerView"

    .prologue
    .line 6833
    const/4 v0, 0x0

    .line 6834
    .local v0, phoneNumberMarked:Ljava/lang/CharSequence;
    iget-boolean v1, p2, Lcom/android/htcdialer/search/DialerItem;->isSimContact:Z

    if-nez v1, :cond_0

    .line 6835
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumberTypeString(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumberMarked(Lcom/android/htcdialer/search/SearchableObject;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6839
    :goto_0
    return-object v0

    .line 6837
    :cond_0
    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumberMarked(Lcom/android/htcdialer/search/SearchableObject;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private getNumberType(Lcom/android/htcdialer/Dialer$ListItemCache;Ljava/lang/String;)I
    .locals 3
    .parameter "cache"
    .parameter "phoneNumber"

    .prologue
    .line 6581
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    iget-object v1, v1, Lcom/android/htcdialer/BaseSmartSearchList;->mVoiceMailNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mEmergencyNumbers:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/htcdialer/Dialer;->access$4100(Lcom/android/htcdialer/Dialer;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/htc/util/contacts/PhoneUtils;->getType(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->numberType:I
    invoke-static {p1, v1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$4002(Lcom/android/htcdialer/Dialer$ListItemCache;I)I

    move-result v0

    .line 6584
    .local v0, numberType:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6585
    const/4 v1, 0x5

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->numberType:I
    invoke-static {p1, v1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$4002(Lcom/android/htcdialer/Dialer$ListItemCache;I)I

    move-result v0

    .line 6588
    :cond_0
    return v0
.end method

.method private initActionButton(Lcom/android/htcdialer/Dialer$ListItemCache;)V
    .locals 5
    .parameter "cache"

    .prologue
    .line 6450
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v1}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x4000

    div-float v0, v1, v2

    .line 6452
    .local v0, gap:F
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->actionButton:Lcom/htc/widget/HtcListItemImageButton;
    invoke-static {p1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3500(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v2

    float-to-int v3, v0

    #calls: Lcom/android/htcdialer/Dialer;->enlargeTouchArea(Landroid/view/View;I)V
    invoke-static {v1, v2, v3}, Lcom/android/htcdialer/Dialer;->access$3800(Lcom/android/htcdialer/Dialer;Landroid/view/View;I)V

    .line 6453
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->actionButton:Lcom/htc/widget/HtcListItemImageButton;
    invoke-static {p1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3500(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6454
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->actionButton:Lcom/htc/widget/HtcListItemImageButton;
    invoke-static {p1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3500(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mViewContactListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6456
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->actionButton:Lcom/htc/widget/HtcListItemImageButton;
    invoke-static {p1}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3500(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v1

    const-string v2, "common_button_small"

    const-string v3, "drawable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    .line 6459
    :cond_0
    return-void
.end method

.method private initDialerItem(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/search/SearchableContact;Lcom/android/htcdialer/search/DialerItem;)V
    .locals 3
    .parameter "data"
    .parameter "contact"
    .parameter "dialerView"

    .prologue
    const/4 v2, 0x0

    .line 6805
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 6806
    if-nez p2, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p3, v0, v1}, Lcom/android/htcdialer/search/DialerItem;->setPersonId(J)V

    .line 6807
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/htcdialer/search/DialerItem;->setNumber(Ljava/lang/String;)V

    .line 6808
    if-nez p2, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {p3, v0}, Lcom/android/htcdialer/search/DialerItem;->setIsSimContact(Z)V

    .line 6809
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactPhones(Lcom/android/htcdialer/search/SearchableObject;)[Lcom/android/htcdialer/search/SearchablePhone;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/htcdialer/search/DialerItem;->setPhones([Lcom/android/htcdialer/search/SearchablePhone;)V

    .line 6810
    if-nez p2, :cond_3

    :goto_2
    invoke-virtual {p3, v2}, Lcom/android/htcdialer/search/DialerItem;->setIsMyPhonebook(Z)V

    .line 6812
    :cond_0
    return-void

    .line 6806
    :cond_1
    iget-wide v0, p2, Lcom/android/htcdialer/search/SearchableContact;->id:J

    goto :goto_0

    .line 6808
    :cond_2
    iget-boolean v0, p2, Lcom/android/htcdialer/search/SearchableContact;->isSimContact:Z

    goto :goto_1

    .line 6810
    :cond_3
    iget-boolean v2, p2, Lcom/android/htcdialer/search/SearchableContact;->isMyPhonebook:Z

    goto :goto_2
.end method

.method private setDialerItemBackground(Lcom/android/htcdialer/search/DialerItem;)V
    .locals 7
    .parameter "dialerView"

    .prologue
    const/4 v6, 0x0

    .line 6816
    sget-boolean v2, Lcom/android/htcdialer/BaseSmartSearchList;->IS_TMO_PROJECT:Z

    if-eqz v2, :cond_0

    .line 6817
    invoke-virtual {p1}, Lcom/android/htcdialer/search/DialerItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "background"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 6818
    .local v1, resId:I
    if-eqz v1, :cond_0

    .line 6819
    invoke-virtual {p1, v1}, Lcom/android/htcdialer/search/DialerItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6820
    .local v0, backgroundView:Landroid/view/View;
    const-string v2, "phone_smart_filter_avatar_background"

    invoke-static {v0, v2}, Lcom/android/htcdialer/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 6821
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 6824
    .end local v0           #backgroundView:Landroid/view/View;
    .end local v1           #resId:I
    :cond_0
    return-void
.end method

.method private setListItemRoundCorner(ILcom/android/htcdialer/Dialer$ListItemCache;)V
    .locals 1
    .parameter "position"
    .parameter "cache"

    .prologue
    .line 6827
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->drawTopRound(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/htcdialer/Dialer$ListItemCache;->setTopRound(Z)V

    .line 6828
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->drawBottomRound(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/htcdialer/Dialer$ListItemCache;->setBottomRound(Z)V

    .line 6829
    return-void
.end method

.method private setMutiNumberArrow(ILcom/android/htcdialer/widget/DialerListItem2LineText;I)V
    .locals 6
    .parameter "personPhonesCount"
    .parameter "nameAndNum"
    .parameter "bearerType"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 6659
    sget-boolean v2, Lcom/android/htcdialer/BaseSmartSearchList;->IS_TMO_PROJECT:Z

    if-nez v2, :cond_1

    .line 6660
    sget-boolean v2, Lcom/android/htcdialer/DialerApp;->ENABLE_MERGE_CONTACT:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    if-le p1, v2, :cond_3

    .line 6661
    const v0, 0x7f020019

    .line 6662
    .local v0, left:I
    if-ne v4, p3, :cond_2

    .line 6663
    const v0, 0x7f020012

    .line 6667
    :cond_0
    :goto_0
    const v1, 0x7f02001a

    .line 6669
    .local v1, right:I
    invoke-virtual {p2}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->getSecondaryTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 6685
    .end local v0           #left:I
    .end local v1           #right:I
    :cond_1
    :goto_1
    return-void

    .line 6664
    .restart local v0       #left:I
    :cond_2
    if-ne v5, p3, :cond_0

    .line 6665
    const v0, 0x7f020010

    goto :goto_0

    .line 6674
    .end local v0           #left:I
    :cond_3
    const/4 v0, 0x0

    .line 6675
    .restart local v0       #left:I
    if-ne v4, p3, :cond_5

    .line 6676
    const v0, 0x7f020011

    .line 6680
    :cond_4
    :goto_2
    invoke-virtual {p2}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->getSecondaryTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 6677
    :cond_5
    if-ne v5, p3, :cond_4

    .line 6678
    const v0, 0x7f02000f

    goto :goto_2
.end method

.method private setName(Lcom/android/htcdialer/search/SearchableObject;Ljava/lang/String;Ljava/lang/String;ILcom/android/htcdialer/widget/DialerListItem2LineText;)V
    .locals 4
    .parameter "data"
    .parameter "personName"
    .parameter "phoneNumber"
    .parameter "numberType"
    .parameter "nameAndNum"

    .prologue
    .line 6728
    if-nez p5, :cond_0

    .line 6729
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "View must contain a TextView named text1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6731
    :cond_0
    move-object v0, p2

    .line 6732
    .local v0, name:Ljava/lang/CharSequence;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 6733
    const/4 v2, 0x6

    if-ne v2, p4, :cond_5

    .line 6734
    sget-boolean v2, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v2, :cond_4

    .line 6736
    const-string v0, "9-1-1 Emergency"

    .line 6772
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNameN11(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v1

    .line 6773
    .local v1, nameN11:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 6774
    move-object v0, v1

    .line 6779
    :cond_2
    sget-boolean v2, Lcom/android/htcdialer/BaseSmartSearchList;->IS_TMO_PROJECT:Z

    if-eqz v2, :cond_3

    .line 6780
    instance-of v2, v0, Landroid/text/SpannableString;

    if-eqz v2, :cond_b

    .line 6781
    const/4 v2, 0x0

    invoke-virtual {p5, v2}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->setPrimaryTextVisibility(I)V

    .line 6787
    :cond_3
    :goto_1
    invoke-virtual {p5, v0}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 6789
    return-void

    .line 6738
    .end local v1           #nameN11:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    const v3, 0x10402db

    invoke-virtual {v2, v3}, Lcom/android/htcdialer/Dialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 6743
    :cond_5
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v3, 0x28

    if-ne v2, v3, :cond_7

    .line 6745
    invoke-static {p3}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6756
    :cond_6
    :goto_2
    if-nez v0, :cond_1

    .line 6758
    const/4 v2, 0x5

    if-ne v2, p4, :cond_9

    .line 6760
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    const v3, 0x7f09003d

    invoke-virtual {v2, v3}, Lcom/android/htcdialer/Dialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 6747
    :cond_7
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_8

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v3, 0x14

    if-ne v2, v3, :cond_8

    .line 6750
    invoke-static {p3}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getCellSouthCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 6752
    :cond_8
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 6754
    invoke-static {p3}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getACGServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 6764
    :cond_9
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    const v3, 0x104000e

    invoke-virtual {v2, v3}, Lcom/android/htcdialer/Dialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 6769
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNameMarked(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 6783
    .restart local v1       #nameN11:Ljava/lang/String;
    :cond_b
    const/16 v2, 0x8

    invoke-virtual {p5, v2}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->setPrimaryTextVisibility(I)V

    goto :goto_1
.end method

.method private setNumber(Lcom/android/htcdialer/search/SearchableObject;Ljava/lang/String;Ljava/lang/String;Lcom/android/htcdialer/search/DialerItem;ILcom/android/htcdialer/widget/DialerListItem2LineText;)V
    .locals 5
    .parameter "data"
    .parameter "personName"
    .parameter "phoneNumber"
    .parameter "dialerView"
    .parameter "numberType"
    .parameter "nameAndNum"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 6693
    if-eqz p6, :cond_1

    if-eqz p4, :cond_1

    .line 6694
    invoke-virtual {p4, p6, p3}, Lcom/android/htcdialer/search/DialerItem;->setMarkedNumber(Lcom/htc/widget/HtcListItem2LineText;Ljava/lang/CharSequence;)V

    .line 6695
    invoke-direct {p0, p1, p4}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumberMarked(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/search/DialerItem;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6697
    .local v1, phoneNumberMarked:Ljava/lang/CharSequence;
    const/4 v2, 0x2

    if-eq v2, p5, :cond_0

    const/4 v2, 0x3

    if-eq v2, p5, :cond_0

    const/4 v2, 0x4

    if-ne v2, p5, :cond_2

    .line 6700
    :cond_0
    invoke-virtual {p6, v3}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->setVisibility(I)V

    .line 6723
    .end local v1           #phoneNumberMarked:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-void

    .line 6702
    .restart local v1       #phoneNumberMarked:Ljava/lang/CharSequence;
    :cond_2
    sget-boolean v2, Lcom/android/htcdialer/BaseSmartSearchList;->IS_TMO_PROJECT:Z

    if-eqz v2, :cond_6

    .line 6703
    invoke-virtual {p6}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 6704
    .local v0, number:Landroid/view/View;
    instance-of v2, v1, Landroid/text/SpannableString;

    if-eqz v2, :cond_3

    .line 6705
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6706
    invoke-virtual {p6, v3}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->setVisibility(I)V

    .line 6720
    .end local v0           #number:Landroid/view/View;
    :goto_1
    invoke-virtual {p6, v1}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6707
    .restart local v0       #number:Landroid/view/View;
    :cond_3
    if-nez p2, :cond_4

    .line 6708
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6709
    invoke-virtual {p6, v3}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->setVisibility(I)V

    goto :goto_1

    .line 6711
    :cond_4
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6712
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6713
    invoke-virtual {p6, v3}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->setVisibility(I)V

    goto :goto_1

    .line 6715
    :cond_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 6718
    .end local v0           #number:Landroid/view/View;
    :cond_6
    invoke-virtual {p6, v4}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected final bindView(Landroid/view/View;I)V
    .locals 6
    .parameter "view"
    .parameter "position"

    .prologue
    .line 6489
    sget-boolean v4, Lcom/android/htcdialer/DialerService;->isCacheUpdating:Z

    if-eqz v4, :cond_0

    .line 6518
    :goto_0
    return-void

    .line 6494
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableObject;

    .line 6495
    .local v1, data:Lcom/android/htcdialer/search/SearchableObject;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/Dialer$ListItemCache;

    .line 6497
    .local v0, cache:Lcom/android/htcdialer/Dialer$ListItemCache;
    invoke-direct {p0, p2, v0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->setListItemRoundCorner(ILcom/android/htcdialer/Dialer$ListItemCache;)V

    .line 6499
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->dialerItem:Lcom/android/htcdialer/search/DialerItem;
    invoke-static {v0}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3600(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/android/htcdialer/search/DialerItem;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getInitDialerItem(Lcom/android/htcdialer/search/DialerItem;Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/DialerItem;

    move-result-object v2

    .line 6501
    .local v2, dialerView:Lcom/android/htcdialer/search/DialerItem;
    iget v4, v1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->itemIndexer:I
    invoke-static {v0, v4}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3902(Lcom/android/htcdialer/Dialer$ListItemCache;I)I

    .line 6503
    invoke-direct {p0, v1, v0, v2}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->bindNameAndNum(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/android/htcdialer/search/DialerItem;)V

    .line 6506
    const/4 v4, 0x0

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->mbHasPhoto:Z
    invoke-static {v0, v4}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$2602(Lcom/android/htcdialer/Dialer$ListItemCache;Z)Z

    .line 6507
    invoke-direct {p0, v1, v0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->bindPhoto(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/Dialer$ListItemCache;)V

    .line 6509
    invoke-direct {p0, v0, v1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->bindButtonIcon(Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/android/htcdialer/search/SearchableObject;)V

    .line 6511
    invoke-direct {p0, v1, v0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->bindDateAndTime(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/Dialer$ListItemCache;)V

    .line 6513
    invoke-direct {p0, p2, v0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->bindDivder(ILcom/android/htcdialer/Dialer$ListItemCache;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6515
    .end local v0           #cache:Lcom/android/htcdialer/Dialer$ListItemCache;
    .end local v1           #data:Lcom/android/htcdialer/search/SearchableObject;
    .end local v2           #dialerView:Lcom/android/htcdialer/search/DialerItem;
    :catch_0
    move-exception v3

    .line 6516
    .local v3, e:Ljava/lang/NullPointerException;
    const-string v4, "HtcDialer"

    const-string v5, "catch null pointer exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getLastDialIntent()Landroid/content/Intent;
    .locals 9

    .prologue
    .line 6939
    const/4 v4, 0x0

    .line 6940
    .local v4, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v7}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/search/SearchableObject;

    .line 6942
    .local v3, data:Lcom/android/htcdialer/search/SearchableObject;
    if-eqz v3, :cond_2

    iget v7, v3, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v7, :cond_2

    .line 6943
    invoke-virtual {p0, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getLastDialPhoneIntent(Lcom/android/htcdialer/search/SearchableObject;)Landroid/content/Intent;

    move-result-object v4

    .line 6945
    invoke-virtual {p0, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContactId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v1

    .line 6946
    .local v1, contactId:J
    const-wide/16 v7, 0x0

    cmp-long v7, v7, v1

    if-gez v7, :cond_2

    if-eqz v4, :cond_2

    .line 6947
    invoke-virtual {p0, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getName(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v6

    .line 6948
    .local v6, sName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v7, v1, v2}, Lcom/android/htcdialer/Dialer;->hasPhoto(J)Z

    move-result v0

    .line 6949
    .local v0, bHasPhoto:Z
    const-string v7, "personId"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6950
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 6951
    const-string v7, "name"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6953
    :cond_0
    if-eqz v0, :cond_1

    .line 6954
    const-string v7, "hasPhoto"

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6958
    :cond_1
    const/4 v7, 0x1

    invoke-virtual {p0, v3, v7}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;Z)Ljava/lang/String;

    move-result-object v5

    .line 6960
    .local v5, number:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 6962
    const-string v7, "number"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6963
    const-string v7, "numberType"

    invoke-virtual {p0, v3}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getCallLogPhoneType(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6974
    .end local v0           #bHasPhoto:Z
    .end local v1           #contactId:J
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #sName:Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public getLastDialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6929
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v1}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/search/SearchableObject;

    .line 6931
    .local v0, data:Lcom/android/htcdialer/search/SearchableObject;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v1, :cond_0

    .line 6932
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;Z)Ljava/lang/String;

    move-result-object v1

    .line 6934
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 2
    .parameter "sectionIndex"

    .prologue
    .line 6985
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

    if-nez v0, :cond_0

    .line 6986
    new-instance v0, Lcom/android/htcdialer/search/DialerIndexer;

    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/android/htcdialer/search/DialerIndexer;-><init>(Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

    .line 6988
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

    invoke-virtual {v0, p1}, Lcom/android/htcdialer/search/DialerIndexer;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 6992
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

    if-nez v0, :cond_0

    .line 6993
    new-instance v0, Lcom/android/htcdialer/search/DialerIndexer;

    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/android/htcdialer/search/DialerIndexer;-><init>(Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

    .line 6995
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

    invoke-virtual {v0, p1}, Lcom/android/htcdialer/search/DialerIndexer;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 6978
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

    if-nez v0, :cond_0

    .line 6979
    new-instance v0, Lcom/android/htcdialer/search/DialerIndexer;

    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/android/htcdialer/search/DialerIndexer;-><init>(Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

    .line 6981
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

    invoke-virtual {v0}, Lcom/android/htcdialer/search/DialerIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 6406
    const/4 v3, 0x0

    .line 6409
    .local v3, view:Landroid/view/View;
    if-nez p2, :cond_0

    .line 6410
    :try_start_0
    iget-object v4, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v4}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 6411
    .local v2, res:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mLayoutId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 6412
    new-instance v0, Lcom/android/htcdialer/Dialer$ListItemCache;

    invoke-direct {v0}, Lcom/android/htcdialer/Dialer$ListItemCache;-><init>()V

    .line 6414
    .local v0, cache:Lcom/android/htcdialer/Dialer$ListItemCache;
    const v4, 0x202004c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemQuickContactBadge;

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->photo:Lcom/htc/widget/HtcListItemQuickContactBadge;
    invoke-static {v0, v4}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$2902(Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/htc/widget/HtcListItemQuickContactBadge;)Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 6416
    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->photo:Lcom/htc/widget/HtcListItemQuickContactBadge;
    invoke-static {v0}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$2900(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6417
    const-string v4, "name_number"

    const-string v5, "id"

    const-string v6, "com.android.htcdialer"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/htcdialer/widget/DialerListItem2LineText;

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->nameAndNumber:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v0, v4}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3302(Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/htc/widget/HtcListItem2LineText;)Lcom/htc/widget/HtcListItem2LineText;

    .line 6420
    const-string v4, "date_time"

    const-string v5, "id"

    const-string v6, "com.android.htcdialer"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineStamp;

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->dateAndTime:Lcom/htc/widget/HtcListItem2LineStamp;
    invoke-static {v0, v4}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3402(Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/htc/widget/HtcListItem2LineStamp;)Lcom/htc/widget/HtcListItem2LineStamp;

    .line 6423
    const-string v4, "action_button"

    const-string v5, "id"

    const-string v6, "com.android.htcdialer"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemImageButton;

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->actionButton:Lcom/htc/widget/HtcListItemImageButton;
    invoke-static {v0, v4}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3502(Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/htc/widget/HtcListItemImageButton;)Lcom/htc/widget/HtcListItemImageButton;

    .line 6426
    const v4, 0x7f0b0020

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/htcdialer/search/DialerItem;

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->dialerItem:Lcom/android/htcdialer/search/DialerItem;
    invoke-static {v0, v4}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3602(Lcom/android/htcdialer/Dialer$ListItemCache;Lcom/android/htcdialer/search/DialerItem;)Lcom/android/htcdialer/search/DialerItem;

    .line 6429
    invoke-direct {p0, v0}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->initActionButton(Lcom/android/htcdialer/Dialer$ListItemCache;)V

    .line 6433
    const v4, 0x2020085

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    #setter for: Lcom/android/htcdialer/Dialer$ListItemCache;->separatorView:Landroid/view/View;
    invoke-static {v0, v4}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$3702(Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/view/View;)Landroid/view/View;

    .line 6437
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6441
    .end local v0           #cache:Lcom/android/htcdialer/Dialer$ListItemCache;
    .end local v2           #res:Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {p0, v3, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->bindView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6446
    :goto_1
    return-object v3

    .line 6439
    :cond_0
    move-object v3, p2

    goto :goto_0

    .line 6442
    :catch_0
    move-exception v1

    .line 6443
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setPhoto(Lcom/android/htcdialer/search/SearchableObject;Lcom/android/htcdialer/Dialer$ListItemCache;)V
    .locals 10
    .parameter "data"
    .parameter "cache"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6895
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getCallLogType(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v0

    .line 6896
    .local v0, callLogType:I
    const/4 v1, -0x1

    .line 6898
    .local v1, callType:I
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v2

    .line 6899
    .local v2, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v2, :cond_3

    iget-boolean v4, v2, Lcom/android/htcdialer/search/SearchableContact;->isSimContact:Z

    if-nez v4, :cond_3

    .line 6900
    iget-object v4, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->photo:Lcom/htc/widget/HtcListItemQuickContactBadge;
    invoke-static {p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$2900(Lcom/android/htcdialer/Dialer$ListItemCache;)Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v7

    iget-wide v8, v2, Lcom/android/htcdialer/search/SearchableContact;->photoId:J

    #calls: Lcom/android/htcdialer/Dialer;->updateImageView(Landroid/widget/ImageView;Lcom/android/htcdialer/Dialer$ListItemCache;J)V
    invoke-static {v4, v7, p2, v8, v9}, Lcom/android/htcdialer/Dialer;->access$4400(Lcom/android/htcdialer/Dialer;Landroid/widget/ImageView;Lcom/android/htcdialer/Dialer$ListItemCache;J)V

    .line 6906
    :goto_0
    iget v4, p1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v4, :cond_0

    .line 6907
    if-ne v6, v0, :cond_5

    .line 6908
    const/4 v1, 0x3

    .line 6916
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    #calls: Lcom/android/htcdialer/Dialer;->updatePhotoType(ILcom/android/htcdialer/Dialer$ListItemCache;)V
    invoke-static {v4, v1, p2}, Lcom/android/htcdialer/Dialer;->access$4600(Lcom/android/htcdialer/Dialer;ILcom/android/htcdialer/Dialer$ListItemCache;)V

    .line 6918
    sget-boolean v4, Lcom/android/internal/telephony/HtcBuildUtils;->SUPPORT_VT:Z

    if-eqz v4, :cond_2

    .line 6919
    const/16 v3, 0x8

    .line 6920
    .local v3, visibility:I
    const/4 v4, -0x1

    if-eq v4, v1, :cond_1

    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->bearerTypeView:Landroid/view/View;
    invoke-static {p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$4700(Lcom/android/htcdialer/Dialer$ListItemCache;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 6921
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->isVT(Lcom/android/htcdialer/search/SearchableObject;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v3, v5

    .line 6923
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer$ListItemCache;->bearerTypeView:Landroid/view/View;
    invoke-static {p2}, Lcom/android/htcdialer/Dialer$ListItemCache;->access$4700(Lcom/android/htcdialer/Dialer$ListItemCache;)Landroid/view/View;

    move-result-object v5

    #calls: Lcom/android/htcdialer/Dialer;->setVisibility(Landroid/view/View;I)V
    invoke-static {v4, v5, v3}, Lcom/android/htcdialer/Dialer;->access$4800(Lcom/android/htcdialer/Dialer;Landroid/view/View;I)V

    .line 6925
    .end local v3           #visibility:I
    :cond_2
    return-void

    .line 6902
    :cond_3
    iget-object v7, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    const/4 v8, 0x0

    if-nez v2, :cond_4

    move v4, v5

    :goto_3
    #calls: Lcom/android/htcdialer/Dialer;->updateImage(Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/graphics/Bitmap;I)V
    invoke-static {v7, p2, v8, v4}, Lcom/android/htcdialer/Dialer;->access$4500(Lcom/android/htcdialer/Dialer;Lcom/android/htcdialer/Dialer$ListItemCache;Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :cond_4
    move v4, v6

    goto :goto_3

    .line 6909
    :cond_5
    const/4 v4, 0x2

    if-ne v4, v0, :cond_6

    .line 6910
    const/4 v1, 0x4

    goto :goto_1

    .line 6911
    :cond_6
    const/4 v4, 0x3

    if-ne v4, v0, :cond_0

    .line 6912
    const/4 v1, 0x5

    goto :goto_1

    .line 6921
    .restart local v3       #visibility:I
    :cond_7
    const/16 v3, 0x8

    goto :goto_2
.end method

.method public updateList(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/SearchableObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6397
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    .local p2, pivot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-super {p0, p1, p2}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->updateList(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 6398
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->mIndexer:Lcom/android/htcdialer/search/DialerIndexer;

    invoke-virtual {v0, p0, p1}, Lcom/android/htcdialer/search/DialerIndexer;->updateIndexer(Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;Ljava/util/ArrayList;)V

    .line 6399
    invoke-static {}, Lcom/android/htcdialer/util/BuildUtils$Customization;->isTmoProject()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;
    invoke-static {v0}, Lcom/android/htcdialer/Dialer;->access$3200(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6400
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mContactCardAdapter:Lcom/android/htcdialer/Dialer$ContactCardAdapter;
    invoke-static {v0}, Lcom/android/htcdialer/Dialer;->access$3200(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/Dialer$ContactCardAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/htcdialer/Dialer$ContactCardAdapter;->updateList(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 6402
    :cond_0
    return-void
.end method
