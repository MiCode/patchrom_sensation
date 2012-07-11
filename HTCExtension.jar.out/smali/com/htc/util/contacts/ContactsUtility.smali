.class public Lcom/htc/util/contacts/ContactsUtility;
.super Ljava/lang/Object;
.source "ContactsUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/contacts/ContactsUtility$ContactQuery;,
        Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;
    }
.end annotation


# static fields
.field public static final CONTACT_QUERY_PARAMETER_EXCLUDE_SIM:Ljava/lang/String; = "excludeSIM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTACT_QUERY_PARAMETER_ONLY_PHONE:Ljava/lang/String; = "onlyPhone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ContactsProviderFilesTempPath:Ljava/lang/String; = "/data/data/com.android.providers.contacts/Temp"

.field public static final DEBUG:Z = false

.field private static final DEBUG_URL_INDEX:I = 0x0

.field public static final DEFAULT_ACTION_ACTION_URL:Ljava/lang/String; = "action_url"

.field public static final DEFAULT_ACTION_CALL_TYPE:Ljava/lang/String; = "action_call_type"

.field public static final DEFAULT_ACTION_DATA:Ljava/lang/String; = "action_data"

.field public static final DEFAULT_ACTION_DATA_URL:Ljava/lang/String; = "action_url"

.field public static final DEFAULT_ACTION_INTENT_ACTION:Ljava/lang/String; = "action_intent_action"

.field public static final DEFAULT_ACTION_KEY:Ljava/lang/String; = "action_key"

.field public static final DIALING:Ljava/lang/String; = "Dialing"

.field public static final MAIL:Ljava/lang/String; = "SendMail"

.field private static final MAX_WHERE_OR_DEPTH:I = 0xf0

.field private static final REMOTE_CONNECT_TIMEOUT:I = 0x1388

.field private static final REMOTE_FETCH_TIMEOUT:I = 0x1388

.field public static final SHOW_DATE:I = 0x2

.field public static final SHOW_EXACT_TIME:I = 0x1

.field public static final SHOW_TODAY:I = 0x0

.field public static final SMS:Ljava/lang/String; = "SendMSG"

.field private static final TAG:Ljava/lang/String; = "ContactsUtility"

.field public static final VIEW_CONTACT:Ljava/lang/String; = "ViewContact"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3562
    return-void
.end method

.method public static JoinContactsManually(Landroid/content/Context;JJ)V
    .locals 23
    .parameter "context"
    .parameter "source_id"
    .parameter "target_id"

    .prologue
    .line 2941
    const/4 v3, 0x0

    .line 2942
    .local v3, queryUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 2943
    .local v9, c:Landroid/database/Cursor;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2944
    .local v18, sourceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2945
    .local v19, targetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 2947
    .local v15, mOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 2948
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 2950
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "contact_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2951
    .local v5, whereClause:Ljava/lang/String;
    const-string v2, "content://com.android.contacts/raw_contacts/raw"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2952
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "contact_id"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2953
    if-eqz v9, :cond_3

    .line 2954
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2955
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2956
    .local v10, contact_id:J
    cmp-long v2, v10, p1

    if-nez v2, :cond_1

    .line 2957
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2958
    :cond_1
    cmp-long v2, v10, p3

    if-nez v2, :cond_0

    .line 2959
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2961
    .end local v10           #contact_id:J
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2964
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 2965
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 2966
    .local v16, sid:J
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 2967
    .local v20, tid:J
    cmp-long v2, v16, v20

    if-eqz v2, :cond_5

    .line 2968
    sget-object v2, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "aggregation_exceptions_manual"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v6, 0x1

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    .line 2971
    .local v22, updateUri:Landroid/net/Uri;
    invoke-static/range {v22 .. v22}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 2973
    .local v8, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2974
    const-string v2, "raw_contact_id1"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2975
    const-string v2, "raw_contact_id2"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2976
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2982
    .end local v8           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #sid:J
    .end local v20           #tid:J
    .end local v22           #updateUri:Landroid/net/Uri;
    :cond_6
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2984
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "com.android.contacts"

    invoke-virtual {v2, v4, v15}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2992
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 2996
    :cond_7
    :goto_2
    return-void

    .line 2985
    :catch_0
    move-exception v12

    .line 2987
    .local v12, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2992
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 2988
    .end local v12           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v12

    .line 2990
    .local v12, e:Landroid/content/OperationApplicationException;
    :try_start_2
    invoke-virtual {v12}, Landroid/content/OperationApplicationException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2992
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .end local v12           #e:Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v2

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    throw v2
.end method

