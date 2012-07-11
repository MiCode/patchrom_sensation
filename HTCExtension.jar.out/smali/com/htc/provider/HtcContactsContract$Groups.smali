.class public final Lcom/htc/provider/HtcContactsContract$Groups;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/HtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Groups"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/provider/HtcContactsContract$Groups$Thumbnail;,
        Lcom/htc/provider/HtcContactsContract$Groups$Favorite;
    }
.end annotation


# static fields
.field public static final CONTENT_ITEM_NAME_SYMMARY_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/group_name_summary"

.field public static final CONTENT_NAME_LIST_URI:Landroid/net/Uri; = null

.field public static final CONTENT_NAME_SUMMARY_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_GROUP_COWORK:Ljava/lang/String; = "Coworkers"

.field public static final DEFAULT_GROUP_COWORK_DISPLAY_NAME:Ljava/lang/String; = "Coworkers"

.field public static final DEFAULT_GROUP_COWORK_SYSTEM_ID:Ljava/lang/String; = "Coworkers"

.field public static final DEFAULT_GROUP_FAMILY:Ljava/lang/String; = "Family"

.field public static final DEFAULT_GROUP_FAMILY_DISPLAY_NAME:Ljava/lang/String; = "Family"

.field public static final DEFAULT_GROUP_FAMILY_SYSTEM_ID:Ljava/lang/String; = "Family"

.field public static final DEFAULT_GROUP_FAVORITE:Ljava/lang/String; = "Favorite_8656150684447252476_6727701920173350445"

.field public static final DEFAULT_GROUP_FAVORITE_CHECKNAME:Ljava/lang/String; = "Favorite_8656150684447252476_6727701920173350445"

.field public static final DEFAULT_GROUP_FAVORITE_DISPLAY_NAME:Ljava/lang/String; = "Favorites"

.field public static final DEFAULT_GROUP_FREQUENT_CONTACT:Ljava/lang/String; = "Frequent Contacts"

.field public static final DEFAULT_GROUP_FRIEND:Ljava/lang/String; = "Friends"

.field public static final DEFAULT_GROUP_FRIEND_DISPLAY_NAME:Ljava/lang/String; = "Friends"

.field public static final DEFAULT_GROUP_FRIEND_SYSTEM_ID:Ljava/lang/String; = "Friends"

.field public static final DEFAULT_GROUP_HTC_FAVORITE:Ljava/lang/String; = "HTC Favorite"

.field public static final DEFAULT_GROUP_IMPORTANCE:Ljava/lang/String; = "VIP"

.field public static final DEFAULT_GROUP_IMPORTANCE_CHECKNAME:Ljava/lang/String; = "VIP"

.field public static final DEFAULT_GROUP_IMPORTANCE_DISPLAY_NAME:Ljava/lang/String; = "VIP"

.field public static final DELETE_CONTENT_URI:Landroid/net/Uri; = null

.field public static final DISPLAY_TITLE:Ljava/lang/String; = "display_title"

.field public static final EXTRA_GROUP_NAME:Ljava/lang/String; = "GROUP_NAME"

.field public static final GROUP_ANDROID_STARRED:Ljava/lang/String; = "Starred in Android"

.field public static final GROUP_PHOTO:Ljava/lang/String; = "photo"

.field public static final GROUP_RAW_URI:Landroid/net/Uri; = null

.field public static final IS_ATTRIBUTE_SET:Ljava/lang/String; = "is_attribute_set"

.field public static final IS_HIDE:Ljava/lang/String; = "is_hide"

.field public static final MAX_SHOWN_FREQUENT_CONTACTS:I = 0x12

.field public static final MEMBER_CONTENT_URI:Landroid/net/Uri; = null

.field public static final ORDER_GROUP_COWORKERS:I = 0x14

.field public static final ORDER_GROUP_FAMILY:I = 0x28

.field public static final ORDER_GROUP_FAVORITES:I = -0x5

.field public static final ORDER_GROUP_FREQUENT_CONTACT:I = -0x1e

.field public static final ORDER_GROUP_FRIENDS:I = 0x1e

.field public static final ORDER_GROUP_IMPORTANCE:I = 0x32

.field public static final SORT_ORDER:Ljava/lang/String; = "sortorder"

