.class public Lcom/htc/util/contacts/SNLinkUtils$NewMethod;
.super Ljava/lang/Object;
.source "SNLinkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/SNLinkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewMethod"
.end annotation


# static fields
.field public static final FACEBOOK_ENDING_TOKEN:Ljava/lang/String; = "</Facebook>"

.field public static final FACEBOOK_STARTING_TOKEN:Ljava/lang/String; = "<Facebook>"

.field public static final FLICKR_ENDING_TOKEN:Ljava/lang/String; = "</Flickr>"

.field public static final FLICKR_STARTING_TOKEN:Ljava/lang/String; = "<Flickr>"

.field public static final HTC_DATA_ENDING_TOKEN:Ljava/lang/String; = "</HTCData>"

.field public static final HTC_DATA_STARTING_TOKEN:Ljava/lang/String; = "<HTCData>"

.field public static final KAIXIN_ENDING_TOKEN:Ljava/lang/String; = "</Kaixin>"

.field public static final KAIXIN_STARTING_TOKEN:Ljava/lang/String; = "<Kaixin>"

.field public static final PLURK_ENDING_TOKEN:Ljava/lang/String; = "</Plurk>"

.field public static final PLURK_STARTING_TOKEN:Ljava/lang/String; = "<Plurk>"

.field public static final QQIM_ENDING_TOKEN:Ljava/lang/String; = "</QQIM>"

.field public static final QQIM_STARTING_TOKEN:Ljava/lang/String; = "<QQIM>"

.field public static final QQWEIBO_ENDING_TOKEN:Ljava/lang/String; = "</QQWeibo>"

.field public static final QQWEIBO_STARTING_TOKEN:Ljava/lang/String; = "<QQWeibo>"

.field public static final QZONE_ENDING_TOKEN:Ljava/lang/String; = "</QZOne>"

.field public static final QZONE_STARTING_TOKEN:Ljava/lang/String; = "<QZOne>"

.field public static final RENREN_ENDING_TOKEN:Ljava/lang/String; = "</Renren>"

.field public static final RENREN_STARTING_TOKEN:Ljava/lang/String; = "<Renren>"

.field public static final SINA_ENDING_TOKEN:Ljava/lang/String; = "</Sina>"

.field public static final SINA_STARTING_TOKEN:Ljava/lang/String; = "<Sina>"

.field public static final TWITTER_ENDING_TOKEN:Ljava/lang/String; = "</Twitter>"