.method static synthetic access$000(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-static {p0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility;->queryProfileEntities(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/graphics/Bitmap;I)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-static {p0, p1}, Lcom/htc/util/contacts/ContactsUtility;->getPhotoByteArray(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/graphics/Bitmap;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->getPhotoByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method public static addContactsToGroup(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 4
    .parameter "context"
    .parameter "title"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1182
    .local p2, contactsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1183
    const/4 v3, 0x0

    .line 1191
    :goto_0
    return v3

    .line 1185
    :cond_0
    move-object v0, p1

    .line 1186
    .local v0, targetName:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1187
    .local v1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1188
    .local v2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1189
    invoke-static {p0, v1, v2, v0, v0}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static addContactsToImportantMailGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1150
    .local p1, contactsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v0, "VIP"

    .line 1151
    .local v0, targetName:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1152
    .local v1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1153
    .local v2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1154
    invoke-static {p0, v1, v2, v0, v0}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    return-void
.end method

.method public static addContactsToImportantMailGroup(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1166
    .local p1, contactsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v0, "VIP"

    .line 1167
    .local v0, targetName:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1168
    .local v1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    .local v2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1170
    invoke-static {p0, v1, v2, v0, v0}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    return-void
.end method

.method public static conjectGivenFamilyName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter "givenName"
    .parameter "familyName"
    .parameter "isGivenFamilyOrder"

    .prologue
    .line 241
    const-string v0, " "

    .line 242
    .local v0, diliem:Ljava/lang/String;
    const/4 v1, 0x0

    .line 243
    .local v1, isCJK:Z
    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    :cond_0
    const/4 v1, 0x1

    .line 245
    const-string v0, ""

    .line 247
    :cond_1
    const/4 v2, 0x0

    .line 248
    .local v2, name:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 249
    if-eqz p2, :cond_4

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    :cond_2
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 261
    move-object v2, p0

    .line 263
    :cond_3
    return-object v2

    .line 252
    :cond_4
    if-nez v1, :cond_5

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 257
    :cond_6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 258
    move-object v2, p1

    goto :goto_0
.end method

.method private static cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V
    .locals 3
    .parameter "cursor"
    .parameter "values"
    .parameter "index"

    .prologue
    .line 3736
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3750
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid or unhandled data type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3741
    :pswitch_1
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3752
    :goto_0
    :pswitch_2
    return-void

    .line 3744
    :pswitch_3
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3747
    :pswitch_4
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 3736
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static deleteRawContactPhotoData(Landroid/content/Context;J)Z
    .locals 7
    .parameter "context"
    .parameter "lRawContactId"

    .prologue
    .line 1956
    if-eqz p0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    .line 1957
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1958
    .local v0, bundleDataId:Landroid/os/Bundle;
    invoke-static {p0, p1, p2, v0}, Lcom/htc/util/contacts/ContactsUtility;->isRawContactHasPhoto(Landroid/content/Context;JLandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1960
    const-string v2, "data_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1962
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "data_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1964
    .local v1, deleteCount:I
    if-lez v1, :cond_0

    .line 1965
    const/4 v2, 0x1

    .line 1970
    .end local v0           #bundleDataId:Landroid/os/Bundle;
    .end local v1           #deleteCount:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static drawBottomLeftOverlay(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 10
    .parameter "bmSrc"
    .parameter "bmOverlay"

    .prologue
    const/4 v9, 0x0

    .line 3543
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 3553
    :cond_0
    :goto_0
    return-void

    .line 3544
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 3545
    .local v4, nSrcW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 3546
    .local v3, nSrcH:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 3547
    .local v2, nOverlayW:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 3548
    .local v1, nOverlayH:I
    if-ge v2, v4, :cond_0

    if-ge v1, v3, :cond_0

    .line 3549
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3550
    .local v0, canvasSrc:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 3551
    .local v5, paintDefault:Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v9, v9, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    sub-int v8, v3, v1

    invoke-direct {v7, v9, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static fixStructuredNameComponents(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 11
    .parameter "resolver"
    .parameter "displayName"

    .prologue
    const/4 v2, 0x0

    .line 1199
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1200
    .local v10, name:Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1201
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fixStructuredNameComponents?displayName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1202
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1203
    const/4 v0, 0x1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    const-string v0, "data2"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1205
    .local v8, givenNames:Ljava/lang/String;
    const-string v0, "data5"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1206
    .local v9, middleName:Ljava/lang/String;
    const-string v0, "data3"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1207
    .local v7, familyName:Ljava/lang/String;
    const-string v0, "data2"

    invoke-virtual {v10, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    const-string v0, "data5"

    invoke-virtual {v10, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    const-string v0, "data3"

    invoke-virtual {v10, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    .end local v7           #familyName:Ljava/lang/String;
    .end local v8           #givenNames:Ljava/lang/String;
    .end local v9           #middleName:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1215
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    return-object v10
.end method

.method public static getAddMailToContactIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "mail"

    .prologue
    .line 685
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Lcom/htc/provider/HtcContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 686
    .local v0, actionIntent:Landroid/content/Intent;
    const-string v1, "email_isprimary"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 687
    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    return-object v0
.end method

.method public static getAddToContactIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "number"

    .prologue
    .line 671
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 672
    .local v0, actionIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/person"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    return-object v0
.end method

.method public static getCacheMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;
    .locals 14
    .parameter "resolver"

    .prologue
    const-wide/16 v12, 0x0

    const/4 v2, 0x0

    .line 3251
    if-nez p0, :cond_0

    .line 3268
    :goto_0
    return-object v2

    .line 3252
    :cond_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 3254
    .local v6, bundleIds:Landroid/os/Bundle;
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "mycontact_ids_cache"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3255
    .local v7, cursorMyContact:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 3256
    const/4 v0, 0x1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3257
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 3258
    .local v10, lMyRawContactId:J
    const-string v0, "contact_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3259
    .local v8, lMyContactId:J
    cmp-long v0, v12, v10

    if-gez v0, :cond_1

    cmp-long v0, v12, v8

    if-gez v0, :cond_1

    .line 3260
    const-string v0, "_id"

    invoke-virtual {v6, v0, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3261
    const-string v0, "contact_id"

    invoke-virtual {v6, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3264
    .end local v8           #lMyContactId:J
    .end local v10           #lMyRawContactId:J
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3265
    const/4 v7, 0x0

    :cond_2
    move-object v2, v6

    .line 3268
    goto :goto_0
.end method

.method public static getContactId(Landroid/content/Context;J)J
    .locals 9
    .parameter "context"
    .parameter "lRawContactId"

    .prologue
    const/4 v3, 0x0

    .line 1980
    const-wide/16 v7, 0x0

    .line 1981
    .local v7, lContactId:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/raw_contacts/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1982
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "contact_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1983
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1984
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1985
    const-string v0, "contact_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1988
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1989
    const/4 v6, 0x0

    .line 1991
    :cond_1
    return-wide v7
.end method

.method public static getContentValues(Landroid/content/Entity;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "entity"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Entity;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1485
    .local v0, contentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1486
    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Entity$NamedContentValues;

    .line 1487
    .local v4, subValue:Landroid/content/Entity$NamedContentValues;
    iget-object v1, v4, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1488
    .local v1, entryValues:Landroid/content/ContentValues;
    const-string v5, "mimetype"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1489
    .local v3, mimetype:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1490
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1491
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1496
    .end local v1           #entryValues:Landroid/content/ContentValues;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimetype:Ljava/lang/String;
    .end local v4           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_1
    return-object v0
.end method

.method public static getDefaultPeoplePhoto(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2928
    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    if-gtz p2, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 2935
    :cond_1
    :goto_0
    return-object v0

    .line 2929
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20800c2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2930
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 2931
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne p1, v1, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq p2, v1, :cond_1

    .line 2932
    :cond_3
    invoke-static {v0, p1, p2}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, sequence:Ljava/lang/CharSequence;
    if-eqz p1, :cond_2

    const-string v1, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 576
    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->getFavoriteGroupDisplayName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 595
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_1
    return-object p1

    .line 578
    .restart local p1
    :cond_2
    if-eqz p1, :cond_3

    const-string v1, "VIP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 579
    const v1, 0x20c017a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 581
    :cond_3
    if-eqz p1, :cond_4

    const-string v1, "Family"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 582
    const v1, 0x20c017b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 584
    :cond_4
    if-eqz p1, :cond_5

    const-string v1, "Friends"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 585
    const v1, 0x20c017c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 587
    :cond_5
    if-eqz p1, :cond_6

    const-string v1, "Coworkers"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 588
    const v1, 0x20c017d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 590
    :cond_6
    if-eqz p1, :cond_0

    const-string v1, "Frequent Contacts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    const v1, 0x20c01be

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "groupIsReadonly"

    .prologue
    const/4 v2, 0x1

    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, sequence:Ljava/lang/CharSequence;
    if-eqz p1, :cond_2

    const-string v1, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 547
    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->getFavoriteGroupDisplayName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 566
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_1
    return-object p1

    .line 549
    .restart local p1
    :cond_2
    if-eqz p1, :cond_3

    const-string v1, "VIP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 550
    const v1, 0x20c017a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 552
    :cond_3
    if-eqz p1, :cond_4

    const-string v1, "Family"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-ne p2, v2, :cond_4

    .line 553
    const v1, 0x20c017b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 555
    :cond_4
    if-eqz p1, :cond_5

    const-string v1, "Friends"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-ne p2, v2, :cond_5

    .line 556
    const v1, 0x20c017c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 558
    :cond_5
    if-eqz p1, :cond_6

    const-string v1, "Coworkers"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-ne p2, v2, :cond_6

    .line 559
    const v1, 0x20c017d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 561
    :cond_6
    if-eqz p1, :cond_0

    const-string v1, "Frequent Contacts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    const v1, 0x20c01be

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFacebookSquareBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "bmSrc"
    .parameter "nSize"
    .parameter "bmFacebookIcon"

    .prologue
    .line 2070
    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    if-nez p2, :cond_1

    .line 2071
    :cond_0
    const/4 v1, 0x0

    .line 2101
    :goto_0
    return-object v1

    .line 2073
    :cond_1
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2074
    .local v1, bmDst:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2076
    .local v2, canvasDst:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 2077
    .local v8, nSrcW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 2078
    .local v7, nSrcH:I
    if-ne v8, v7, :cond_2

    .line 2079
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2097
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 2098
    .local v4, nFW:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 2099
    .local v3, nFH:I
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    sub-int v12, p1, v3

    invoke-direct {v10, v11, v12, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p2, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 2082
    .end local v3           #nFH:I
    .end local v4           #nFW:I
    :cond_2
    if-le v8, v7, :cond_3

    const/4 v0, 0x1

    .line 2083
    .local v0, bSrcLandscape:Z
    :goto_2
    if-eqz v0, :cond_4

    .line 2085
    sub-int v9, v8, v7

    div-int/lit8 v5, v9, 0x2

    .line 2086
    .local v5, nOffset:I
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    add-int v11, v5, v7

    invoke-direct {v9, v5, v10, v11, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 2082
    .end local v0           #bSrcLandscape:Z
    .end local v5           #nOffset:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 2090
    .restart local v0       #bSrcLandscape:Z
    :cond_4
    sub-int v9, v7, v8

    div-int/lit8 v5, v9, 0x2

    .line 2091
    .restart local v5       #nOffset:I
    const-wide v9, 0x3feb333333333333L

    int-to-double v11, v5

    mul-double/2addr v9, v11

    double-to-int v6, v9

    .line 2092
    .local v6, nOffsetFacebook:I
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    add-int v11, v6, v8

    invoke-direct {v9, v10, v6, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public static getFavoriteGroupDisplayName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"

    .prologue
    .line 536
    const v0, 0x20c0178

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final getFiltePrefixrWhereStirng(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "columnName"
    .parameter "pattern"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 382
    const/4 v2, 0x0

    .line 383
    .local v2, param1:Ljava/lang/String;
    const/4 v3, 0x0

    .line 384
    .local v3, param2:Ljava/lang/String;
    const/4 v0, 0x0

    .line 385
    .local v0, filterWhere:Ljava/lang/String;
    move-object v0, p1

    .line 387
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 388
    const/4 v4, 0x0

    .line 432
    :goto_0
    return-object v4

    .line 391
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 392
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->isSupportUCS2Filter()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 393
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 394
    invoke-static {p1}, Lcom/htc/search/SmartKeyMapping;->transformLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 398
    :cond_1
    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 399
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 400
    .local v1, length:I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 401
    move-object v2, p1

    .line 403
    const-string v4, "%"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 404
    :cond_2
    const-string v4, "%"

    const-string v5, "!%"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 405
    const-string v4, "_"

    const-string v5, "!_"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 408
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 413
    :goto_1
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->isSupportUCS2Filter()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 414
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " UCS2_LOWERCASE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " escape \'!\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 410
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 417
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " escape \'!\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 420
    :cond_5
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 425
    :goto_3
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->isSupportUCS2Filter()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 426
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " UCS2_LOWERCASE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 423
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 428
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method public static final getFilterContactNameWhereStirng(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "columnName"
    .parameter "pattern"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 306
    const/4 v2, 0x0

    .line 307
    .local v2, param1:Ljava/lang/String;
    const/4 v3, 0x0

    .line 308
    .local v3, param2:Ljava/lang/String;
    const/4 v0, 0x0

    .line 309
    .local v0, filterWhere:Ljava/lang/String;
    move-object v0, p1

    .line 311
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    const/4 v4, 0x0

    .line 377
    :goto_0
    return-object v4

    .line 314
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 316
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->isSupportUCS2Filter()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 317
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 318
    invoke-static {p1}, Lcom/htc/search/SmartKeyMapping;->transformLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 322
    :cond_1
    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 324
    .local v1, length:I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 325
    move-object v2, p1

    .line 326
    move-object v3, p1

    .line 327
    const-string v4, "%"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 328
    :cond_2
    const-string v4, "%"

    const-string v5, "!%"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 329
    const-string v4, "_"

    const-string v5, "!_"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 330
    const-string v4, "%"

    const-string v5, "!%"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 331
    const-string v4, "_"

    const-string v5, "!_"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 333
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 334
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 341
    :goto_1
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->isSupportUCS2Filter()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " UCS2_LOWERCASE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " escape \'!\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR UCS2_LOWERCASE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " escape \'!\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    :cond_3
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 337
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'% "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 349
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " escape \'!\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 351
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " escape \'!\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 355
    :cond_6
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 362
    :goto_3
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->isSupportUCS2Filter()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 363
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " UCS2_LOWERCASE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR UCS2_LOWERCASE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 359
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 360
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'% "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 369
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method public static getFromRemote(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "url"

    .prologue
    .line 2699
    const/4 v0, 0x0

    .line 2703
    .local v0, TEMP_FILE_VERSION:Z
    const/4 v1, 0x1

    .line 2705
    .local v1, VERSION_3:Z
    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->getFromRemote3(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static getFromRemote2(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "url"

    .prologue
    .line 2759
    const/4 v4, 0x0

    .line 2761
    .local v4, bitmap:Landroid/graphics/Bitmap;
    const/16 v18, 0x2f

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2762
    .local v3, basename:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    const/16 v20, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "UTF-8"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2766
    .local v9, encodedUrl:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/data/data/com.android.providers.contacts/Temp/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2767
    .local v12, namepath:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    const-string v18, "/data/data/com.android.providers.contacts/Temp"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2768
    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 2769
    new-instance v10, Ljava/io/File;

    .end local v10           #file:Ljava/io/File;
    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2770
    .restart local v10       #file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 2773
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .line 2774
    .local v7, conn:Ljava/net/URLConnection;
    const/16 v18, 0x1388

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 2775
    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V

    .line 2777
    const-wide/16 v14, 0x0

    .line 2778
    .local v14, photoSize:J
    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentLength()I

    move-result v18

    move/from16 v0, v18

    int-to-long v14, v0

    .line 2780
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 2781
    .local v11, is:Ljava/io/InputStream;
    if-eqz v11, :cond_2

    .line 2782
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2783
    .local v13, out:Ljava/io/FileOutputStream;
    if-eqz v13, :cond_1

    .line 2785
    const-wide/16 v16, 0x0

    .line 2786
    .local v16, size:J
    const/16 v18, 0x800

    move/from16 v0, v18

    new-array v5, v0, [B

    .line 2787
    .local v5, buffer:[B
    :goto_0
    invoke-virtual {v11, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, bytesRead:I
    if-lez v6, :cond_0

    .line 2788
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v5, v0, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 2789
    int-to-long v0, v6

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    goto :goto_0

    .line 2791
    :cond_0
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    .line 2792
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 2794
    .end local v5           #buffer:[B
    .end local v6           #bytesRead:I
    .end local v16           #size:J
    :cond_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 2797
    .end local v13           #out:Ljava/io/FileOutputStream;
    :cond_2
    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2798
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2808
    .end local v3           #basename:Ljava/lang/String;
    .end local v7           #conn:Ljava/net/URLConnection;
    .end local v9           #encodedUrl:Ljava/lang/String;
    .end local v10           #file:Ljava/io/File;
    .end local v11           #is:Ljava/io/InputStream;
    .end local v12           #namepath:Ljava/lang/String;
    .end local v14           #photoSize:J
    :goto_1
    return-object v4

    .line 2799
    :catch_0
    move-exception v8

    .line 2800
    .local v8, e:Ljava/io/IOException;
    const-string v18, "ContactsUtility"

    const-string v19, "getFromRemote2"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2802
    .end local v8           #e:Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 2803
    .local v8, e:Ljava/lang/OutOfMemoryError;
    const-string v18, "ContactsUtility"

    const-string v19, "getFromRemote2"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2804
    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v8

    .line 2805
    .local v8, e:Ljava/lang/Exception;
    const-string v18, "ContactsUtility"

    const-string v19, "getFromRemote3"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getFromRemote3(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "url"

    .prologue
    .line 2820
    const/4 v1, 0x0

    .line 2822
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/16 v8, 0x2f

    :try_start_0
    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2823
    .local v0, basename:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const/16 v10, 0x2f

    invoke-virtual {p0, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2827
    .local v4, encodedUrl:Ljava/lang/String;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 2828
    .local v2, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v6, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 2829
    .local v6, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v2, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 2830
    .local v7, resp:Lorg/apache/http/HttpResponse;
    if-eqz v7, :cond_0

    .line 2833
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 2834
    .local v5, ent:Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_0

    .line 2835
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 2848
    .end local v0           #basename:Ljava/lang/String;
    .end local v2           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v4           #encodedUrl:Ljava/lang/String;
    .end local v5           #ent:Lorg/apache/http/HttpEntity;
    .end local v6           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v7           #resp:Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    return-object v1

    .line 2838
    :catch_0
    move-exception v3

    .line 2839
    .local v3, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v8, "ContactsUtility"

    const-string v9, "getFromRemote3"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2840
    .end local v3           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v3

    .line 2841
    .local v3, e:Ljava/io/IOException;
    const-string v8, "ContactsUtility"

    const-string v9, "getFromRemote3"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2842
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 2843
    .local v3, e:Ljava/lang/OutOfMemoryError;
    const-string v8, "ContactsUtility"

    const-string v9, "getFromRemote3"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2844
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v3

    .line 2845
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "ContactsUtility"

    const-string v9, "getFromRemote3"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getFromRemote4(Ljava/lang/String;Landroid/net/http/AndroidHttpClient;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "url"
    .parameter "androidHttpClient"

    .prologue
    .line 2851
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->getFromRemote3(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2880
    :cond_0
    :goto_0
    return-object v1

    .line 2854
    :cond_1
    const/4 v1, 0x0

    .line 2856
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/16 v7, 0x2f

    :try_start_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2857
    .local v0, basename:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const/16 v9, 0x2f

    invoke-virtual {p0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v0, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2861
    .local v3, encodedUrl:Ljava/lang/String;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 2862
    .local v5, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p1, v5}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 2863
    .local v6, resp:Lorg/apache/http/HttpResponse;
    if-eqz v6, :cond_0

    .line 2866
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 2867
    .local v4, ent:Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_0

    .line 2868
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    goto :goto_0

    .line 2871
    .end local v0           #basename:Ljava/lang/String;
    .end local v3           #encodedUrl:Ljava/lang/String;
    .end local v4           #ent:Lorg/apache/http/HttpEntity;
    .end local v5           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #resp:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v2

    .line 2872
    .local v2, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v7, "ContactsUtility"

    const-string v8, "getFromRemote4"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2873
    .end local v2           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v2

    .line 2874
    .local v2, e:Ljava/io/IOException;
    const-string v7, "ContactsUtility"

    const-string v8, "getFromRemote4"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2875
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 2876
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v7, "ContactsUtility"

    const-string v8, "getFromRemote4"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2877
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v2

    .line 2878
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "ContactsUtility"

    const-string v8, "getFromRemote4"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getImportantGroupDisplayName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"

    .prologue
    .line 540
    const-string v0, "VIP"

    return-object v0
.end method

.method public static getMailAddressByUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "resolver"
    .parameter "u"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 3326
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v9, v3

    .line 3345
    :cond_1
    :goto_0
    return-object v9

    .line 3329
    :cond_2
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 3330
    .local v7, dataId:J
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3331
    .local v1, uri:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 3332
    .local v10, sPhoneNumber:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v11

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3333
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 3334
    .local v9, sMailAddress:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 3336
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3338
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3339
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3340
    const/4 v9, 0x0

    .line 3342
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3343
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getMimeTypeContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 5
    .parameter "values"

    .prologue
    .line 1804
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1805
    .local v2, valuesResult:Landroid/content/ContentValues;
    const-string v3, "mimetype"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1806
    .local v0, mimetype:Ljava/lang/String;
    const-string v3, "mimetype"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1809
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    :cond_0
    :goto_0
    const-string v3, "mimetype"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1862
    .local v1, mimetypeResult:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 1864
    .end local v2           #valuesResult:Landroid/content/ContentValues;
    :cond_1
    return-object v2

    .line 1814
    .end local v1           #mimetypeResult:Ljava/lang/String;
    .restart local v2       #valuesResult:Landroid/content/ContentValues;
    :cond_2
    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1815
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1820
    :cond_3
    const-string v3, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1821
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    const-string v3, "data12"

    const-string v4, "data12"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1824
    :cond_4
    const-string v3, "vnd.android.cursor.item/im"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1825
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    const-string v3, "data5"

    const-string v4, "data5"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1828
    :cond_5
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1829
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    const-string v3, "data4"

    const-string v4, "data4"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    const-string v3, "data7"

    const-string v4, "data7"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    const-string v3, "data8"

    const-string v4, "data8"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    const-string v3, "data9"

    const-string v4, "data9"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    const-string v3, "data10"

    const-string v4, "data10"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1835
    :cond_6
    const-string v3, "vnd.android.cursor.item/organization"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1836
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    const-string v3, "data4"

    const-string v4, "data4"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1839
    :cond_7
    const-string v3, "vnd.android.cursor.item/note"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1840
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1841
    :cond_8
    const-string v3, "vnd.android.cursor.item/nickname"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1842
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1844
    :cond_9
    const-string v3, "vnd.android.cursor.item/website"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1845
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1847
    :cond_a
    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1848
    const-string v3, "data1"

    const-string v4, "data1"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    const-string v3, "data2"

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    const-string v3, "data3"

    const-string v4, "data3"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    const-string v3, "data4"

    const-string v4, "data4"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    const-string v3, "data5"

    const-string v4, "data5"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    const-string v3, "data6"

    const-string v4, "data6"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    const-string v3, "data7"

    const-string v4, "data7"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    const-string v3, "data8"

    const-string v4, "data8"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    const-string v3, "data9"

    const-string v4, "data9"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1857
    :cond_b
    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1858
    const-string v3, "data15"

    const-string v4, "data15"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_0
.end method

.method public static final getOrString(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .parameter "column"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1867
    .local p1, strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1868
    :cond_0
    const/4 v2, 0x0

    .line 1887
    :cond_1
    :goto_0
    return-object v2

    .line 1870
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1871
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 1872
    .local v2, result:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1873
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 1874
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1875
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1876
    const-string v5, " = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1877
    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1878
    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_3

    .line 1879
    const-string v5, " OR "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1873
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1882
    .end local v3           #s:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    const-string v6, " ( "

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1883
    const-string v5, " ) "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1884
    if-lez v4, :cond_1

    .line 1885
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getPersonNameAndAddressFromDeviceMailRowId(Landroid/content/ContentResolver;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z
    .locals 12
    .parameter "resolver"
    .parameter "id"
    .parameter "outNameBuf"
    .parameter "outNumberBuf"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 975
    const/4 v7, 0x0

    .line 976
    .local v7, name:Ljava/lang/String;
    const/4 v8, 0x0

    .line 977
    .local v8, number:Ljava/lang/String;
    const/4 v9, 0x0

    .line 978
    .local v9, person:I
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 979
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v11

    const-string v0, "data1"

    aput-object v0, v2, v10

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 981
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 983
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 985
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 988
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 991
    :cond_1
    if-eqz p3, :cond_2

    if-eqz v8, :cond_2

    .line 992
    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 994
    :cond_2
    if-eqz p2, :cond_3

    if-eqz v7, :cond_3

    .line 995
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 997
    :cond_3
    return v10

    .line 988
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getPersonNameAndNumberFromDevicePhoneId(Landroid/content/ContentResolver;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z
    .locals 12
    .parameter "resolver"
    .parameter "id"
    .parameter "outNameBuf"
    .parameter "outNumberBuf"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 944
    const/4 v7, 0x0

    .line 945
    .local v7, name:Ljava/lang/String;
    const/4 v8, 0x0

    .line 946
    .local v8, number:Ljava/lang/String;
    const/4 v9, 0x0

    .line 947
    .local v9, person:I
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 948
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v11

    const-string v0, "data1"

    aput-object v0, v2, v10

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 950
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 952
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 954
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 957
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 960
    :cond_1
    if-eqz p3, :cond_2

    if-eqz v8, :cond_2

    .line 961
    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 963
    :cond_2
    if-eqz p2, :cond_3

    if-eqz v7, :cond_3

    .line 964
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 966
    :cond_3
    return v10

    .line 957
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getPhoneNumberByUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .parameter "resolver"
    .parameter "u"

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 3355
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v9, v3

    .line 3373
    :cond_1
    :goto_0
    return-object v9

    .line 3358
    :cond_2
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 3359
    .local v7, dataId:J
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3360
    .local v1, uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 3361
    .local v9, sPhoneNumber:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v10

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3362
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3364
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3366
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3367
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3368
    const/4 v9, 0x0

    .line 3370
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3371
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getPhoneNumberTypeShortString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "htcContext"
    .parameter "type"

    .prologue
    .line 3182
    const-string v0, ""

    .line 3184
    .local v0, result:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v1, v0

    .line 3230
    .end local v0           #result:Ljava/lang/String;
    .local v1, result:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 3188
    .end local v1           #result:Ljava/lang/String;
    .restart local v0       #result:Ljava/lang/String;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 3226
    const-string v0, ""

    :goto_1
    move-object v1, v0

    .line 3230
    .end local v0           #result:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/String;
    goto :goto_0

    .line 3190
    .end local v1           #result:Ljava/lang/String;
    .restart local v0       #result:Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3192
    goto :goto_1

    .line 3195
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3197
    goto :goto_1

    .line 3200
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3202
    goto :goto_1

    .line 3206
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3208
    goto :goto_1

    .line 3211
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3213
    goto :goto_1

    .line 3216
    :pswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3218
    goto :goto_1

    .line 3221
    :pswitch_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3223
    goto :goto_1

    .line 3188
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getPhoneNumberTypeShortStringWithColon(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "htcContext"
    .parameter "type"

    .prologue
    .line 3243
    invoke-static {p0, p1}, Lcom/htc/util/contacts/ContactsUtility;->getPhoneNumberTypeShortString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 3244
    .local v0, result:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3247
    :cond_0
    return-object v0
.end method

.method public static getPhoneNumberTypeString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "htcContext"
    .parameter "type"

    .prologue
    .line 3124
    const-string v0, ""

    .line 3126
    .local v0, result:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v1, v0

    .line 3170
    .end local v0           #result:Ljava/lang/String;
    .local v1, result:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 3131
    .end local v1           #result:Ljava/lang/String;
    .restart local v0       #result:Ljava/lang/String;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 3166
    const-string v0, ""

    :goto_1
    move-object v1, v0

    .line 3170
    .end local v0           #result:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/String;
    goto :goto_0

    .line 3134
    .end local v1           #result:Ljava/lang/String;
    .restart local v0       #result:Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3135
    goto :goto_1

    .line 3138
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3139
    goto :goto_1

    .line 3142
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3143
    goto :goto_1

    .line 3146
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3147
    goto :goto_1

    .line 3150
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3151
    goto :goto_1

    .line 3154
    :pswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3155
    goto :goto_1

    .line 3158
    :pswitch_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3159
    goto :goto_1

    .line 3162
    :pswitch_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3163
    goto :goto_1

    .line 3131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static getPhotoByteArray(Landroid/graphics/Bitmap;)[B
    .locals 7
    .parameter "photo"

    .prologue
    const/4 v3, 0x0

    .line 2884
    if-nez p0, :cond_0

    .line 2886
    check-cast v3, [B

    .line 2899
    :goto_0
    return-object v3

    .line 2889
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v2, v4, 0x4

    .line 2890
    .local v2, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2892
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sget v5, Lcom/htc/util/contacts/PhotoUtils;->JPEG_QUALITY_90:I

    invoke-virtual {p0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2893
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 2894
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2895
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 2896
    :catch_0
    move-exception v0

    .line 2897
    .local v0, e:Ljava/io/IOException;
    const-string v4, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhotoByteArray Unable to serialize photo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    check-cast v3, [B

    goto :goto_0
.end method

.method private static getPhotoByteArray(Landroid/graphics/Bitmap;I)[B
    .locals 7
    .parameter "photo"
    .parameter "jpgQuality"

    .prologue
    const/4 v3, 0x0

    .line 2902
    if-nez p0, :cond_0

    .line 2904
    check-cast v3, [B

    .line 2917
    :goto_0
    return-object v3

    .line 2907
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v2, v4, 0x4

    .line 2908
    .local v2, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2910
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, p1, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2911
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 2912
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2913
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 2914
    :catch_0
    move-exception v0

    .line 2915
    .local v0, e:Ljava/io/IOException;
    const-string v4, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhotoByteArray Unable to serialize photo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    check-cast v3, [B

    goto :goto_0
.end method

.method public static getReadOnlyContactsType()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 517
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v2

    .line 519
    .local v2, cs:Landroid/content/IContentService;
    :try_start_0
    invoke-interface {v2}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v8

    .line 520
    .local v8, syncs:[Landroid/content/SyncAdapterType;
    move-object v1, v8

    .local v1, arr$:[Landroid/content/SyncAdapterType;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 521
    .local v0, adapterType:Landroid/content/SyncAdapterType;
    iget-object v9, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 522
    invoke-virtual {v0}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v6, 0x1

    .line 523
    .local v6, readOnly:Z
    :goto_1
    if-eqz v6, :cond_0

    .line 524
    iget-object v9, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .end local v6           #readOnly:Z
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 522
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 528
    .end local v0           #adapterType:Landroid/content/SyncAdapterType;
    .end local v1           #arr$:[Landroid/content/SyncAdapterType;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v8           #syncs:[Landroid/content/SyncAdapterType;
    :catch_0
    move-exception v3

    .line 529
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 531
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_2
    return-object v7
.end method

.method public static getRelativeDayString(JJ)Ljava/lang/String;
    .locals 22
    .parameter "day"
    .parameter "today"

    .prologue
    .line 1070
    const/4 v12, 0x0

    .line 1072
    .local v12, result:Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v15

    .line 1073
    .local v15, tz:Ljava/util/TimeZone;
    invoke-virtual {v15}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v17

    .line 1074
    .local v17, tzName:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v16

    .line 1077
    .local v16, tzID:Ljava/lang/String;
    new-instance v14, Landroid/text/format/Time;

    const-string v18, "UTC"

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1078
    .local v14, startTime:Landroid/text/format/Time;
    move-wide/from16 v0, p0

    invoke-virtual {v14, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1079
    new-instance v5, Landroid/text/format/Time;

    const-string v18, "UTC"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1080
    .local v5, currentTime:Landroid/text/format/Time;
    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1081
    const-string v18, "tz"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "name: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", id: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", startTime.year: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v14, Landroid/text/format/Time;->year:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", startTime.month: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v14, Landroid/text/format/Time;->month:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", startTime.day: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v14, Landroid/text/format/Time;->monthDay:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-wide v0, v14, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, p0

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v13

    .line 1085
    .local v13, startDay:I
    iget-wide v0, v5, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, p2

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v4

    .line 1086
    .local v4, currentDay:I
    sub-int v18, v4, v13

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1087
    .local v6, days:I
    cmp-long v18, p2, p0

    if-lez v18, :cond_0

    const/4 v9, 0x1

    .line 1089
    .local v9, past:Z
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .line 1090
    .local v10, r:Landroid/content/res/Resources;
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_2

    .line 1091
    if-eqz v9, :cond_1

    .line 1092
    const v18, 0x1040077

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1112
    :goto_1
    return-object v12

    .line 1087
    .end local v9           #past:Z
    .end local v10           #r:Landroid/content/res/Resources;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1094
    .restart local v9       #past:Z
    .restart local v10       #r:Landroid/content/res/Resources;
    :cond_1
    const v18, 0x1040079

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 1096
    :cond_2
    if-nez v6, :cond_3

    .line 1097
    const v18, 0x1040078

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 1098
    :cond_3
    const/16 v18, 0x7

    move/from16 v0, v18

    if-gt v6, v0, :cond_5

    .line 1100
    if-eqz v9, :cond_4

    .line 1101
    const v11, 0x1130004

    .line 1105
    .local v11, resId:I
    :goto_2
    invoke-virtual {v10, v11, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    .line 1106
    .local v8, format:Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1107
    goto :goto_1

    .line 1103
    .end local v8           #format:Ljava/lang/String;
    .end local v11           #resId:I
    :cond_4
    const v11, 0x1130008

    .restart local v11       #resId:I
    goto :goto_2

    .line 1108
    .end local v11           #resId:I
    :cond_5
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v18, "yyyy/MM/dd"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1110
    .local v7, f:Ljava/text/SimpleDateFormat;
    new-instance v18, Ljava/util/Date;

    iget v0, v14, Landroid/text/format/Time;->year:I

    move/from16 v19, v0

    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x76c

    move/from16 v19, v0

    iget v0, v14, Landroid/text/format/Time;->month:I

    move/from16 v20, v0

    iget v0, v14, Landroid/text/format/Time;->monthDay:I

    move/from16 v21, v0

    invoke-direct/range {v18 .. v21}, Ljava/util/Date;-><init>(III)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1
.end method

.method public static getRelativeDayString(JJI)Ljava/lang/String;
    .locals 6
    .parameter "day"
    .parameter "today"
    .parameter "flagShowTodayOrExactTime"

    .prologue
    .line 1012
    const/4 v5, 0x0

    move-wide v0, p0

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/util/contacts/ContactsUtility;->getRelativeDayString(JJIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeDayString(JJIZ)Ljava/lang/String;
    .locals 20
    .parameter "day"
    .parameter "today"
    .parameter "flagShowTodayOrExactTime"
    .parameter "flagHideThisYear"

    .prologue
    .line 1016
    const/4 v14, 0x0

    .line 1018
    .local v14, result:Ljava/lang/String;
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 1019
    .local v16, startTime:Landroid/text/format/Time;
    move-object/from16 v0, v16

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1020
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 1021
    .local v5, currentTime:Landroid/text/format/Time;
    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1023
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, p0

    move-wide/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v15

    .line 1024
    .local v15, startDay:I
    iget-wide v0, v5, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, p2

    move-wide/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v4

    .line 1025
    .local v4, currentDay:I
    sub-int v17, v4, v15

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 1026
    .local v8, days:I
    cmp-long v17, p2, p0

    if-lez v17, :cond_1

    const/4 v11, 0x1

    .line 1028
    .local v11, past:Z
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    .line 1029
    .local v12, r:Landroid/content/res/Resources;
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_3

    .line 1030
    if-eqz v11, :cond_2

    .line 1031
    const v17, 0x1040077

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1066
    :cond_0
    :goto_1
    return-object v14

    .line 1026
    .end local v11           #past:Z
    .end local v12           #r:Landroid/content/res/Resources;
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 1033
    .restart local v11       #past:Z
    .restart local v12       #r:Landroid/content/res/Resources;
    :cond_2
    const v17, 0x1040079

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 1035
    :cond_3
    if-nez v8, :cond_5

    .line 1036
    if-nez p4, :cond_4

    .line 1037
    const v17, 0x1040078

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 1038
    :cond_4
    const/16 v17, 0x1

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 1039
    invoke-static/range {p0 .. p1}, Landroid/text/format/DateUtils;->timeString(J)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 1041
    :cond_5
    const/16 v17, 0x7

    move/from16 v0, v17

    if-gt v8, v0, :cond_7

    .line 1043
    if-eqz v11, :cond_6

    .line 1044
    const v13, 0x1130004

    .line 1048
    .local v13, resId:I
    :goto_2
    invoke-virtual {v12, v13, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    .line 1049
    .local v10, format:Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1050
    goto :goto_1

    .line 1046
    .end local v10           #format:Ljava/lang/String;
    .end local v13           #resId:I
    :cond_6
    const v13, 0x1130008

    .restart local v13       #resId:I
    goto :goto_2

    .line 1051
    .end local v13           #resId:I
    :cond_7
    if-nez p5, :cond_8

    .line 1052
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v17, "yyyy/MM/dd"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1053
    .local v9, f:Ljava/text/SimpleDateFormat;
    new-instance v17, Ljava/util/Date;

    move-object/from16 v0, v17

    move-wide/from16 v1, p0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 1054
    goto :goto_1

    .line 1055
    .end local v9           #f:Ljava/text/SimpleDateFormat;
    :cond_8
    new-instance v6, Ljava/util/Date;

    move-wide/from16 v0, p0

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1056
    .local v6, dateDay:Ljava/util/Date;
    new-instance v7, Ljava/util/Date;

    move-wide/from16 v0, p2

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1057
    .local v7, dateToday:Ljava/util/Date;
    const/4 v9, 0x0

    .line 1058
    .restart local v9       #f:Ljava/text/SimpleDateFormat;
    invoke-virtual {v6}, Ljava/util/Date;->getYear()I

    move-result v17

    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 1059
    new-instance v9, Ljava/text/SimpleDateFormat;

    .end local v9           #f:Ljava/text/SimpleDateFormat;
    const-string v17, "MM/dd"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1063
    .restart local v9       #f:Ljava/text/SimpleDateFormat;
    :goto_3
    invoke-virtual {v9, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 1061
    :cond_9
    new-instance v9, Ljava/text/SimpleDateFormat;

    .end local v9           #f:Ljava/text/SimpleDateFormat;
    const-string v17, "yyyy/MM/dd"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v9       #f:Ljava/text/SimpleDateFormat;
    goto :goto_3
.end method

.method public static getScaledBitmap(Ljava/lang/String;II[B)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "filePath"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"
    .parameter "inTempStorage"

    .prologue
    const/4 v3, 0x1

    .line 3416
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3417
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3418
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3419
    iput-object p3, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 3420
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3421
    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3422
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3424
    .local v0, nSampleSize:I
    :goto_0
    mul-int/lit8 v0, v0, 0x2

    .line 3425
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, v0

    if-lt v2, p1, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v2, v0

    if-lt v2, p2, :cond_0

    .line 3426
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 3430
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3431
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3433
    .end local v0           #nSampleSize:I
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getScaledBitmap([BII)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "data"
    .parameter "nTargeWidth"
    .parameter "nTargetHeight"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3377
    if-eqz p0, :cond_1

    array-length v2, p0

    if-lez v2, :cond_1

    .line 3378
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3379
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3380
    array-length v2, p0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3381
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3382
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3384
    .local v0, nSampleSize:I
    :goto_0
    mul-int/lit8 v0, v0, 0x2

    .line 3385
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, v0

    if-lt v2, p1, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v2, v0

    if-lt v2, p2, :cond_0

    .line 3386
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 3390
    :cond_0
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3391
    array-length v2, p0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3393
    .end local v0           #nSampleSize:I
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getScaledBitmap([BII[B)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "data"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"
    .parameter "inTempStorage"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3396
    if-eqz p0, :cond_1

    array-length v2, p0

    if-lez v2, :cond_1

    .line 3397
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3398
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3399
    iput-object p3, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 3400
    array-length v2, p0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3401
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3402
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3404
    .local v0, nSampleSize:I
    :goto_0
    mul-int/lit8 v0, v0, 0x2

    .line 3405
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, v0

    if-lt v2, p1, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v2, v0

    if-lt v2, p2, :cond_0

    .line 3406
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 3410
    :cond_0
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3411
    array-length v2, p0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3413
    .end local v0           #nSampleSize:I
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 20
    .parameter "bmSrc"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"

    .prologue
    .line 3513
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 3539
    :goto_0
    return-object v5

    .line 3514
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 3515
    .local v12, nSrcW:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 3517
    .local v11, nSrcH:I
    sget-object v16, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3518
    .local v5, bmDst:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3519
    .local v6, canvasDst:Landroid/graphics/Canvas;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 3520
    .local v15, paintDefault:Landroid/graphics/Paint;
    int-to-float v0, v12

    move/from16 v16, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v7, v16, v17

    .line 3521
    .local v7, fXratio:F
    int-to-float v0, v11

    move/from16 v16, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v8, v16, v17

    .line 3522
    .local v8, fYratio:F
    cmpg-float v16, v7, v8

    if-gtz v16, :cond_1

    .line 3523
    move v10, v12

    .line 3524
    .local v10, nSrcDrawW:I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v7

    move/from16 v0, v16

    float-to-int v9, v0

    .line 3525
    .local v9, nSrcDrawH:I
    sub-int v16, v11, v9

    div-int/lit8 v14, v16, 0x2

    .line 3526
    .local v14, nYoffset:I
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    add-int v18, v14, v9

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v14, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v6, v0, v1, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 3531
    .end local v9           #nSrcDrawH:I
    .end local v10           #nSrcDrawW:I
    .end local v14           #nYoffset:I
    :cond_1
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v8

    move/from16 v0, v16

    float-to-int v10, v0

    .line 3532
    .restart local v10       #nSrcDrawW:I
    move v9, v11

    .line 3533
    .restart local v9       #nSrcDrawH:I
    sub-int v16, v12, v10

    div-int/lit8 v13, v16, 0x2

    .line 3534
    .local v13, nXoffset:I
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    add-int v18, v13, v10

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v13, v1, v2, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v6, v0, v1, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public static getScaledCenterCropBitmap(Landroid/graphics/Bitmap;[BI)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "bmSrc"
    .parameter "overlay"
    .parameter "nTargetSize"

    .prologue
    .line 3446
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .line 3476
    :cond_0
    :goto_0
    return-object v3

    .line 3447
    :cond_1
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p2

    invoke-static {v0, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3448
    .local v3, bmDst:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3449
    .local v4, canvasDst:Landroid/graphics/Canvas;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 3450
    .local v8, nSrcW:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 3451
    .local v7, nSrcH:I
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 3452
    .local v11, paintDefault:Landroid/graphics/Paint;
    if-ne v8, v7, :cond_2

    .line 3453
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p2

    move/from16 v1, p2

    invoke-direct {v13, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v12, v13, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3464
    :goto_1
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v12, v0

    if-lez v12, :cond_0

    .line 3467
    const/4 v12, 0x0

    move-object/from16 v0, p1

    array-length v13, v0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 3468
    .local v10, overlayBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 3469
    .local v9, nW:I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 3470
    .local v5, nH:I
    if-eqz v10, :cond_5

    move/from16 v0, p2

    if-ge v9, v0, :cond_5

    move/from16 v0, p2

    if-ge v5, v0, :cond_5

    .line 3471
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    sub-int v15, p2, v5

    move/from16 v0, p2

    invoke-direct {v13, v14, v15, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v10, v12, v13, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3472
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 3455
    .end local v5           #nH:I
    .end local v9           #nW:I
    .end local v10           #overlayBitmap:Landroid/graphics/Bitmap;
    :cond_2
    if-le v8, v7, :cond_3

    const/4 v2, 0x1

    .line 3456
    .local v2, bSrcLandscape:Z
    :goto_2
    if-eqz v2, :cond_4

    .line 3457
    sub-int v12, v8, v7

    div-int/lit8 v6, v12, 0x2

    .line 3458
    .local v6, nOffset:I
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    add-int v14, v6, v7

    invoke-direct {v12, v6, v13, v14, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p2

    move/from16 v1, p2

    invoke-direct {v13, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v12, v13, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 3455
    .end local v2           #bSrcLandscape:Z
    .end local v6           #nOffset:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 3460
    .restart local v2       #bSrcLandscape:Z
    :cond_4
    sub-int v12, v7, v8

    div-int/lit8 v6, v12, 0x2

    .line 3461
    .restart local v6       #nOffset:I
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    add-int v14, v6, v8

    invoke-direct {v12, v13, v6, v8, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p2

    move/from16 v1, p2

    invoke-direct {v13, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v12, v13, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 3476
    .end local v2           #bSrcLandscape:Z
    .end local v6           #nOffset:I
    .restart local v5       #nH:I
    .restart local v9       #nW:I
    .restart local v10       #overlayBitmap:Landroid/graphics/Bitmap;
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public static getScaledCenterCropBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "filePath"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"

    .prologue
    .line 3486
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/htc/util/contacts/ContactsUtility;->getScaledBitmap(Ljava/lang/String;II[B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3487
    .local v0, bmScaled:Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getScaledCenterCropBitmap([BII)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "data"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"

    .prologue
    .line 3482
    invoke-static {p0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility;->getScaledBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3483
    .local v0, bmScaled:Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getScaledCenterCropBitmap([BIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "data"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"
    .parameter "bmOverlay"

    .prologue
    .line 3493
    invoke-static {p0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility;->getScaledCenterCropBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3494
    .local v0, bmCenterCrop:Landroid/graphics/Bitmap;
    if-nez p3, :cond_0

    .line 3496
    :goto_0
    return-object v0

    .line 3495
    :cond_0
    invoke-static {v0, p3}, Lcom/htc/util/contacts/ContactsUtility;->drawBottomLeftOverlay(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static getScaledCenterCropBitmap([BII[B)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "data"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"
    .parameter "overlay"

    .prologue
    .line 3502
    if-eqz p3, :cond_0

    array-length v1, p3

    if-gtz v1, :cond_1

    .line 3503
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility;->getScaledCenterCropBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3506
    :goto_0
    return-object v1

    .line 3505
    :cond_1
    const/4 v1, 0x0

    array-length v2, p3

    invoke-static {p3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3506
    .local v0, bmOverlay:Landroid/graphics/Bitmap;
    invoke-static {p0, p1, p2, v0}, Lcom/htc/util/contacts/ContactsUtility;->getScaledCenterCropBitmap([BIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSocialnetworkAccountType(Ljava/lang/String;)J
    .locals 3
    .parameter "accountType"

    .prologue
    .line 1218
    const-wide/16 v0, 0x0

    .line 1219
    .local v0, lAccountType:J
    const-string v2, "com.htc.socialnetwork.facebook"

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1220
    const-wide/16 v0, 0x1

    .line 1228
    :cond_0
    :goto_0
    return-wide v0

    .line 1221
    :cond_1
    const-string v2, "com.htc.socialnetwork.plurk"

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1222
    const-wide/16 v0, 0x4

    goto :goto_0

    .line 1223
    :cond_2
    const-string v2, "com.htc.htctwitter"

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1224
    const-wide/16 v0, 0x3

    goto :goto_0

    .line 1225
    :cond_3
    const-string v2, "com.htc.socialnetwork.flickr"

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1226
    const-wide/16 v0, 0x2

    goto :goto_0
.end method

.method public static handleSocialNetworkLargePhoto(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "lContactId"

    .prologue
    .line 2046
    const-wide/16 v2, 0x0

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    if-nez p0, :cond_1

    .line 2066
    :cond_0
    :goto_0
    return-void

    .line 2048
    :cond_1
    sget-object v3, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mObjectLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2049
    :try_start_0
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->startHandler()V

    .line 2050
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    if-nez v2, :cond_2

    .line 2051
    const-string v2, "ContactsUtility"

    const-string v4, "handleSocialNetworkLargePhoto HandleSocialNetworkLargePhotoHelper.MessageHandler null, return!"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    monitor-exit v3

    goto :goto_0

    .line 2065
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2054
    :cond_2
    :try_start_1
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v4, 0x32

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2056
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2057
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x33

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2058
    long-to-int v2, p1

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2059
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2060
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2062
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2063
    .local v1, msgEnd:Landroid/os/Message;
    const/16 v2, 0x32

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2064
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2065
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static handleSocialNetworkLargePhotoEnd(Ljava/lang/Runnable;)V
    .locals 8
    .parameter "r"

    .prologue
    .line 2000
    sget-object v5, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mObjectLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2001
    :try_start_0
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->startHandler()V

    .line 2002
    sget-object v4, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    if-nez v4, :cond_0

    .line 2003
    const-string v4, "ContactsUtility"

    const-string v6, "handleSocialNetworkLargePhotoEnd HandleSocialNetworkLargePhotoHelper.MessageHandler null,run r then return!"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    move-object v2, p0

    .line 2006
    .local v2, rFinal:Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/htc/util/contacts/ContactsUtility$5;

    invoke-direct {v4, v2}, Lcom/htc/util/contacts/ContactsUtility$5;-><init>(Ljava/lang/Runnable;)V

    const-string v6, "handleSocialNetworkLargePhotoEndThread"

    invoke-direct {v3, v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2026
    .local v3, t:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2027
    monitor-exit v5

    .line 2039
    .end local v2           #rFinal:Ljava/lang/Runnable;
    .end local v3           #t:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 2029
    :cond_0
    sget-object v4, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v6, 0x32

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2031
    sget-object v4, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    invoke-static {v4, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 2032
    .local v0, msg:Landroid/os/Message;
    const/16 v4, 0x37

    iput v4, v0, Landroid/os/Message;->what:I

    .line 2033
    sget-object v4, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2035
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2036
    .local v1, msgEnd:Landroid/os/Message;
    const/16 v4, 0x32

    iput v4, v1, Landroid/os/Message;->what:I

    .line 2037
    sget-object v4, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2038
    monitor-exit v5

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #msgEnd:Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static importAccountEmailToMyContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "email"
    .parameter "accountType"

    .prologue
    .line 1232
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1331
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    new-instance v0, Lcom/htc/util/contacts/ContactsUtility$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/htc/util/contacts/ContactsUtility$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    .local v0, runnableImport:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static importCsAccountInfoToMyContact(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 1334
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1480
    :cond_0
    :goto_0
    return-void

    .line 1335
    :cond_1
    const-string v1, "com.htc.cs"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1337
    new-instance v0, Lcom/htc/util/contacts/ContactsUtility$2;

    invoke-direct {v0, p1, p0}, Lcom/htc/util/contacts/ContactsUtility$2;-><init>(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 1479
    .local v0, runnableImport:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static importToMyContact(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "lContactId"

    .prologue
    .line 1552
    if-eqz p0, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, v1, p1

    if-ltz v1, :cond_1

    .line 1743
    :cond_0
    :goto_0
    return-void

    .line 1554
    :cond_1
    new-instance v0, Lcom/htc/util/contacts/ContactsUtility$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility$4;-><init>(Landroid/content/Context;J)V

    .line 1741
    .local v0, runnableImport:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static importToMyContact(Landroid/content/Context;JJ)V
    .locals 6
    .parameter "context"
    .parameter "lContactId"
    .parameter "rawId"

    .prologue
    const-wide/16 v2, 0x0

    .line 1502
    if-eqz p0, :cond_0

    cmp-long v1, v2, p1

    if-gez v1, :cond_0

    cmp-long v1, v2, p3

    if-ltz v1, :cond_1

    .line 1543
    :cond_0
    :goto_0
    return-void

    .line 1504
    :cond_1
    new-instance v0, Lcom/htc/util/contacts/ContactsUtility$3;

    move-wide v1, p3

    move-object v3, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/util/contacts/ContactsUtility$3;-><init>(JLandroid/content/Context;J)V

    .line 1542
    .local v0, runnableImport:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static importToMyContact(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1548
    .local p1, lContactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, rawIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    return-void
.end method

.method private static final isCJKCharacter(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 155
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 156
    .local v0, ub:Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 180
    :cond_0
    const/4 v1, 0x1

    .line 182
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static final isChineseCharacter(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 139
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 140
    .local v0, ub:Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 149
    :cond_0
    const/4 v1, 0x1

    .line 151
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isContainCJKWord(Ljava/lang/String;)Z
    .locals 5
    .parameter "word"

    .prologue
    .line 186
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    const/4 v2, 0x0

    .line 198
    :cond_0
    :goto_0
    return v2

    .line 189
    :cond_1
    const/4 v2, 0x0

    .line 190
    .local v2, result:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 191
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 192
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 193
    .local v3, utf8Char:C
    invoke-static {v3}, Lcom/htc/util/contacts/ContactsUtility;->isCJKCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 194
    const/4 v2, 0x1

    .line 195
    goto :goto_0

    .line 191
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static final isContainChineseWord(Ljava/lang/String;)Z
    .locals 5
    .parameter "word"

    .prologue
    .line 203
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 204
    const/4 v2, 0x0

    .line 215
    :cond_0
    :goto_0
    return v2

    .line 206
    :cond_1
    const/4 v2, 0x0

    .line 207
    .local v2, result:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 208
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 209
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 210
    .local v3, utf8Char:C
    invoke-static {v3}, Lcom/htc/util/contacts/ContactsUtility;->isChineseCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 211
    const/4 v2, 0x1

    .line 212
    goto :goto_0

    .line 208
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isContainMimeType(Landroid/content/Entity;Ljava/lang/String;)Z
    .locals 6
    .parameter "entity"
    .parameter "mimetypeTarget"

    .prologue
    .line 1790
    const/4 v0, 0x0

    .line 1791
    .local v0, bContain:Z
    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Entity$NamedContentValues;

    .line 1792
    .local v4, subValue:Landroid/content/Entity$NamedContentValues;
    iget-object v1, v4, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1793
    .local v1, entryValues:Landroid/content/ContentValues;
    const-string v5, "mimetype"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1794
    .local v3, mimetype:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1795
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1796
    const/4 v0, 0x1

    .line 1800
    .end local v1           #entryValues:Landroid/content/ContentValues;
    .end local v3           #mimetype:Ljava/lang/String;
    .end local v4           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_1
    return v0
.end method

.method public static isContainMimeType(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter "mimetypeTarget"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3840
    .local p0, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    const/4 v0, 0x0

    .line 3841
    .local v0, contain:Z
    if-eqz p0, :cond_1

    .line 3842
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Entity;

    .line 3843
    .local v1, e:Landroid/content/Entity;
    invoke-static {v1, p1}, Lcom/htc/util/contacts/ContactsUtility;->isContainMimeType(Landroid/content/Entity;Ljava/lang/String;)Z

    move-result v0

    .line 3844
    if-eqz v0, :cond_0

    .line 3850
    .end local v1           #e:Landroid/content/Entity;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method public static isDuplicate(Landroid/content/Entity;Landroid/content/ContentValues;)Z
    .locals 12
    .parameter "entity"
    .parameter "entryValuesTarget"

    .prologue
    .line 1747
    const-string v10, "mimetype"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1748
    .local v6, mimetypeTarget:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 1749
    .local v0, entValues:Landroid/content/ContentValues;
    const-string v10, "_id"

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1750
    .local v7, rawContactId:J
    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Entity$NamedContentValues;

    .line 1751
    .local v9, subValue:Landroid/content/Entity$NamedContentValues;
    iget-object v1, v9, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1752
    .local v1, entryValues:Landroid/content/ContentValues;
    const-string v10, "raw_contact_id"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1754
    const-string v10, "mimetype"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1755
    .local v5, mimetype:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1756
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1759
    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/im"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/organization"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/note"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/nickname"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.android.cursor.item/website"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1770
    :cond_1
    invoke-static {v1}, Lcom/htc/util/contacts/ContactsUtility;->getMimeTypeContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    .line 1771
    .local v3, mimeTypeValues:Landroid/content/ContentValues;
    invoke-static {p1}, Lcom/htc/util/contacts/ContactsUtility;->getMimeTypeContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 1772
    .local v4, mimeTypeValuesTarget:Landroid/content/ContentValues;
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    .line 1787
    .end local v1           #entryValues:Landroid/content/ContentValues;
    .end local v3           #mimeTypeValues:Landroid/content/ContentValues;
    .end local v4           #mimeTypeValuesTarget:Landroid/content/ContentValues;
    .end local v5           #mimetype:Ljava/lang/String;
    .end local v9           #subValue:Landroid/content/Entity$NamedContentValues;
    :goto_0
    return v10

    :cond_2
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static isDuplicate(Ljava/util/ArrayList;Landroid/content/ContentValues;)Z
    .locals 4
    .parameter
    .parameter "entryValuesTarget"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;",
            "Landroid/content/ContentValues;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3828
    .local p0, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    const/4 v0, 0x0

    .line 3829
    .local v0, dup:Z
    if-eqz p0, :cond_1

    .line 3830
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Entity;

    .line 3831
    .local v1, e:Landroid/content/Entity;
    invoke-static {v1, p1}, Lcom/htc/util/contacts/ContactsUtility;->isDuplicate(Landroid/content/Entity;Landroid/content/ContentValues;)Z

    move-result v0

    .line 3832
    if-eqz v0, :cond_0

    .line 3837
    .end local v1           #e:Landroid/content/Entity;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method public static isFamilyNamePersonaltNameOrder(Ljava/util/Locale;)Z
    .locals 1
    .parameter "locale"

    .prologue
    .line 219
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRawContactHasPhoto(Landroid/content/Context;JLandroid/os/Bundle;)Z
    .locals 11
    .parameter "context"
    .parameter "lRawContactId"
    .parameter "bundle"

    .prologue
    const/4 v4, 0x0

    .line 1928
    const/4 v6, 0x0

    .line 1929
    .local v6, bHasPhoto:Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/raw_contacts/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1930
    .local v1, uri:Landroid/net/Uri;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1931
    .local v10, sbSelection:Ljava/lang/StringBuilder;
    const-string v0, "mimetype = \'vnd.android.cursor.item/photo\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1932
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "contact_id"

    aput-object v5, v2, v3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1933
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 1934
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1935
    const/4 v6, 0x1

    .line 1936
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1937
    .local v8, lDataId:J
    if-eqz p3, :cond_0

    .line 1938
    const-string v0, "data_id"

    invoke-virtual {p3, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1943
    .end local v8           #lDataId:J
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1944
    const/4 v7, 0x0

    .line 1946
    :cond_1
    return v6
.end method

.method public static isReadyOnlyContactsType(Ljava/lang/String;)Z
    .locals 9
    .parameter "type"

    .prologue
    .line 440
    const/4 v6, 0x0

    .line 441
    .local v6, readyOnly:Z
    if-eqz p0, :cond_0

    .line 442
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v2

    .line 444
    .local v2, cs:Landroid/content/IContentService;
    :try_start_0
    invoke-interface {v2}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v7

    .line 445
    .local v7, syncs:[Landroid/content/SyncAdapterType;
    move-object v1, v7

    .local v1, arr$:[Landroid/content/SyncAdapterType;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 446
    .local v0, adapterType:Landroid/content/SyncAdapterType;
    iget-object v8, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 447
    invoke-virtual {v0}, Landroid/content/SyncAdapterType;->supportsUploading()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_1

    const/4 v6, 0x1

    .line 455
    .end local v0           #adapterType:Landroid/content/SyncAdapterType;
    .end local v1           #arr$:[Landroid/content/SyncAdapterType;
    .end local v2           #cs:Landroid/content/IContentService;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #syncs:[Landroid/content/SyncAdapterType;
    :cond_0
    :goto_1
    return v6

    .line 447
    .restart local v0       #adapterType:Landroid/content/SyncAdapterType;
    .restart local v1       #arr$:[Landroid/content/SyncAdapterType;
    .restart local v2       #cs:Landroid/content/IContentService;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v7       #syncs:[Landroid/content/SyncAdapterType;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 445
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 451
    .end local v0           #adapterType:Landroid/content/SyncAdapterType;
    .end local v1           #arr$:[Landroid/content/SyncAdapterType;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #syncs:[Landroid/content/SyncAdapterType;
    :catch_0
    move-exception v3

    .line 452
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static final isSupportUCS2Filter()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public static isVisibleForAccountType(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 12
    .parameter "resolver"
    .parameter "accountType"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 466
    if-nez p1, :cond_0

    .line 511
    :goto_0
    return v10

    .line 468
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 470
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "ungrouped_visible"

    aput-object v0, v2, v11

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 475
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x1

    .line 476
    .local v8, result:Z
    if-eqz v6, :cond_2

    .line 477
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 479
    .local v9, visible:I
    if-lez v9, :cond_4

    move v8, v10

    .line 481
    .end local v9           #visible:I
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 484
    :cond_2
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "group_visible"

    aput-object v0, v2, v11

    .line 487
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "My Contacts"

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "auto_add"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "group_is_read_only"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 495
    const-string v0, "com.google"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 496
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 497
    if-eqz v6, :cond_3

    .line 499
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 500
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 501
    .local v7, mycontactGroupVisible:I
    if-lez v7, :cond_5

    move v8, v10

    .line 507
    .end local v7           #mycontactGroupVisible:I
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v10, v8

    .line 511
    goto/16 :goto_0

    .end local v2           #projection:[Ljava/lang/String;
    .restart local v9       #visible:I
    :cond_4
    move v8, v11

    .line 479
    goto :goto_1

    .end local v9           #visible:I
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v7       #mycontactGroupVisible:I
    :cond_5
    move v8, v11

    .line 501
    goto :goto_2

    .line 504
    .end local v7           #mycontactGroupVisible:I
    :cond_6
    const/4 v8, 0x1

    goto :goto_2

    .line 507
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static joinDefaultDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "givenName"
    .parameter "familyName"

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, isCJK:Z
    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    :cond_0
    const/4 v0, 0x1

    .line 236
    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {p0, p1, v1}, Lcom/htc/util/contacts/ContactsUtility;->conjectGivenFamilyName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static loadData(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 3758
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3760
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "_id"

    const/16 v2, 0x1c

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3762
    const/16 v1, 0x1d

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3763
    const/16 v1, 0x1e

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3764
    const/16 v1, 0x1f

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3765
    const/16 v1, 0x20

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3766
    const/16 v1, 0x21

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3767
    const/16 v1, 0x22

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3768
    const/16 v1, 0x23

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3769
    const/16 v1, 0x24

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3770
    const/16 v1, 0x25

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3771
    const/16 v1, 0x26

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3772
    const/16 v1, 0x27

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3773
    const/16 v1, 0x28

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3774
    const/16 v1, 0x29

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3775
    const/16 v1, 0x2a

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3776
    const/16 v1, 0x2b

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3777
    const/16 v1, 0x2c

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3778
    const/16 v1, 0x2d

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3779
    const/16 v1, 0x2e

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3780
    const/16 v1, 0x2f

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3781
    const/16 v1, 0x30

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3782
    const/16 v1, 0x31

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3783
    const/16 v1, 0x32

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3784
    const/16 v1, 0x33

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3785
    const/16 v1, 0x34

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3786
    const/16 v1, 0x35

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3787
    const/16 v1, 0x37

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3789
    return-object v0
.end method

.method private static loadRawContact(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 3712
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3714
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "_id"

    const/16 v2, 0xe

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3716
    const/16 v1, 0xf

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3717
    const/16 v1, 0x10

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3718
    const/16 v1, 0x11

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3719
    const/16 v1, 0x12

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3720
    const/16 v1, 0x13

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3721
    const/16 v1, 0x14

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3722
    const/16 v1, 0x15

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3723
    const/16 v1, 0x16

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3724
    const/16 v1, 0x17

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3725
    const/16 v1, 0x18

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3726
    const/16 v1, 0x19

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3727
    const/16 v1, 0x1a

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3728
    const/16 v1, 0xd

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3729
    const/4 v1, 0x7

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3730
    const/16 v1, 0x1b

    invoke-static {p0, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 3732
    return-object v0
.end method

.method public static parseContactDefaultAction(Landroid/content/ContentResolver;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 17
    .parameter "resolver"
    .parameter "defaultAction"
    .parameter "generateActionUri"

    .prologue
    .line 3021
    const-string v1, "mailto:"

    .line 3022
    .local v1, MAIL_PATTERN:Ljava/lang/String;
    const-string v2, "sms:"

    .line 3023
    .local v2, SMS_PATTERM:Ljava/lang/String;
    const/4 v5, 0x0

    .line 3025
    .local v5, bundle:Landroid/os/Bundle;
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    move-object v15, v5

    .line 3112
    :goto_1
    return-object v15

    .line 3029
    :cond_1
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 3031
    .local v6, contactUriBase:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 3033
    new-instance v5, Landroid/os/Bundle;

    .end local v5           #bundle:Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3034
    .restart local v5       #bundle:Landroid/os/Bundle;
    const-string v15, "action_key"

    const-string v16, "ViewContact"

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3038
    :cond_2
    new-instance v9, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3040
    .local v9, processingDefaultAction:Ljava/lang/String;
    const-string v15, "|"

    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 3042
    .local v8, nSaperateIndex:I
    if-gez v8, :cond_3

    .line 3043
    const/4 v15, 0x0

    goto :goto_1

    .line 3045
    :cond_3
    const/4 v15, 0x0

    invoke-virtual {v9, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 3047
    .local v14, tag:Ljava/lang/String;
    add-int/lit8 v15, v8, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 3050
    const-string v15, "|"

    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 3052
    if-gez v8, :cond_4

    .line 3053
    const/4 v15, 0x0

    goto :goto_1

    .line 3055
    :cond_4
    const/4 v15, 0x0

    invoke-virtual {v9, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3058
    .local v3, action:Ljava/lang/String;
    add-int/lit8 v15, v8, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3061
    .local v4, actionUriString:Ljava/lang/String;
    const-string v15, "mailto:"

    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 3063
    const-string v15, "mailto:"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 3066
    .local v13, sU:Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    .end local v5           #bundle:Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3067
    .restart local v5       #bundle:Landroid/os/Bundle;
    const-string v15, "action_key"

    const-string v16, "SendMail"

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    const-string v15, "action_intent_action"

    invoke-virtual {v5, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3069
    const-string v15, "action_url"

    invoke-virtual {v5, v15, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3070
    if-eqz p2, :cond_0

    .line 3071
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/htc/util/contacts/ContactsUtility;->getMailAddressByUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 3072
    .local v10, sMailAddress:Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mailto:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v7, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3073
    .local v7, mailTo:Ljava/lang/String;
    const-string v15, "action_data"

    invoke-virtual {v5, v15, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3074
    const-string v15, "action_url"

    invoke-virtual {v5, v15, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3077
    .end local v7           #mailTo:Ljava/lang/String;
    .end local v10           #sMailAddress:Ljava/lang/String;
    .end local v13           #sU:Ljava/lang/String;
    :cond_5
    const-string v15, "sms:"

    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 3079
    const-string v15, "sms:"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 3081
    .restart local v13       #sU:Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    .end local v5           #bundle:Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3082
    .restart local v5       #bundle:Landroid/os/Bundle;
    const-string v15, "action_key"

    const-string v16, "SendMSG"

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3083
    const-string v15, "action_intent_action"

    invoke-virtual {v5, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3084
    const-string v15, "action_url"

    invoke-virtual {v5, v15, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3085
    if-eqz p2, :cond_0

    .line 3086
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/htc/util/contacts/ContactsUtility;->getPhoneNumberByUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 3087
    .local v12, sPhoneNumber:Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sms:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3088
    .local v11, sNewUri:Ljava/lang/String;
    const-string v15, "action_data"

    invoke-virtual {v5, v15, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3089
    const-string v15, "action_url"

    invoke-virtual {v5, v15, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3093
    .end local v11           #sNewUri:Ljava/lang/String;
    .end local v12           #sPhoneNumber:Ljava/lang/String;
    .end local v13           #sU:Ljava/lang/String;
    :cond_6
    const-string v15, "android.intent.action.CALL_PRIVILEGED"

    invoke-static {v15, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 3094
    const-string v15, "mailto:"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 3095
    .restart local v13       #sU:Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    .end local v5           #bundle:Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3096
    .restart local v5       #bundle:Landroid/os/Bundle;
    const-string v15, "action_key"

    const-string v16, "Dialing"

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3097
    const-string v15, "action_url"

    invoke-virtual {v5, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3098
    const-string v15, "action_intent_action"

    invoke-virtual {v5, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3099
    const-string v15, "action_url"

    invoke-virtual {v5, v15, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static final parseEventUsingCalendar(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 13
    .parameter "timeInRfc3339"
    .parameter "calendar"

    .prologue
    const/16 v12, 0xe

    const/16 v4, 0xc

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 3272
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal RFC3339 format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3276
    :cond_0
    const-string v10, ""

    .line 3277
    .local v10, processStr:Ljava/lang/String;
    const-string v0, "T"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 3278
    .local v8, indexOfT:I
    if-lez v8, :cond_2

    .line 3279
    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 3285
    :goto_0
    const-string v0, "-"

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 3293
    .local v11, splitStr:[Ljava/lang/String;
    array-length v9, v11

    .line 3294
    .local v9, numOfItem:I
    const/4 v7, 0x0

    .line 3295
    .local v7, hasYearInfo:Z
    if-ne v9, v6, :cond_3

    .line 3296
    aget-object v0, v11, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v0, 0x1

    aget-object v0, v11, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    aget-object v0, v11, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object v0, p1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 3301
    invoke-virtual {p1, v12, v5}, Ljava/util/Calendar;->set(II)V

    .line 3302
    const/4 v7, 0x1

    .line 3316
    :cond_1
    :goto_1
    return v7

    .line 3282
    .end local v7           #hasYearInfo:Z
    .end local v9           #numOfItem:I
    .end local v11           #splitStr:[Ljava/lang/String;
    :cond_2
    move-object v10, p0

    goto :goto_0

    .line 3304
    .restart local v7       #hasYearInfo:Z
    .restart local v9       #numOfItem:I
    .restart local v11       #splitStr:[Ljava/lang/String;
    :cond_3
    const/4 v0, 0x4

    if-ne v9, v0, :cond_1

    .line 3308
    const/16 v1, 0x7b2

    aget-object v0, v11, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    aget-object v0, v11, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object v0, p1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 3313
    invoke-virtual {p1, v12, v5}, Ljava/util/Calendar;->set(II)V

    .line 3314
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static queryEditableAccount()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1890
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1891
    .local v6, supportContactAuthorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, "com.android.contacts"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1892
    const-string v9, "com.htc.socialnetwork.snprovider"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1893
    const-string v9, "htceas"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1894
    const-string v9, "com.htc.plurk.Users"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1895
    const-string v9, "com.htc.htctwitter.Users"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1898
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1899
    .local v0, accountTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v2

    .line 1901
    .local v2, cs:Landroid/content/IContentService;
    :try_start_0
    invoke-interface {v2}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v8

    .line 1903
    .local v8, syncs:[Landroid/content/SyncAdapterType;
    move-object v1, v8

    .local v1, arr$:[Landroid/content/SyncAdapterType;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v1, v4

    .line 1904
    .local v7, sync:Landroid/content/SyncAdapterType;
    if-eqz v7, :cond_0

    iget-object v9, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 1906
    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1907
    iget-object v9, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1903
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1912
    .end local v7           #sync:Landroid/content/SyncAdapterType;
    :cond_1
    const-string v9, "com.htc.android.pcsc"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1917
    .end local v1           #arr$:[Landroid/content/SyncAdapterType;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v8           #syncs:[Landroid/content/SyncAdapterType;
    :goto_1
    return-object v0

    .line 1913
    :catch_0
    move-exception v3

    .line 1914
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static queryMissedCallCount(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 20
    .parameter "resolver"
    .parameter "contactUri"

    .prologue
    .line 880
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 881
    .local v7, contactId:J
    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-gtz v1, :cond_1

    .line 882
    const/4 v9, 0x0

    .line 935
    :cond_0
    :goto_0
    return v9

    .line 884
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/contacts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/simpledata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 889
    .local v10, cursor:Landroid/database/Cursor;
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 890
    .local v18, rawContactIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-eqz v10, :cond_4

    .line 891
    const-string v1, "mimetype"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 892
    .local v13, idxMimetype:I
    const-string v1, "data1"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 893
    .local v11, idxData:I
    const-string v1, "raw_contact_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 894
    .local v15, idxRawContactId:I
    const-string v1, "data_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 896
    .local v12, idxDataId:I
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 897
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 898
    .local v17, mimetype:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 899
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 904
    .end local v17           #mimetype:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 907
    .end local v11           #idxData:I
    .end local v12           #idxDataId:I
    .end local v13           #idxMimetype:I
    .end local v15           #idxRawContactId:I
    :cond_4
    const-string v19, ""

    .line 908
    .local v19, rawIds:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 909
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 910
    .local v16, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 911
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 914
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    .line 919
    .end local v16           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_6
    const/4 v9, 0x0

    .line 920
    .local v9, count:I
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 921
    const-string v1, "content://call_log/miss_calls_count_by_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_count"

    aput-object v4, v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "raw_contact_id IN ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 923
    if-eqz v10, :cond_0

    .line 925
    :try_start_1
    const-string v1, "_count"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 926
    .local v14, idxMissCount:I
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 927
    int-to-long v1, v9

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v9, v1

    goto :goto_3

    .line 931
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v14           #idxMissCount:I
    :catchall_1
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static queryProfileEntities(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 19
    .parameter "context"
    .parameter "profileId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3794
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 3795
    .local v13, entitiesMy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v16

    .line 3796
    .local v16, lookupUri:Landroid/net/Uri;
    if-nez v16, :cond_0

    move-object v14, v13

    .line 3824
    .end local v13           #entitiesMy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .local v14, entitiesMy:Ljava/lang/Object;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :goto_0
    return-object v14

    .line 3799
    .end local v14           #entitiesMy:Ljava/lang/Object;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .restart local v13       #entitiesMy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :cond_0
    const-string v2, "entities"

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3800
    .local v3, entityUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/htc/util/contacts/ContactsUtility$ContactQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "raw_contact_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3801
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_5

    .line 3803
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3804
    const-wide/16 v8, -0x1

    .line 3805
    .local v8, currentRawContactId:J
    const/4 v15, 0x0

    .line 3806
    .local v15, entity:Landroid/content/Entity;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3807
    .local v12, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3808
    const/16 v2, 0xe

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 3809
    .local v17, rawContactId:J
    cmp-long v2, v17, v8

    if-eqz v2, :cond_1

    .line 3810
    move-wide/from16 v8, v17

    .line 3811
    new-instance v15, Landroid/content/Entity;

    .end local v15           #entity:Landroid/content/Entity;
    invoke-static {v10}, Lcom/htc/util/contacts/ContactsUtility;->loadRawContact(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-direct {v15, v2}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 3812
    .restart local v15       #entity:Landroid/content/Entity;
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3814
    :cond_1
    const/16 v2, 0x1c

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3815
    invoke-static {v10}, Lcom/htc/util/contacts/ContactsUtility;->loadData(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v11

    .line 3816
    .local v11, data:Landroid/content/ContentValues;
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15, v2, v11}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 3807
    .end local v11           #data:Landroid/content/ContentValues;
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 3819
    .end local v17           #rawContactId:J
    :cond_3
    move-object v13, v12

    .line 3821
    .end local v8           #currentRawContactId:J
    .end local v12           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v15           #entity:Landroid/content/Entity;
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3822
    const/4 v10, 0x0

    :cond_5
    move-object v14, v13

    .line 3824
    .restart local v14       #entitiesMy:Ljava/lang/Object;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    goto :goto_0
.end method

.method public static queryUnreadEmailCount(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 21
    .parameter "resolver"
    .parameter "contactUri"

    .prologue
    .line 700
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 701
    .local v8, contactId:J
    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-gtz v1, :cond_1

    .line 702
    const/4 v10, 0x0

    .line 760
    :cond_0
    :goto_0
    return v10

    .line 704
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/contacts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/simpledata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "mimetype=\'vnd.android.cursor.item/email_v2\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 709
    .local v11, cursor:Landroid/database/Cursor;
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 710
    .local v12, emailSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v11, :cond_4

    .line 711
    const-string v1, "mimetype"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 712
    .local v15, idxMimetype:I
    const-string v1, "data1"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 713
    .local v13, idxData:I
    const-string v1, "raw_contact_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 714
    .local v16, idxRawContactId:I
    const-string v1, "data_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 716
    .local v14, idxDataId:I
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 717
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 718
    .local v20, mimetype:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 719
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 724
    .end local v20           #mimetype:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 727
    .end local v13           #idxData:I
    .end local v14           #idxDataId:I
    .end local v15           #idxMimetype:I
    .end local v16           #idxRawContactId:I
    :cond_4
    const/4 v10, 0x0

    .line 728
    .local v10, count:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 729
    .local v7, addr:Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 730
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 731
    .local v17, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/16 v19, 0x0

    .line 732
    .local v19, mailCount:I
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xf0

    move/from16 v0, v19

    if-ge v0, v1, :cond_5

    .line 733
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 734
    .local v18, mail:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    const/16 v1, 0x2c

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 736
    add-int/lit8 v19, v19, 0x1

    .line 737
    goto :goto_2

    .line 738
    .end local v18           #mail:Ljava/lang/String;
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 739
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_6

    .line 740
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 742
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_7

    .line 743
    const/4 v1, 0x0

    const-string v2, " _fromEmail in ("

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    const/16 v1, 0x29

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 746
    :cond_7
    const-string v1, "content://mail/allmessagesCountUnread"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 748
    if-eqz v11, :cond_0

    .line 750
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 751
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    add-int/2addr v10, v1

    .line 755
    :cond_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static queryUnreadMessageCount(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 24
    .parameter "resolver"
    .parameter "contactUri"

    .prologue
    .line 773
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 774
    .local v8, contactId:J
    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-gtz v1, :cond_1

    .line 775
    const/4 v10, 0x0

    .line 868
    :cond_0
    :goto_0
    return v10

    .line 777
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/contacts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/simpledata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "mimetype=\'vnd.android.cursor.item/phone_v2\' OR mimetype=\'vnd.android.cursor.item/email_v2\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 783
    .local v11, cursor:Landroid/database/Cursor;
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 784
    .local v23, phoneSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 785
    .local v12, emailSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v11, :cond_5

    .line 786
    const-string v1, "mimetype"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 787
    .local v15, idxMimetype:I
    const-string v1, "data1"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 788
    .local v13, idxData:I
    const-string v1, "raw_contact_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 789
    .local v16, idxRawContactId:I
    const-string v1, "data_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 791
    .local v14, idxDataId:I
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 792
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 793
    .local v20, mimetype:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 794
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 796
    :cond_3
    const-string v1, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 797
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 802
    .end local v20           #mimetype:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 806
    .end local v13           #idxData:I
    .end local v14           #idxDataId:I
    .end local v15           #idxMimetype:I
    .end local v16           #idxRawContactId:I
    :cond_5
    const/4 v10, 0x0

    .line 807
    .local v10, count:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 808
    .local v7, addr:Ljava/lang/StringBuilder;
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 809
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 810
    .local v17, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/16 v22, 0x0

    .line 811
    .local v22, phoneCount:I
    :cond_6
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 812
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 813
    .local v21, number:Ljava/lang/String;
    const-string v1, "PHONE_NUMBERS_EQUAL"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    const-string v1, "(address,"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-static/range {v21 .. v21}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    const/16 v1, 0x29

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 817
    add-int/lit8 v22, v22, 0x1

    .line 818
    const/16 v1, 0xf0

    move/from16 v0, v22

    if-ge v0, v1, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    .line 819
    :cond_7
    const/16 v22, 0x0

    .line 820
    const/4 v1, 0x0

    const-string v2, " ( "

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    const-string v1, " ) AND read = 0 "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    const-string v1, " AND ( sms_type=1 OR mms_type=130 OR mms_type=132) "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    const-string v1, "content://mms-sms/allmessages"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 825
    if-eqz v11, :cond_6

    .line 827
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    add-int/2addr v10, v1

    .line 830
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    .line 834
    :cond_8
    const-string v1, " OR "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 838
    .end local v17           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v21           #number:Ljava/lang/String;
    .end local v22           #phoneCount:I
    :cond_9
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 839
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 840
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 841
    .restart local v17       #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/16 v19, 0x0

    .line 842
    .local v19, mailCount:I
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0xf0

    move/from16 v0, v19

    if-ge v0, v1, :cond_a

    .line 843
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 844
    .local v18, mail:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    const/16 v1, 0x2c

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 846
    add-int/lit8 v19, v19, 0x1

    .line 847
    goto :goto_3

    .line 848
    .end local v18           #mail:Ljava/lang/String;
    :cond_a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 849
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_b

    .line 850
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 852
    :cond_b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_c

    .line 853
    const/4 v1, 0x0

    const-string v2, " address in ("

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    const-string v1, ") AND read = 0 AND msg_type = 0 AND ( mms_type=130 OR mms_type=132 )"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    :cond_c
    const-string v1, "content://mms-sms/allmessages"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 858
    if-eqz v11, :cond_0

    .line 860
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    add-int/2addr v10, v1

    .line 863
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static setContactUpdatesAndEventsRead(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 8
    .parameter "context"
    .parameter "contactUri"

    .prologue
    .line 1124
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1125
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 1126
    .local v1, id:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    .line 1127
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1129
    .local v4, values:Landroid/content/ContentValues;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1130
    const-string v5, "is_read"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1131
    sget-object v5, Lcom/htc/provider/HtcContactsContract$EventInstance;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "contact"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    .end local v1           #id:J
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 1135
    :catch_0
    move-exception v0

    .line 1137
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "ContactsUtility"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final setContactsAsFavorite(Landroid/content/ContentResolver;JZ)I
    .locals 6
    .parameter "resolver"
    .parameter "contactId"
    .parameter "isSet"

    .prologue
    .line 600
    sget-object v1, Lcom/htc/provider/HtcContactsContract$Contacts;->UPDATE_FAVORITE_URI:Landroid/net/Uri;

    .line 601
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 602
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "starred"

    if-eqz p3, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 604
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 605
    .local v0, counts:I
    return v0

    .line 602
    .end local v0           #counts:I
    .end local v3           #where:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static final setContactsAsFavorite(Landroid/content/ContentResolver;J)Z
    .locals 18
    .parameter "resolver"
    .parameter "contactId"

    .prologue
    .line 610
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 611
    .local v3, uri:Landroid/net/Uri;
    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 612
    .local v13, contactUri:Landroid/net/Uri;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 613
    .local v17, values:Landroid/content/ContentValues;
    const-string v2, "starred"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 614
    const/16 v16, 0x0

    .line 615
    .local v16, result:Z
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 616
    .local v14, count:I
    if-lez v14, :cond_4

    .line 618
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 619
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "sourceid"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Starred in Android"

    invoke-static {v5}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 625
    .local v10, c:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 626
    .local v15, gSourceId:Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 627
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 628
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 630
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 633
    :cond_1
    if-nez v15, :cond_2

    .line 634
    const/4 v2, 0x0

    .line 661
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #gSourceId:Ljava/lang/String;
    :goto_0
    return v2

    .line 637
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v15       #gSourceId:Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "account_type"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "com.google"

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 641
    .local v7, selection:Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_id"

    aput-object v4, v6, v2

    const/4 v2, 0x1

    const-string v4, "account_name"

    aput-object v4, v6, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 647
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    .line 648
    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v2, "group_sourceid"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    if-eqz v10, :cond_4

    .line 652
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 653
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 654
    .local v11, cId:J
    const-string v2, "raw_contact_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 655
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 656
    const/16 v16, 0x1

    .line 658
    .end local v11           #cId:J
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .end local v7           #selection:Ljava/lang/String;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v15           #gSourceId:Ljava/lang/String;
    :cond_4
    move/from16 v2, v16

    .line 661
    goto/16 :goto_0
.end method

.method public static final spliteDisplayName(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .parameter "displayName"

    .prologue
    .line 268
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 269
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 271
    move-object v2, p0

    .line 272
    .local v2, giveName:Ljava/lang/String;
    const-string v1, ""

    .line 275
    .local v1, familyName:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 276
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 277
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 278
    .local v4, length:I
    const/16 v5, 0x2c

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 279
    .local v3, index:I
    if-lez v3, :cond_0

    if-ge v3, v4, :cond_0

    .line 280
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 281
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 300
    .end local v3           #index:I
    .end local v4           #length:I
    :cond_0
    :goto_0
    const-string v5, "data2"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v5, "data3"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-object v0

    .line 286
    :cond_1
    :try_start_1
    const-string v5, " "

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 287
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 288
    .restart local v4       #length:I
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 289
    .restart local v3       #index:I
    if-lez v3, :cond_0

    if-ge v3, v4, :cond_0

    .line 290
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 291
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 297
    .end local v3           #index:I
    .end local v4           #length:I
    :catch_0
    move-exception v5

    goto :goto_0
.end method