.field public static final SYSTEM_GROUP_MYCONTACTS:Ljava/lang/String; = "System Group: My Contacts"

.field public static final SYSTEM_GROUP_MYCONTACTS_SYSTEM_ID:Ljava/lang/String; = "Contacts"

.field public static final SYSTEM_GROUP_TITLE_MYCONTACTS:Ljava/lang/String; = "My Contacts"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1676
    sget-object v0, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "groups_device"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Groups;->DELETE_CONTENT_URI:Landroid/net/Uri;

    .line 1682
    sget-object v0, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "groups_member"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Groups;->MEMBER_CONTENT_URI:Landroid/net/Uri;

    .line 1688
    sget-object v0, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "groups_name_summary"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Groups;->CONTENT_NAME_SUMMARY_URI:Landroid/net/Uri;

    .line 1694
    sget-object v0, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "groups_name_list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Groups;->CONTENT_NAME_LIST_URI:Landroid/net/Uri;

    .line 1697
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "groups_raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Groups;->GROUP_RAW_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1654
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultGroupIconResource(Ljava/lang/String;)I
    .locals 3
    .parameter "name"

    .prologue
    .line 1896
    const v0, 0x2080251

    .line 1897
    .local v0, resId:I
    if-nez p0, :cond_0

    move v1, v0

    .line 1925
    .end local v0           #resId:I
    .local v1, resId:I
    :goto_0
    return v1

    .line 1901
    .end local v1           #resId:I
    .restart local v0       #resId:I
    :cond_0
    const-string v2, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1902
    const v0, 0x208024d

    :cond_1
    :goto_1
    move v1, v0

    .line 1925
    .end local v0           #resId:I
    .restart local v1       #resId:I
    goto :goto_0

    .line 1904
    .end local v1           #resId:I
    .restart local v0       #resId:I
    :cond_2
    const-string v2, "VIP"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1905
    const v0, 0x208025e

    goto :goto_1

    .line 1907
    :cond_3
    const-string v2, "Family"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1908
    const v0, 0x208024c

    goto :goto_1

    .line 1910
    :cond_4
    const-string v2, "Friends"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1911
    const v0, 0x2080250

    goto :goto_1

    .line 1913
    :cond_5
    const-string v2, "Coworkers"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1914
    const v0, 0x2080240

    goto :goto_1

    .line 1916
    :cond_6
    const-string v2, "Starred in Android"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1917
    const v0, 0x208024d

    goto :goto_1

    .line 1919
    :cond_7
    const-string v2, "System Group: My Contacts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1920
    const v0, 0x2080251

    goto :goto_1

    .line 1922
    :cond_8
    const-string v2, "Frequent Contacts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1923
    const v0, 0x2080255

    goto :goto_1
.end method

.method public static getDefaultGroupIconResourceMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const v3, 0x208024d

    .line 1929
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1930
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "Favorite_8656150684447252476_6727701920173350445"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    const-string v1, "VIP"

    const v2, 0x208025e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1932
    const-string v1, "Family"

    const v2, 0x208024c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1933
    const-string v1, "Friends"

    const v2, 0x2080250

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    const-string v1, "Coworkers"

    const v2, 0x2080240

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1935
    const-string v1, "Starred in Android"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1936
    const-string v1, "System Group: My Contacts"

    const v2, 0x2080251

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1937
    const-string v1, "Frequent Contacts"

    const v2, 0x2080255

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1938
    return-object v0
.end method

