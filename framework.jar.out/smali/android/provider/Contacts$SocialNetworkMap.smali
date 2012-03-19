.class public final Landroid/provider/Contacts$SocialNetworkMap;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$SocialNetworkColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SocialNetworkMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;
    }
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "SNMap"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/SNMap"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/SNMap"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id"

.field public static final FRIENDOF_TAG:Ljava/lang/String; = "friendof:"

.field public static final ID_TAG:Ljava/lang/String; = "id:"

.field public static final LINK_DATA_ENDING_TOKEN:Ljava/lang/String; = "</sn>"

.field public static final LINK_DATA_STARTING_TOKEN:Ljava/lang/String; = "<sn>"

.field private static final SN_CONNECTION_PROJECTION:[Ljava/lang/String; = null

.field private static final SN_CONNECTION_QUERY_URI:Landroid/net/Uri; = null

.field private static final SN_EVENT_CONTENT_URI:Landroid/net/Uri; = null

.field private static final SN_PHOTO_UPDATE_CONTENT_URI:Landroid/net/Uri; = null

.field private static final SN_PROFILE_UPDATE_CONTENT_URI:Landroid/net/Uri; = null

.field private static final SN_RAW_QUERY_URI:Landroid/net/Uri; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "social_network_map"

.field private static final UPDATE_QUERY:Ljava/lang/String; = "SELECT * FROM \t(SELECT user.user_id AS user_id, profile.uid AS uid, profile.type AS type, profile.extra AS extra, profile._id AS rowId, profile.is_read AS is_read, profile.last_check_time AS last_time, service.service_name AS service_name \t FROM \t\t(SELECT _id, uid, type, extra, is_read, last_check_time \t\t FROM profile_update \t\t WHERE uid=%d AND type=\'profile\' %s) AS profile, user, service \t WHERE profile.uid=user._id AND user.sid=service._id \t UNION ALL \t SELECT user.user_id AS user_id, photo.uid AS uid, \'photo\' AS type, photo.extra AS extra, photo.aid AS rowId, photo.is_read AS is_read, photo.last_update_time AS last_time, service.service_name AS service_name \t FROM \t\t(SELECT _id, uid, aid, COUNT(uid) AS extra, is_read, MAX(last_update_time) AS last_update_time \t \t FROM photo_update \t \t WHERE (uid=%d OR uid=%d) %s GROUP BY aid, is_read) AS photo, user, service \t WHERE photo.uid=user._id AND user.sid=service._id \t ORDER BY last_time DESC)"

.field private static final UPDATE_QUERY_GROUP:Ljava/lang/String; = "SELECT * FROM \t(SELECT user.user_id AS user_id, profile.uid AS uid, profile.type AS type, profile.extra AS extra, profile._id AS rowId, profile.is_read AS is_read, profile.last_check_time AS last_time, service.service_name AS service_name \t FROM \t\t(SELECT _id, uid, type, extra, is_read, last_check_time \t\t FROM profile_update \t\t WHERE uid IN %s AND type=\'profile\' %s) AS profile, user, service \t WHERE profile.uid=user._id AND user.sid=service._id \t UNION ALL \t SELECT user.user_id AS user_id, photo.uid AS uid, \'photo\' AS type, photo.extra AS extra, photo.aid AS rowId, photo.is_read AS is_read, photo.last_update_time AS last_time, service.service_name AS service_name \t FROM \t\t(SELECT _id, uid, aid, COUNT(uid) AS extra, is_read, MAX(last_update_time) AS last_update_time \t \t FROM photo_update \t \t WHERE (uid IN %s OR uid IN %s) %s GROUP BY aid, is_read) AS photo, user, service \t WHERE photo.uid=user._id AND user.sid=service._id \t ORDER BY last_time DESC)"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 4131
    const-string v0, "content://contacts/SNMap"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$SocialNetworkMap;->CONTENT_URI:Landroid/net/Uri;

    .line 4257
    const-string v0, "content://com.htc.socialnetwork.snprovider/joins/user/service"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$SocialNetworkMap;->SN_CONNECTION_QUERY_URI:Landroid/net/Uri;

    .line 4260
    const-string v0, "content://com.htc.socialnetwork.snprovider/rawquerys"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$SocialNetworkMap;->SN_RAW_QUERY_URI:Landroid/net/Uri;

    .line 4263
    const-string v0, "content://com.htc.socialnetwork.snprovider/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$SocialNetworkMap;->SN_EVENT_CONTENT_URI:Landroid/net/Uri;

    .line 4266
    const-string v0, "content://com.htc.socialnetwork.snprovider/profile_updates"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$SocialNetworkMap;->SN_PROFILE_UPDATE_CONTENT_URI:Landroid/net/Uri;

    .line 4269
    const-string v0, "content://com.htc.socialnetwork.snprovider/photo_updates"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$SocialNetworkMap;->SN_PHOTO_UPDATE_CONTENT_URI:Landroid/net/Uri;

    .line 4272
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "user._id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "service.service_name"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Contacts$SocialNetworkMap;->SN_CONNECTION_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4126
    return-void
.end method

.method public static appendLinkData(Ljava/lang/String;Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;)Ljava/lang/String;
    .locals 7
    .parameter "text"
    .parameter "data"

    .prologue
    .line 4777
    if-nez p1, :cond_1

    .line 4807
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 4780
    .restart local p0
    :cond_1
    iget-object v5, p1, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;->userId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p1, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4784
    new-instance v4, Ljava/lang/StringBuffer;

    if-nez p0, :cond_2

    const-string v5, ""

    :goto_1
    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 4785
    .local v4, textBuffer:Ljava/lang/StringBuffer;
    invoke-static {p0}, Landroid/provider/Contacts$SocialNetworkMap;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4786
    .local v0, dataList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;>;"
    if-nez v0, :cond_3

    .line 4788
    const-string v5, "<sn>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4789
    const-string/jumbo v5, "id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4790
    iget-object v5, p1, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4791
    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4792
    const-string v5, "friendof:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4793
    iget-object v5, p1, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4794
    const-string v5, "</sn>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4795
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .end local v0           #dataList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;>;"
    .end local v4           #textBuffer:Ljava/lang/StringBuffer;
    :cond_2
    move-object v5, p0

    .line 4784
    goto :goto_1

    .line 4797
    .restart local v0       #dataList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;>;"
    .restart local v4       #textBuffer:Ljava/lang/StringBuffer;
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4799
    .local v1, dataListSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v1, :cond_5

    .line 4800
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;

    .line 4801
    .local v2, dataTmp:Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;
    iget-object v5, v2, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;->userId:Ljava/lang/String;

    iget-object v6, p1, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v2, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;->friendOf:Ljava/lang/String;

    iget-object v6, p1, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4799
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4806
    .end local v2           #dataTmp:Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;
    :cond_5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4807
    invoke-static {p0, v0}, Landroid/provider/Contacts$SocialNetworkMap;->setLinkData(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static appendLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"
    .parameter "userId"
    .parameter "friendOf"

    .prologue
    .line 4813
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4819
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 4816
    .restart local p0
    :cond_1
    new-instance v0, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;

    invoke-direct {v0}, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;-><init>()V

    .line 4817
    .local v0, data:Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;
    iput-object p1, v0, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;->userId:Ljava/lang/String;

    .line 4818
    iput-object p2, v0, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;->friendOf:Ljava/lang/String;

    .line 4819
    invoke-static {p0, v0}, Landroid/provider/Contacts$SocialNetworkMap;->appendLinkData(Ljava/lang/String;Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static extractLinkData(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 4746
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4773
    :cond_0
    :goto_0
    return-object v1

    .line 4749
    :cond_1
    const-string v8, "<sn>"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 4750
    .local v5, startingIndex:I
    const-string v8, "</sn>"

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 4751
    .local v2, endingIndex:I
    if-lt v2, v5, :cond_0

    if-eq v5, v9, :cond_0

    if-eq v2, v9, :cond_0

    .line 4754
    const-string v8, "<sn>"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 4755
    .local v6, subText:Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v8, "|"

    invoke-direct {v3, v6, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4756
    .local v3, idListTokens:Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4757
    .local v1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;>;"
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4758
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 4759
    .local v7, token:Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4760
    .local v4, ids:[Ljava/lang/String;
    array-length v8, v4

    const/4 v9, 0x2

    if-lt v8, v9, :cond_2

    .line 4763
    aget-object v8, v4, v10

    const-string/jumbo v9, "id:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    aget-object v8, v4, v11

    const-string v9, "friendof:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4765
    new-instance v0, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;

    invoke-direct {v0}, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;-><init>()V

    .line 4766
    .local v0, data:Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;
    aget-object v8, v4, v10

    const-string/jumbo v9, "id:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;->userId:Ljava/lang/String;

    .line 4767
    aget-object v8, v4, v11

    const-string v9, "friendof:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;->friendOf:Ljava/lang/String;

    .line 4768
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4772
    .end local v0           #data:Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;
    .end local v4           #ids:[Ljava/lang/String;
    .end local v7           #token:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    .line 4773
    goto :goto_0
.end method

.method public static extractNoteText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "text"

    .prologue
    const/4 v5, -0x1

    .line 4732
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4742
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 4735
    .restart local p0
    :cond_1
    const-string v4, "<sn>"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 4736
    .local v1, startingIndex:I
    const-string v4, "</sn>"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 4737
    .local v0, endingIndex:I
    if-lt v0, v1, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v0, v5, :cond_0

    .line 4740
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4741
    .local v2, subTextFirstHalf:Ljava/lang/String;
    const-string v4, "</sn>"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 4742
    .local v3, subTextSecondHalf:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getUpdateAndEventCount(Landroid/content/Context;JI)I
    .locals 51
    .parameter "context"
    .parameter "personId"
    .parameter "isRead"

    .prologue
    .line 4523
    const/16 v23, 0x0

    .line 4524
    .local v23, count:I
    const/16 v26, 0x0

    .line 4525
    .local v26, cursor:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 4532
    .local v24, currentTime:J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Contacts$SocialNetworkMap;->SN_CONNECTION_QUERY_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/Contacts$SocialNetworkMap;->SN_CONNECTION_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "user.sid=service._id AND user.active_account=\'Y\' AND user.friend_of=0 AND service.session_token IS NOT NULL"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 4538
    const-wide/16 v34, 0x0

    .local v34, flickrActiveRowId:J
    move-wide/from16 v29, v34

    .line 4539
    .local v29, facebookActiveRowId:J
    if-eqz v26, :cond_3

    .line 4540
    const-string v2, "_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 4541
    .local v12, ID_INDEX:I
    const-string/jumbo v2, "service_name"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 4542
    .local v16, SERVICE_INDEX:I
    :cond_0
    :goto_0
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4543
    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 4544
    .local v47, serviceName:Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 4545
    .local v38, id:J
    const-string v2, "facebook"

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4546
    move-wide/from16 v29, v38

    goto :goto_0

    .line 4547
    :cond_1
    const-string v2, "flickr"

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4548
    move-wide/from16 v34, v38

    goto :goto_0

    .line 4551
    .end local v38           #id:J
    .end local v47           #serviceName:Ljava/lang/String;
    :cond_2
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 4552
    const/16 v26, 0x0

    .line 4555
    .end local v12           #ID_INDEX:I
    .end local v16           #SERVICE_INDEX:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Contacts$SocialNetworkMap;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v8, "user_row_id"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v8, "user_id"

    aput-object v8, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v8, "social_id"

    aput-object v8, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "people="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " AND ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "active_row_id"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v29

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " OR "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "active_row_id"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v34

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 4560
    if-eqz v26, :cond_9

    .line 4561
    const/16 v33, 0x0

    .line 4562
    .local v33, facebookUserId:Ljava/lang/String;
    const-wide/16 v36, 0x0

    .local v36, flickrRowId:J
    move-wide/from16 v31, v36

    .line 4563
    .local v31, facebookRowId:J
    const-string/jumbo v2, "user_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 4564
    .local v19, USER_ID_INDEX:I
    const-string/jumbo v2, "user_row_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 4565
    .local v20, USER_ROW_ID_INDEX:I
    const-string/jumbo v2, "social_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 4566
    .local v13, NETWORK_INDEX:I
    :cond_4
    :goto_1
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4567
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    .line 4568
    .local v45, rowId:J
    move-object/from16 v0, v26

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 4569
    .local v41, network:Ljava/lang/String;
    const-string v2, "facebook"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4570
    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 4571
    move-wide/from16 v31, v45

    goto :goto_1

    .line 4572
    :cond_5
    const-string v2, "flickr"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4573
    move-wide/from16 v36, v45

    goto :goto_1

    .line 4576
    .end local v41           #network:Ljava/lang/String;
    .end local v45           #rowId:J
    :cond_6
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 4577
    const/16 v26, 0x0

    .line 4578
    const-wide/16 v4, 0x0

    cmp-long v2, v31, v4

    if-gtz v2, :cond_7

    const-wide/16 v4, 0x0

    cmp-long v2, v36, v4

    if-lez v2, :cond_8

    .line 4580
    :cond_7
    if-nez p3, :cond_d

    .line 4581
    const-string v40, "AND is_read=0"

    .line 4588
    .local v40, isReadWhere:Ljava/lang/String;
    :goto_2
    const-string v2, "SELECT * FROM \t(SELECT user.user_id AS user_id, profile.uid AS uid, profile.type AS type, profile.extra AS extra, profile._id AS rowId, profile.is_read AS is_read, profile.last_check_time AS last_time, service.service_name AS service_name \t FROM \t\t(SELECT _id, uid, type, extra, is_read, last_check_time \t\t FROM profile_update \t\t WHERE uid=%d AND type=\'profile\' %s) AS profile, user, service \t WHERE profile.uid=user._id AND user.sid=service._id \t UNION ALL \t SELECT user.user_id AS user_id, photo.uid AS uid, \'photo\' AS type, photo.extra AS extra, photo.aid AS rowId, photo.is_read AS is_read, photo.last_update_time AS last_time, service.service_name AS service_name \t FROM \t\t(SELECT _id, uid, aid, COUNT(uid) AS extra, is_read, MAX(last_update_time) AS last_update_time \t \t FROM photo_update \t \t WHERE (uid=%d OR uid=%d) %s GROUP BY aid, is_read) AS photo, user, service \t WHERE photo.uid=user._id AND user.sid=service._id \t ORDER BY last_time DESC)"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v40, v4, v5

    const/4 v5, 0x2

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x3

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x4

    aput-object v40, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v44

    .line 4592
    .local v44, rawQuery:Ljava/lang/String;
    sget-object v2, Landroid/provider/Contacts$SocialNetworkMap;->SN_RAW_QUERY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 4593
    .local v3, queryUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 4595
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int v23, v23, v2

    .line 4596
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 4597
    const/16 v26, 0x0

    .line 4600
    .end local v3           #queryUri:Landroid/net/Uri;
    .end local v40           #isReadWhere:Ljava/lang/String;
    .end local v44           #rawQuery:Ljava/lang/String;
    :cond_8
    if-eqz v33, :cond_9

    .line 4601
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Contacts$SocialNetworkMap;->SN_EVENT_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "creator=\'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\' AND ("

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, "start_time BETWEEN "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " AND "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide v8, 0x9a7ec800L

    add-long v8, v8, v24

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ")"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 4605
    if-eqz v26, :cond_9

    .line 4606
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int v23, v23, v2

    .line 4607
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4608
    const/16 v26, 0x0

    .line 4615
    .end local v13           #NETWORK_INDEX:I
    .end local v19           #USER_ID_INDEX:I
    .end local v20           #USER_ROW_ID_INDEX:I
    .end local v29           #facebookActiveRowId:J
    .end local v31           #facebookRowId:J
    .end local v33           #facebookUserId:Ljava/lang/String;
    .end local v34           #flickrActiveRowId:J
    .end local v36           #flickrRowId:J
    :cond_9
    :goto_3
    if-eqz v26, :cond_a

    .line 4616
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 4619
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Contacts$EventsMap;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "person="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 4622
    if-eqz v26, :cond_12

    .line 4623
    const-string v2, "_id"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 4624
    .local v15, ROW_ID_INDEX:I
    const-string/jumbo v2, "type"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 4625
    .local v18, TYPE_INDEX:I
    const-string/jumbo v2, "person"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 4626
    .local v14, PERSON_INDEX:I
    const-string/jumbo v2, "start_time"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 4627
    .local v17, START_TIME_INDEX:I
    const-string v2, "checked"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 4629
    .local v11, CHECKED_INDEX:I
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 4630
    .local v27, duplicateEventCheck:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_b
    :goto_4
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 4632
    move-object/from16 v0, v26

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 4633
    .local v22, checked:I
    if-nez v22, :cond_b

    .line 4637
    move-object/from16 v0, v26

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 4638
    .local v42, person:J
    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 4639
    .local v6, time:J
    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v50

    .line 4640
    .local v50, type:I
    move/from16 v0, v50

    int-to-long v4, v0

    const/16 v2, 0x20

    shl-long/2addr v4, v2

    const-wide/16 v8, -0x1

    and-long v8, v8, v42

    or-long v38, v4, v8

    .line 4641
    .restart local v38       #id:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v21

    .line 4642
    .local v21, calendar:Ljava/util/Calendar;
    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4643
    const/16 v2, 0xe

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 4644
    const/16 v2, 0xd

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 4645
    const/16 v2, 0xc

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 4646
    const/4 v2, 0x1

    move/from16 v0, v50

    if-ne v0, v2, :cond_f

    .line 4647
    const/16 v2, 0xb

    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 4653
    :goto_5
    invoke-virtual/range {v21 .. v21}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 4654
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4655
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v48

    .line 4656
    .local v48, time2:J
    cmp-long v2, v48, v6

    if-eqz v2, :cond_b

    .line 4661
    .end local v48           #time2:J
    :cond_c
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4663
    const-wide v8, 0x9a7ec800L

    const/4 v10, 0x1

    move-wide/from16 v4, v24

    invoke-static/range {v4 .. v10}, Landroid/provider/Contacts$SocialNetworkMap;->isWithinTime(JJJZ)J

    move-result-wide v6

    const-wide/16 v4, 0x0

    cmp-long v2, v6, v4

    if-lez v2, :cond_b

    .line 4664
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_4

    .line 4582
    .end local v6           #time:J
    .end local v11           #CHECKED_INDEX:I
    .end local v14           #PERSON_INDEX:I
    .end local v15           #ROW_ID_INDEX:I
    .end local v17           #START_TIME_INDEX:I
    .end local v18           #TYPE_INDEX:I
    .end local v21           #calendar:Ljava/util/Calendar;
    .end local v22           #checked:I
    .end local v27           #duplicateEventCheck:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v38           #id:J
    .end local v42           #person:J
    .end local v50           #type:I
    .restart local v13       #NETWORK_INDEX:I
    .restart local v19       #USER_ID_INDEX:I
    .restart local v20       #USER_ROW_ID_INDEX:I
    .restart local v29       #facebookActiveRowId:J
    .restart local v31       #facebookRowId:J
    .restart local v33       #facebookUserId:Ljava/lang/String;
    .restart local v34       #flickrActiveRowId:J
    .restart local v36       #flickrRowId:J
    :cond_d
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_e

    .line 4583
    :try_start_1
    const-string v40, "AND is_read=1"

    .restart local v40       #isReadWhere:Ljava/lang/String;
    goto/16 :goto_2

    .line 4585
    .end local v40           #isReadWhere:Ljava/lang/String;
    :cond_e
    const-string v40, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v40       #isReadWhere:Ljava/lang/String;
    goto/16 :goto_2

    .line 4612
    .end local v13           #NETWORK_INDEX:I
    .end local v19           #USER_ID_INDEX:I
    .end local v20           #USER_ROW_ID_INDEX:I
    .end local v29           #facebookActiveRowId:J
    .end local v31           #facebookRowId:J
    .end local v33           #facebookUserId:Ljava/lang/String;
    .end local v34           #flickrActiveRowId:J
    .end local v36           #flickrRowId:J
    .end local v40           #isReadWhere:Ljava/lang/String;
    :catch_0
    move-exception v28

    .line 4613
    .local v28, e:Ljava/lang/Exception;
    const-string v2, "Contacts"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4648
    .end local v28           #e:Ljava/lang/Exception;
    .restart local v6       #time:J
    .restart local v11       #CHECKED_INDEX:I
    .restart local v14       #PERSON_INDEX:I
    .restart local v15       #ROW_ID_INDEX:I
    .restart local v17       #START_TIME_INDEX:I
    .restart local v18       #TYPE_INDEX:I
    .restart local v21       #calendar:Ljava/util/Calendar;
    .restart local v22       #checked:I
    .restart local v27       #duplicateEventCheck:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v38       #id:J
    .restart local v42       #person:J
    .restart local v50       #type:I
    :cond_f
    const/4 v2, 0x2

    move/from16 v0, v50

    if-ne v0, v2, :cond_10

    .line 4649
    const/16 v2, 0xb

    const/4 v4, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    goto :goto_5

    .line 4651
    :cond_10
    const/16 v2, 0xb

    const/4 v4, 0x3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    goto :goto_5

    .line 4667
    .end local v6           #time:J
    .end local v21           #calendar:Ljava/util/Calendar;
    .end local v22           #checked:I
    .end local v38           #id:J
    .end local v42           #person:J
    .end local v50           #type:I
    :cond_11
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 4670
    .end local v11           #CHECKED_INDEX:I
    .end local v14           #PERSON_INDEX:I
    .end local v15           #ROW_ID_INDEX:I
    .end local v17           #START_TIME_INDEX:I
    .end local v18           #TYPE_INDEX:I
    .end local v27           #duplicateEventCheck:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_12
    const-string v2, "Contacts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bubble getUpdateAndEventCount personId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4671
    return v23
.end method

.method public static getUpdateAndEventCountForGroup(Landroid/content/Context;JI)I
    .locals 17
    .parameter "context"
    .parameter "groupId"
    .parameter "isRead"

    .prologue
    .line 4283
    const/16 v8, 0xfa

    .line 4285
    .local v8, MAX_PER_LOOP:I
    const/4 v10, 0x0

    .line 4286
    .local v10, count:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 4288
    .local v11, currentTime:J
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 4289
    .local v16, peopleIdBuilder:Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .line 4292
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Contacts$People;->MEMBER_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 4295
    const-string v3, "HtcGroupIndicatorRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v13, :cond_3

    const-string/jumbo v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4296
    if-eqz v13, :cond_6

    .line 4297
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 4298
    const-string v2, "_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 4299
    .local v9, PEOPLE_ID_INDEX:I
    const/4 v15, 0x0

    .line 4300
    .local v15, i:I
    :cond_0
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4301
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4302
    const/16 v2, 0x2c

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4303
    add-int/lit8 v15, v15, 0x1

    .line 4304
    const/16 v2, 0xfa

    if-ne v15, v2, :cond_0

    .line 4305
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_1

    .line 4306
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 4308
    :cond_1
    const/4 v2, 0x0

    const/16 v3, 0x28

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 4309
    const/16 v2, 0x29

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4310
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v2, v1, v11, v12}, Landroid/provider/Contacts$SocialNetworkMap;->getUpdateAndEventCountForGroup(Landroid/content/Context;Ljava/lang/String;IJ)I

    move-result v2

    add-int/2addr v10, v2

    .line 4311
    const/4 v15, 0x0

    .line 4312
    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4323
    .end local v9           #PEOPLE_ID_INDEX:I
    .end local v15           #i:I
    :catch_0
    move-exception v14

    .line 4324
    .local v14, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "HtcGroupIndicatorRequest"

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4325
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4327
    if-eqz v13, :cond_2

    .line 4328
    .end local v14           #e:Ljava/lang/Exception;
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4331
    :cond_2
    const/16 v16, 0x0

    .line 4332
    return v10

    .line 4295
    :cond_3
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 4315
    .restart local v9       #PEOPLE_ID_INDEX:I
    .restart local v15       #i:I
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_5

    .line 4316
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 4318
    :cond_5
    const/4 v2, 0x0

    const/16 v3, 0x28

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 4319
    const/16 v2, 0x29

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4320
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v2, v1, v11, v12}, Landroid/provider/Contacts$SocialNetworkMap;->getUpdateAndEventCountForGroup(Landroid/content/Context;Ljava/lang/String;IJ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    add-int/2addr v10, v2

    .line 4327
    .end local v9           #PEOPLE_ID_INDEX:I
    .end local v15           #i:I
    :cond_6
    if-eqz v13, :cond_2

    goto :goto_2

    :catchall_0
    move-exception v2

    if-eqz v13, :cond_7

    .line 4328
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4327
    :cond_7
    throw v2
.end method

.method public static getUpdateAndEventCountForGroup(Landroid/content/Context;Ljava/lang/String;IJ)I
    .locals 49
    .parameter "context"
    .parameter "peopleIdList"
    .parameter "isRead"
    .parameter "currentTime"

    .prologue
    .line 4341
    const-string v3, "HtcGroupIndicatorRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PeopleList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4342
    const/16 v24, 0x0

    .line 4344
    .local v24, count:I
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 4345
    .local v30, facebookUserId:Ljava/lang/StringBuilder;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    .line 4346
    .local v29, facebookRowId:Ljava/lang/StringBuilder;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    .line 4349
    .local v33, flickrRowId:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Contacts$SocialNetworkMap;->SN_CONNECTION_QUERY_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Contacts$SocialNetworkMap;->SN_CONNECTION_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v6, "user.sid=service._id AND user.active_account=\'Y\' AND user.friend_of=0 AND service.session_token IS NOT NULL"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 4355
    .local v25, cursor:Landroid/database/Cursor;
    const-wide/16 v31, 0x0

    .local v31, flickrActiveRowId:J
    move-wide/from16 v27, v31

    .line 4356
    .local v27, facebookActiveRowId:J
    if-eqz v25, :cond_3

    .line 4357
    const-string v3, "_id"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 4358
    .local v13, ID_INDEX:I
    const-string/jumbo v3, "service_name"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 4359
    .local v17, SERVICE_INDEX:I
    :cond_0
    :goto_0
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4360
    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 4361
    .local v44, serviceName:Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 4362
    .local v34, id:J
    const-string v3, "facebook"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4363
    move-wide/from16 v27, v34

    goto :goto_0

    .line 4364
    :cond_1
    const-string v3, "flickr"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4365
    move-wide/from16 v31, v34

    goto :goto_0

    .line 4368
    .end local v34           #id:J
    .end local v44           #serviceName:Ljava/lang/String;
    :cond_2
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 4369
    const/16 v25, 0x0

    .line 4371
    .end local v13           #ID_INDEX:I
    .end local v17           #SERVICE_INDEX:I
    :cond_3
    const-string v3, "HtcGroupIndicatorRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "facebookActiveRowId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v27

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", flickrActiveRowId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v31

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4373
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Contacts$SocialNetworkMap;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v9, "user_row_id"

    aput-object v9, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v9, "user_id"

    aput-object v9, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v9, "social_id"

    aput-object v9, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "people IN "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " AND ("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "active_row_id"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v27

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " OR "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "active_row_id"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v31

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ")"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 4378
    if-eqz v25, :cond_c

    .line 4379
    const-string/jumbo v3, "user_id"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 4380
    .local v20, USER_ID_INDEX:I
    const-string/jumbo v3, "user_row_id"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 4381
    .local v21, USER_ROW_ID_INDEX:I
    const-string/jumbo v3, "social_id"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 4384
    .local v14, NETWORK_INDEX:I
    :cond_4
    :goto_1
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4385
    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 4386
    .local v38, network:Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 4387
    .local v48, userId:Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 4388
    .local v42, rowId:J
    const-string v3, "facebook"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4389
    const-string v3, "\'"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4390
    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4391
    const-string v3, "\'"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4392
    const/16 v3, 0x2c

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4393
    move-object/from16 v0, v29

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4394
    const/16 v3, 0x2c

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4395
    :cond_5
    const-string v3, "flickr"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4396
    move-object/from16 v0, v33

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4397
    const/16 v3, 0x2c

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4401
    .end local v38           #network:Ljava/lang/String;
    .end local v42           #rowId:J
    .end local v48           #userId:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v5, 0x2c

    if-ne v3, v5, :cond_7

    .line 4402
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 4404
    :cond_7
    const/4 v3, 0x0

    const/16 v5, 0x28

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 4405
    const/16 v3, 0x29

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4407
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v5, 0x2c

    if-ne v3, v5, :cond_8

    .line 4408
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 4410
    :cond_8
    const/4 v3, 0x0

    const/16 v5, 0x28

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 4411
    const/16 v3, 0x29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4413
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_9

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v5, 0x2c

    if-ne v3, v5, :cond_9

    .line 4414
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 4416
    :cond_9
    const/4 v3, 0x0

    const/16 v5, 0x28

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 4417
    const/16 v3, 0x29

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4418
    const-string v3, "HtcGroupIndicatorRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "facebookUserId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4419
    const-string v3, "HtcGroupIndicatorRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "facebookRowId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4420
    const-string v3, "HtcGroupIndicatorRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flickrRowId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4421
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 4422
    const/16 v25, 0x0

    .line 4424
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gtz v3, :cond_a

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 4426
    :cond_a
    if-nez p2, :cond_f

    .line 4427
    const-string v36, "AND is_read=0"

    .line 4433
    .local v36, isReadWhere:Ljava/lang/String;
    :goto_2
    const-string v3, "SELECT * FROM \t(SELECT user.user_id AS user_id, profile.uid AS uid, profile.type AS type, profile.extra AS extra, profile._id AS rowId, profile.is_read AS is_read, profile.last_check_time AS last_time, service.service_name AS service_name \t FROM \t\t(SELECT _id, uid, type, extra, is_read, last_check_time \t\t FROM profile_update \t\t WHERE uid IN %s AND type=\'profile\' %s) AS profile, user, service \t WHERE profile.uid=user._id AND user.sid=service._id \t UNION ALL \t SELECT user.user_id AS user_id, photo.uid AS uid, \'photo\' AS type, photo.extra AS extra, photo.aid AS rowId, photo.is_read AS is_read, photo.last_update_time AS last_time, service.service_name AS service_name \t FROM \t\t(SELECT _id, uid, aid, COUNT(uid) AS extra, is_read, MAX(last_update_time) AS last_update_time \t \t FROM photo_update \t \t WHERE (uid IN %s OR uid IN %s) %s GROUP BY aid, is_read) AS photo, user, service \t WHERE photo.uid=user._id AND user.sid=service._id \t ORDER BY last_time DESC)"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x1

    aput-object v36, v5, v6

    const/4 v6, 0x2

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x3

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x4

    aput-object v36, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    .line 4437
    .local v41, rawQuery:Ljava/lang/String;
    sget-object v3, Landroid/provider/Contacts$SocialNetworkMap;->SN_RAW_QUERY_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 4438
    .local v4, queryUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 4440
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int v24, v24, v3

    .line 4441
    const-string v3, "HtcGroupIndicatorRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE COUNT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4442
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 4443
    const/16 v25, 0x0

    .line 4446
    .end local v4           #queryUri:Landroid/net/Uri;
    .end local v36           #isReadWhere:Ljava/lang/String;
    .end local v41           #rawQuery:Ljava/lang/String;
    :cond_b
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_c

    .line 4447
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Contacts$SocialNetworkMap;->SN_EVENT_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "creator IN "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " AND ("

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, "start_time BETWEEN "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " AND "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide v9, 0x9a7ec800L

    add-long v9, v9, p3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ")"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 4451
    if-eqz v25, :cond_c

    .line 4452
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int v24, v24, v3

    .line 4453
    const-string v3, "HtcGroupIndicatorRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SN EVENT COUNT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4454
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 4455
    const/16 v25, 0x0

    .line 4460
    .end local v14           #NETWORK_INDEX:I
    .end local v20           #USER_ID_INDEX:I
    .end local v21           #USER_ROW_ID_INDEX:I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Contacts$EventsMap;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "person IN "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 4463
    if-eqz v25, :cond_14

    .line 4464
    const-string v3, "_id"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 4465
    .local v16, ROW_ID_INDEX:I
    const-string/jumbo v3, "type"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 4466
    .local v19, TYPE_INDEX:I
    const-string/jumbo v3, "person"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 4467
    .local v15, PERSON_INDEX:I
    const-string/jumbo v3, "start_time"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 4468
    .local v18, START_TIME_INDEX:I
    const-string v3, "checked"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 4469
    .local v12, CHECKED_INDEX:I
    const/16 v37, 0x0

    .line 4471
    .local v37, localEventCount:I
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 4472
    .local v26, duplicateEventCheck:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_d
    :goto_3
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 4473
    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 4474
    .local v23, checked:I
    if-nez v23, :cond_d

    .line 4478
    move-object/from16 v0, v25

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    .line 4479
    .local v39, person:J
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 4480
    .local v7, time:J
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    .line 4481
    .local v47, type:I
    move/from16 v0, v47

    int-to-long v5, v0

    const/16 v3, 0x20

    shl-long/2addr v5, v3

    const-wide/16 v9, -0x1

    and-long v9, v9, v39

    or-long v34, v5, v9

    .line 4482
    .restart local v34       #id:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v22

    .line 4483
    .local v22, calendar:Ljava/util/Calendar;
    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4484
    const/16 v3, 0xe

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 4485
    const/16 v3, 0xd

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 4486
    const/16 v3, 0xc

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 4487
    const/4 v3, 0x1

    move/from16 v0, v47

    if-ne v0, v3, :cond_11

    .line 4488
    const/16 v3, 0xb

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 4494
    :goto_4
    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 4495
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 4496
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v45

    .line 4497
    .local v45, time2:J
    cmp-long v3, v45, v7

    if-eqz v3, :cond_d

    .line 4502
    .end local v45           #time2:J
    :cond_e
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4504
    const-wide v9, 0x9a7ec800L

    const/4 v11, 0x1

    move-wide/from16 v5, p3

    invoke-static/range {v5 .. v11}, Landroid/provider/Contacts$SocialNetworkMap;->isWithinTime(JJJZ)J

    move-result-wide v7

    const-wide/16 v5, 0x0

    cmp-long v3, v7, v5

    if-lez v3, :cond_d

    .line 4505
    add-int/lit8 v24, v24, 0x1

    .line 4506
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_3

    .line 4428
    .end local v7           #time:J
    .end local v12           #CHECKED_INDEX:I
    .end local v15           #PERSON_INDEX:I
    .end local v16           #ROW_ID_INDEX:I
    .end local v18           #START_TIME_INDEX:I
    .end local v19           #TYPE_INDEX:I
    .end local v22           #calendar:Ljava/util/Calendar;
    .end local v23           #checked:I
    .end local v26           #duplicateEventCheck:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v34           #id:J
    .end local v37           #localEventCount:I
    .end local v39           #person:J
    .end local v47           #type:I
    .restart local v14       #NETWORK_INDEX:I
    .restart local v20       #USER_ID_INDEX:I
    .restart local v21       #USER_ROW_ID_INDEX:I
    :cond_f
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_10

    .line 4429
    const-string v36, "AND is_read=1"

    .restart local v36       #isReadWhere:Ljava/lang/String;
    goto/16 :goto_2

    .line 4431
    .end local v36           #isReadWhere:Ljava/lang/String;
    :cond_10
    const-string v36, ""

    .restart local v36       #isReadWhere:Ljava/lang/String;
    goto/16 :goto_2

    .line 4489
    .end local v14           #NETWORK_INDEX:I
    .end local v20           #USER_ID_INDEX:I
    .end local v21           #USER_ROW_ID_INDEX:I
    .end local v36           #isReadWhere:Ljava/lang/String;
    .restart local v7       #time:J
    .restart local v12       #CHECKED_INDEX:I
    .restart local v15       #PERSON_INDEX:I
    .restart local v16       #ROW_ID_INDEX:I
    .restart local v18       #START_TIME_INDEX:I
    .restart local v19       #TYPE_INDEX:I
    .restart local v22       #calendar:Ljava/util/Calendar;
    .restart local v23       #checked:I
    .restart local v26       #duplicateEventCheck:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v34       #id:J
    .restart local v37       #localEventCount:I
    .restart local v39       #person:J
    .restart local v47       #type:I
    :cond_11
    const/4 v3, 0x2

    move/from16 v0, v47

    if-ne v0, v3, :cond_12

    .line 4490
    const/16 v3, 0xb

    const/4 v5, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    goto :goto_4

    .line 4492
    :cond_12
    const/16 v3, 0xb

    const/4 v5, 0x3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    goto :goto_4

    .line 4509
    .end local v7           #time:J
    .end local v22           #calendar:Ljava/util/Calendar;
    .end local v23           #checked:I
    .end local v34           #id:J
    .end local v39           #person:J
    .end local v47           #type:I
    :cond_13
    const-string v3, "HtcGroupIndicatorRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LOCAL EVENT COUNT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4510
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 4511
    const/16 v25, 0x0

    .line 4513
    .end local v12           #CHECKED_INDEX:I
    .end local v15           #PERSON_INDEX:I
    .end local v16           #ROW_ID_INDEX:I
    .end local v18           #START_TIME_INDEX:I
    .end local v19           #TYPE_INDEX:I
    .end local v26           #duplicateEventCheck:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v37           #localEventCount:I
    :cond_14
    const/16 v30, 0x0

    .line 4514
    const/16 v29, 0x0

    .line 4515
    const/16 v33, 0x0

    .line 4516
    return v24
.end method

.method public static isAutoUpdate(II)Z
    .locals 1
    .parameter "updateFlag"
    .parameter "updateType"

    .prologue
    .line 4184
    and-int v0, p0, p1

    if-lez v0, :cond_0

    .line 4185
    const/4 v0, 0x1

    .line 4187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhotoAutoUpdate(I)Z
    .locals 1
    .parameter "updateFlag"

    .prologue
    .line 4164
    and-int/lit8 v0, p0, 0x1

    if-lez v0, :cond_0

    .line 4165
    const/4 v0, 0x1

    .line 4167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusAutoUpdate(I)Z
    .locals 1
    .parameter "updateFlag"

    .prologue
    .line 4174
    and-int/lit8 v0, p0, 0x2

    if-lez v0, :cond_0

    .line 4175
    const/4 v0, 0x1

    .line 4177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWithinTime(JJJZ)J
    .locals 6
    .parameter "now"
    .parameter "time"
    .parameter "period"
    .parameter "isRepeatYearly"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4675
    if-nez p6, :cond_0

    cmp-long v2, p2, p0

    if-ltz v2, :cond_0

    add-long v2, p0, p4

    cmp-long v2, p2, v2

    if-gtz v2, :cond_0

    move-wide v2, p2

    .line 4698
    :goto_0
    return-wide v2

    .line 4677
    :cond_0
    if-eqz p6, :cond_3

    .line 4678
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 4679
    .local v0, nowCal:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4680
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 4681
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 4682
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 4683
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 4684
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    .line 4685
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 4686
    .local v1, timeCal:Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4687
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-gez v2, :cond_2

    .line 4688
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 4689
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-gez v2, :cond_1

    .line 4690
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 4692
    :cond_1
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    .line 4694
    :cond_2
    cmp-long v2, p2, p0

    if-ltz v2, :cond_3

    add-long v2, p0, p4

    cmp-long v2, p2, v2

    if-gtz v2, :cond_3

    move-wide v2, p2

    .line 4695
    goto :goto_0

    .line 4698
    .end local v0           #nowCal:Ljava/util/Calendar;
    .end local v1           #timeCal:Ljava/util/Calendar;
    :cond_3
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static removeLinkData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "text"
    .parameter "friendOf"

    .prologue
    .line 4861
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4879
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 4864
    .restart local p0
    :cond_1
    invoke-static {p0}, Landroid/provider/Contacts$SocialNetworkMap;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 4865
    .local v1, dataList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;>;"
    if-eqz v1, :cond_0

    .line 4869
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 4871
    .local v2, dataListSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 4872
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;

    .line 4874
    .local v0, data:Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;
    iget-object v4, v0, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4875
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4879
    .end local v0           #data:Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;
    :cond_2
    invoke-static {p0, v1}, Landroid/provider/Contacts$SocialNetworkMap;->setLinkData(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4871
    .restart local v0       #data:Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static setAllSNEventReadStatus(Landroid/content/Context;JZ)V
    .locals 8
    .parameter "context"
    .parameter "uid"
    .parameter "isRead"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4703
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4704
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4705
    .local v1, values:Landroid/content/ContentValues;
    const-string/jumbo v5, "is_read"

    if-eqz p3, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4707
    sget-object v2, Landroid/provider/Contacts$SocialNetworkMap;->SN_PROFILE_UPDATE_CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v1, v5, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4710
    const-string/jumbo v2, "is_read"

    if-eqz p3, :cond_1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4711
    sget-object v2, Landroid/provider/Contacts$SocialNetworkMap;->SN_PHOTO_UPDATE_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4713
    return-void

    :cond_0
    move v2, v4

    .line 4705
    goto :goto_0

    :cond_1
    move v3, v4

    .line 4710
    goto :goto_1
.end method

.method private static setLinkData(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, dataList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;>;"
    const/16 v9, 0x7c

    const/4 v8, -0x1

    .line 4823
    const-string v7, "<sn>"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 4824
    .local v6, startingIndex:I
    const-string v7, "</sn>"

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 4825
    .local v4, endingIndex:I
    if-lt v4, v6, :cond_0

    if-eq v6, v8, :cond_0

    if-ne v4, v8, :cond_1

    .line 4857
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 4829
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p0}, Landroid/provider/Contacts$SocialNetworkMap;->extractNoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 4830
    .local v0, bufferText:Ljava/lang/StringBuffer;
    const-string v7, "</sn>"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 4831
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 4832
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 4833
    .local v2, dataListSize:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4835
    .local v3, dataStringBuilder:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_2

    .line 4836
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;

    .line 4837
    .local v1, data:Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;
    const-string/jumbo v7, "id:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4838
    iget-object v7, v1, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4839
    const/16 v7, 0x2f

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4840
    const-string v7, "friendof:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4841
    iget-object v7, v1, Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4842
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4835
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4844
    .end local v1           #data:Landroid/provider/Contacts$SocialNetworkMap$SNLinkData;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_3

    .line 4845
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 4847
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 4848
    const/4 v7, 0x0

    const-string v8, "<sn>"

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4849
    const-string v7, "</sn>"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4851
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4857
    .end local v2           #dataListSize:I
    .end local v3           #dataStringBuilder:Ljava/lang/StringBuilder;
    .end local v5           #i:I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method