.field public static final TWITTER_STARTING_TOKEN:Ljava/lang/String; = "<Twitter>"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 495
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendLinkData(Ljava/lang/String;Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;)Ljava/lang/String;
    .locals 9
    .parameter "text"
    .parameter "data"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 648
    if-nez p1, :cond_1

    .line 692
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 651
    .restart local p0
    :cond_1
    iget-object v6, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 655
    new-instance v5, Ljava/lang/StringBuilder;

    if-nez p0, :cond_3

    const-string v6, ""

    :goto_1
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 656
    .local v5, textBuffer:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 657
    .local v0, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    if-nez v0, :cond_4

    .line 659
    const-string v6, "<HTCData>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    iget-object v6, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    const-string v6, "id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    iget-object v6, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 664
    const-string v6, "friendof:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    iget-object v6, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    iget-object v6, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-static {p0}, Lcom/htc/util/contacts/DefaultActionUtils;->extractDefaultActionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 670
    .local v3, defaultAction:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 671
    invoke-static {v7, v5, v3}, Lcom/htc/util/contacts/DefaultActionUtils;->appendDefaultAction(ZLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 674
    :cond_2
    const-string v6, "</HTCData>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .end local v0           #dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    .end local v3           #defaultAction:Ljava/lang/String;
    .end local v5           #textBuffer:Ljava/lang/StringBuilder;
    :cond_3
    move-object v6, p0

    .line 655
    goto :goto_1

    .line 677
    .restart local v0       #dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    .restart local v5       #textBuffer:Ljava/lang/StringBuilder;
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 678
    .local v1, dataListSize:I
    const/16 v6, 0x14

    if-gt v1, v6, :cond_0

    .line 683
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v1, :cond_6

    .line 684
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 685
    .local v2, dataTmp:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v6, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    iget-object v7, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    iget-object v7, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    iget-object v7, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->isSNTypeEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 683
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 691
    .end local v2           #dataTmp:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    invoke-static {p0, v0, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->setLinkData(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static appendLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"
    .parameter "userId"
    .parameter "friendOf"
    .parameter "type"

    .prologue
    .line 698
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 705
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 701
    .restart local p0
    :cond_1
    new-instance v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    invoke-direct {v0}, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;-><init>()V

    .line 702
    .local v0, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iput-object p1, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    .line 703
    iput-object p2, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    .line 704
    iput-object p3, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    .line 705
    invoke-static {p0, v0}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendLinkData(Ljava/lang/String;Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "SNType"
    .parameter "isStart"

    .prologue
    .line 785
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    const-string v0, ""

    .line 834
    :goto_0
    return-object v0

    .line 788
    :cond_0
    if-eqz p1, :cond_b

    .line 789
    const-string v0, "com.htc.socialnetwork.facebook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.facebook.auth.login"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 790
    :cond_1
    const-string v0, "<Facebook>"

    goto :goto_0

    .line 791
    :cond_2
    const-string v0, "com.htc.socialnetwork.flickr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 792
    const-string v0, "<Flickr>"

    goto :goto_0

    .line 793
    :cond_3
    const-string v0, "com.htc.socialnetwork.plurk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 794
    const-string v0, "<Plurk>"

    goto :goto_0

    .line 795
    :cond_4
    const-string v0, "com.htc.htctwitter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 796
    const-string v0, "<Twitter>"

    goto :goto_0

    .line 797
    :cond_5
    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 798
    const-string v0, "<Sina>"

    goto :goto_0

    .line 799
    :cond_6
    const-string v0, "com.htc.socialnetwork.qqim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 800
    const-string v0, "<QQIM>"

    goto :goto_0

    .line 801
    :cond_7
    const-string v0, "com.htc.socialnetwork.qqweibo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 802
    const-string v0, "<QQWeibo>"

    goto :goto_0

    .line 803
    :cond_8
    const-string v0, "com.htc.socialnetwork.chinasns"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 804
    const-string v0, "<QZOne>"

    goto :goto_0

    .line 805
    :cond_9
    const-string v0, "com.htc.KaixinFriendStream"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 806
    const-string v0, "<Kaixin>"

    goto :goto_0

    .line 807
    :cond_a
    const-string v0, "com.htc.friendstream.renrenwebplugin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 808
    const-string v0, "<Renren>"

    goto :goto_0

    .line 811
    :cond_b
    const-string v0, "com.htc.socialnetwork.facebook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "com.facebook.auth.login"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 812
    :cond_c
    const-string v0, "</Facebook>"

    goto/16 :goto_0

    .line 813
    :cond_d
    const-string v0, "com.htc.socialnetwork.flickr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 814
    const-string v0, "</Flickr>"

    goto/16 :goto_0

    .line 815
    :cond_e
    const-string v0, "com.htc.socialnetwork.plurk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 816
    const-string v0, "</Plurk>"

    goto/16 :goto_0

    .line 817
    :cond_f
    const-string v0, "com.htc.htctwitter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 818
    const-string v0, "</Twitter>"

    goto/16 :goto_0

    .line 819
    :cond_10
    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 820
    const-string v0, "</Sina>"

    goto/16 :goto_0

    .line 821
    :cond_11
    const-string v0, "com.htc.socialnetwork.qqim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 822
    const-string v0, "</QQIM>"

    goto/16 :goto_0

    .line 823
    :cond_12
    const-string v0, "com.htc.socialnetwork.qqweibo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 824
    const-string v0, "</QQWeibo>"

    goto/16 :goto_0

    .line 825
    :cond_13
    const-string v0, "com.htc.socialnetwork.chinasns"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 826
    const-string v0, "</QZOne>"

    goto/16 :goto_0

    .line 827
    :cond_14
    const-string v0, "com.htc.KaixinFriendStream"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 828
    const-string v0, "</Kaixin>"

    goto/16 :goto_0

    .line 829
    :cond_15
    const-string v0, "com.htc.friendstream.renrenwebplugin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 830
    const-string v0, "</Renren>"

    goto/16 :goto_0

    .line 834
    :cond_16
    const-string v0, ""

    goto/16 :goto_0
.end method

.method public static extractLinkData(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 522
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v0, v5

    .line 602
    :cond_0
    :goto_0
    return-object v0

    .line 525
    :cond_1
    const-string v6, "<HTCData>"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 526
    .local v3, startingIndex:I
    const-string v6, "</HTCData>"

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 527
    .local v2, endingIndex:I
    if-lt v2, v3, :cond_2

    if-eq v3, v7, :cond_2

    if-ne v2, v7, :cond_3

    :cond_2
    move-object v0, v5

    .line 528
    goto :goto_0

    .line 530
    :cond_3
    const-string v6, "<HTCData>"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 532
    .local v4, subText:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v0, v5

    .line 533
    goto :goto_0

    .line 536
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v0, allDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    const/4 v1, 0x0

    .line 540
    .local v1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    const-string v6, "<Facebook>"

    const-string v7, "</Facebook>"

    const-string v8, "com.htc.socialnetwork.facebook"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 541
    if-eqz v1, :cond_5

    .line 542
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 546
    :cond_5
    const-string v6, "<Flickr>"

    const-string v7, "</Flickr>"

    const-string v8, "com.htc.socialnetwork.flickr"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 547
    if-eqz v1, :cond_6

    .line 548
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 552
    :cond_6
    const-string v6, "<Plurk>"

    const-string v7, "</Plurk>"

    const-string v8, "com.htc.socialnetwork.plurk"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 553
    if-eqz v1, :cond_7

    .line 554
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 558
    :cond_7
    const-string v6, "<Twitter>"

    const-string v7, "</Twitter>"

    const-string v8, "com.htc.htctwitter"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 559
    if-eqz v1, :cond_8

    .line 560
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 564
    :cond_8
    const-string v6, "<Sina>"

    const-string v7, "</Sina>"

    const-string v8, "com.htc.friendstream.sinaweiboplugin"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 565
    if-eqz v1, :cond_9

    .line 566
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 570
    :cond_9
    const-string v6, "<QQIM>"

    const-string v7, "</QQIM>"

    const-string v8, "com.htc.socialnetwork.qqim"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 571
    if-eqz v1, :cond_a

    .line 572
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 576
    :cond_a
    const-string v6, "<QQWeibo>"

    const-string v7, "</QQWeibo>"

    const-string v8, "com.htc.socialnetwork.qqweibo"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 577
    if-eqz v1, :cond_b

    .line 578
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 582
    :cond_b
    const-string v6, "<QZOne>"

    const-string v7, "</QZOne>"

    const-string v8, "com.htc.socialnetwork.chinasns"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 583
    if-eqz v1, :cond_c

    .line 584
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 588
    :cond_c
    const-string v6, "<Kaixin>"

    const-string v7, "</Kaixin>"

    const-string v8, "com.htc.KaixinFriendStream"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 589
    if-eqz v1, :cond_d

    .line 590
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 594
    :cond_d
    const-string v6, "<Renren>"

    const-string v7, "</Renren>"

    const-string v8, "com.htc.friendstream.renrenwebplugin"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 595
    if-eqz v1, :cond_e

    .line 596
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 599
    :cond_e
    if-eqz v0, :cond_f

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    :cond_f
    move-object v0, v5

    .line 600
    goto/16 :goto_0
.end method

.method private static extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "subText"
    .parameter "startToken"
    .parameter "endToken"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v8, -0x1

    .line 608
    const/4 v3, 0x0

    .line 609
    .local v3, idListTokens:Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .line 611
    .local v1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 612
    .local v6, startingIndex:I
    invoke-virtual {p0, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 613
    .local v2, endingIndex:I
    if-lt v2, v6, :cond_0

    if-eq v6, v8, :cond_0

    if-ne v2, v8, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-object v1

    .line 617
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 619
    .local v5, innerText:Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    .end local v3           #idListTokens:Ljava/util/StringTokenizer;
    const-string v8, "|"

    invoke-direct {v3, v5, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    .restart local v3       #idListTokens:Ljava/util/StringTokenizer;
    if-nez v1, :cond_2

    .line 621
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 624
    .restart local v1       #dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 625
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 626
    .local v7, token:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 627
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 628
    .local v4, ids:[Ljava/lang/String;
    array-length v8, v4

    const/4 v9, 0x2

    if-lt v8, v9, :cond_2

    .line 631
    aget-object v8, v4, v10

    const-string v9, "id:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    aget-object v8, v4, v11

    const-string v9, "friendof:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 633
    new-instance v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    invoke-direct {v0}, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;-><init>()V

    .line 634
    .local v0, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    aget-object v8, v4, v10

    const-string v9, "id:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    .line 635
    aget-object v8, v4, v11

    const-string v9, "friendof:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    .line 636
    iput-object p3, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    .line 637
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 641
    .end local v0           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    .end local v4           #ids:[Ljava/lang/String;
    .end local v7           #token:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static isSNTypeEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "type1"
    .parameter "type2"

    .prologue
    const/4 v0, 0x1

    .line 838
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 839
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 848
    :cond_0
    :goto_0
    return v0

    .line 842
    :cond_1
    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.facebook.auth.login"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 844
    :cond_2
    const-string v1, "com.facebook.auth.login"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 848
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "text"
    .parameter "userId"
    .parameter "friendOf"
    .parameter "type"

    .prologue
    .line 852
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 870
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 855
    .restart local p0
    :cond_1
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 856
    .local v1, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    if-eqz v1, :cond_0

    .line 860
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 862
    .local v2, dataListSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 863
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 865
    .local v0, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v4, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    invoke-static {v4, p3}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->isSNTypeEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 866
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 870
    .end local v0           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_2
    const/4 v4, 0x1

    invoke-static {p0, v1, v4}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->setLinkData(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 862
    .restart local v0       #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static setLinkData(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;
    .locals 12
    .parameter "text"
    .parameter
    .parameter "isNewFormat"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 710
    .local p1, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    const/4 v0, 0x0

    .line 711
    .local v0, bufferText:Ljava/lang/StringBuffer;
    if-eqz p2, :cond_4

    .line 712
    const-string v10, "<HTCData>"

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 713
    .local v9, startingIndex:I
    const-string v10, "</HTCData>"

    invoke-virtual {p0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 714
    .local v6, endingIndex:I
    if-lt v6, v9, :cond_0

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    const/4 v10, -0x1

    if-ne v6, v10, :cond_1

    .line 781
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 718
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #bufferText:Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/htc/util/contacts/DefaultActionUtils;->extractNoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 730
    .restart local v0       #bufferText:Ljava/lang/StringBuffer;
    :goto_1
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_9

    .line 731
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 732
    .local v3, dataListSize:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    .local v4, dataStringBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 736
    .local v1, curType:Ljava/lang/String;
    const/4 v8, 0x0

    .line 737
    .local v8, preType:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v3, :cond_5

    .line 738
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 740
    .local v2, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v1, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    .line 741
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 742
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x7c

    if-ne v10, v11, :cond_2

    .line 743
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 746
    :cond_2
    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    const/4 v10, 0x1

    invoke-static {v1, v10}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    :cond_3
    const-string v10, "id:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    iget-object v10, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    const/16 v10, 0x2f

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 753
    const-string v10, "friendof:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    iget-object v10, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    const/16 v10, 0x7c

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 757
    move-object v8, v1

    .line 737
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 720
    .end local v1           #curType:Ljava/lang/String;
    .end local v2           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    .end local v3           #dataListSize:I
    .end local v4           #dataStringBuilder:Ljava/lang/StringBuilder;
    .end local v6           #endingIndex:I
    .end local v7           #i:I
    .end local v8           #preType:Ljava/lang/String;
    .end local v9           #startingIndex:I
    :cond_4
    const-string v10, "<sn>"

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 721
    .restart local v9       #startingIndex:I
    const-string v10, "</sn>"

    invoke-virtual {p0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 722
    .restart local v6       #endingIndex:I
    if-lt v6, v9, :cond_0

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    const/4 v10, -0x1

    if-eq v6, v10, :cond_0

    .line 726
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #bufferText:Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$OldMethod;->extractNoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local v0       #bufferText:Ljava/lang/StringBuffer;
    goto/16 :goto_1

    .line 760
    .restart local v1       #curType:Ljava/lang/String;
    .restart local v3       #dataListSize:I
    .restart local v4       #dataStringBuilder:Ljava/lang/StringBuilder;
    .restart local v7       #i:I
    .restart local v8       #preType:Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x7c

    if-ne v10, v11, :cond_6

    .line 761
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 763
    :cond_6
    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-static {p0}, Lcom/htc/util/contacts/DefaultActionUtils;->extractDefaultActionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 767
    .local v5, defaultAction:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 768
    const/4 v10, 0x0

    invoke-static {v10, v4, v5}, Lcom/htc/util/contacts/DefaultActionUtils;->appendDefaultAction(ZLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 771
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_8

    .line 772
    const/4 v10, 0x0

    const-string v11, "<HTCData>"

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    const-string v10, "</HTCData>"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 781
    .end local v1           #curType:Ljava/lang/String;
    .end local v3           #dataListSize:I
    .end local v4           #dataStringBuilder:Ljava/lang/StringBuilder;
    .end local v5           #defaultAction:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #preType:Ljava/lang/String;
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method