.method public static final getDefaultGroupOrder(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 1791
    if-nez p0, :cond_1

    .line 1792
    const/4 v0, 0x0

    .line 1819
    :cond_0
    :goto_0
    return v0

    .line 1794
    :cond_1
    const/4 v0, 0x0

    .line 1795
    .local v0, result:I
    const-string v1, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1796
    const/4 v0, -0x5

    goto :goto_0

    .line 1798
    :cond_2
    const-string v1, "VIP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1799
    const/16 v0, 0x32

    goto :goto_0

    .line 1801
    :cond_3
    const-string v1, "Family"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1802
    const/16 v0, 0x28

    goto :goto_0

    .line 1804
    :cond_4
    const-string v1, "Friends"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1805
    const/16 v0, 0x1e

    goto :goto_0

    .line 1807
    :cond_5
    const-string v1, "Coworkers"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1808
    const/16 v0, 0x14

    goto :goto_0

    .line 1810
    :cond_6
    const-string v1, "Starred in Android"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1811
    const/16 v0, -0xa

    goto :goto_0

    .line 1813
    :cond_7
    const-string v1, "System Group: My Contacts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1814
    const/16 v0, -0x14

    goto :goto_0

    .line 1816
    :cond_8
    const-string v1, "Frequent Contacts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1817
    const/16 v0, -0x1e

    goto :goto_0
.end method

.method public static getOrCreateGoogleSystemMyContactGroup(Landroid/content/ContentResolver;Landroid/accounts/Account;)J
    .locals 16
    .parameter "resolver"
    .parameter "account"

    .prologue
    .line 1831
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1832
    :cond_0
    const-wide/16 v12, -0x1

    .line 1891
    :cond_1
    :goto_0
    return-wide v12

    .line 1835
    :cond_2
    const-wide/16 v12, -0x1

    .line 1836
    .local v12, id:J
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "sourceid"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "notes"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "system_id"

    aput-object v2, v3, v1

    .line 1842
    .local v3, projection:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "My Contacts"

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "account_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "auto_add"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "group_is_read_only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1849
    .local v4, selection:Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "sourceid DESC "

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1852
    .local v7, c:Landroid/database/Cursor;
    const/4 v10, -0x1

    .line 1853
    .local v10, counts:I
    const-wide/16 v8, -0x1

    .line 1854
    .local v8, checkId:J
    if-eqz v7, :cond_6

    .line 1855
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1857
    :cond_3
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1858
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1859
    .local v15, sourceId:Ljava/lang/String;
    const-wide/16 v1, -0x1

    cmp-long v1, v8, v1

    if-nez v1, :cond_4

    .line 1860
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1862
    :cond_4
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1863
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 1869
    .end local v15           #sourceId:Ljava/lang/String;
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1873
    :cond_6
    move-wide v12, v8

    .line 1874
    if-gez v10, :cond_7

    .line 1875
    const-wide/16 v12, -0x1

    goto/16 :goto_0

    .line 1869
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1877
    :cond_7
    if-nez v10, :cond_1

    .line 1879
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1880
    .local v14, newGroup:Landroid/content/ContentValues;
    const-string v1, "title"

    const-string v2, "My Contacts"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    const-string v1, "account_name"

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    const-string v1, "account_type"

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    const-string v1, "group_visible"

    const-string v2, "1"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    const-string v1, "auto_add"

    const-string v2, "1"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    const-string v1, "group_is_read_only"

    const-string v2, "1"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 1889
    .local v11, groupUri:Landroid/net/Uri;
    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    goto/16 :goto_0
.end method

.method public static getViewFavoriteIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1955
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.LIST_STARRED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1956
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method

.method public static final getViewGroupIntentByName(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "name"

    .prologue
    .line 1965
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1966
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "GROUP_NAME"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1967
    return-object v0
.end method

.method public static final isDefaultGroupName(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 1778
    if-nez p0, :cond_1

    .line 1786
    :cond_0
    :goto_0
    return v0

    .line 1781
    :cond_1
    const-string v1, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "VIP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Family"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Friends"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Coworkers"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Frequent Contacts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1784
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final isDefaultGroupName(Ljava/lang/String;I)Z
    .locals 3
    .parameter "name"
    .parameter "groupIsReadOnly"

    .prologue
    const/4 v1, 0x1

    .line 1757
    const/4 v0, 0x0

    .line 1758
    .local v0, firstResult:Z
    if-nez p0, :cond_0

    .line 1759
    const/4 v0, 0x0

    .line 1761
    :cond_0
    const-string v2, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "VIP"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Family"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Friends"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Coworkers"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Frequent Contacts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1764
    :cond_1
    const/4 v0, 0x1

    .line 1767
    :cond_2
    if-nez v0, :cond_3

    if-ne p1, v1, :cond_4

    :cond_3
    :goto_0
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final showDisplayGroupName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1946
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This API is replaced by an API in com.htc.contacts.ContactUtility"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
